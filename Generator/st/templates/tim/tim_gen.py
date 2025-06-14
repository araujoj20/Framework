import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

with open(sys.argv[1]) as f:
    config = json.load(f)

timers_config = config["timers"]

timers = []
for name, timer_data in timers_config.items():
    timer = {
        "name": name,
        "period": timer_data["Period"],
        "has_dma": "dma" in timer_data
    }
    if timer["has_dma"]:
        timer["dma"] = timer_data["dma"]
    timers.append(timer)

script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))

template_src = env.get_template("tim_src.j2")
with open(f"{sys.argv[2]}/Src/tim.c", "w") as f:
    f.write(template_src.render(timers=timers))

template_inc = env.get_template("tim_inc.j2")
with open(f"{sys.argv[2]}/Inc/tim.h", "w") as f:
    f.write(template_inc.render(timers=timers))
