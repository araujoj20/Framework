# Template CMakeLists.txt configuration for STM32 MCUS
cmake_minimum_required(VERSION 3.12)
# ##############################################################################
# Edit your MCU information up to the next border


#if(DEFINED CMAKE_FILE)
#    include(${CMAKE_FILE})
#endif()

project(${PROJECT_NAME})

set(MCU_MODEL "${MCU_MODEL_RAW}xx")

set(HAL_PATH            ${CMAKE_CURRENT_SOURCE_DIR}/${ALAYER})
set(STARTUP_SCRIPT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/${STARTUP_SCRIPT})
set(LINKER_SCRIPT_PATH  ${CMAKE_CURRENT_SOURCE_DIR}/${LINKER_SCRIPT})
set(INCLUDES_MANUAL     ${CMAKE_CURRENT_SOURCE_DIR})

# ##############################################################################
set(EXECUTABLE ${CMAKE_PROJECT_NAME}) # defines name of elf
enable_language(C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

# Headers
set(CUBEMX_INCLUDE_DIRECTORIES
    ${CMAKE_CURRENT_SOURCE_DIR}/Core/Inc
    ${INCLUDES_MANUAL}/Includes
    ${HAL_PATH}/Inc
    ${HAL_PATH}/Inc/Legacy
    )

# Sources
file(GLOB_RECURSE STM32CUBEMX_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/Core/Src/*.c
    )

file(GLOB_RECURSE PROJECT_SOURCES_RAW
    ${HAL_PATH}/Src/*.c
    ${HAL_PATH}/Src/Legacy/*.c
    )

# Filtra os que NÃO contenham "template" no nome
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

# Embedded macros(defines)
target_compile_definitions(${EXECUTABLE} PRIVATE
    ${MCU_MODEL}
    USE_HAL_DRIVER)

# Add header directories (AFTER add_executable !!)
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
    $<$<CONFIG:Debug>:-Og -g3 -ggdb>
    $<$<CONFIG:Release>:-Og -g0>)

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