#!/bin/bash

usage(){
    echo "Usage: $0 <test_name> <board_config_path> <test_path> [-flags]"
    exit 1
}

if [ "$#" -lt 3 ]; then
    usage
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'


# Parameters
test_name=$1
board_config_path=$2
test_path=$3
shift 3

step="all"
extra_flags=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        --step|-s)
            step="$2"
            shift 2
            ;;
        *)
            extra_flags+=("$1")
            shift
            ;;
    esac
done


# Paths

fw_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $fw_dir

build="$fw_dir/Build"
interface="$fw_dir/Interface"
generator="$fw_dir/Generator"
runner="$fw_dir/Runner"

inherits=$(     jq -r '.inherits'           "$board_config_path")
vendor=$(       jq -r '.vendor'             "$board_config_path")
family=$(       jq -r '.family'             "$board_config_path")
board=$(        jq -r '.board'              "$board_config_path")
ocd_interface=$(jq -r '.openocd.interface'  "$board_config_path")
ocd_target=$(   jq -r '.openocd.target'     "$board_config_path")


# Compile Framework
if [[ "$step" == "all" || "$step" == "fw_compile" ]]; then
    echo -e "${YELLOW}@Step${RESET}${BLUE}(--fw_compile)${RESET}: Compile framework"

    mkdir -p $build
    gcc $interface/interface.c  -o $build/interface     "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON"
    gcc $interface/periph_gen.c -o $build/periph_gen    "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "$board"
fi

# Interface
if [[ "$step" == "all" || "$step" == "interface" ]]; then
    echo -e "${YELLOW}@Step${RESET}${BLUE}(--interface)${RESET}: interface"

    board_dir=$(dirname "$board_config_path")
    vendor_config_path="$board_dir/$inherits"
    user_config="$build/user_config.json"   #created in interface

    "$build/interface" "$vendor_config_path" "$board_config_path" "$build" # "${extra_flags[@]}" tratar de flags depois
fi

# Generator 
    if [[ "$step" == "all" || "$step" == "generator" ]]; then
        echo -e "${YELLOW}@Step${RESET}${BLUE}(--generator)${RESET}: Generate files"
    
    "$build/periph_gen" "$user_config" "$build"

    mkdir -p "$test_path/$test_name/Core/Inc"
    mkdir -p "$test_path/$test_name/Core/Src"
    mkdir -p "$test_path/$test_name/Build"
    #mkdir -p "$test_path/$test_name/Flash"


    cp  $build/*.h  "$test_path/$test_name/Core/Inc"

    cp  $generator/$vendor/aux_files/*.c            "$test_path/$test_name/Core/Src"
    cp  $generator/$vendor/aux_files/$family/*.c    "$test_path/$test_name/Core/Src"
    cp  $generator/$vendor/aux_files/$family/*.h    "$test_path/$test_name/Core/Inc"
    cp  $generator/$vendor/aux_files/$family/*.ld   "$test_path/$test_name/Build"

    cp $runner/cmake/$vendor/CMakeLists.txt         "$test_path/$test_name"
    cp $runner/cmake/$vendor/board/$family.cmake    "$test_path/$test_name"
fi

# Compile Test
if [[ "$step" == "all" || "$step" == "compile_test" ]]; then
    echo -e "${YELLOW}@Step${RESET}${BLUE}(--compile_test)${RESET}: Compile test files (board)"

    cmake   -S "$test_path/$test_name" \
            -B "$test_path/$test_name/Build" \
            -DPROJECT_NAME="$test_name" \
            -DCMAKE_FILE="$family.cmake" \
            -DFW_PATH="$fw_dir" || exit 1

    make    -C "$test_path/$test_name/Build"   -j$(nproc)
fi

# Flash
if [[ "$step" == "all" || "$step" == "flash" ]]; then
    echo -e "${YELLOW}@Step${RESET}${BLUE}(--flash)${RESET}: flash"
    
    OPENOCD_CFG_PATH="$runner/openocd/tcl"
    ELF_NAME="$test_name.elf"

    openocd \
    -f "$OPENOCD_CFG_PATH/interface/$ocd_interface.cfg" \
    -f "$OPENOCD_CFG_PATH/target/$ocd_target.cfg" \
    -c "init" \
    -c "reset halt" \
    -c "flash write_image erase $test_path/$test_name/Build/$ELF_NAME" \
    -c "reset run" \
    -c "exit"
fi


# Possibilidade de alterar diretamente aqui: (Criar um cfg de raiz so com interface e target costumizado)
#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/board/st_nucleo_f7.cfg


#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/interface/stlink-v2.cfg
#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/target/stm32f7x.cfg
#openocd -f /usr/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/share/openocd/scripts/target/stm32f7x.cfg -c "init" -c "reset halt" -c "flash write_image erase /home/araujoj20/Music/f7_peripherals_test/Build/F7_PERIPHERALS_TEST.elf" -c "reset run" -c "exit"


echo "Success"

# ./mcu-fw.sh test_f7 Configs/stm32_f767_config.json Test/stm32/ -manual