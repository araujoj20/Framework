# L552ZI-Q

set(CPU_PARAMETERS
    -mcpu=cortex-m33
    -mthumb
    -mfpu=fpv5-sp-d16
    -mfloat-abi=hard)

set(MCU_FAMILY "stm32l5xx")

set(TRUSTZONE "TZBIT")

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Some default GCC settings
set(TOOLCHAIN_PREFIX arm-none-eabi-)
set(FLAGS
    "-fdata-sections -ffunction-sections \
    --specs=nano.specs -Wl,--gc-sections")
set(CPP_FLAGS
    "-fno-rtti -fno-exceptions \
    -fno-threadsafe-statics")

set(CMAKE_C_COMPILER    ${TOOLCHAIN_PREFIX}gcc ${FLAGS})
set(CMAKE_ASM_COMPILER  ${CMAKE_C_COMPILER})
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_PREFIX}g++ ${FLAGS} ${CPP_FLAGS})
set(CMAKE_OBJCOPY       ${TOOLCHAIN_PREFIX}objcopy)
set(CMAKE_SIZE          ${TOOLCHAIN_PREFIX}size)

set(CMAKE_EXECUTABLE_SUFFIX_ASM ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C   ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX ".elf")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)