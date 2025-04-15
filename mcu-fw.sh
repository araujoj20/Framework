#!/bin/bash

# Paths

fw_dir=     "$(pwd)"

build=      "Build"
interface=  "Interface"
generator=  "Generator"
runner=     "Runner"

vendor=     "stm32"
family=     "stm32f7xx"


usage() {
    echo "Uso: $0 <test_name> <board_config_path> <test_path> [-flags]"
    exit 1
}

if [ "$#" -lt 3 ]; then
    usage
fi

mkdir -p $build

# Compile files
gcc $interface/interface.c  -o  $build/interface     ../cJSON/cJSON.c    -I./../cJSON
gcc $interface/periph_gen.c -o  $build/periph_gen    ../cJSON/cJSON.c    -I./../cJSON -D STM32F767

# Parameters
test_name=$1
board_config_path=$2
test_path=$3
shift 3

cd $build

./interface "$test_name" "$board_config_path" "$test_path" "$@"

./periph_gen "$board_config_path" "$build"

cp  $build/*.h  "$test_path/$test_name/Core/Inc"

cd ..

mkdir -p "$test_path/$test_name/Core/Inc"
mkdir -p "$test_path/$test_name/Core/Src"
mkdir -p "$test_path/$test_name/Build"
#mkdir -p "$test_path/$test_name/Flash"

cp  $generator/$vendor/aux_files/*.c            "$test_path/$test_name/Core/Src"
cp  $generator/$vendor/aux_files/$family/*.c    "$test_path/$test_name/Core/Src"
cp  $generator/$vendor/aux_files/$family/*.h    "$test_path/$test_name/Core/Inc"
cp  $generator/$vendor/aux_files/$family/*.ld   "$test_path/$test_name/Build"


# Runner

cp $runner/cmake/$vendor/CMakeLists.txt         "$test_path/$test_name"
cp $runner/cmake/$vendor/board/$family.cmake    "$test_path/$test_name"

cd $test_path/$test_name

cmake   --B Build   -DPROJECT_NAME=$test_name   ||  exit 1
make     -C Build   -j$(nproc)

cd $fw_dir/

# Possibilidade de alterar diretamente aqui: (Criar um cfg de raiz so com interface e target costumizado)
#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/board/st_nucleo_f7.cfg

#!/bin/bash

OPENOCD_CFG_PATH=   "$fw_dir/Runner/openocd/tcl"
ELF_NAME=           "$test_name.elf"

openocd \
  -f "$OPENOCD_CFG_PATH/interface/stlink.cfg" \
  -f "$OPENOCD_CFG_PATH/target/stm32f7x.cfg" \
  -c "init" \
  -c "reset halt" \
  -c "flash write_image erase $test_path/$test_name/Build/$ELF_NAME" \
  -c "reset run" \
  -c "exit"

#openocd -f /home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/interface/stlink-v2.cfg -f /home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/target/stm32f7x.cfg -c "init" -c "reset halt" -c "flash write_image erase /home/araujoj20/Music/f7_peripherals_test/Build/F7_PERIPHERALS_TEST.elf" -c "reset run" -c "exit"

#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/interface/stlink-v2.cfg
#/home/araujoj20/Documents/GitHub/Framework/Runner/openocd/tcl/target/stm32f7x.cfg
#openocd -f /usr/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/share/openocd/scripts/target/stm32f7x.cfg -c "init" -c "reset halt" -c "flash write_image erase /home/araujoj20/Music/f7_peripherals_test/Build/F7_PERIPHERALS_TEST.elf" -c "reset run" -c "exit"


echo "Success"

# ./mcu-fw.sh test_uart_f7 Configs/stm32_l552ze_q_config.json ~/Documents/STM32CubeIDE/workspace_1.18.0/stm_test_peripherals/l5_peripherals_test/NonSecure/ -manual
# ./mcu-fw.sh test_uart_f7 Configs/stm32_f767_config.json ~/Documents/STM32CubeIDE/workspace_1.18.0/stm_test_peripherals/f7_peripherals_test/ -manual