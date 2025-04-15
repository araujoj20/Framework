# Template CMakeLists.txt configuration for STM32 MCUS
cmake_minimum_required(VERSION 3.12)
#include(./gcc-arm-none-eabi.cmake)
# ##############################################################################
# Edit your MCU information up to the next border

include(./stm32f7xx.cmake)

if(NOT DEFINED PROJECT_NAME)
    get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
endif()

project(${PROJECT_NAME})


#set(DOCUMENTS_PATH $ENV{HOME}/Documents/GitHub/Framework/abstraction_layer/stm32/stm32f7xx-hal-driver)
# get_filename_component(HOME_DIR "~" REALPATH)
# set(DOCUMENTS_PATH ${HOME_DIR}/Documents/GitHub/Framework/abstraction_layer/stm32/stm32f7xx-hal-driver)


#set(MCU_FAMILY STM32F7xx)
set(MCU_MODEL STM32F767xx)

# ##############################################################################
set(EXECUTABLE ${CMAKE_PROJECT_NAME})
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
    #${CMAKE_CURRENT_SOURCE_DIR}/Drivers/CMSIS/Device/ST/${MCU_FAMILY}/Include
    #${CMAKE_CURRENT_SOURCE_DIR}/Drivers/CMSIS/Include
    ${DOCUMENTS_PATH}/Inc
    ${DOCUMENTS_PATH}/Inc/Legacy
    )
set(PROJECT_INCLUDE_DIRECTORIES
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
    )

# Sources
file(GLOB_RECURSE STM32_CMSIS
    ${CMAKE_CURRENT_SOURCE_DIR}/Core/*.c
    #${CMAKE_CURRENT_SOURCE_DIR}/Drivers/*.c
    )


file(GLOB_RECURSE STM32_HAL_RAW
    ${DOCUMENTS_PATH}/Src/*.c
    ${DOCUMENTS_PATH}/Src/Legacy/*.c
    )

# Exclude "template" files from compiling
set(STM32_HAL "")
foreach(file ${STM32_HAL_RAW})
    if (NOT file MATCHES "template")
        list(APPEND STM32_HAL ${file})
    endif()
endforeach()
    
#file(GLOB_RECURSE STM32_HAL FOLLOW_SYMLINKS
#    ${PROJECT_DIR}/*.cpp
#    ${PROJECT_DIR}/*.c)

# Executable files
add_executable(${EXECUTABLE}
    ${STM32_CMSIS} 
    ${STM32_HAL}
    ${STARTUP_SCRIPT})

# Embedded macros(defines)
target_compile_definitions(${EXECUTABLE} PRIVATE
    ${MCU_MODEL}
    USE_HAL_DRIVER)

# Add header directories (AFTER add_executable !!)
target_include_directories(${EXECUTABLE} PRIVATE
    ${CUBEMX_INCLUDE_DIRECTORIES}
    ${PROJECT_INCLUDE_DIRECTORIES})

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
    -T${LINKER_SCRIPT}
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