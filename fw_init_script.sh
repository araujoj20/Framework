#!/bin/bash

usage() {
    echo "Uso: $0 <test_name> <board_config_path> <test_path> [-flags]"
    exit 1
}

if [ "$#" -lt 3 ]; then
    usage
fi

# Compile files
gcc periph_def_gen.c cJSON/cJSON.c -o p_def_gen -I./cJSON
gcc interface.c cJSON/cJSON.c -o interface -I./cJSON

# Parameters
test_name=$1
board_config_path=$2
test_path=$3
shift 3

./interface "$test_name" "$board_config_path" "$test_path" "$@"

./p_def_gen "$board_config_path"

cp -r peripherals.h "$test_path/Core/Inc"
cp -r peripherals.c "$test_path/Core/Src"

echo "Success"

# ./fw_init_script.sh test_uart_f7 Configs/stm32_l552ze_q_config.json ~/Documents/STM32CubeIDE/workspace_1.18.0/stm_test_peripherals/l5_peripherals_test/NonSecure/ -manual
# ./fw_init_script.sh test_uart_f7 Configs/stm32_f767_config.json ~/Documents/STM32CubeIDE/workspace_1.18.0/stm_test_peripherals/f7_peripherals_test/ -manual