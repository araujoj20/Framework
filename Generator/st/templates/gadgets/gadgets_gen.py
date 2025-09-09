import sys, os, json, re
from jinja2 import Environment, FileSystemLoader

script_dir = os.path.dirname(os.path.abspath(__file__))

TIMER_OW_RE = re.compile(r"^(TIM\d+)_OW_(\d+)$", re.IGNORECASE)

def timer_function_name(timer_key):
    m = TIMER_OW_RE.match(timer_key)
    if m:
        base, ow = m.groups()
        return f"MX_{base.upper()}_OW_{ow}_Init"
    return f"MX_{timer_key.upper()}_Init"

def timer_base_name(timer_key):
    m = TIMER_OW_RE.match(timer_key)
    return m.group(1).upper() if m else timer_key.upper()

def timer_handle_name(timer_key):
    base = timer_base_name(timer_key)  # TIMx
    return f"htim{base[3:].lower()}"

def dma_mem2mem_handle(dma_obj):
    # hdma_memtomem_dma1_stream1
    name = dma_obj.get("name","").lower()
    stream = dma_obj.get("stream","").lower()
    return f"hdma_memtomem_{name}_{stream}"

def timer_dma_handle(timer_dma):
    req = timer_dma.get("request")
    if not req:
        return None
    return f"hdma_{req.lower()}"

def collect_timer_dma(project_cfg, timer_key):
    t = project_cfg.get("timers", {}).get(timer_key, {})
    dma_field = t.get("dma")
    if isinstance(dma_field, dict):
        return dma_field
    if isinstance(dma_field, str):
        # lookup by raw key (case sensitive) first then case-insensitive
        dmas = project_cfg.get("dmas", {})
        if dma_field in dmas:
            return dmas[dma_field]
        # fallback insensitive
        for k,v in dmas.items():
            if k.lower() == dma_field.lower():
                return v
    return None

def find_dma_entry(dmas_cfg, raw):
    # Try exact, upper, lower
    if raw in dmas_cfg:
        return dmas_cfg[raw]
    ru = raw.upper()
    rl = raw.lower()
    for k,v in dmas_cfg.items():
        if k.upper() == ru or k.lower() == rl:
            return v
    return None

def main():
    if len(sys.argv) < 3:
        print("Usage: python gadgets_gen.py <config.json> <output_dir>")
        sys.exit(1)

    cfg_path = sys.argv[1]
    out_dir  = sys.argv[2]

    with open(cfg_path, "r") as f:
        cfg = json.load(f)

    gadgets_cfg = cfg.get("gadgets", {})
    timers_cfg  = cfg.get("timers", {})
    # timers_cfg keys are case-sensitive; build case-insensitive map
    timers_ci = {k.upper(): k for k in timers_cfg.keys()}
    dmas_cfg    = cfg.get("dmas", {})

    groups = []
    for group_name, entries in gadgets_cfg.items():
        processed = []
        group_upper = group_name.upper()
        for raw in entries:
            raw_str = str(raw)
            upper_id = raw_str.upper()
            is_timer = upper_id.startswith("TIM") and upper_id in timers_ci
            dma_obj = None
            is_dma = False

            if not is_timer:
                dma_obj = find_dma_entry(dmas_cfg, raw_str)
                is_dma = dma_obj is not None

            entry = {
                "raw": raw_str,
                "ident": upper_id,              # full (may include _OW_n)
                "macro_timer": None,            # base timer for macro
                "fn_call": None,
                "tim_handle": None,
                "dma_handle": None,
                "dma_name": None,               # used in macro suffix
                "is_timer": is_timer,
                "is_dma": is_dma,
            }

            if is_timer:
                # real key name
                real_key = timers_ci[upper_id]
                entry["macro_timer"] = timer_base_name(upper_id)  # strip OW for macro
                entry["fn_call"] = timer_function_name(upper_id)
                entry["tim_handle"] = timer_handle_name(upper_id)
                t_dma = collect_timer_dma(cfg, real_key)
                if isinstance(t_dma, dict):
                    th = timer_dma_handle(t_dma)
                    if th:
                        entry["dma_handle"] = th
                        entry["dma_name"] = "DMA"
            elif is_dma:
                # memory-to-memory or peripheral
                direction = str(dma_obj.get("direction","")).upper()
                name = dma_obj.get("name","").upper()
                if direction == "MEMORY_TO_MEMORY":
                    # base macro over controller name
                    entry["dma_handle"] = dma_mem2mem_handle(dma_obj)
                    entry["dma_name"] = name  # e.g. DMA1
                else:
                    req = dma_obj.get("request")
                    if req:
                        entry["dma_handle"] = f"hdma_{req.lower()}"
                        entry["dma_name"] = name or "DMA"
                    else:
                        # skip peripheral DMA without request (no stable handle name)
                        continue
            else:
                continue  # unknown entry

            processed.append(entry)

        if processed:
            groups.append({
                "name": group_name,
                "upper": group_upper,
                "entries": processed
            })

    if not groups:
        return

    os.makedirs(out_dir, exist_ok=True)
    inc_dir = os.path.join(out_dir, "Inc")
    os.makedirs(inc_dir, exist_ok=True)

    env = Environment(loader=FileSystemLoader(script_dir))
    template = env.get_template("gadgets_inc.j2")
    with open(os.path.join(inc_dir, "gadgets.h"), "w") as f:
        f.write(template.render(groups=groups))

if __name__ == "__main__":
    main()
