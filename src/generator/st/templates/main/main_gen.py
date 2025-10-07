import json
import sys
import os
from jinja2 import Environment, FileSystemLoader
from datetime import datetime

def collect_timers(cfg):
    timers = cfg.get("timers", {}) or {}
    ordered_keys = list(timers.keys())  # preserve input order
    return ordered_keys

def has_any_dma(cfg):
    if cfg.get("dmas"):
        return True
    for t in (cfg.get("timers") or {}).values():
        if isinstance(t, dict) and "dma" in t:
            return True
    return False

with open(sys.argv[1]) as f:
    config = json.load(f)

timers_all = collect_timers(config)
has_dma = has_any_dma(config)
has_timers = len(timers_all) > 0
uart_cfg = config.get("uart")
has_uart = isinstance(uart_cfg, dict) and len(uart_cfg) > 0
uart_instance = uart_cfg.get("instance") if has_uart else None

has_trace = "trace" in config
has_gadgets = "gadgets" in config
family = config.get("family", "").lower()

# novo: capturar data/hora atual em string única "Dia mes hora:minutos"
now = datetime.now()
time_stats = now.strftime("%d/%m, %H:%M")

script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))

ctx = {
    "has_dma": has_dma,
    "has_uart": has_uart,
    "uart_instance": uart_instance,
    "has_timers": has_timers,
    "has_trace": has_trace,
    "family": family,
    "has_gadgets": has_gadgets,
    "timers_all": timers_all,
    "time_stats": time_stats
}

template = env.get_template("main_inc.j2")
with open(f"{sys.argv[2]}/inc/main.h", "w") as f:
    f.write(template.render(**ctx))
    
template = env.get_template("main_src.j2")
with open(f"{sys.argv[2]}/src/main.c", "w") as f:
    f.write(template.render(**ctx))
