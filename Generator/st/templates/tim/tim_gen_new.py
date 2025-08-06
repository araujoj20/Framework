import json
import sys
import pprint
import os
from jinja2 import Environment, FileSystemLoader
import re

script_dir = os.path.dirname(os.path.abspath(__file__))
project_root = os.path.abspath(os.path.join(script_dir, "../../../.."))
sys.path.insert(0, project_root)

from Generator.st.templates.dma.stm32f407_dma_map import dma_stm32f407_mapping, find_dma_mappings

def normalize_dma_gen(dma):
    if dma is not None and 'channel' in dma and 'stream' not in dma:
        dma['stream'] = dma['channel']
    return dma

def get_board(config):
    return config.get("board", "").upper()

def get_family(config):
    return config.get("family", "").lower()

def format_channel(channel):
    if not channel:
        return None
    import re
    m = re.match(r"channel\s*(\d+)", channel, re.IGNORECASE)
    if m:
        return f"CHANNEL_{m.group(1)}"
    m = re.match(r"Channel(\d+)", channel)
    if m:
        return f"CHANNEL_{m.group(1)}"
    if channel.upper().startswith("CHANNEL_"):
        return channel.upper()
    return channel.upper()

def resolve_dma_for_f4(dma, request, timer_name):
    # Search all the possible combinations for the peripheral
    matches = find_dma_mappings(request, dma_stm32f407_mapping)
    if not matches:
        print(f"ERRO: Não existe mapeamento DMA para request '{request}' no STM32F407.")
        return None

    for dma_p, channel_p, stream_p in matches:
        print(f"{timer_name} {request}: {dma_p} {channel_p} {stream_p}")

    # Find best match based on defined fields
    # Pririoty: everything defined > dma+stream > dma+channel > stream+channel > only dma > only stream > only channel > none
    best_match = None
    priorities = [
        lambda d, m: d.get("name") == m[0] and d.get("channel") == m[1] and d.get("stream") == m[2], # all defined
        lambda d, m: d.get("name") == m[0] and d.get("stream") == m[2],                              # dma + stream
        lambda d, m: d.get("name") == m[0] and d.get("channel") == m[1],                             # dma + channel
        lambda d, m: d.get("stream") == m[2] and d.get("channel") == m[1],                           # stream + channel
        lambda d, m: d.get("name") == m[0],                                                          # only dma
        lambda d, m: d.get("stream") == m[2],                                                        # only stream
        lambda d, m: d.get("channel") == m[1],                                                       # only channel
        lambda d, m: True                                                                            # none defined
    ]

    if dma:
        for priority in priorities:
            for m_dma, m_channel, m_stream in matches:
                if priority(dma, (m_dma, m_channel, m_stream)):
                    best_match = {
                        "name": m_dma,
                        "channel": format_channel(m_channel),
                        "stream": m_stream,
                        "direction": dma.get("direction"),
                        "request": request
                    }
                    return best_match
   
    # If no match found, return the first one
    m_dma, m_channel, m_stream = matches[0]
    return {
        "name": m_dma,
        "channel": format_channel(m_channel),
        "stream": m_stream,
        "direction": dma.get("direction") if dma else None,
        "request": request
    }

def resolve_dma_for_l552(dma, request):
    # Só precisa de channel, sem streams, sem restrições
    if not dma or "channel" not in dma:
        print(f"ERRO: Para STM32L552, o DMA precisa de 'channel' definido para request '{request}'")
        return None
    return {
        "name": dma.get("name"),
        "channel": format_channel(dma.get("channel")),
        "direction": dma.get("direction"),
        "request": request
    }

def parse_dmas(config):
    board = get_board(config)
    family = get_family(config)
    dmas_raw = config.get("dmas", {})
    dmas = {}
    for dma_name, dma in dmas_raw.items():
        dma = dma.copy()
        # F4: pode ter request, channel, stream
        if family == "stm32f4xx" and "request" in dma:
            dma = resolve_dma_for_f4(dma, dma["request"], None)
        # L552: só channel
        elif family == "stm32l5xx" and "request" in dma:
            dma = resolve_dma_for_l552(dma, dma["request"])
        dma = normalize_dma_gen(dma)
        dmas[dma_name] = dma
    return dmas

def parse_channel_from_request(request):
    # Extrai o número do canal do request tipo TIMx_CHy
    m = re.match(r"TIM\d+_CH(\d+)", request)
    if m:
        return int(m.group(1))
    return None

VALID_MASTER_TRIGGERS = [
    "RESET", "ENABLE", "UPDATE", "OC1", "OC1REF", "OC2REF", "OC3REF", "OC4REF"
]
VALID_TIMERS = [f"TIM{i}" for i in range(1, 15)]

def normalize_master_trigger(trigger):
    if not trigger:
        return "RESET"
    trig = trigger.upper().replace(" ", "")
    if trig in VALID_MASTER_TRIGGERS:
        return trig
    print(f"ERRO: MasterOutputTrigger '{trigger}' inválido. Usando 'RESET'.")
    return "RESET"

def normalize_timer_name(name):
    # Aceita TIMx ou TIMx_OW_y
    base = name.split("_OW_")[0]
    if base in VALID_TIMERS:
        return name
    print(f"ERRO: Timer '{name}' inválido. Ignorado.")
    return None

def parse_timers(config, dmas_dict):
    timers_raw = config.get("timers", {})
    family = get_family(config)
    all_timers = []
    timer = {}

    for key, val in timers_raw.items():
        dma_val = val.get("dma")
        request = None
        timer_name = key
        ow_id = 0
        
        # Get dma used by timer in "dmas" section
        if isinstance(dma_val, str):
            dma_obj = dmas_dict.get(dma_val)
            dma_val = dma_obj.copy() if dma_obj else None
        elif isinstance(dma_val, dict):
            dma_val = dma_val.copy()
        else:
            dma_val = None

        if "_OW_" in timer_name:
            timer_name, _, ow_id_par = timer_name.partition("_OW_")
            ow_id = int(ow_id_par)

        # Request is mandatory
        has_ch_request = False
        ch_request_num = None
        if dma_val and "request" in dma_val:
            request = dma_val["request"]
            # Verifies if the request corresponds to the timer
            if not request.startswith(timer_name):
                print(f"ERRO: O request '{request}' do DMA não corresponde ao timer '{timer_name}'")
                dma_val = None
            ch_request_num = parse_channel_from_request(request)
            has_ch_request = ch_request_num is not None

        # F4: resolve mapping
        if family == "stm32f4xx" and dma_val and request:
            dma_val = resolve_dma_for_f4(dma_val, request, timer_name)
        # L552: resolve simple
        elif family == "stm32l5xx" and dma_val and request:
            dma_val = resolve_dma_for_l552(dma_val, request)

        dma_val = normalize_dma_gen(dma_val)

        # Validate timer name
        norm_timer_name = normalize_timer_name(timer_name)
        if not norm_timer_name:
            continue

        # MasterOutputTrigger: pode vir como 'trigger_event' ou 'MasterOutputTrigger'
        trigger_event = val.get("trigger_event") or val.get("MasterOutputTrigger")
        trigger_event = normalize_master_trigger(trigger_event)

        timer = {
            "name": norm_timer_name,
            "period": val.get("Period", 0),
            "has_dma": dma_val is not None,
            "dma": dma_val,
            "has_ow": False,
            "request": request,
            "ow_id": ow_id,
            "has_ch_request": has_ch_request,
            "ch_request_num": ch_request_num,
            "trigger_event": trigger_event
        }
        all_timers.append(timer)

    timer_names = [t["name"] for t in all_timers if t["ow_id"] > 0]
    for t in all_timers:
        if t["name"] in timer_names:
            t["has_ow"] = True

    return all_timers

def build_gadget_defs(config, all_timers):
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
    return gadget_defs

def render_templates(config, all_timers, gadget_defs, output_dir):
    env = Environment(loader=FileSystemLoader(script_dir))

    template_src = env.get_template("tim_src_new.j2")
    template_inc = env.get_template("tim_inc_new.j2")
    template_gadgets = env.get_template("gadgets_inc.j2")

    os.makedirs(os.path.join(output_dir, "Src"), exist_ok=True)
    os.makedirs(os.path.join(output_dir, "Inc"), exist_ok=True)

    board = get_board(config)
    family = get_family(config)

    gadgets_def_path = os.path.join(output_dir, "Inc", "gadgets_def.h")
    with open(gadgets_def_path, "w") as f:
        f.write(template_gadgets.render(gadgets=gadget_defs, board=board, family=family))

    tim_c_path = os.path.join(output_dir, "Src", "tim.c")
    with open(tim_c_path, "w") as f:
        f.write(template_src.render(timers=all_timers, board=board, family=family))

    tim_h_path = os.path.join(output_dir, "Inc", "tim.h")
    with open(tim_h_path, "w") as f:
        f.write(template_inc.render(timers=all_timers, board=board, family=family))

def main():
    if len(sys.argv) < 3:
        print("Uso: python generate_timers.py config.json output_dir")
        sys.exit(1)

    config_file = sys.argv[1]
    output_dir = sys.argv[2]

    with open(config_file, "r") as f:
        config = json.load(f)

    dmas_dict = parse_dmas(config)
    all_timers = parse_timers(config, dmas_dict)
    gadget_defs = build_gadget_defs(config, all_timers)

    render_templates(config, all_timers, gadget_defs, output_dir)

if __name__ == "__main__":
    main()
