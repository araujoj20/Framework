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

steps=() # Lista para armazenar os passos
extra_flags=()

# Processa as opções
while [[ $# -gt 0 ]]; do
    case "$1" in
        --step|-s)
            shift
            # Verifica se há múltiplos passos após o --step
            if [[ $# -gt 0 && ! "$1" =~ ^- ]]; then
                steps+=($@)  # Adiciona todos os passos após --step
                break  # Termina o loop, pois todos os passos foram capturados
            else
                steps+=("$1")  # Caso seja apenas um passo
                shift
            fi
            ;;
        *)
            extra_flags+=("$1")
            shift
            ;;
    esac
done

# Se não houver passos, define como "all"
if [ ${#steps[@]} -eq 0 ]; then
    steps=("all")
fi

# Paths

fw_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $fw_dir

build="$fw_dir/Build"
interface="$fw_dir/Interface"
generator="$fw_dir/Generator"
runner="$fw_dir/Runner"

inherits=$(             jq -r '.inherits'                   "$board_config_path")
vendor=$(               jq -r '.vendor'                     "$board_config_path")
family=$(               jq -r '.family'                     "$board_config_path")
board=$(                jq -r '.board'                      "$board_config_path")
alayer=$(               jq -r '.build.alayer'               "$board_config_path")
startup_script=$(       jq -r '.build.startup_script'       "$board_config_path")
startup_script_path=$(  jq -r '.build.startup_script_path'  "$board_config_path")
linker_script=$(        jq -r '.build.linker_script'        "$board_config_path")
inc_extra=$(            jq -r '.build.includes[]'           "$board_config_path")
ocd_interface=$(        jq -r '.openocd.interface'          "$board_config_path")
ocd_target=$(           jq -r '.openocd.target'             "$board_config_path")

# Compile Framework
if [[ " ${steps[@]} " =~ " all " || " ${steps[@]} " =~ " fw_compile " ]]; then
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--fw_compile)${RESET}: Compile framework"

    mkdir -p $build
    gcc $interface/interface.c  -o $build/interface     "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON"
    gcc $interface/periph_gen.c -o $build/periph_gen    "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "$board"
fi

# Interface
if [[ " ${steps[@]} " =~ " all " || " ${steps[@]} " =~ " interface " ]]; then
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--interface)${RESET}: interface"

    board_dir=$(dirname "$board_config_path")
    vendor_config_path="$board_dir/$inherits"
    user_config="$build/user_config.json"   #created in interface

    "$build/interface" "$vendor_config_path" "$board_config_path" "$build" # "${extra_flags[@]}" tratar de flags depois
fi

# Generator
if [[ " ${steps[@]} " =~ " all " || " ${steps[@]} " =~ " generator " ]]; then
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--generator)${RESET}: Generate files"
    
    "$build/periph_gen" "$user_config" "$build"

    mkdir -p "$test_path/$test_name/Core/Inc"
    mkdir -p "$test_path/$test_name/Core/Src"

    cp  $build/*.h                                  "$test_path/$test_name/Core/Inc"

    cp  $generator/$vendor/aux_files/*.c            "$test_path/$test_name/Core/Src"
    cp  $generator/$vendor/aux_files/$family/*.c    "$test_path/$test_name/Core/Src"
    cp  $generator/$vendor/aux_files/$family/*.h    "$test_path/$test_name/Core/Inc"

    mkdir -p "$test_path/$test_name/$alayer"
    cp -r   "$generator/$vendor/alayer/$alayer/Src" "$test_path/$test_name/$alayer/"
    cp -r   "$generator/$vendor/alayer/$alayer/Inc" "$test_path/$test_name/$alayer/"

    cp      "$generator/$vendor/inc/$startup_script_path/$startup_script"   "$test_path/$test_name"
    cp      "$generator/$vendor/lscript/$linker_script"   "$test_path/$test_name"

    mkdir -p "$test_path/$test_name/Includes"
    for inc_add in $inc_extra; do
        cp "$generator/$vendor/inc/$inc_add" "$test_path/$test_name/Includes"
    done

    cp $runner/cmake/$vendor/CMakeLists.txt         "$test_path/$test_name"
    cp $runner/cmake/$vendor/board/$family.cmake    "$test_path/$test_name"

fi

# Compile Test
if [[ " ${steps[@]} " =~ " all " || " ${steps[@]} " =~ " compile_test " ]]; then
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--compile_test)${RESET}: Compile test files (board)"

    cmake   -S "$test_path/$test_name" \
            -B "$test_path/$test_name/Build" \
            -DPROJECT_NAME="$test_name" \
            -DCMAKE_TOOLCHAIN_FILE="$family.cmake" \
            -DMCU_MODEL_RAW="$board" \
            -DSTARTUP_SCRIPT="$startup_script" \
            -DALAYER="$alayer" \
            -DLINKER_SCRIPT="$linker_script" \
            || exit 1
    
    make    -C "$test_path/$test_name/Build"   -j$(nproc)
    
fi

# Flash
if [[ " ${steps[@]} " =~ " all " || " ${steps[@]} " =~ " flash " ]]; then
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--flash)${RESET}: flash"
    
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

echo -e "\n${GREEN}Success${RESET}\n"
