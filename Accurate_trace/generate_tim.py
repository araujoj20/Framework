import json
import sys
from jinja2 import Environment, FileSystemLoader

# Loads JSON
with open(sys.argv[1]) as f:
    config = json.load(f)

trace = config["trace"]

# 2. Extract counter and trigger timers
timers = []
used_names = set()
for key in ["tim_counter", "tim_trigger"]:
    timer = trace[key]
    name = timer["name"]
    if name in used_names:
        continue
    timers.append({
        "name": name,  # ex: TIM3
        "period": timer["Period"],
        "is_trigger": (key == "tim_trigger")
    })
    used_names.add(name)


dma = trace["dma"]

# 4. Renders Jinja2 template
env = Environment(loader=FileSystemLoader("."))
template = env.get_template("tim_src.j2")

template_src = env.get_template("tim_src.j2")
with open("tim.c", "w") as f:
    f.write(template_src.render(timers=timers, dma=dma))

template_inc = env.get_template("tim_inc.j2")
with open("tim.h", "w") as f:
    f.write(template_inc.render(timers=timers, dma=dma))