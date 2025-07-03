import json
import sys
import os
from jinja2 import Environment, FileSystemLoader


def build_dma_lookup(config):
    """
    Cria um dicionário que diz se cada timer tem ou não DMA associado.
    """
    timers = config.get("timers", {})
    dma_lookup = {}
    for name, data in timers.items():
        dma_lookup[name] = "dma" in data
    return dma_lookup


def main():
    if len(sys.argv) < 3:
        print("Uso: python gen.py config.json output_dir")
        sys.exit(1)

    config_file = sys.argv[1]
    output_dir = sys.argv[2]

    with open(config_file, "r") as f:
        config = json.load(f)

    gadgets = config.get("gadgets", {})
    dma_lookup = build_dma_lookup(config)

    # Setup Jinja2
    script_dir = os.path.dirname(os.path.abspath(__file__))
    env = Environment(loader=FileSystemLoader(script_dir))

    template = env.get_template("gadgets_inc.j2")

    os.makedirs(os.path.join(output_dir, "Inc"), exist_ok=True)

    output_path = os.path.join(output_dir, "Inc", "gadgets_def.h")
    with open(output_path, "w") as f:
        f.write(template.render(
            gadgets=gadgets,
            dma_lookup=dma_lookup
        ))


if __name__ == "__main__":
    main()
