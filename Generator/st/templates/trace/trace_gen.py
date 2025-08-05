import json
import sys
import os
from jinja2 import Environment, FileSystemLoader

with open(sys.argv[1]) as f:
    config = json.load(f)

if "trace" not in config:
    sys.exit(0)

trace_config = config["trace"]

trace_config = config["trace"]
if "tim_counter" not in trace_config or "tim_trigger" not in trace_config:
    sys.exit(0)

trace = {
    "tim_counter": trace_config["tim_counter"],
    "tim_trigger": trace_config["tim_trigger"]
}

script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))

template_src = env.get_template("trace_src.j2")
with open(f"{sys.argv[2]}/Src/trace.c", "w") as f:
    f.write(template_src.render(trace=trace))

template_inc= env.get_template("trace_inc.j2")
with open(f"{sys.argv[2]}/Inc/trace.h", "w") as f:
    f.write(template_inc.render(trace=trace))