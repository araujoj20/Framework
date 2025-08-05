import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

dma_list = []

with open(sys.argv[1]) as f:
    config = json.load(f)

board = config["board"]

def normalize_dma_gen(dma):
    if 'channel' in dma and 'stream' not in dma:
        dma['stream'] = dma['channel']
    return dma

# DMAs in JSON object "dmas"
if "dmas" in config:
    dma_list.extend([normalize_dma_gen(dma) for dma in config["dmas"].values()])

# DMAs inside timers object in JSON
for timer_name, timer in config.get("timers", {}).items():
    if "dma" in timer:
        dma_list.append(normalize_dma_gen(timer["dma"]))

# Exit if dma doesnt exist
if not dma_list:
    sys.exit(0)

# File path
script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))


str_data = {
    "dma_list": dma_list,
    "board": config.get("board", ""),
    "config": config
}

template_inc = env.get_template("dma_inc.j2")
with open(f"{sys.argv[2]}/Inc/dma.h", "w") as f:
    f.write(template_inc.render(**str_data))

template_src = env.get_template("dma_src.j2")
with open(f"{sys.argv[2]}/Src/dma.c", "w") as f:
    f.write(template_src.render(**str_data))
