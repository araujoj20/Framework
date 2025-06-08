import json
import sys
from jinja2 import Environment, FileSystemLoader

dma_list = []

with open(sys.argv[1]) as f:
    config = json.load(f)

# DMAs in file
if "dma" in config:
    dma_list.append(config["dma"])

# DMAs inside timers
for timer_name, timer in config.get("timers", {}).items():
    if "dma" in timer:
        dma_list.append(timer["dma"])

env = Environment(loader=FileSystemLoader("."))

template_inc = env.get_template("dma_inc.j2")
with open("dma.h", "w") as f:
    f.write(template_inc.render(dma_list=dma_list))

template_src = env.get_template("dma_src.j2")
with open("dma.c", "w") as f:
    f.write(template_src.render(dma_list=dma_list))
