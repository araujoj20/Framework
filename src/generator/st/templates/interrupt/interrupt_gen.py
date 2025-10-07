import os
import sys
import json
import re
from jinja2 import Environment, FileSystemLoader

TIMER_OW_RE = re.compile(r"^(TIM\d+)_OW_(\d+)$", re.IGNORECASE)

def base_timer(timer_key: str) -> str:
    m = TIMER_OW_RE.match(timer_key)
    return m.group(1).upper() if m else timer_key.upper()

def parse_interrupt(timer_cfg: dict):
    """Return (enabled:bool, sub_mode:str|None) based on 'interrupt'/'isr'.
    ENABLE -> (True,None); BRK/UP/TRG/CC -> (True,mode); DISABLE/None -> (False,None)."""
    raw = None
    for k in ("interrupt","isr"):
        if k in timer_cfg:
            raw = str(timer_cfg[k]).strip().upper()
            break
    if not raw or raw == "DISABLE":
        return False, None
    if raw == "ENABLE":
        return True, None
    if raw in ("BRK","UP","TRG","CC"):
        return True, raw
    return False, None

def wants_handler(timer_cfg: dict) -> bool:
    flag = str(timer_cfg.get("irq_handler") or timer_cfg.get("IRQHandler") or "").strip().upper()
    if flag == "DISABLE":
        return False
    return True  # default ENABLE

def main():
    if len(sys.argv) < 3:
        print("Usage: python interrupt_gen.py <refined_config.json> <output_dir> [<board_cfg.json>]")
        sys.exit(1)

    cfg_path = sys.argv[1]
    out_dir  = sys.argv[2]
    board_cfg_path = sys.argv[3] if len(sys.argv) > 3 else None

    with open(cfg_path, "r") as f:
        cfg = json.load(f)
    board_cfg = None
    if board_cfg_path and os.path.isfile(board_cfg_path):
        try:
            with open(board_cfg_path, 'r') as bf:
                board_cfg = json.load(bf)
        except Exception:
            board_cfg = None

    timers_cfg = cfg.get("timers", {}) or {}
    dmas_cfg   = cfg.get("dmas",   {}) or {}
    irq_map    = cfg.get("irq_timer_map") or (board_cfg.get("irq_timer_map") if board_cfg else {}) or {}
    family = cfg.get("family", "").lower()

    # Build timer IRQ descriptions (composite aware)
    # Structure: generated_irqs = [ {"vector": IRQnName, "handler": FunctionName, "timers": [ {"base": TIMx, "handle": htimx } ] } ]
    # For composite parents (TIM1, TIM8) with modes, unify calls in one handler per vector.
    requested = []  # list of (base, sub_mode, original_key, wants_handler)
    for tname, tcfg in timers_cfg.items():
        enabled, sub_mode = parse_interrupt(tcfg)
        if not enabled:
            continue
        base = base_timer(tname)
        requested.append((base, sub_mode, tname, wants_handler(tcfg)))

    # Resolve into vectors
    # Helper to derive vector and group for each (base, mode)
    def resolve_vector(base, mode):
        emap = irq_map.get(base, {})
        # Alias timers
        if "ALIASES_TO" in emap:
            parent = emap["ALIASES_TO"]
            parent_map = irq_map.get(parent, {})
            forced = emap.get("MODE")
            # parent vector from forced mode
            if forced and forced in parent_map:
                return parent_map[forced], parent
            # fallback single
            if forced and forced in ("BRK","UP","TRG","CC"):
                # Build name pattern if parent has mapping but missing key
                vect = parent_map.get(forced)
                return vect, parent
        # Single special
        if "SINGLE" in emap:
            return emap["SINGLE"], base
        # Composite parent
        if all(k in emap for k in ("BRK","UP","TRG","CC")):
            mode_sel = mode if mode in ("BRK","UP","TRG","CC") else emap.get("DEFAULT","UP")
            return emap.get(mode_sel), base
        # Fallback plain vector name
        return f"{base}_IRQn", base

    vectors = {}  # key: vector -> { handler, timers:set(base) }
    handler_emit_map = {}  # base -> whether at least one variant wants handler
    for base, mode, orig, want_h in requested:
        vector_name, parent = resolve_vector(base, mode)
        if not vector_name:
            continue
        # Derive C handler function name (strip _IRQn suffix if present)
        handler_name = vector_name
        if handler_name.endswith("_IRQn"):
            handler_name = handler_name[:-5]
        entry = vectors.setdefault(vector_name, {"handler": handler_name, "timers": set(), "emit": False})
        entry["timers"].add(base)
        # If any variant of this base wants the handler code, mark emit True
        if want_h:
            entry["emit"] = True

    # Convert to list and order deterministically (by numeric timer then name)
    def timer_sort_key(t):
        m = re.match(r"TIM(\d+)$", t)
        return (int(m.group(1)) if m else 9999, t)
    generated_irqs = []
    for vector, data in vectors.items():
        tlist = sorted(list(data["timers"]), key=timer_sort_key)
        generated_irqs.append({
            "vector": vector,
            "handler": data["handler"],
            "timers": [ {"base": tb, "handle": f"h{tb.lower()}"} for tb in tlist ],
            "emit": data.get("emit", False)
        })

    # Deterministic ordering of handlers themselves (by first timer in list)
    generated_irqs.sort(key=lambda e: timer_sort_key(e["timers"][0]["base"]))

    # 2) DMAs associated to timers (resolve dict or string reference)
    dma_irqs = []
    seen_dma = set()
    for tname, tcfg in timers_cfg.items():
        dref = tcfg.get("dma")
        dma_obj = None
        if isinstance(dref, dict):
            dma_obj = dref
        elif isinstance(dref, str):
            dma_obj = dmas_cfg.get(dref)
        if not isinstance(dma_obj, dict):
            continue
        name = dma_obj.get("name")
        stream = dma_obj.get("stream")
        req = dma_obj.get("request")
        if not (name and stream and req):
            # require full info to emit a stable IRQ
            continue
        key = (name.upper(), stream, req.upper())
        if key in seen_dma:
            continue
        seen_dma.add(key)
        dma_irqs.append({
            "name": name.upper(),             # e.g., DMA1
            "stream": stream,                 # e.g., Stream6
            "request": req,                   # e.g., TIM2_UP
            "handle": f"hdma_{req.lower()}",  # matches tim.c handle pattern
        })

    # (legacy tim_irq_bases retained for backward compatibility templates if any)
    tim_irq_bases = [e["timers"][0]["base"] for e in generated_irqs]

    # Unique set of all timer bases referenced in any handler (for extern list)
    used_timer_bases_set = set()
    for irq in generated_irqs:
        for t in irq["timers"]:
            used_timer_bases_set.add(t["base"])
    used_timer_bases = sorted(list(used_timer_bases_set), key=lambda b: timer_sort_key(b))

    def dma_sort_key(d):
        # DMAx first, then numeric stream if any
        s = d["stream"]
        m = re.match(r"Stream(\d+)$", s, re.IGNORECASE)
        sidx = int(m.group(1)) if m else 999
        return (d["name"], sidx, s)
    dma_irqs = sorted(dma_irqs, key=dma_sort_key)

    # Render templates
    env = Environment(loader=FileSystemLoader(os.path.dirname(os.path.abspath(__file__))))
    os.makedirs(os.path.join(out_dir, "inc"), exist_ok=True)
    os.makedirs(os.path.join(out_dir, "src"), exist_ok=True)

    ctx = {
        "tim_irq_bases": tim_irq_bases,          # legacy
        "used_timer_bases": used_timer_bases,    # unique list for externs
        "dma_irqs": dma_irqs,
        "family": family,
        "generated_irqs": generated_irqs,
    }

    inc_t = env.get_template("interrupt_inc.j2")
    with open(os.path.join(out_dir, "inc", f"{family}_it.h"), "w") as f:
        f.write(inc_t.render(**ctx))

    src_t = env.get_template("interrupt_src.j2")
    with open(os.path.join(out_dir, "src", f"{family}_it.c"), "w") as f:
        f.write(src_t.render(**ctx))

if __name__ == "__main__":
    main()
