# Template CMakeLists.txt configuration for STM32 MCUS
cmake_minimum_required(VERSION 3.12)
# ##############################################################################
# Edit your MCU information up to the next border

#if(DEFINED CMAKE_FILE)
#    include(${CMAKE_FILE})
#endif()

project(${PROJECT_NAME})

#set(HAL_HEADER ${MCU_FAMILY}_hal.h)

set(MCU_MODEL "${MCU_MODEL_RAW}xx")

string(REPLACE "stm32" "" MCU_FAMILY_SHORT ${MCU_FAMILY})
string(REPLACE "xx" "" MCU_FAMILY_SHORT ${MCU_FAMILY_SHORT})
set(CMSIS_DEVICE_FAMILY "cmsis-device-${MCU_FAMILY_SHORT}")

set(HAL_PATH            ${CMAKE_CURRENT_SOURCE_DIR}/drivers/${ALAYER})
set(STARTUP_SCRIPT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/${STARTUP_SCRIPT})
set(LINKER_SCRIPT_PATH  ${CMAKE_CURRENT_SOURCE_DIR}/${LINKER_SCRIPT})
set(CMSIS_5             ${CMAKE_CURRENT_SOURCE_DIR}/drivers/CMSIS_5)
set(CMSIS_DEVICE        ${CMAKE_CURRENT_SOURCE_DIR}/drivers/${CMSIS_DEVICE_FAMILY})

# ##############################################################################
if(ENABLE_TRUSTZONE)
    set(EXECUTABLE ${CMAKE_PROJECT_NAME}_NonSecure)
else()
    set(EXECUTABLE ${CMAKE_PROJECT_NAME})
endif()

enable_language(C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

# Headers
set(CUBEMX_INCLUDE_DIRECTORIES
    ${CMAKE_CURRENT_SOURCE_DIR}/core/inc
    ${CMSIS_5}/Include
    ${CMSIS_DEVICE}/Include
    ${HAL_PATH}/inc
    ${HAL_PATH}/inc/Legacy
    )

if(ENABLE_TRUSTZONE)
    list(APPEND CUBEMX_INCLUDE_DIRECTORIES
        ${CMAKE_CURRENT_SOURCE_DIR}/../Secure_nsclib
    )
endif()

# Sources
file(GLOB_RECURSE STM32CUBEMX_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/core/src/*.c
    )

file(GLOB_RECURSE PROJECT_SOURCES_RAW
    ${HAL_PATH}/src/*.c
    ${HAL_PATH}/src/Legacy/*.c
    )

# Filters out files that do NOT contain "template" in their name
set(PROJECT_SOURCES "")
foreach(file ${PROJECT_SOURCES_RAW})
    if (NOT file MATCHES "template")
        list(APPEND PROJECT_SOURCES ${file})
    endif()
endforeach()

# Executable files
add_executable(${EXECUTABLE}
    ${STM32CUBEMX_SOURCES} 
    ${PROJECT_SOURCES}
    ${STARTUP_SCRIPT_PATH})

if(ENABLE_TRUSTZONE)
    add_compile_definitions(TZEN)
endif()

# Embedded macros(defines)
target_compile_definitions(${EXECUTABLE} PRIVATE
    ${MCU_MODEL}
    ${MCU_FAMILY}
    MCU_FAMILY=\"${MCU_FAMILY}\"
    #HAL_BOARD_HEADER=\"${HAL_HEADER}\"
    USE_HAL_DRIVER
    )

target_include_directories(${EXECUTABLE} PRIVATE
    ${CUBEMX_INCLUDE_DIRECTORIES}
    )

# Compiler and linker options
target_compile_options(${EXECUTABLE} PRIVATE
    ${CPU_PARAMETERS}
    -Wall
    -Wextra
    -Wpedantic
    -Wno-unused-parameter
    $<$<COMPILE_LANGUAGE:CXX>:
        -Wno-volatile
        -Wold-style-cast
        -Wuseless-cast
        -Wsuggest-override>
    $<$<CONFIG:Debug>:-O0 -g3 -ggdb>
    $<$<CONFIG:Release>:-O0 -DNDEBUG -g0>)

if(ENABLE_TRUSTZONE)
    set(SECURE_NSCLIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../build/secure/secure_nsclib.o)
    target_link_libraries(${EXECUTABLE} PRIVATE ${SECURE_NSCLIB_PATH})
endif()

target_link_options(${EXECUTABLE} PRIVATE
    -T${LINKER_SCRIPT_PATH}
    ${CPU_PARAMETERS}
    -Wl,-Map=${CMAKE_PROJECT_NAME}.map
    --specs=nosys.specs
    -Wl,--start-group
    -lc
    -lm
    -lstdc++
    -Wl,--end-group
    -Wl,--print-memory-usage)

add_custom_command(TARGET ${EXECUTABLE} POST_BUILD
    COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${EXECUTABLE}>)

add_custom_command(TARGET ${EXECUTABLE} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O ihex $<TARGET_FILE:${EXECUTABLE}>
    ${EXECUTABLE}.hex
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${EXECUTABLE}>
    ${EXECUTABLE}.bin)