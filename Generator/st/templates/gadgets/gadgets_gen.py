import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

def parse_timers(config):
    timers_raw = config.get("timers", {})
    all_timers = []

    for key, val in timers_raw.items():
        if "_OW_" in key:
            base_name, _, ow_id = key.partition("_OW_")
            all_timers.append({
                "name": base_name,
                "period": val.get("Period", 0),
                "has_dma": "dma" in val,
                "dma": val.get("dma"),
                "has_ow": True,
                "ow_id": int(ow_id)
            })
        else:
            all_timers.append({
                "name": key,
                "period": val.get("Period", 0),
                "has_dma": "dma" in val,
                "dma": val.get("dma"),
                "has_ow": False,
                "ow_id": 0
            })

    return all_timers

def get_base_name(name):
    return name.split("_OW_")[0] if "_OW_" in name else name

def main():
    if len(sys.argv) < 4:
        print("Uso: python generate_timers.py config.json output_dir gadgets_def.j2")
        sys.exit(1)

    config_file = sys.argv[1]
    output_dir = sys.argv[2]
    template_file = sys.argv[3]

    with open(config_file, "r") as f:
        config = json.load(f)

    gadgets = config.get("gadgets", {})
    timers = config.get("timers", {})

    def get_timer_info(timer_name):
        tdata = timers.get(timer_name) or timers.get(timer_name.upper())
        if not tdata:
            return None
        base = get_base_name(timer_name)
        has_dma = "dma" in tdata
        return {"base": base, "has_dma": has_dma}

    gadget_defs = {}
    for gtype, gitems in gadgets.items():
        entries = []
        for name in gitems:
            info = get_timer_info(name)
            if info is None:
                continue
            base = info["base"]
            has_dma = info["has_dma"]
            entries.append({"name": base, "with_dma": has_dma})
        gadget_defs[gtype] = entries

    script_dir = os.path.dirname(os.path.abspath(__file__))
    env = Environment(loader=FileSystemLoader(script_dir))
    template = env.get_template(template_file)

    output_path = os.path.join(output_dir, "gadgets_def.h")
    with open(output_path, "w") as f:
        f.write(template.render(gadgets=gadget_defs))

if __name__ == "__main__":
    main()
