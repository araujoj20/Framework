# L552ZI-Q

set(CPU_PARAMETERS
    -mcpu=cortex-m33
    -mthumb
    -mfloat-abi=soft)

set(DOCUMENTS_PATH  ${CMAKE_CURRENT_SOURCE_DIR}/stm32l5xx-hal-driver)

set(STARTUP_SCRIPT  ${CMAKE_CURRENT_SOURCE_DIR}/Core/Startup/startup_stm32l552zitx.s)

set(LINKER_SCRIPT   ${CMAKE_CURRENT_SOURCE_DIR}/STM32L552ZITX_FLASH.ld)
