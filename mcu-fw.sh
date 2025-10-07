#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

usage(){
cat <<'EOF'
Usage:
    mcu-fw.sh -n <prj name> -o <out dir> -C <user cfg dir> [flags]

Required:
    -n | --name    <project name>       Final test directory name (e.g. demo)
    -o | --out     <output dir>         Base path where test folder lives (e.g. Test/st)
    -C | --config  <user config dir>   User JSON config (e.g. configs/stm32f407.json)

Default (no flags): runs (generator + build)

Actions:
    -h | --help              Show this help and exit
    -g | --generator         Generate code (cleans internal Build/ first)
    -b | --build             Build project (compile and link)
    -d | --deploy            Flash via OpenOCD (executes build/generator if missing)
    -r | --review            Refine user JSON (also executed inside generator)
    -c | --clean             Remove test Build directory and internal Build/
    -u | --uart              Open UART reader
    -a | --all               Executes: generator + build + deploy
    -v | --covert_channel    Run covert channel sequence (overrides other actions / ignores --all)

Modifiers:
    -f  | --user_file <path>  User configuration JSON (refined copy stored internally)
    -db | --debug             Build with debug symbols (-O0 -g3 -ggdb)
    -tz                       Enable TrustZone flow (Secure/NonSecure output layout)

Dependency rules:
    deploy => (build) => (generator)
    build  => (generator)
    covert_channel ignores --all and replaces the pipeline
    clean does not imply a rebuild; combine -c -g -b for a clean rebuild

Examples:
    Generate + build (default):
        $ mcu-fw.sh -n demo -o Test/st -C configs/stm32f407.json -f Accurate_trace/user_cfg.json
    Clean rebuild + deploy:
        $ mcu-fw.sh -n demo -o Test/st -C configs/stm32f407.json -c -g -b -d -f Accurate_trace/user_cfg.json
    Only deploy existing build:
        $ mcu-fw.sh -n demo -o Test/st -C configs/stm32f407.json -d
    Covert channel:
        $ mcu-fw.sh -n cc -o Test/st -C configs/stm32f407.json -v
    TrustZone generate + build:
        $ mcu-fw.sh -n demo_tz -o Test/st -C configs/stm32l552.json --tz -g -b -f Accurate_trace/user_cfg.json
EOF
    exit 0
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

#review json file
review(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--review)${RESET}: Review and refining ${user_config}"

    user_cfg_filename=$(basename "$user_config")

    python3 "$generator/$vendor/templates/review_and_refine.py"  "$board_cfg_dir" "$user_config"  "$build/$user_cfg_filename"

    user_config="$build/$user_cfg_filename"
}

clean(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--clean)${RESET}: Cleaning build artifacts"
    rm -rf "$build" 2>/dev/null || true
    rm -rf "$out_dir/$prj_name/Build" 2>/dev/null || true
}

# Generator
generator(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--generator)${RESET}: Generate files"

    rm -rf $build
    
    mkdir -p "$build/inc"
    mkdir -p "$build/src"

    review

    python3 "$generator/$vendor/templates/main/main_gen.py"             "$user_config"  "$build"
    python3 "$generator/$vendor/templates/uart/uart_gen.py"             "$user_config"  "$build"
    python3 "$generator/$vendor/templates/tim/tim_gen.py"               "$user_config"  "$build"  "$board_cfg_dir"
    python3 "$generator/$vendor/templates/dma/dma_gen.py"               "$user_config"  "$build"
    python3 "$generator/$vendor/templates/trace/trace_gen.py"           "$user_config"  "$build"
    python3 "$generator/$vendor/templates/gadgets/gadgets_gen.py"       "$user_config"  "$build"
    python3 "$generator/$vendor/templates/main/main_gen.py"             "$user_config"  "$build"
    python3 "$generator/$vendor/templates/interrupt/interrupt_gen.py"   "$user_config"  "$build"  "$board_cfg_dir"

    # commented for test purposes
    cp_files

}

cp_files(){

    test_full_path="$out_dir/$prj_name"
    suffix=""

    if [[ "$tz_flag" == 1 ]]; then
        mkdir -p "$test_full_path"
        cp -r "$generator/$vendor/aux_files/$family/Secure"         "$test_full_path"
        cp -r "$generator/$vendor/aux_files/$family/Secure_nsclib"  "$test_full_path"
        cp  $runner/cmake/$vendor/tz/CMakeLists.txt                 "$test_full_path"
        cp  $runner/cmake/$vendor/board/$family.cmake               "$test_full_path"

        test_full_path="$out_dir/$prj_name/NonSecure"
        suffix="NonSecure/"
    fi

    mkdir -p "$test_full_path/core/inc"
    mkdir -p "$test_full_path/core/src"

    cp  $build/inc/*.h      "$test_full_path/core/inc"
    cp  $build/src/*.c      "$test_full_path/core/src"

    cp  $generator/$vendor/aux_files/*.h                "$test_full_path/core/inc" # SEE LATER (NONE .h)
    cp  $generator/$vendor/aux_files/*.c                "$test_full_path/core/src" # SEE LATER (PROBABLY NOT THE BEST)
    cp "$generator/$vendor/aux_files/$family/${suffix}inc/"*.h "$test_full_path/core/inc"
    cp "$generator/$vendor/aux_files/$family/${suffix}src/"*.c "$test_full_path/core/src"

    mkdir -p "$test_full_path/drivers/$alayer/inc"
    mkdir -p "$test_full_path/drivers/$alayer/src"
    cp -r "$generator/$vendor/alayer/$alayer/Inc/." "$test_full_path/drivers/$alayer/inc"
    cp -r "$generator/$vendor/alayer/$alayer/Src/." "$test_full_path/drivers/$alayer/src"

    cp      "$generator/$vendor/drivers/$startup_script_path/$startup_script"   "$test_full_path"
    cp      "$generator/$vendor/lscript/$linker_script"   "$test_full_path"

    for drivers_path in $drivers; do
        copy_drivers "$generator/$vendor/drivers/$drivers_path" "$test_full_path/drivers"
    done

    cp $runner/cmake/$vendor/CMakeLists.txt         "$test_full_path"
    cp $runner/cmake/$vendor/board/$family.cmake    "$test_full_path"
}


# Build
build(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--build)${RESET}: Build test files (board)"

    cmake   -S "$out_dir/$prj_name" \
            -B "$out_dir/$prj_name/build" \
            -DPROJECT_NAME="$prj_name" \
            -DCMAKE_TOOLCHAIN_FILE="$family.cmake" \
            -DMCU_MODEL_RAW="$board" \
            -DSTARTUP_SCRIPT="$startup_script" \
            -DALAYER="$alayer" \
            -DLINKER_SCRIPT="$linker_script" \
            -DCMAKE_BUILD_TYPE=$build_type \
            || exit 1
    
    make    -C "$out_dir/$prj_name/build"   -j$(nproc)
}

# deploy
deploy(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--deploy)${RESET}: Deploy Board"

    if [[ "$tz_flag" == 1 ]]; then
        flash_elf=(
            "-c" "flash write_image erase $out_dir/$prj_name/Build/${prj_name}_Secure.elf"
            "-c" "flash write_image erase $out_dir/$prj_name/Build/${prj_name}_NonSecure.elf"
        )
    else
        flash_elf=(
            "-c" "flash write_image erase $out_dir/$prj_name/Build/${prj_name}.elf"
        )
    fi

    openocd \
        -f "interface/$ocd_interface.cfg" \
        -f "target/$ocd_target.cfg" \
        -c "init" \
        -c "reset halt" \
        "${flash_elf[@]}" \
        -c "reset run" \
        -c "exit"
}

# Uart
uart(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--uart)${RESET}: Reading Serial Port"

    python3 "$fw_dir/read_serial.py"

}

# Covert Channel
all(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--all)${RESET}: Executing all commands"
    
    rm -rf $build
    interface
    generator
    build
    deploy

}

# Covert Channel
covert_channel(){
    echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--covert_channel)${RESET}: Executing covert channel test sequence"
    
    
    
    python3 "$cc_folder_path/$vendor/cc_jinga_sh.py"        "$user_config"

    generator

    cc_file_dir=$(dirname "$user_config")

    cp  $cc_file_dir/*.h                                  "$out_dir/$prj_name/core/inc"
    cp  $cc_file_dir/*.c                                  "$out_dir/$prj_name/core/src"

    build
    deploy

    python3 "$fw_dir/read_serial.py"
    sed '0,/Measuring Covert Channel/d' uart_output.txt > tmp.txt && mv tmp.txt uart_output.txt 

    mkdir -p "$out_dir/$prj_name/Results"
    cp "$fw_dir/uart_output.txt" "$out_dir/$prj_name/Results/"$board"_contention_samples.txt"

    "$cc_folder_path/tools/capacity.sh" $board "$out_dir/$prj_name"

    python3 "$cc_folder_path/tools/heatmap.py" ch_matrix $board "$out_dir/$prj_name/Results"

}

# tz_test(){
#     echo -e "\n${YELLOW}@Step${RESET}${BLUE}(--all)${RESET}: Executing all commands"
    
#     rm -rf $build
#     interface
#     generator
#     build
#     deploy

# }


fw_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# cd "$fw_dir"

# Required flag values
prj_name=""
out_dir=""
board_cfg_dir=""

build_type=Release
declare -a actions
do_all=0
covert_mode=0
help_mode=0

build="$fw_dir/build"
interface="$fw_dir/src/interface"
generator="$fw_dir/src/generator"
runner="$fw_dir/src/runner"
cc_folder_path="$fw_dir/src/Covert_channel"

# Collect flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        -n|--name)
            shift; prj_name="$1" ;;
        -o|--out)
            shift; out_dir="$(realpath -m "$1")" ;;
        -C|--config)
            shift; board_cfg_dir="$(realpath -m "$1")" ;;
        -f|--user_file)
            shift; if [[ -z "$1" ]]; then echo "-f requires a path"; exit 1; fi; 
            user_config="$(realpath -m "$1")" ;;
        --tz)
            tz_flag=1 ;;
        -db|--debug)
            build_type=Debug ;;
        -r|--review)
            actions+=(review) ;;
        -g|--generator)
            actions+=(generator) ;;
        -c|--clean)
            actions+=(clean) ;;
        -b|--build)
            actions+=(build) ;;
        -d|--deploy)
            actions+=(deploy) ;;
        -u|--uart)
            actions+=(uart) ;;
        -a|--all)
            do_all=1 ;;
        -v|--covert_channel)
            covert_mode=1 ;;
        -h|--help)
            usage ;;
        *)
            echo "Unknown option: $1"; usage ;;
    esac
    shift
done

if [ -n "$board_cfg_dir" ]; then
    board_cfg_dir="$(realpath "$board_cfg_dir")"
    # verifica se existe mesmo
    if [ ! -f "$board_cfg_dir" ]; then
        echo "❌ Board config JSON not found: $board_cfg_dir"
    fi
fi

cd "$fw_dir"

# Validate required flags
missing=()
[[ -z "$prj_name" ]] && missing+=("-n/--name")
[[ -z "$out_dir" ]] && missing+=("-o/--out")
[[ -z "$board_cfg_dir" ]] && missing+=("-C/--config")
if [[ ${#missing[@]} -gt 0 ]]; then
    echo -e "${RED}[ERROR] Missing required flag(s): ${missing[*]}${RESET}\n" >&2
    usage
fi

# Board variables (after flags parsed)
inherits=$(             jq -r '.inherits'                   "$board_cfg_dir")
vendor=$(               jq -r '.vendor'                     "$board_cfg_dir")
family=$(               jq -r '.family'                     "$board_cfg_dir")
board=$(                jq -r '.board'                      "$board_cfg_dir")
alayer=$(               jq -r '.build.alayer'               "$board_cfg_dir")
startup_script=$(       jq -r '.build.startup_script'       "$board_cfg_dir")
startup_script_path=$(  jq -r '.build.startup_script_path'  "$board_cfg_dir")
linker_script=$(        jq -r '.build.linker_script'        "$board_cfg_dir")
drivers=$(              jq -r '.build.drivers[]'            "$board_cfg_dir")
ocd_interface=$(        jq -r '.openocd.interface'          "$board_cfg_dir")
ocd_target=$(           jq -r '.openocd.target'             "$board_cfg_dir")

# If covert mode, override user_config now we know vendor/board
if [[ $covert_mode -eq 1 ]]; then
    user_config="$cc_folder_path/$vendor/cc_${board,,}.json"
fi

# Expand implicit sequences
if [[ $covert_mode -eq 1 ]]; then
    # Covert channel has its own flow; ignore --all if both given
    actions=(covert_channel)
elif [[ $do_all -eq 1 ]]; then
    # Base pipeline
    actions=(generator build deploy)
fi
# If no actions chosen, default to generator+build
if [[ ${#actions[@]} -eq 0 ]]; then
    actions=(generator build)
fi
# De-duplicate while preserving order
declare -A seen
ordered=()
for act in "${actions[@]}"; do
    if [[ -z ${seen[$act]} ]]; then
        ordered+=("$act")
        seen[$act]=1
    fi
done
actions=(${ordered[@]})

# Execute actions now that all configuration
for act in "${actions[@]}"; do
    case "$act" in
        review)          review ;;
        clean)           clean ;;
        generator)       generator ;;
        build)           build ;;
        deploy)          deploy ;;
        uart)            uart ;;
        covert_channel)  covert_channel ;;
        *) echo "Internal error: unknown scheduled action '$act'"; exit 2 ;;
    esac
done

echo -e "\n${GREEN}mcu-fw sucess${RESET}\n"

