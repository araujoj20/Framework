import json
import sys
import pprint
import os
from jinja2 import Environment, FileSystemLoader

def normalize_dma_gen(dma):
    if dma is not None and 'channel' in dma and 'stream' not in dma:
        dma['stream'] = dma['channel']
    return dma

def parse_timers(config):
    timers_raw = config.get("timers", {})
    all_timers = []

    for key, val in timers_raw.items():
        dma_val = val.get("dma")
        dma_val = normalize_dma_gen(dma_val) if dma_val else None
        if "_OW_" in key:
            base_name, _, ow_id = key.partition("_OW_")
            all_timers.append({
                "name": base_name,
                "period": val.get("Period", 0),
                "has_dma": dma_val is not None,
                "dma": dma_val,
                "has_ow": False,  # changed later
                "ow_id": int(ow_id)
            })
        else:
            all_timers.append({
                "name": key,
                "period": val.get("Period", 0),
                "has_dma": dma_val is not None,
                "dma": dma_val,
                "has_ow": False,
                "ow_id": 0
            })

    # Set has_ow flag in case timer has some overwrite config
    timer_names = [t["name"] for t in all_timers if t["ow_id"] > 0]
    for t in all_timers:
        if t["name"] in timer_names:
            t["has_ow"] = True

    return all_timers


def main():
    if len(sys.argv) < 3:
        print("Uso: python generate_timers.py config.json output_dir")
        sys.exit(1)

    config_file = sys.argv[1]
    output_dir = sys.argv[2]

    with open(config_file, "r") as f:
        config = json.load(f)

    all_timers = parse_timers(config)

    pprint.pprint(all_timers)

    script_dir = os.path.dirname(os.path.abspath(__file__))
    env = Environment(loader=FileSystemLoader(script_dir))

    template_src = env.get_template("tim_src_new.j2")
    template_inc = env.get_template("tim_inc_new.j2")

    # Gerar gadgets_def.h
    template_gadgets = env.get_template("gadgets_inc.j2")

    # Criar estrutura de gadgets
    timers_dict = {t["name"]: t for t in all_timers}

    def get_base_name(name):
        return name.split("_OW_")[0] if "_OW_" in name else name

    gadget_defs = {}
    for gadget_type, timer_list in config.get("gadgets", {}).items():
        entries = []
        for name in timer_list:
            base = get_base_name(name)
            has_dma = any(t["has_dma"] for t in all_timers if t["name"] == base and (
                t["ow_id"] == 0 or f"{base}_OW_{t['ow_id']}" == name
            ))
            entries.append({
                "name": base,
                "with_dma": has_dma
            })
        gadget_defs[gadget_type] = entries

    gadgets_def_path = os.path.join(output_dir, "Inc", "gadgets_def.h")
    with open(gadgets_def_path, "w") as f:
        f.write(template_gadgets.render(gadgets=gadget_defs))


    os.makedirs(os.path.join(output_dir, "Src"), exist_ok=True)
    os.makedirs(os.path.join(output_dir, "Inc"), exist_ok=True)

    tim_c_path = os.path.join(output_dir, "Src", "tim.c")
    with open(tim_c_path, "w") as f:
        f.write(template_src.render(timers=all_timers))

    tim_h_path = os.path.join(output_dir, "Inc", "tim.h")
    with open(tim_h_path, "w") as f:
        f.write(template_inc.render(timers=all_timers))

if __name__ == "__main__":
    main()
