import json
import sys
import os
import re
from jinja2 import Environment, FileSystemLoader

script_dir = os.path.dirname(os.path.abspath(__file__))

def get_board(cfg):
    return cfg.get("board","").upper()

def parse_channel_from_request(req):
    if not req:
        return None
    m = re.match(r"TIM\d+_CH(\d+)", req.upper())
    return int(m.group(1)) if m else None

def safe_upper(v, default=None):
    if v is None:
        return default
    return str(v).upper()

# --- Parse interrupt field: returns (enabled_flag:int, sub_mode:str|None) ---
def parse_interrupt(timer_dict):
    raw = None
    for key in ("interrupt","isr"):
        if key in timer_dict:
            raw = str(timer_dict[key]).strip().upper()
            break
    if not raw or raw == "DISABLE":
        return 0, None
    if raw == "ENABLE":
        return 1, None
    if raw in ("BRK","UP","TRG","CC"):
        return 1, raw
    return 0, None

# --- New: declarative field normalization spec ---
FIELD_SPECS = [
    # key,                  aliases,                                        default
    ("trigger_event",       ["trigger_event", "MasterOutputTrigger"],       "RESET"),
    ("clock_source",        ["clock_source", "ClockSource"],                "INTERNAL"),
    ("counter_mode",        ["counter_mode", "CounterMode"],                "UP"),
    ("auto_reload_preload", ["auto_reload_preload", "AutoReloadPreload"],   "DISABLE"),
    ("master_slave_mode",   ["master_slave_mode", "MasterSlaveMode"],       "DISABLE"),
    ("slave_mode",          ["slave_mode", "SlaveMode"],                    "DISABLE"),
]

def resolve_field(t: dict, aliases, default):
    for a in aliases:
        if a in t:
            return t[a]
    return default

def load_timers(cfg):
    timers_raw = cfg.get("timers", {})
    timers = []
    dmas_section = cfg.get("dmas", {})

    for raw_name, t in timers_raw.items():
        name = raw_name.upper()
        base = name
        ow_id = 0
        if "_OW_" in name:
            base, _, tail = name.partition("_OW_")
            if tail.isdigit():
                ow_id = int(tail)

        # Resolve DMA
        dma_ref = t.get("dma")
        dma_obj = None
        request = None
        if isinstance(dma_ref, dict):
            dma_obj = dma_ref
            request = dma_obj.get("request")
        elif isinstance(dma_ref, str):
            dma_obj = dmas_section.get(dma_ref)
            if dma_obj:
                request = dma_obj.get("request")

        ch_num = parse_channel_from_request(request)

        # --- Unified normalization loop ---
        norm = {}
        for key, aliases, default in FIELD_SPECS:
            val = resolve_field(t, aliases, default)
            val_up = safe_upper(val, default)
            norm[key] = val_up

        # input_trigger derived from trigger_source / InputTrigger (only if not DISABLE)
        trig_src = t.get("trigger_source") or t.get("InputTrigger")
        trig_src_up = safe_upper(trig_src)
        input_trigger = trig_src_up if trig_src_up and trig_src_up != "DISABLE" else None

        # Numeric fields (period / prescaler)
        period = t.get("Period") or t.get("period") or 0
        prescaler = t.get("Prescaler") or t.get("prescaler") or 0

        # Interrupt & handler emission separation
        has_interrupt, interrupt_sub_mode = parse_interrupt(t)
        irq_handler_flag = str(t.get("irq_handler") or t.get("IRQHandler") or "").strip().upper()
        wants_irq_handler = False if irq_handler_flag == "DISABLE" else True

        timers.append({
            "name": base,
            "ow_id": ow_id,
            "raw_name": raw_name,  # preserve exact variant key for mode lookup
            "period": period,
            "prescaler": prescaler,
            "has_dma": dma_obj is not None,
            "dma": dma_obj,
            "request": request,
            "has_ch_request": ch_num is not None,
            "ch_request_num": ch_num,
            "trigger_event": norm["trigger_event"],
            "clock_source": norm["clock_source"],
            "master_slave_mode": norm["master_slave_mode"],
            "slave_mode": norm["slave_mode"],
            "input_trigger": input_trigger,
            "counter_mode": norm["counter_mode"],
            "auto_reload_preload": norm["auto_reload_preload"],
            "has_ow": False,
            "has_interrupt": has_interrupt,
            "interrupt_sub_mode": interrupt_sub_mode,
            "wants_irq_handler": wants_irq_handler
        })

    bases_with_ow = {t["name"] for t in timers if t["ow_id"] > 0}
    for t in timers:
        if t["name"] in bases_with_ow:
            t["has_ow"] = True
    return timers

def render(cfg, timers, out_dir):
    env = Environment(loader=FileSystemLoader(script_dir))
    template_src = env.get_template("tim_src.j2")
    template_inc = env.get_template("tim_inc.j2")
    board = get_board(cfg)
    with open(os.path.join(out_dir,"src","tim.c"),"w") as f:
        f.write(template_src.render(timers=timers, board=board))
    with open(os.path.join(out_dir,"inc","tim.h"),"w") as f:
        f.write(template_inc.render(timers=timers, board=board))

def add_irq_vectors(timers, cfg, board_cfg=None):
    """Attach composite-aware irq_vector to each timer entry (mirrors interrupt_gen logic)"""
    irq_map = (cfg.get("irq_timer_map") or (board_cfg.get("irq_timer_map") if board_cfg else {}) or {})

    # Build helper structures similar to interrupt_gen
    # Pre-cache parent maps
    def resolve_vector(base, timer_entry):
        emap = irq_map.get(base, {})
        irq_mode = timer_entry.get("interrupt_sub_mode")
        # Alias timers
        if "ALIASES_TO" in emap:
            parent = emap["ALIASES_TO"]
            parent_map = irq_map.get(parent, {})
            forced = emap.get("MODE")
            if forced and forced in parent_map:
                return parent_map[forced]
            if forced and forced in ("BRK","UP","TRG","CC"):
                return parent_map.get(forced)
        if "SINGLE" in emap:
            return emap["SINGLE"]
        if all(k in emap for k in ("BRK","UP","TRG","CC")):
            sel = irq_mode if irq_mode in ("BRK","UP","TRG","CC") else emap.get("DEFAULT","UP")
            return emap.get(sel)
        # Fallback: plain
        return f"{base}_IRQn"

    for t in timers:
        base = t["name"]
        vector = None
        if t.get("has_interrupt"):
            vector = resolve_vector(base, t)
        t["irq_vector"] = vector  # may be None if no interrupt

def main():
    if len(sys.argv) < 3:
        print("Usage: python tim_gen.py <config.json> <output_dir> [<board_cfg.json>]")
        sys.exit(1)
    cfg_path = sys.argv[1]
    out_dir = sys.argv[2]
    board_cfg_path = sys.argv[3] if len(sys.argv) > 3 else None
    with open(cfg_path,"r") as f:
        cfg = json.load(f)
    board_cfg = None
    if board_cfg_path and os.path.isfile(board_cfg_path):
        try:
            with open(board_cfg_path,'r') as bf:
                board_cfg = json.load(bf)
        except Exception:
            board_cfg = None
    timers = load_timers(cfg)
    # Keep raw key for mode lookup
    # raw_name already attached per entry; no further action needed
    add_irq_vectors(timers, cfg, board_cfg)
    render(cfg, timers, out_dir)

if __name__ == "__main__":
    main()
#     }

# def parse_dmas(config):
#     board = get_board(config)
#     family = get_family(config)
#     dmas_raw = config.get("dmas", {})
#     dmas = {}
#     for dma_name, dma in dmas_raw.items():
#         dma = dma.copy()
#         # F4: can have request, channel, stream
#         if family == "stm32f4xx" and "request" in dma:
#             dma = resolve_dma_for_f4(dma, dma["request"], None)
#         # L552: only channel
#         elif family == "stm32l5xx" and "request" in dma:
#             dma = resolve_dma_for_l5(dma, dma["request"])
#         dma = normalize_dma_gen(dma)
#         dmas[dma_name] = dma
#     return dmas

# def parse_channel_from_request(request):
#     # Extract the request number of TIMx_CHy type
#     m = re.match(r"TIM\d+_CH(\d+)", request)
#     if m:
#         return int(m.group(1))
#     return None


# def normalize_master_trigger(trigger):
#     """
#     Normalizes the master trigger value.
#     Returns "RESET" (the default value) if the input is missing or invalid.
#     """
#     if not trigger:
#         return VALID_MASTER_TRIGGERS[0]
#     trig = trigger.upper().replace(" ", "")
#     if trig in VALID_MASTER_TRIGGERS:
#         return trig
#     print(f"ERROR: MasterOutputTrigger '{trigger}' invalid. Using '{VALID_MASTER_TRIGGERS[0]}'")
#     return VALID_MASTER_TRIGGERS[0]

# def normalize_master_slave_mode(mode):
#     """
#     Normalizes the master slave mode value.
#     Returns "DISABLE" (the default value) if the input is missing or invalid.
#     """
#     if not mode:
#         return VALID_MASTER_SLAVE_MODE[0]
#     m = mode.upper().replace(" ", "")
#     if m in VALID_MASTER_SLAVE_MODE:
#         return m
#     print(f"ERROR: MasterSlaveMode '{mode}' invalid. Using '{VALID_MASTER_SLAVE_MODE[0]}'")
#     return VALID_MASTER_SLAVE_MODE[0]

# def normalize_slave_mode(mode):
#     """
#     Normalizes the slave mode value.
#     Returns "DISABLE" (the default value) if the input is missing or invalid.
#     """
#     if not mode:
#         return VALID_SLAVE_MODES[0]
#     m = mode.upper().replace(" ", "")
#     if m in VALID_SLAVE_MODES:
#         return m
#     print(f"ERROR: SlaveMode '{mode}' invalid. Using '{VALID_SLAVE_MODES[0]}'")
#     return VALID_SLAVE_MODES[0]

# def normalize_input_trigger(trigger):
#     """
#     Normalizes the input trigger value.
#     For now, just uppercase and replace spaces with underscores.
#     """
#     if not trigger:
#         return "ITR0"
#     trig = trigger.upper().replace(" ", "_")
#     # You can add more validation or mapping here if needed
#     return trig

# def normalize_timer_name(name):
#     # Aceita TIMx ou TIMx_OW_y
#     base = name.split("_OW_")[0]
#     if base in VALID_TIMERS:
#         return name
#     print(f"ERRO: Timer '{name}' inválido. Ignorado.")
#     return None

# def normalize_clock_source(clock_source):
#     """
#     Normalizes the clock source value.
#     Returns "INTERNAL" (the default value) if the input is missing or invalid.
#     """
#     if not clock_source:
#         return VALID_CLOCK_SOURCES[0]
#     src = clock_source.upper().replace(" ", "_")
#     if src == "INTERNAL_CLOCK":
#         return "INTERNAL"
#     if src in VALID_CLOCK_SOURCES:
#         return src
#     print(f"ERROR: ClockSource '{clock_source}' invalid. Using '{VALID_CLOCK_SOURCES[0]}'")
#     return VALID_CLOCK_SOURCES[0]

# def parse_timers(config, dmas_dict):
#     timers_raw = config.get("timers", {})
#     family = get_family(config)
#     all_timers = []
#     timer = {}

#     for key, val in timers_raw.items():
#         dma_val = val.get("dma")
#         request = None
#         timer_name = key
#         ow_id = 0
        
#         # Get dma used by timer in "dmas" section
#         if isinstance(dma_val, str):
#             dma_obj = dmas_dict.get(dma_val)
#             dma_val = dma_obj.copy() if dma_obj else None
#         elif isinstance(dma_val, dict):
#             dma_val = dma_val.copy()
#         else:
#             dma_val = None

#         if "_OW_" in timer_name:
#             timer_name, _, ow_id_par = timer_name.partition("_OW_")
#             ow_id = int(ow_id_par)

#         # Request is mandatory
#         has_ch_request = False
#         ch_request_num = None
#         if dma_val and "request" in dma_val:
#             request = dma_val["request"]
#             # Verifies if the request corresponds to the timer
#             if not request.startswith(timer_name):
#                 print(f"ERRO: O request '{request}' do DMA não corresponde ao timer '{timer_name}'")
#                 dma_val = None
#             ch_request_num = parse_channel_from_request(request)
#             has_ch_request = ch_request_num is not None

#         # F4: resolve mapping
#         if family == "stm32f4xx" and dma_val and request:
#             dma_val = resolve_dma_for_f4(dma_val, request, timer_name)
#         # L552: resolve simple
#         elif family == "stm32l5xx" and dma_val and request:
#             dma_val = resolve_dma_for_l5(dma_val, request)

#         dma_val = normalize_dma_gen(dma_val)

#         # Validate timer name
#         norm_timer_name = normalize_timer_name(timer_name)
#         if not norm_timer_name:
#             continue

#         # MasterOutputTrigger: get object 'trigger_event' or 'MasterOutputTrigger'
#         trigger_event = val.get("trigger_event") or val.get("MasterOutputTrigger")
#         trigger_event = normalize_master_trigger(trigger_event)

#         # ClockSource: get object 'clock_source' or 'ClockSource'
#         clock_source = val.get("clock_source") or val.get("ClockSource")
#         clock_source = normalize_clock_source(clock_source)

#         # MasterSlaveMode: get object 'master_slave_mode' or 'MasterSlaveMode'
#         master_slave_mode = val.get("master_slave_mode") or val.get("MasterSlaveMode")
#         master_slave_mode = normalize_master_slave_mode(master_slave_mode)

#         # SlaveMode: get object 'slave_mode' or 'SlaveMode'
#         slave_mode = val.get("slave_mode") or val.get("SlaveMode")
#         slave_mode = normalize_slave_mode(slave_mode)

#         # InputTrigger: get object 'input_trigger' or 'InputTrigger'
#         input_trigger_raw = val.get("input_trigger") or val.get("InputTrigger")
#         input_trigger = normalize_input_trigger(input_trigger_raw)

#         # Validation: if slave_mode is set and input_trigger is missing (None or empty), warn and skip slave config
#         if slave_mode != "DISABLE" and (input_trigger_raw is None or str(input_trigger_raw).strip() == ""):
#             print(f"WARNING: Timer '{key}' has slave_mode '{slave_mode}' but no input_trigger. Slave config will not be generated for this timer.")
#             slave_mode = "DISABLE"
#             input_trigger = normalize_input_trigger(None)

#         timer = {
#             "name": norm_timer_name,
#             "period": val.get("Period", 0),
#             "has_dma": dma_val is not None,
#             "dma": dma_val,
#             "has_ow": False,
#             "request": request,
#             "ow_id": ow_id,
#             "has_ch_request": has_ch_request,
#             "ch_request_num": ch_request_num,
#             "trigger_event": trigger_event,
#             "clock_source": clock_source,
#             "master_slave_mode": master_slave_mode,
#             "slave_mode": slave_mode,
#             "input_trigger": input_trigger
#         }
#         all_timers.append(timer)

#     timer_names = [t["name"] for t in all_timers if t["ow_id"] > 0]
#     for t in all_timers:
#         if t["name"] in timer_names:
#             t["has_ow"] = True

#     return all_timers

# def build_gadget_defs(config, all_timers):
#     def get_base_name(name):
#         return name.split("_OW_")[0] if "_OW_" in name else name

#     gadget_defs = {}
#     for gadget_type, timer_list in config.get("gadgets", {}).items():
#         entries = []
#         for name in timer_list:
#             base = get_base_name(name)
#             has_dma = any(t["has_dma"] for t in all_timers if t["name"] == base and (
#                 t["ow_id"] == 0 or f"{base}_OW_{t['ow_id']}" == name
#             ))
#             entries.append({
#                 "name": base,
#                 "with_dma": has_dma
#             })
#         gadget_defs[gadget_type] = entries
#     return gadget_defs

# def render_templates(config, all_timers, gadget_defs, output_dir):
#     env = Environment(loader=FileSystemLoader(script_dir))

#     template_src = env.get_template("tim_src_new.j2")
#     template_inc = env.get_template("tim_inc_new.j2")
#     template_gadgets = env.get_template("gadgets_inc.j2")

#     os.makedirs(os.path.join(output_dir, "Src"), exist_ok=True)
#     os.makedirs(os.path.join(output_dir, "Inc"), exist_ok=True)

#     board = get_board(config)
#     family = get_family(config)

#     gadgets_def_path = os.path.join(output_dir, "Inc", "gadgets_def.h")
#     with open(gadgets_def_path, "w") as f:
#         f.write(template_gadgets.render(gadgets=gadget_defs, board=board, family=family))

#     tim_c_path = os.path.join(output_dir, "Src", "tim.c")
#     with open(tim_c_path, "w") as f:
#         f.write(template_src.render(timers=all_timers, board=board, family=family))

#     tim_h_path = os.path.join(output_dir, "Inc", "tim.h")
#     with open(tim_h_path, "w") as f:
#         f.write(template_inc.render(timers=all_timers, board=board, family=family))

# def main():
#     if len(sys.argv) < 3:
#         print("Use: python generate_timers.py config.json output_dir")
#         sys.exit(1)

#     config_file = sys.argv[1]
#     output_dir = sys.argv[2]

#     with open(config_file, "r") as f:
#         config = json.load(f)

#     dmas_dict = parse_dmas(config)
#     all_timers = parse_timers(config, dmas_dict)
#     gadget_defs = build_gadget_defs(config, all_timers)

#     render_templates(config, all_timers, gadget_defs, output_dir)

# if __name__ == "__main__":
#     main()
#     dmas_dict = parse_dmas(config)
#     all_timers = parse_timers(config, dmas_dict)
#     gadget_defs = build_gadget_defs(config, all_timers)

#     render_templates(config, all_timers, gadget_defs, output_dir)

# if __name__ == "__main__":
#     main()
