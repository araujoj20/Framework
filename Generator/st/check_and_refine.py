import json
import sys
import os
import re
from copy import deepcopy

# ---------- Constants / Allowed sets (First element is default) ----------
VALID_MASTER_TRIGGERS = [
    "RESET",
    "ENABLE",
    "UPDATE",
    "OC1",
    "OC1REF",
    "OC2REF",
    "OC3REF",
    "OC4REF"
]
VALID_CLOCK_SOURCES = [
    "INTERNAL",
    "INTERNAL_CLOCK",
    "DISABLE"
]
VALID_MASTER_SLAVE_MODE = [
    "DISABLE",
    "ENABLE"
]
VALID_SLAVE_MODES = [
    "DISABLE",
    "EXTERNAL1",
    "RESET",
    "GATED",
    "TRIGGER"
]
VALID_TRIGGER_SOURCES = [
    "DISABLE",
    "ITR0",
    "ITR1",
    "ITR2",
    "ITR3"
]

timer_params_str_groups = [
    (["trigger_event", "MasterOutputTrigger"], VALID_MASTER_TRIGGERS),
    (["clock_source", "ClockSource"], VALID_CLOCK_SOURCES),
    (["master_slave_mode", "MasterSlaveMode"], VALID_MASTER_SLAVE_MODE),
    (["slave_mode", "SlaveMode"], VALID_SLAVE_MODES),
]


# ---------- ANSI colors for prints ----------
_YELLOW = "\033[33m"
_RED = "\033[31m"
_RESET = "\033[0m"

def warn(msg):
    print(f"{_YELLOW}[WARN] {msg}{_RESET}")
def error(msg):
    print(f"{_RED}[ERROR] {msg}{_RESET}")

# ---------- Utility functions ----------
def load_json(path):
    with open(path, "r") as f:
        return json.load(f)

def save_json(path, data):
    with open(path, "w") as f:
        json.dump(data, f, indent=4)

def normalize_choice(value, allowed, label):
    if not value:
        return allowed[0]
    v = value.upper().replace(" ", "")
    if v in allowed:
        return v
    warn(f"Invalid {label} '{value}', using '{allowed[0]}'.")
    return allowed[0]

def normalize_input_trigger(value):
    # Accept raw strings like ITR0, ITR1, TI1FP1, etc. If missing returns None (not generated)
    if value is None or str(value).strip() == "":
        return None
    return value.upper().replace(" ", "_")

def find_dma_mappings(peripheral_name, dma_mapping):
    """Return list of (dma_name, channel_name, stream_name) matching peripheral_name."""
    results = []
    for dma_name, channels in dma_mapping.items():
        for ch_name, streams in channels.items():
            for stream_name, periph in streams.items():
                if periph is None:
                    continue
                if isinstance(periph, str):
                    if periph == peripheral_name:
                        results.append((dma_name, ch_name, stream_name))
                elif isinstance(periph, list):
                    if peripheral_name in periph:
                        results.append((dma_name, ch_name, stream_name))
    return results

def format_channel(ch):
    # Keep original 'ChannelX' style; generation script can format further if needed
    return ch

def reorder_fields(cfg: dict, order):
    """
    Generic reordering helper.
    - Keys listed in 'order' (and present in cfg) are placed first in that sequence.
    - Remaining keys keep their original relative order.
    """
    out = {k: cfg[k] for k in order if k in cfg}
    for k, v in cfg.items():
        if k not in out:
            out[k] = v
    return out

def choose_dma_variant(user_dma, request, candidates):
    """
    user_dma may contain subset: name, channel, stream.
    candidates: list[(dma,channel,stream)]
    Priority similar to previous logic.
    """
    if not candidates:
        error(f"No DMA mapping candidates found for request '{request}'.")
        return None
    if not user_dma:
        dma, ch, st = candidates[0]
        return {"name": dma, "channel": ch, "stream": st}

    def match_level(dma_entry, cand):
        name, ch, st = cand
        score = 0
        if "name" in dma_entry and dma_entry["name"] == name: score += 4
        if "channel" in dma_entry and dma_entry["channel"] == ch: score += 2
        if "stream" in dma_entry and dma_entry["stream"] == st: score += 1
        return score, name == dma_entry.get("name"), ch == dma_entry.get("channel"), st == dma_entry.get("stream")

    best = None
    best_score = -1
    for cand in candidates:
        sc, *_ = match_level(user_dma, cand)
        if sc > best_score:
            best_score = sc
            best = cand
    dma, ch, st = best
    return {"name": dma, "channel": ch, "stream": st}

def validate_and_expand_dmas(project_dmas, board_dma_mapping, board_family, used_dma_names):
    """
    Expand and validate DMA definitions.
    - For stm32f4xx: resolve mapping for request-based DMAs.
    - Enforce ordering (request, name, channel, stream, direction).
    - MEMORY_TO_MEMORY:
        * stm32f4xx: stream mandatory; channel always forced to Channel0 (warn if different); (dma,stream) must be unique.
        * other families (no streams): channel mandatory (0..7); (dma,channel) must be unique.
    - PERIPH_TO_MEMORY / MEMORY_TO_PERIPH: must be referenced by a peripheral (timer); unused ones removed.
    """
    refined_temp = {}
    # Duplicate tracking
    mm_stream_keys = set()   # (dma_name, stream)
    mm_channel_keys = set()  # (dma_name, channel)
    for key, cfg in project_dmas.items():
        cfg = deepcopy(cfg)
        request = cfg.get("request")
        if request and board_family == "stm32f4xx" and not all(k in cfg for k in ("name","channel","stream")):
            candidates = find_dma_mappings(request, board_dma_mapping)
            user_partial = {k: cfg[k] for k in ("name","channel","stream") if k in cfg}
            chosen = choose_dma_variant(user_partial, request, candidates) if candidates else None
            if chosen:
                for kf,vf in chosen.items():
                    cfg.setdefault(kf, vf)
            else:
                error(f"Could not resolve DMA '{key}' for request '{request}'.")
        direction = cfg.get("direction","").upper()

        # --- MEMORY_TO_MEMORY rules & duplicate detection ---
        if direction == "MEMORY_TO_MEMORY":
            if board_family == "stm32f4xx":
                if "stream" not in cfg:
                    error(f"DMA '{key}' MEMORY_TO_MEMORY missing 'stream'. Skipping this DMA.")
                    continue
                if cfg.get("channel") != "Channel0":
                    if "channel" in cfg:
                        warn(f"DMA '{key}' MEMORY_TO_MEMORY channel '{cfg['channel']}' overridden to 'Channel0'.")
                    cfg["channel"] = "Channel0"
                dma_name = cfg.get("name","")
                stream_id = cfg.get("stream","")
                dup_key = (dma_name, stream_id)
                if dup_key in mm_stream_keys:
                    error(f"Duplicate MEMORY_TO_MEMORY stream mapping for {dma_name} {stream_id} (DMA '{key}' skipped).")
                    continue
                mm_stream_keys.add(dup_key)
            else:
                ch = cfg.get("channel")
                if ch is None:
                    error(f"DMA '{key}' MEMORY_TO_MEMORY missing channel. Skipping this DMA.")
                    continue
                m = re.match(r"Channel([0-7])$", str(ch))
                if not m:
                    error(f"DMA '{key}' MEMORY_TO_MEMORY invalid channel '{ch}'. Skipping this DMA.")
                    continue
                dma_name = cfg.get("name","")
                dup_key = (dma_name, ch)
                if dup_key in mm_channel_keys:
                    error(f"Duplicate MEMORY_TO_MEMORY channel mapping for {dma_name} {ch} (DMA '{key}' skipped).")
                    continue
                mm_channel_keys.add(dup_key)

        order = ["name", "channel", "stream", "direction", "request"]
        cfg = reorder_fields(cfg, order)
        refined_temp[key] = cfg

    refined = {}
    for key, cfg in refined_temp.items():
        direction = cfg.get("direction","").upper()
        if direction in ("PERIPH_TO_MEMORY","MEMORY_TO_PERIPH") and key not in used_dma_names:
            warn(f"Removing DMA '{key}' ({direction}) not referenced by any peripheral.")
            continue
        refined[key] = cfg
    return refined

def normalize_timer_str_groups(t_cfg, groups):
    """
    groups: list of ([alias1, alias2], allowed_values_list)
    Keeps whichever alias is present (only one expected). If none exist, creates the first alias with default.
    Does not rename keys; preserves the original provided by the user.
    """
    for names, allowed in groups:
        name_used = None
        for alias in names:
            if alias in t_cfg:
                name_used = alias
                break
        if name_used is None:
            name_used = names[0]
            values = None
        else:
            values = t_cfg.get(name_used)
        t_cfg[name_used] = normalize_choice(values, allowed, name_used)

def get_board_timer_specs(board_cfg):
    """
    Returns dict { TIMER_NAME_UPPER : max_period } extracted from board config.
    """
    specs = {}
    bt = board_cfg.get("timers", {})
    for name, cfg in bt.items():
        p = cfg.get("Period")
        if p is None:
            p = cfg.get("period")
        try:
            p = int(p)
        except Exception:
            continue
        specs[name.upper()] = p
    return specs

def base_timer_name(timer_key):
    """Extract base timer name before optional _OW_<n> suffix."""
    if "_OW_" in timer_key:
        base, _, tail = timer_key.partition("_OW_")
        if tail.isdigit():
            return base
    return timer_key

def normalize_numeric_field(t_cfg, possible_keys, default_value, max_value, timer_key):
    """
    Normalize an integer field:
    - Use first existing key among possible_keys, else create the first.
    - Convert to int, use default_value on error.
    - Verify range [min_value, max_value].
    - Preserve the original key if present; otherwise, use the first key in possible_keys.
    """
    min_value = 0
    existing_key = next((k for k in possible_keys if k in t_cfg), possible_keys[0])
    raw = t_cfg.get(existing_key)
    if raw is None:
        val = default_value
    else:
        try:
            val = int(raw)
        except Exception:
            warn(f"Timer '{timer_key}': invalid {possible_keys[0]} '{raw}' (using {default_value}).")
            val = default_value
    if val < min_value or val > max_value:
        warn(f"Timer '{timer_key}': {possible_keys[0]} '{val}' out of range ({min_value}..{max_value}) (using {default_value}).")
        val = default_value
    t_cfg[existing_key] = val

# --- OW index validation & ordering reconstruction ---
def validate_and_order_ow_timers(project_timers, ow_pattern):
    # Collect OW entries per base
    ow_map = {}
    for key in list(project_timers.keys()):
        m = ow_pattern.match(key)
        if not m:
            continue
        base, idx_str = m.groups()
        idx = int(idx_str)
        if idx > 32:
            warn(f"Removing '{key}': OW index {idx} > 32.")
            del project_timers[key]
            continue
        ow_map.setdefault(base, {}).setdefault(idx, []).append(key)

    # Warn about duplicates / gaps
    for base, idx_dict in ow_map.items():
        # Duplicates (same idx multiple keys)
        for idx, keys in idx_dict.items():
            if len(keys) > 1:
                warn(f"Base '{base}': duplicate OW index {idx} in {keys}. All kept (no rename).")
        # Gaps
        existing_indices = sorted(idx_dict.keys())
        if existing_indices:
            expected = list(range(1, existing_indices[-1] + 1))
            if existing_indices != expected:
                warn(f"Base '{base}': non-sequential OW indices {existing_indices} (expected {expected}).")

    # Rebuild ordered, base followed by OW (ascending)
    original_order = list(project_timers.keys())
    new_timers = {}
    added = set()
    for key in original_order:
        if key in added:
            continue
        m = ow_pattern.match(key)
        if m:
            # Skip standalone OW here; it will be added with its base (if base exists)
            base = m.group(1)
            if base in new_timers:
                continue
            # If base not present (already removed earlier), skip
            continue
        base = key  # base timer
        new_timers[base] = project_timers[base]
        added.add(base)
        if base in ow_map:
            for idx in sorted(ow_map[base].keys()):
                # Keep insertion order of duplicates (if any)
                for ow_key in ow_map[base][idx]:
                    if ow_key in project_timers and ow_key not in added:
                        new_timers[ow_key] = project_timers[ow_key]
                        added.add(ow_key)
                        
    return new_timers, added

# --- New: global ordering of all timers (after OW ordering) ---
def order_all_timers(timers_dict):
    """
    Return a new dict with:
      TIMx bases sorted by x ascending,
      each followed by its TIMx_OW_n (n ascending),
      non-TIM entries appended preserving original order.
    """
    base_pat = re.compile(r"^TIM(\d+)$")
    ow_pat = re.compile(r"^TIM(\d+)_OW_(\d+)$")

    sortable = []
    others = []
    seq = 0
    for k in timers_dict.keys():
        seq += 1
        m_base = base_pat.match(k)
        if m_base:
            num = int(m_base.group(1))
            sortable.append(((num, 0, 0, seq), k))
            continue
        m_ow = ow_pat.match(k)
        if m_ow:
            num = int(m_ow.group(1))
            ow_idx = int(m_ow.group(2))
            sortable.append(((num, 1, ow_idx, seq), k))
            continue
        others.append((seq, k))  # non TIM pattern

    # Sort TIM-related
    sortable.sort(key=lambda x: x[0])

    ordered = {}
    for _, k in sortable:
        ordered[k] = timers_dict[k]
    # Append others unchanged order
    for _, k in sorted(others, key=lambda x: x[0]):
        ordered[k] = timers_dict[k]
    return ordered

def build_board_trigger_map(board_cfg):
    """
    Returns: { TIMER_NAME : [list of trigger timer names (upper)] }
    """
    mapping = {}
    bt = board_cfg.get("timers", {})
    for name, cfg in bt.items():
        seq = cfg.get("trigger") or cfg.get("triggers")
        if isinstance(seq, list):
            mapping[name.upper()] = [str(x).upper() for x in seq]
    return mapping

def normalize_trigger_source(timer_key, cfg, base_name, board_trigger_map, user_provided):
    """
    Map trigger_source/InputTrigger:
      - If not user_provided: nothing to validate (return True).
      - Accept DISABLE, ITR0..ITR3 directly.
      - Accept a timer name from board trigger list (index -> ITR#).
      - On invalid provided value -> return False (caller will delete timer) with detailed help.
    Returns True if trigger_source valid (or not provided), False if invalid.
    """
    if not user_provided:
        return True
    trig_key = "trigger_source" if "trigger_source" in cfg else ("InputTrigger" if "InputTrigger" in cfg else "trigger_source")
    raw = cfg.get(trig_key)
    if raw is None:
        return True
    up = str(raw).upper().replace(" ", "")
    if up in VALID_TRIGGER_SOURCES:
        cfg[trig_key] = up
        return True
    triggers = board_trigger_map.get(base_name)
    if triggers:
        if up in triggers:
            idx = triggers.index(up)
            if idx < 4:
                cfg[trig_key] = f"ITR{idx}"
                return True
    # ---- Build detailed help message ----
    mapping = board_trigger_map.get(base_name, [])
    mapping_desc = ", ".join(
        f"{mapping[i]}"
        for i in range(4)
    )
    error(
        f"Timer '{timer_key}': invalid trigger_source '{raw}'. Timer removed. "
        f"\n        Allowed direct values:  {', '.join(VALID_TRIGGER_SOURCES[1:])} (or DISABLE when slave_mode=DISABLE). "
        f"\n        Mapped timers for {base_name}: {mapping_desc}."
    )
    return False

def process_timers(project_cfg, board_timer_specs, board_trigger_map):
    """
    (Updated) Adds slave_mode & trigger_source normalization.
    """
    project_timers = project_cfg.get("timers", {})
    to_delete = []

    ow_pattern = re.compile(r"^(TIM\d+)_OW_(\d+)$")

    base_defined = {k for k in project_timers.keys() if not ow_pattern.match(k)}
    for key in list(project_timers.keys()):
        m = ow_pattern.match(key)
        if m:
            base = m.group(1)
            if base not in base_defined:
                warn(f"Removing '{key}' because base timer '{base}' not defined in project.")
                to_delete.append(key)

    for k in to_delete:
        if k in project_timers:
            del project_timers[k]
    to_delete.clear()

    for key, t_cfg in list(project_timers.items()):
        base = base_timer_name(key).upper()
        if base not in board_timer_specs:
            error(f"Timer '{key}' not present in board configuration. Removed.")
            to_delete.append(key)
            continue

        normalize_timer_str_groups(t_cfg, timer_params_str_groups)

        # Determine slave_mode value (after normalization)
        slave_key = "slave_mode" if "slave_mode" in t_cfg else ("SlaveMode" if "SlaveMode" in t_cfg else "slave_mode")
        slave_mode_val = t_cfg.get(slave_key, "DISABLE").upper()

        # Detect if user provided trigger_source / InputTrigger
        user_provided_trig = ("trigger_source" in t_cfg) or ("InputTrigger" in t_cfg)

        # Enforce rule: slave_mode active requires explicit trigger_source
        if slave_mode_val != "DISABLE" and not user_provided_trig:
            error(f"Timer '{key}': slave_mode '{slave_mode_val}' requires explicit trigger_source. Timer removed.")
            to_delete.append(key)
            continue

        # Default trigger_source when absent and slave_mode disabled
        if slave_mode_val == "DISABLE" and not user_provided_trig:
            t_cfg["trigger_source"] = "DISABLE"

        # Map/validate trigger_source if user provided (or already set)
        if not normalize_trigger_source(key, t_cfg, base, board_trigger_map, user_provided_trig):
            to_delete.append(key)
            continue

        # If slave_mode active but trigger_source resolved to DISABLE -> remove (invalid combo)
        if slave_mode_val != "DISABLE" and t_cfg.get("trigger_source","DISABLE") == "DISABLE":
            error(f"Timer '{key}': trigger_source DISABLE invalid with slave_mode '{slave_mode_val}'. Timer removed.")
            to_delete.append(key)
            continue

        # Period
        board_max = board_timer_specs[base]
        normalize_numeric_field(
            t_cfg,
            ["Period", "period"],
            default_value=board_max,
            max_value=board_max,
            timer_key=key
        )
        # Prescaler
        normalize_numeric_field(
            t_cfg,
            ["Prescaler", "prescaler"],
            default_value=0,
            max_value=65535,
            timer_key=key
        )

    for k in to_delete:
        del project_timers[k]
    new_timers, added = validate_and_order_ow_timers(project_timers, ow_pattern)
    for key in project_timers.keys():
        if key not in added:
            new_timers[key] = project_timers[key]
            added.add(key)
    project_cfg["timers"] = order_all_timers(new_timers)

    used_dma_in_timers = {
        v.get("dma") for v in project_cfg["timers"].values()
        if isinstance(v.get("dma"), str)
    }
    return used_dma_in_timers

def process_dmas(project_cfg, board_cfg, family, used_dma_names):
    """
    Refine DMA definitions and write them back into project_cfg.
    """
    dma_mapping = board_cfg.get("dma_mapping", {})
    project_dmas = project_cfg.get("dmas", {})
    refined_dmas = validate_and_expand_dmas(project_dmas, dma_mapping, family, used_dma_names)
    project_cfg["dmas"] = refined_dmas

def refine_project(board_cfg_path, project_cfg_path, output_path):
    board_cfg = load_json(board_cfg_path)
    project_cfg = load_json(project_cfg_path)
    family = project_cfg.get("family", board_cfg.get("family","")).lower()

    # Board timer specs: extract all timers and their period values
    board_timer_specs = get_board_timer_specs(board_cfg)
    board_trigger_map = build_board_trigger_map(board_cfg)

    # 1. Timers
    used_dma_in_timers = process_timers(project_cfg, board_timer_specs, board_trigger_map)

    # 2. DMAs
    process_dmas(project_cfg, board_cfg, family, used_dma_in_timers)

    # 3. Future steps ...

    save_json(output_path, project_cfg)
    print(f"[INFO] Refined configuration written to: {output_path}")

def main():
    if len(sys.argv) != 4:
        print("Usage: python check_and_refine.py <board_cfg.json> <project_cfg.json> <output_refined.json>")
        sys.exit(1)
    refine_project(sys.argv[1], sys.argv[2], sys.argv[3])

if __name__ == "__main__":
    main()