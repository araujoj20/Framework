import json
import sys
import pprint
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
                "has_ow": False,  # changed later
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
