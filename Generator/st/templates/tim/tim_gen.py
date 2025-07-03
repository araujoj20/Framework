import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

def parse_timers(config):
    timers_raw = config.get("timers", {})

    # Organizar timers em simples (sem _OW_) e com overwrites (com _OW_)
    timers_simple = []
    timers_with_ow = {}

    for key, val in timers_raw.items():
        if "_OW_" in key:
            base_name, _, suffix = key.partition("_OW_")
            if base_name not in timers_with_ow:
                timers_with_ow[base_name] = {
                    "name": base_name,
                    "period": timers_raw.get(base_name, {}).get("Period", 0),
                    "has_dma": "dma" in timers_raw.get(base_name, {}),
                    "dma": timers_raw.get(base_name, {}).get("dma", None),
                    "overwrites": []
                }
            ow_entry = {
                "suffix": suffix,
                "period": val["Period"],
                "has_dma": "dma" in val,
                "dma": val.get("dma", None)
            }
            timers_with_ow[base_name]["overwrites"].append(ow_entry)
        else:
            # Só timers sem overwrites (ou base timers)
            if key not in timers_with_ow:
                timers_simple.append({
                    "name": key,
                    "period": val["Period"],
                    "has_dma": "dma" in val,
                    "dma": val.get("dma", None)
                })

    # Convert timers_with_ow dict to list
    base_with_overwrites = list(timers_with_ow.values())

    for t in base_with_overwrites:
        t["has_dma_overwrite"] = any(ow["has_dma"] for ow in t["overwrites"])

    return timers_simple, base_with_overwrites

def main():
    if len(sys.argv) < 3:
        print("Uso: python generate_timers.py config.json output_dir")
        sys.exit(1)

    config_file = sys.argv[1]
    output_dir = sys.argv[2]

    with open(config_file, "r") as f:
        config = json.load(f)

    timers_simple, base_with_overwrites = parse_timers(config)

    script_dir = os.path.dirname(os.path.abspath(__file__))
    env = Environment(loader=FileSystemLoader(script_dir))

    template_src = env.get_template("tim_src.j2")

    # Certificar que pastas existem
    os.makedirs(os.path.join(output_dir, "Src"), exist_ok=True)
    os.makedirs(os.path.join(output_dir, "Inc"), exist_ok=True)

    # Renderizar e escrever tim.c
    tim_c_path = os.path.join(output_dir, "Src", "tim.c")
    with open(tim_c_path, "w") as f:
        f.write(template_src.render(
            timers_simple=timers_simple,
            base_with_overwrites=base_with_overwrites,
            timers=timers_simple + base_with_overwrites  # se precisares para includes
        ))

    # Se tiveres um template tim_inc.j2 para tim.h podes gerar aqui também:
    # template_inc = env.get_template("tim_inc.j2")
    # tim_h_path = os.path.join(output_dir, "Inc", "tim.h")
    # with open(tim_h_path, "w") as f:
    #     f.write(template_inc.render(timers=timers_simple + base_with_overwrites))

if __name__ == "__main__":
    main()
