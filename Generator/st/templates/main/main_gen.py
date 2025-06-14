import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

with open(sys.argv[1]) as f:
    config = json.load(f)

has_dma = "dma" in config
has_uart = "uart" in config
has_timers = "timers" in config and len(config["timers"]) > 0
has_trace = "trace" in config

# Verifica se algum dos timers tem dma embutido
if "timers" in config:
    for timer in config["timers"].values():
        if "dma" in timer:
            has_dma = True
            break

# Detectar família STM32
family = config.get("family", "").lower()

script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))

template = env.get_template("main_inc.j2")
with open(f"{sys.argv[2]}/Inc/main.h", "w") as f:
    f.write(template.render(
        has_dma=has_dma,
        has_uart=has_uart,
        has_timers=has_timers,
        has_trace=has_trace,
        family=family
    ))
