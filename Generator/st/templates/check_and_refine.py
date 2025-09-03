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
VALID_COUNTER_MODES = [
    "UP",
    "DOWN",
    "CENTERALIGNED1",
    "CENTERALIGNED2",
    "CENTERALIGNED3"
]
VALID_ARR_PRELOAD_MODES = [
    "DISABLE",
    "ENABLE"
]
VALID_MASTER_SLAVE_MODES = [
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
VALID_INTERRUPT_MODES = [
    "DISABLE",
    "ENABLE"
]
VALID_IRQHANDLER_MODES = [
    "DISABLE",
    "ENABLE"
]

# Generic groups to normalization
timer_params_str_groups = [
    (["trigger_event", "MasterOutputTrigger"], VALID_MASTER_TRIGGERS),
    (["clock_source", "ClockSource"], VALID_CLOCK_SOURCES),
    (["counter_mode", "CounterMode"],VALID_COUNTER_MODES),
    (["auto_reload_preload", "AutoReloadPreload"],VALID_ARR_PRELOAD_MODES),
    (["master_slave_mode", "MasterSlaveMode"], VALID_MASTER_SLAVE_MODES),
    (["slave_mode", "SlaveMode"], VALID_SLAVE_MODES),
    (["interrupt", "isr"], VALID_INTERRUPT_MODES),
]

timers_order = [
            ["slave_mode", "SlaveMode"],
            ["trigger_source", "InputTrigger"],
            ["clock_source", "ClockSource"],
            ["Prescaler", "prescaler"],
            ["counter_mode", "CounterMode"],
            ["Period", "period"],
            ["auto_reload_preload","AutoReloadPreload"],
            ["master_slave_mode", "MasterSlaveMode"],
            ["trigger_event", "MasterOutputTrigger"],
            ["interrupt", "isr"],
            ["irq_handler", "IRQHandler"],
        ]

dma_order = [
    "name", 
    "channel", 
    "stream", 
    "direction", 
    "request"
    ]

# ---------- ANSI colors for prints ----------
_YELLOW = "\033[33m"
_RED = "\033[31m"
_BLUE = "\033[34m"
_RESET = "\033[0m"

def warn(msg):
    print(f"{_YELLOW}[WARN]  {msg}{_RESET}")
def error(msg):
    print(f"{_RED}[ERROR] {msg}{_RESET}")
def help(msg):
    print(f"{_BLUE}[HELP]  {msg}{_RESET}")
    
# ---------- Utility functions ----------
def load_json(path):
    with open(path, "r") as f:
        return json.load(f)

def save_json(path, data):
    with open(path, "w") as f:
        json.dump(data, f, indent=4)

def normalize_choice(value, allowed, label, timer):
    if not value:
        return allowed[0]
    v = str(value).upper().replace(" ", "")
    if v in allowed:
        return v
    error(f"Timer '{timer}',Invalid {label} '{value}'. Using '{allowed[0]}'"
          f"\n        Allowed {label}: {', '.join(allowed)}.")
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

def reorder_fields(cfg: dict, order_spec):
    """
    Generic reordering.
    - single key names (str) -> include if present.
    - list of names -> first existing name in the list is included (only one).
    Remaining keys keep original relative order.
    """
    original_order = list(cfg.keys())
    out = {}
    used = set()

    for entry in order_spec:
        if isinstance(entry, (list, tuple)):
            chosen = None
            for alias in entry:
                if alias in cfg:
                    chosen = alias
                    break
            if chosen and chosen not in used:
                out[chosen] = cfg[chosen]
                used.add(chosen)
        else:
            if entry in cfg and entry not in used:
                out[entry] = cfg[entry]
                used.add(entry)

    for k in original_order:
        if k not in used:
            out[k] = cfg[k]
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

def validate_and_expand_dmas(project_dmas, board_dma_mapping, board_family, used_dma_names, board_channels_map):
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
        # --- Channel count validation against board caps (TIMx_CHy) ---
        if request:
            mch = re.match(r"(TIM\d+)_CH(\d+)", request.upper())
            if mch:
                base = mch.group(1)
                ch_num = int(mch.group(2))
                allowed = board_channels_map.get(base)
                if allowed is not None and allowed != 0 and ch_num > allowed:
                    error(f"DMA '{key}': request '{request}' exceeds channel count ({ch_num}>{allowed}) of {base}. Removed.")
                    continue
        # --- Mapping resolution (request-based) ---
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

        cfg = reorder_fields(cfg, dma_order)
        refined_temp[key] = cfg

    refined = {}
    for key, cfg in refined_temp.items():
        direction = cfg.get("direction","").upper()
        if direction in ("PERIPH_TO_MEMORY","MEMORY_TO_PERIPH") and key not in used_dma_names:
            warn(f"Removing DMA '{key}' ({direction}) not referenced by any peripheral.")
            continue
        refined[key] = cfg
    return refined

def normalize_timer_str_groups(t_cfg, groups, timer_key):
    """
    groups: list of ([alias1, alias2], allowed_values_list)
    Keeps whichever alias is present (only one expected). If none exist, creates the first alias with default.
    Adds timer context to error messages.
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
        t_cfg[name_used] = normalize_choice(values, allowed, name_used, timer_key)

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

def build_board_trigger_source_map(board_cfg):
    """
    Returns: { TIMER_NAME : [list of trigger timer names (upper)] }
    """
    mapping = {}
    bt = board_cfg.get("timers", {})
    for name, cfg in bt.items():
        seq = cfg.get("trigger_source")
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

def process_timers(project_cfg, board_timer_specs, board_trigger_map, board_caps):

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

        # Normalize early for consistent values
        normalize_timer_str_groups(t_cfg, timer_params_str_groups, timer_key=key)

        caps = board_caps.get(base, {})
        t_type = caps.get("type","")
        allow_slave = caps.get("allow_slave", False)
        allow_master = caps.get("allow_master", False)
        has_trig_src = caps.get("has_trigger_source", False)
        trig_output = caps.get("trigger_output", None)
        trig_output_explicit = "trigger_output" in board_caps.get(base, {})

        # Constraints: no trigger_source list in board => forbid trigger_source & slave_mode
        if not has_trig_src:
            if "trigger_source" in t_cfg or "InputTrigger" in t_cfg:
                warn(f"Timer '{key}': trigger_source removed (no trigger_source support).")
            t_cfg.pop("trigger_source", None)
            t_cfg.pop("InputTrigger", None)
            if "slave_mode" in t_cfg and t_cfg.get("slave_mode") != "DISABLE":
                warn(f"Timer '{key}': slave_mode removed (no trigger_source support).")
            # Remove instead of forcing DISABLE
            t_cfg.pop("slave_mode", None)

        # Basic type: remove master/slave
        if t_type == "BASIC":
            if t_cfg.get("master_slave_mode") not in (None, "DISABLE"):
                warn(f"Timer '{key}': master_slave_mode not supported for BASIC type (removed).")
            if t_cfg.get("slave_mode") not in (None, "DISABLE"):
                warn(f"Timer '{key}': slave_mode not supported for BASIC type (removed).")
            t_cfg.pop("master_slave_mode", None)
            t_cfg.pop("slave_mode", None)
            basic_timer = True
        else:
            basic_timer = False

        # trigger_output none: forbid trigger_event & master_slave_mode
        if trig_output_explicit and isinstance(trig_output, str) and trig_output.lower() == "none":
            if "trigger_event" in t_cfg and t_cfg.get("trigger_event") != VALID_MASTER_TRIGGERS[0]:
                warn(f"Timer '{key}': trigger_event not allowed (trigger_output=none). Forcing {VALID_MASTER_TRIGGERS[0]}.")
            t_cfg["trigger_event"] = VALID_MASTER_TRIGGERS[0]
            if "master_slave_mode" in t_cfg and t_cfg.get("master_slave_mode") != "DISABLE":
                warn(f"Timer '{key}': master_slave_mode not allowed (trigger_output=none). Forcing DISABLE.")
            if "master_slave_mode" in t_cfg:
                t_cfg["master_slave_mode"] = "DISABLE"

        # Slave unsupported (only if key still exists and not BASIC already handled)
        if not basic_timer and not allow_slave and "slave_mode" in t_cfg and t_cfg.get("slave_mode") != "DISABLE":
            warn(f"Timer '{key}': slave_mode not supported (forcing DISABLE).")
            t_cfg["slave_mode"] = "DISABLE"

        # Master unsupported (only if key still exists and not BASIC already handled)
        if not basic_timer and not allow_master and "master_slave_mode" in t_cfg and t_cfg.get("master_slave_mode") != "DISABLE":
            warn(f"Timer '{key}': master_slave_mode not supported (forcing DISABLE).")
            t_cfg["master_slave_mode"] = "DISABLE"

        # Interrupt / IRQ
        interrupt_key = "interrupt" if "interrupt" in t_cfg else ("isr" if "isr" in t_cfg else "interrupt")
        interrupt_val = t_cfg.get(interrupt_key, "DISABLE")
        irq_key = "irq_handler" if "irq_handler" in t_cfg else ("IRQHandler" if "IRQHandler" in t_cfg else None)
        if interrupt_val == "ENABLE":
            if irq_key is None:
                t_cfg["irq_handler"] = "ENABLE"
            else:
                t_cfg[irq_key] = normalize_choice(
                    t_cfg.get(irq_key),
                    VALID_IRQHANDLER_MODES,
                    irq_key,
                    key
                )
        else:
            if irq_key is not None:
                irq_val_raw = str(t_cfg.get(irq_key)).upper().replace(" ", "")
                if irq_val_raw == "ENABLE":
                    error(f"Timer '{key}': irq_handler ENABLE invalid while interrupt DISABLE. Removing irq_handler.")
                del t_cfg[irq_key]

        # Trigger source logic only if supported & user provided
        user_provided_trig = ("trigger_source" in t_cfg) or ("InputTrigger" in t_cfg)
        if t_cfg.get("slave_mode","DISABLE") != "DISABLE" and (not user_provided_trig or not has_trig_src):
            error(f"Timer '{key}': slave_mode requires trigger_source and board support. Timer removed.")
            to_delete.append(key)
            continue

        if t_cfg.get("slave_mode","DISABLE") == "DISABLE" and not user_provided_trig:
            # Only set DISABLE if trigger capability exists; if not, already removed
            if has_trig_src:
                t_cfg["trigger_source"] = "DISABLE"

        if has_trig_src and not normalize_trigger_source(key, t_cfg, base, board_trigger_map, user_provided_trig):
            to_delete.append(key)
            continue

        if t_cfg.get("slave_mode","DISABLE") != "DISABLE" and t_cfg.get("trigger_source","DISABLE") == "DISABLE":
            error(f"Timer '{key}': trigger_source DISABLE invalid with slave_mode active. Timer removed.")
            to_delete.append(key)
            continue

        # Period / Prescaler
        board_max = board_timer_specs[base]
        normalize_numeric_field(
            t_cfg,
            ["Period", "period"],
            default_value=board_max,
            max_value=board_max,
            timer_key=key
        )
        normalize_numeric_field(
            t_cfg,
            ["Prescaler", "prescaler"],
            default_value=0,
            max_value=65535,
            timer_key=key
        )

        project_timers[key] = reorder_fields(t_cfg, timers_order)

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

def process_dmas(project_cfg, board_cfg, family, used_dma_names, board_channels_map):
    dma_mapping = board_cfg.get("dma_mapping", {})
    project_dmas = project_cfg.get("dmas", {})
    refined_dmas = validate_and_expand_dmas(project_dmas, dma_mapping, family, used_dma_names, board_channels_map)
    project_cfg["dmas"] = refined_dmas

def build_board_caps(board_cfg):
    """
    Returns:
      caps[ TIMER_NAME ] = {
         'type': TYPE (upper),
         'channels': int or 0,
         'has_trigger_source': bool,
         'trigger_output': (original or None),
         'allow_slave': bool,          # needs trigger_source list AND type not BASIC
         'allow_master': bool          # disallowed if trigger_output == 'none' or type BASIC
      }
    """
    caps = {}
    bt = board_cfg.get("timers", {})
    for name, cfg in bt.items():
        t_type = str(cfg.get("type","")).upper()
        channels = int(cfg.get("channels", 0) or 0)
        trig_list = cfg.get("trigger_source")
        has_trig = isinstance(trig_list, list)
        trig_out = cfg.get("trigger_output")
        has_explicit_trig_out = "trigger_output" in cfg
        allow_slave = has_trig and t_type not in ("BASIC", "")
        # OLD (buggy): allow_master = (t_type not in ("BASIC", "")) and (str(trig_out).lower() != "none")
        # NEW: only disable master if trigger_output key exists AND value == "none"
        allow_master = (t_type not in ("BASIC", "")) and not (has_explicit_trig_out and isinstance(trig_out, str) and trig_out.lower() == "none")
        caps[name.upper()] = {
            "type": t_type,
            "channels": channels,
            "has_trigger_source": has_trig,
            "trigger_output": trig_out,
            "allow_slave": allow_slave,
            "allow_master": allow_master
        }
    return caps

def refine_project(board_cfg_path, project_cfg_path, output_path):
    board_cfg = load_json(board_cfg_path)
    project_cfg = load_json(project_cfg_path)
    family = project_cfg.get("family", board_cfg.get("family","")).lower()
    board_timer_specs = get_board_timer_specs(board_cfg)
    board_trigger_map = build_board_trigger_source_map(board_cfg)
    board_caps = build_board_caps(board_cfg)
    board_channels_map = {k: v["channels"] for k,v in board_caps.items()}

    used_dma_in_timers = process_timers(project_cfg, board_timer_specs, board_trigger_map, board_caps)
    process_dmas(project_cfg, board_cfg, family, used_dma_in_timers, board_channels_map)
    save_json(output_path, project_cfg)
    print(f"[INFO]  Refined configuration written to: {output_path}")

def main():
    if len(sys.argv) != 4:
        print("Usage: python check_and_refine.py <board_cfg.json> <project_cfg.json> <output_refined.json>")
        sys.exit(1)
    refine_project(sys.argv[1], sys.argv[2], sys.argv[3])

if __name__ == "__main__":
    main()