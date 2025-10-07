cmake_minimum_required(VERSION 3.12)

project(${PROJECT_NAME})

set(MCU_MODEL "${MCU_MODEL_RAW}xx")

string(REPLACE "stm32" "" MCU_FAMILY_SHORT ${MCU_FAMILY})
string(REPLACE "xx" "" MCU_FAMILY_SHORT ${MCU_FAMILY_SHORT})
set(CMSIS_DEVICE_FAMILY "cmsis-device-${MCU_FAMILY_SHORT}")

set(HAL_PATH            ${CMAKE_CURRENT_SOURCE_DIR}/drivers/${ALAYER})
set(STARTUP_SCRIPT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/${STARTUP_SCRIPT})
set(LINKER_SCRIPT_PATH  ${CMAKE_CURRENT_SOURCE_DIR}/${LINKER_SCRIPT})
set(CMSIS_5             ${CMAKE_CURRENT_SOURCE_DIR}/drivers/CMSIS_5)
set(CMSIS_DEVICE        ${CMAKE_CURRENT_SOURCE_DIR}/drivers/${CMSIS_DEVICE_FAMILY})

set(SECURE_NSCLIB_SRC ${CMAKE_CURRENT_SOURCE_DIR}/../Secure_nsclib/secure_nsc.c)    # TZ

set(EXECUTABLE ${PROJECT_NAME}_Secure)

enable_language(C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

# ##############################################################################
# Includes e fontes

set(CUBEMX_INCLUDE_DIRECTORIES
    ${CMAKE_CURRENT_SOURCE_DIR}/core/inc
    ${CMSIS_5}/Include
    ${CMSIS_DEVICE}/Include
    ${HAL_PATH}/inc
    ${HAL_PATH}/inc/Legacy
    ${CMAKE_CURRENT_SOURCE_DIR}/../Secure_nsclib    # TZ
)

file(GLOB_RECURSE STM32CUBEMX_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/core/src/*.c
)

file(GLOB_RECURSE PROJECT_SOURCES_RAW
    ${HAL_PATH}/src/*.c
    ${HAL_PATH}/src/Legacy/*.c
)

set(PROJECT_SOURCES "")
foreach(file ${PROJECT_SOURCES_RAW})
    if (NOT file MATCHES "template")
        list(APPEND PROJECT_SOURCES ${file})
    endif()
endforeach()


add_executable(${EXECUTABLE}
    ${STM32CUBEMX_SOURCES}
    ${PROJECT_SOURCES}
    ${STARTUP_SCRIPT_PATH}
    ${SECURE_NSCLIB_SRC}    # TZ
)

target_include_directories(${EXECUTABLE} PRIVATE
    ${CUBEMX_INCLUDE_DIRECTORIES}
)

target_compile_options(${EXECUTABLE} PRIVATE
    ${CPU_PARAMETERS}
    -Wall
    -mcmse
    -Wextra
    -Wpedantic
    -Wno-unused-parameter
    -mcmse                                # TZ
    $<$<COMPILE_LANGUAGE:CXX>:
        -Wno-volatile
        -Wold-style-cast
        -Wuseless-cast
        -Wsuggest-override>
    $<$<CONFIG:Debug>:-Og -g3 -ggdb>
    $<$<CONFIG:Release>:-Og -g0>
)

target_compile_definitions(${EXECUTABLE} PRIVATE
    ${MCU_MODEL}
    ${MCU_FAMILY}
    MCU_FAMILY=\"${MCU_FAMILY}\"
    USE_HAL_DRIVER
    ${TRUSTZONE}
)

target_link_options(${EXECUTABLE} PRIVATE
    -T${LINKER_SCRIPT_PATH}
    ${CPU_PARAMETERS}
    -Wl,-Map=${CMAKE_PROJECT_NAME}.map
    -static
    -Wl,--start-group
    -lc
    -lm
    -lstdc++
    -Wl,--end-group
    -Wl,--print-memory-usage
    -Wl,--cmse-implib           # TZ
    -Wl,--out-implib=${CMAKE_BINARY_DIR}/Secure/secure_nsclib.o # TZ
)

# ##############################################################################
# Pós-build

add_custom_command(TARGET ${EXECUTABLE} POST_BUILD
    COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${EXECUTABLE}>
)

add_custom_command(TARGET ${EXECUTABLE} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O ihex $<TARGET_FILE:${EXECUTABLE}> ${EXECUTABLE}.hex
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${EXECUTABLE}> ${EXECUTABLE}.bin
)

