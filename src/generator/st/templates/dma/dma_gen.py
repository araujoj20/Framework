import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

def main():
    if len(sys.argv) < 3:
        print("Usage: python dma_gen.py <config.json> <output_dir>")
        sys.exit(1)

    cfg_path = sys.argv[1]
    out_dir  = sys.argv[2]

    with open(cfg_path, "r") as f:
        config = json.load(f)

    raw = config.get("dmas", {})
    cleaned = []
    seen = set()

    for d in raw.values():
        if not isinstance(d, dict):
            continue
        dma = dict(d)  # shallow copy
        if "stream" not in dma and "channel" in dma:
            dma["stream"] = dma["channel"]
        name = dma.get("name")
        stream = dma.get("stream")
        direction = str(dma.get("direction","")).upper()
        if not (name and stream and direction):
            continue
        dma["direction"] = direction
        key = (name, stream, direction)
        if key in seen:
            continue
        seen.add(key)
        cleaned.append(dma)

    if not cleaned:
        sys.exit(0)

    script_dir = os.path.dirname(os.path.abspath(__file__))
    env = Environment(loader=FileSystemLoader(script_dir))

    ctx = {
        "dma_list": cleaned,
        "board": config.get("board",""),
        "config": config
    }

    # Header
    tmpl_inc = env.get_template("dma_inc.j2")
    with open(f"{out_dir}/inc/dma.h","w") as f:
        f.write(tmpl_inc.render(**ctx))

    # Source
    tmpl_src = env.get_template("dma_src.j2")
    with open(f"{out_dir}/src/dma.c","w") as f:
        f.write(tmpl_src.render(**ctx))

if __name__ == "__main__":
    main()