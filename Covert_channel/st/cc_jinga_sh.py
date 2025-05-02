import json
import sys
import os
from jinja2 import Environment, FileSystemLoader


script_dir = os.path.dirname(os.path.abspath(__file__))

with open(sys.argv[1]) as f:
    cfg = json.load(f)

# Jinja2 Environment
env = Environment(loader=FileSystemLoader(script_dir))
template = env.get_template('covert_channel_tmp.j2')

dma_irq_handler = f'{cfg["dma"]["name"]}_{cfg["dma"]["stream"]}_IRQHandler'

output = template.render(
    dma_irq_handler=dma_irq_handler,
    addr_contention=cfg["mem_map"]["contention"],
    addr_no_contention=cfg["mem_map"]["no_contention"]
)

with open(os.path.join(script_dir, "covert_channel.h"), "w") as f:
    f.write(output)
