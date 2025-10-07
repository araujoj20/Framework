# ###*B*###
# Erika Enterprise, version 3
# 
# Copyright (C) 2017 Evidence s.r.l.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or (at
# your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License, version 2, for more details.
# 
# You should have received a copy of the GNU General Public License,
# version 2, along with this program; if not, see
# <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
# 
# This program is distributed to you subject to the following
# clarifications and special exceptions to the GNU General Public
# License, version 2.
# 
# THIRD PARTIES' MATERIALS
# 
# Certain materials included in this library are provided by third
# parties under licenses other than the GNU General Public License. You
# may only use, copy, link to, modify and redistribute this library
# following the terms of license indicated below for third parties'
# materials.
# 
# In case you make modified versions of this library which still include
# said third parties' materials, you are obligated to grant this special
# exception.
# 
# The complete list of Third party materials allowed with ERIKA
# Enterprise version 3, together with the terms and conditions of each
# license, is present in the file THIRDPARTY.TXT in the root of the
# project.
# ###*E*###

## \file	ee_st_libcfg.mk
## \brief	STMicroelectronics Libraries Configuration.
##
## This makefile contains the rules to integrate SSTMicroelectronics Libraries
## in Erika Enterprise as a stand-alone libraries.
##
## \author	Giuseppe Serano
## \date	2018

## Check the STMicroelectronics Libraries selection
ifeq	($(or	\
		$(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL),	\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4)	\
	), yes)

include	$(OS_EE_MK_BASE_DIR)/ee_st_linkcfg.mk

ifeq	($(and	\
		$(call iseeopt, OS_EE_ARCH_CORTEX_M),	\
		$(call iseeopt, OS_EE_ARCH_CORTEX_M_STM32F4)	\
	), yes)

##
## STM32F4xx DSP and Standard Peripherals Library
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL), yes)

##
## SPD
##
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_adc.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_crc.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dbgmcu.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dma.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_exti.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_flash.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_gpio.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_i2c.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_iwdg.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rcc.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rtc.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_sdio.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_spi.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_syscfg.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_tim.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_usart.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_wwdg.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/misc.c
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_cryp.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_hash.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rng.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_can.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dac.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dcmi.c
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_fsmc.c
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

##
## CMSIS
##
EE_SRCS_STM32F4XX_DSP_SPL += Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c

ifeq	($(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL_SA), yes)

EE_OBJS_STM32F4XX_DSP_SPL := 						       \
	$(addprefix $(OS_EE_OBJ_DIR)/,					       \
		$(patsubst %.c,%.c.o,					       \
			$(patsubst %.S,%.S.o,$(EE_SRCS_STM32F4XX_DSP_SPL))     \
		)							       \
	)

LIBSRCS += $(EE_SRCS_STM32F4XX_DSP_SPL)

STM32F4XX_DSP_SPL_LIB := libstm32f4xxdspspl.a

$(OS_EE_LIB_DIR)/$(STM32F4XX_DSP_SPL_LIB): $(EE_OBJS_STM32F4XX_DSP_SPL)
	$(OS_EE_VERBOSE_PRINTAR) $(OS_EE_AR) $(OS_EE_COMP_AR_OPT) $@ $^
	@echo "**************************************************"
	@echo "* STM32F4xx DSP and Standard Peripherals Library *"
	@echo "* built successfully!                            *"
	@echo "**************************************************"

OPT_LIBS += $(OS_EE_LIB_DIR)/$(STM32F4XX_DSP_SPL_LIB)
ALL_LIBS += $(OS_EE_LIB_DIR)/$(STM32F4XX_DSP_SPL_LIB)

else	# OS_EE_LIB_STM32F4XX_DSP_SPL_SA

EE_SRCS += $(EE_SRCS_STM32F4XX_DSP_SPL)

endif	# OS_EE_LIB_STM32F4XX_DSP_SPL_SA

endif	# OS_EE_LIB_STM32F4XX_DSP_SPL

##
## STM32CubeF4 Firmware Package
##
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4), yes)

##
## BSP
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4_DISCOVERY), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F4-Discovery/stm32f4_discovery.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F4-Discovery/stm32f4_discovery_accelerometer.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F4-Discovery/stm32f4_discovery_audio.c
endif	# OS_EE_LIB_STM32F4_DISCOVERY

ifeq	($(call islibopt, OS_EE_LIB_STM32F429I_DISC1), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/Components/ili9341/ili9341.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/Components/stmpe811/stmpe811.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_eeprom.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_gyroscope.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_io.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_lcd.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_sdram.c
EE_SRCS_STM32_CUBE_F4 += Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_ts.c
endif	# OS_EE_LIB_STM32F429I_DISC1

##
## HAL
##
ifeq	($(call iseeopt, OS_EE_ARCH_CORTEX_M_STM32F4), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cec.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_crc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dfsdm.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma2d.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dsi.c
#EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_eth.c

ifeq	($(or						\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_24_0),	\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_24_1),	\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_25_0)	\
), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c
endif

EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c_ex.c

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_25_0), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpsmbus.c
endif

EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hcd.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_irda.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_iwdg.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_lptim.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_mmc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_msp_template.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nand.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nor.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pccard.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sram.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_qspi.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rng.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sd.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sdram.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_smartcard.c

ifeq	($(or						\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_24_0),	\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_24_1),	\
  $(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_25_0)	\
), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_smbus.c
endif

EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spdifrx.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sram.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_timebase_rtc_alarm_template.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_timebase_rtc_wakeup_template.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_timebase_tim_template.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_wwdg.c

EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_adc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_crc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dac.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dma.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dma2d.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_exti.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fmc.c

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_25_0), yes)
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fmpi2c.c
endif

EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fsmc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_gpio.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_i2c.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_lptim.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_pwr.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rcc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rng.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rtc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_sdmmc.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_spi.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_tim.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usart.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usb.c
EE_SRCS_STM32_CUBE_F4 += Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_utils.c

endif	# OS_EE_ARCH_CORTEX_M_STM32F4

##
## CMSIS
##
EE_SRCS_STM32_CUBE_F4 += Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c

##
## Touch GFX
##
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX), yes)

#[GS]
#EE_SRCS_STM32_CUBE_F4_TOUCH_GFX += OSWrappers.cpp

endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_SA), yes)

EE_OBJS_STM32_CUBE_F4 := 						       \
	$(addprefix $(OS_EE_OBJ_DIR)/,					       \
		$(patsubst %.c,%.c.o,					       \
			$(patsubst %.S,%.S.o,$(EE_SRCS_STM32_CUBE_F4))	       \
		)							       \
	)

LIBSRCS += $(EE_SRCS_STM32_CUBE_F4)

STM32_CUBE_F4_LIB := libstm32cubef4.a

$(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_LIB): $(EE_OBJS_STM32_CUBE_F4)
	$(OS_EE_VERBOSE_PRINTAR) $(OS_EE_AR) $(OS_EE_COMP_AR_OPT) $@ $^
	@echo "****************************************"
	@echo "* STM32CubeF4 Firmware Package Library *"
	@echo "* built successfully!                  *"
	@echo "****************************************"

OPT_LIBS += $(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_LIB)
ALL_LIBS += $(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_LIB)

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX), yes)

#[GS]
#EE_OBJS_STM32_CUBE_F4_TOUCH_GFX := 					       \
#$(addprefix $(OS_EE_OBJ_DIR)/,						       \
#	$(patsubst %.cpp,%.cpp.o,					       \
#		$(patsubst %.c,%.c.o,					       \
#			$(patsubst %.S,%.S.o,				       \
#				$(EE_SRCS_STM32_CUBE_F4_TOUCH_GFX)	       \
#			)						       \
#		)							       \
#	)								       \
#)

#LIBSRCS += $(EE_SRCS_STM32_CUBE_F4_TOUCH_GFX)

#STM32_CUBE_F4_TOUCH_GFX_LIB := libstm32cubef4touchgfx.a

#$(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_TOUCH_GFX_LIB): $(EE_OBJS_STM32_CUBE_F4_TOUCH_GFX)
#	$(OS_EE_VERBOSE_PRINTAR) $(OS_EE_AR) $(OS_EE_COMP_AR_OPT) $@ $^
#	@echo "*********************************"
#	@echo "* STM32CubeF4 Touch GFX Library *"
#	@echo "* built successfully!           *"
#	@echo "*********************************"

#OPT_LIBS += $(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_TOUCH_GFX_LIB)
#ALL_LIBS += $(OS_EE_LIB_DIR)/$(STM32_CUBE_F4_TOUCH_GFX_LIB)

endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX

else	# OS_EE_LIB_STM32_CUBE_F4_SA

EE_SRCS += $(EE_SRCS_STM32_CUBE_F4)

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX), yes)

#EE_SRCS += $(EE_SRCS_STM32_CUBE_F4_TOUCH_GFX)

endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX

endif	# OS_EE_LIB_STM32_CUBE_F4_SA

endif	# OS_EE_LIB_STM32_CUBE_F4

endif	# OS_EE_ARCH_CORTEX_M && OS_EE_ARCH_CORTEX_M_STM32F4

endif	# OS_EE_LIB_STM32F4XX_DSP_SPL || OS_EE_LIB_STM32_CUBE_F4
