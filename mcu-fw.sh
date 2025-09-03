#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'


usage(){
    echo "Usage: $0 <test_name> <board_config_path> <test_path> [-flags]"
    echo "Flags:"
    echo "  --compile_fw        Compile framework"
    # echo "  --interface         Generate interface"
    echo "  --generator         Generate peripheral files"
    echo "  --compile_test      Compile test files"
    echo "  --flash             Flash the firmware to the device"
    echo "  --covert_channel    Perform covert channel attack"
    exit 1
}

copy_drivers() {
    local include_path="$1"
    local dest_path="$2"

    include_path=$(realpath "$include_path")

    # Extract folder name after "drivers/"
    parent_dir=$(echo "$include_path" | sed -n 's|.*/drivers/\([^/]*\)/.*Include.*|\1|p')

    # Include folder not found
    if [[ -z "$parent_dir" ]]; then
        echo "Fail obtaining Include Folder: $include_path"
        return
    fi

    mkdir -p "$dest_path/$parent_dir/Include"

    cp -r "$include_path/"* "$dest_path/$parent_dir/Include"
}

# Compile Framework
compile_fw(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--fw_compile)${RESET}: Compile framework"
    
    mkdir -p $build
    
    gcc -g3 $interface/interface.c  -o $build/interface     "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "$board"   # 100% vai sofrer alteracoes pq é muito dificil assim

    # gcc -g3 $interface/uart_gen.c   -o $build/uart_gen      "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "$board"
    # gcc -g3 $interface/dma_gen.c    -o $build/dma_gen       "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "$board"

}

# Interface
# interface(){
#     if [ "$user_file_given" = true ]; then
#         echo -e "\n${YELLOW}Skipping interface step (user_config defined manually)${RESET}"
#         return
#     fi

#     echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--interface)${RESET}: interface"

#     board_dir=$(dirname "$board_config_path")
#     vendor_config_path="$board_dir/$inherits"

#     "$build/interface" "$vendor_config_path" "$board_config_path" "$build"

#     user_config="$build/user_config.json"   # created in interface
# }

#check json file
check(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--check)${RESET}: Checking and refining ${user_config}"

    mkdir -p "$build/Inc"
    mkdir -p "$build/Src"

    user_cfg_filename=$(basename "$user_config")

    python3 "$generator/$vendor/templates/check_and_refine.py"  "$board_config_path" "$user_config"  "$build/$user_cfg_filename"

    user_config="$build/$user_cfg_filename"
}


# Generator
generator(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--generator)${RESET}: Generate files"

    # mkdir -p "$build/Inc"
    # mkdir -p "$build/Src"

    check

    python3 "$generator/$vendor/templates/main/main_gen.py"     "$user_config"  "$build"
    python3 "$generator/$vendor/templates/uart/uart_gen.py"     "$user_config"  "$build"
    python3 "$generator/$vendor/templates/tim/tim_gen_new.py"   "$user_config"  "$build"
    python3 "$generator/$vendor/templates/dma/dma_gen.py"       "$user_config"  "$build"
    python3 "$generator/$vendor/templates/trace/trace_gen.py"   "$user_config"  "$build"


    #cp_files

}

cp_files(){

    test_full_path="$test_path/$test_name"
    suffix=""

    if [[ "$tz_flag" == 1 ]]; then
        mkdir -p "$test_full_path"
        cp -r "$generator/$vendor/aux_files/$family/Secure"         "$test_full_path"
        cp -r "$generator/$vendor/aux_files/$family/Secure_nsclib"  "$test_full_path"
        cp  $runner/cmake/$vendor/tz/CMakeLists.txt                 "$test_full_path"
        cp  $runner/cmake/$vendor/board/$family.cmake               "$test_full_path"

        test_full_path="$test_path/$test_name/NonSecure"
        suffix="NonSecure/"
    fi

    mkdir -p "$test_full_path/Core/Inc"
    mkdir -p "$test_full_path/Core/Src"

    cp  $build/Inc/*.h      "$test_full_path/Core/Inc"
    cp  $build/Src/*.c      "$test_full_path/Core/Src"

    cp  $generator/$vendor/aux_files/*.h                "$test_full_path/Core/Inc" # SEE LATER (NONE .h)
    cp  $generator/$vendor/aux_files/*.c                "$test_full_path/Core/Src" # SEE LATER (PROBABLY NOT THE BEST)
    cp "$generator/$vendor/aux_files/$family/${suffix}Inc/"*.h "$test_full_path/Core/Inc"
    cp "$generator/$vendor/aux_files/$family/${suffix}Src/"*.c "$test_full_path/Core/Src"

    mkdir -p "$test_full_path/Drivers/$alayer"
    cp -r    "$generator/$vendor/alayer/$alayer/Inc" "$test_full_path/Drivers/$alayer/"
    cp -r    "$generator/$vendor/alayer/$alayer/Src" "$test_full_path/Drivers/$alayer/"

    cp      "$generator/$vendor/drivers/$startup_script_path/$startup_script"   "$test_full_path"
    cp      "$generator/$vendor/lscript/$linker_script"   "$test_full_path"

    for drivers_path in $drivers; do
        copy_drivers "$generator/$vendor/drivers/$drivers_path" "$test_full_path/Drivers"
    done

    cp $runner/cmake/$vendor/CMakeLists.txt         "$test_full_path"
    cp $runner/cmake/$vendor/board/$family.cmake    "$test_full_path"
}


# Compile Test
compile_test(){
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
}

# Flash
flash(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--flash)${RESET}: Flash Board"

    OPENOCD_CFG_PATH="/usr/share/openocd/scripts"

    if [[ "$tz_flag" == 1 ]]; then
        flash_elf=(
            "-c" "flash write_image erase $test_path/$test_name/Build/${test_name}_Secure.elf"
            "-c" "flash write_image erase $test_path/$test_name/Build/${test_name}_NonSecure.elf"
    )
    else
        flash_elf=(
            "-c" "flash write_image erase $test_path/$test_name/Build/${test_name}.elf"
        )
    fi

    -f "/usr/share/openocd/scripts/interface/stlink.cfg" \
    -f "/usr/share/openocd/scripts/target/stm32f4x.cfg" \
    -c "init" \
    -c "reset halt" \
    -c "Documents/eclipse-rtd/Trace_F4/out/erika3app.elf" \
    -c "reset run" \
    -c "exit"

openocd \
    -f "$OPENOCD_CFG_PATH/interface/$ocd_interface.cfg" \
    -f "$OPENOCD_CFG_PATH/target/$ocd_target.cfg" \
    -c "init" \
    -c "reset halt" \
    "${flash_elf[@]}" \
    -c "reset run" \
    -c "exit"
}

# Flash
uart(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--uart)${RESET}: Reading Serial Port"

    python3 "$fw_dir/read_serial.py"

}

# Covert Channel
all(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--all)${RESET}: Executing all commands"
    
    rm -rf $build
    compile_fw
    interface
    generator
    compile_test
    flash

}

# Covert Channel
covert_channel(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--covert_channel)${RESET}: Executing covert channel test sequence"
    
    compile_fw
    
    gcc -g3 $interface/dma_gen.c    -o $build/dma_gen       "$fw_dir/cJSON/cJSON.c"     -I"$fw_dir/cJSON" -D "COVERT_CHANNEL"

    "$build/dma_gen" "$user_config" "$build"
    
    python3 "$cc_folder_path/$vendor/cc_jinga_sh.py"        "$user_config"

    generator

    cc_file_dir=$(dirname "$user_config")

    cp  $cc_file_dir/*.h                                  "$test_path/$test_name/Core/Inc"
    cp  $cc_file_dir/*.c                                  "$test_path/$test_name/Core/Src"

    compile_test
    flash

    python3 "$fw_dir/read_serial.py"
    sed '0,/Measuring Covert Channel/d' uart_output.txt > tmp.txt && mv tmp.txt uart_output.txt 

    mkdir -p "$test_path/$test_name/Results"
    cp "$fw_dir/uart_output.txt" "$test_path/$test_name/Results/"$board"_contention_samples.txt"

    "$cc_folder_path/tools/capacity.sh" $board "$test_path/$test_name"

    python3 "$cc_folder_path/tools/heatmap.py" ch_matrix $board "$test_path/$test_name/Results"

}

# tz_test(){
#     echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--all)${RESET}: Executing all commands"
    
#     rm -rf $build
#     compile_fw
#     interface
#     generator
#     compile_test
#     flash

# }

# Verificação de parâmetros de entrada
if [ "$#" -lt 3 ]; then
    usage
fi

test_name="$1"
board_config_path="$2"
test_path="$3"
shift 3  # Remove 3 parâmetros

# Definir os paths que dependem dos parâmetros passados
fw_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $fw_dir

build="$fw_dir/Build"
interface="$fw_dir/Interface"
generator="$fw_dir/Generator"
runner="$fw_dir/Runner"
cc_folder_path="$fw_dir/Covert_channel"

# Variáveis do board_config.json
inherits=$(             jq -r '.inherits'                   "$board_config_path")
vendor=$(               jq -r '.vendor'                     "$board_config_path")
family=$(               jq -r '.family'                     "$board_config_path")
board=$(                jq -r '.board'                      "$board_config_path")
alayer=$(               jq -r '.build.alayer'               "$board_config_path")
startup_script=$(       jq -r '.build.startup_script'       "$board_config_path")
startup_script_path=$(  jq -r '.build.startup_script_path'  "$board_config_path")
linker_script=$(        jq -r '.build.linker_script'        "$board_config_path")
drivers=$(              jq -r '.build.drivers[]'            "$board_config_path")
ocd_interface=$(        jq -r '.openocd.interface'          "$board_config_path")
ocd_target=$(           jq -r '.openocd.target'             "$board_config_path")

user_file_given=false

# Processamento das flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        --user_file=*)
            user_config="$fw_dir/${1#*=}"  # extract path
            user_file_given=true
            ;;
        --tz)
            tz_flag=1
            ;;
        --compile_fw)
            compile_fw
            ;;
        # --interface)
        #     interface
        #     ;;
        --check)
            check
            ;;
        --generator)
            generator
            ;;
        --compile_test)
            compile_test
            ;;
        --flash)
            flash
            ;;
        --uart)
            uart
            ;;
        --all)
            all
            ;;
        --covert_channel)
            user_config="$cc_folder_path/$vendor/cc_${board,,}.json"
            covert_channel
            ;;
        *)
            echo "Unknown option: $1"
            usage
            ;;
    esac
    shift
done

echo -e "\n${GREEN}Success${RESET}\n"
