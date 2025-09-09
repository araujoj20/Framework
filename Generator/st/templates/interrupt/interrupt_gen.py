import os
import sys
import json
import re
from jinja2 import Environment, FileSystemLoader

TIMER_OW_RE = re.compile(r"^(TIM\d+)_OW_(\d+)$", re.IGNORECASE)

def base_timer(timer_key: str) -> str:
    m = TIMER_OW_RE.match(timer_key)
    return m.group(1).upper() if m else timer_key.upper()

def is_enabled(v) -> bool:
    return isinstance(v, str) and v.strip().upper() == "ENABLE"

def main():
    if len(sys.argv) < 3:
        print("Usage: python interrupt_gen.py <refined_config.json> <output_dir>")
        sys.exit(1)

    cfg_path = sys.argv[1]
    out_dir  = sys.argv[2]

    with open(cfg_path, "r") as f:
        cfg = json.load(f)

    timers_cfg = cfg.get("timers", {}) or {}
    dmas_cfg   = cfg.get("dmas",   {}) or {}
    family = cfg.get("family", "").lower()

    # 1) Timers with IRQ enabled (both interrupt and irq_handler/IRQHandler)
    tim_irq_bases = []
    seen_timers = set()
    for tname, tcfg in timers_cfg.items():
        interrupt_en = is_enabled(tcfg.get("interrupt")) or is_enabled(tcfg.get("isr"))
        irqh_en = is_enabled(tcfg.get("irq_handler")) or is_enabled(tcfg.get("IRQHandler"))
        if interrupt_en and irqh_en:
            base = base_timer(tname)
            if base not in seen_timers:
                seen_timers.add(base)
                tim_irq_bases.append(base)

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

    # Sort outputs for determinism
    def tim_sort_key(k):
        try:
            return (int(k[3:]), k)
        except Exception:
            return (9999, k)
    tim_irq_bases = sorted(tim_irq_bases, key=tim_sort_key)

    def dma_sort_key(d):
        # DMAx first, then numeric stream if any
        s = d["stream"]
        m = re.match(r"Stream(\d+)$", s, re.IGNORECASE)
        sidx = int(m.group(1)) if m else 999
        return (d["name"], sidx, s)
    dma_irqs = sorted(dma_irqs, key=dma_sort_key)

    # Render templates
    env = Environment(loader=FileSystemLoader(os.path.dirname(os.path.abspath(__file__))))
    os.makedirs(os.path.join(out_dir, "Inc"), exist_ok=True)
    os.makedirs(os.path.join(out_dir, "Src"), exist_ok=True)

    ctx = {
        "tim_irq_bases": tim_irq_bases,
        "dma_irqs": dma_irqs,
        "family": family,
    }

    inc_t = env.get_template("interrupt_inc.j2")
    with open(os.path.join(out_dir, "Inc", f"{family}_it.h"), "w") as f:
        f.write(inc_t.render(**ctx))

    src_t = env.get_template("interrupt_src.j2")
    with open(os.path.join(out_dir, "Src", f"{family}_it.c"), "w") as f:
        f.write(src_t.render(**ctx))

if __name__ == "__main__":
    main()
