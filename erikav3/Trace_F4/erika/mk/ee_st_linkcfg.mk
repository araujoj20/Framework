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

## \file	ee_st_linkcfg.mk
## \brief	STMicroelectronics Libraries Link Configuration.
##
## This makefile contains the rules to integrate STMicroelectronics stand-alone
## libraries in an Erika Enterprise Application.
##
## \author	Giuseppe Serano
## \date	2018

## Check the STMicroelectronics Libraries selection
ifeq	($(or	\
		$(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL),	\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4)	\
	), yes)

ifeq	($(and	\
		$(call iseeopt, OS_EE_ARCH_CORTEX_M),	\
		$(call iseeopt, OS_EE_ARCH_CORTEX_M_STM32F4)	\
	), yes)

##
## STM32F4xx DSP and Standard Peripherals Library
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL), yes)

ifndef	STM32F4XX_DSP_SPL_FILES
ifeq	($(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL_1_8_0), yes)
export	STM32F4XX_DSP_SPL_FILES = C:/Evidence/STM32F4xx_DSP_StdPeriph_Lib_V1.8.0
else	# OS_EE_LIB_STM32F4XX_DSP_SPL_1_8_0
export	STM32F4XX_DSP_SPL_FILES = C:/Evidence/STM32F4xx_DSP_StdPeriph_Lib
endif	# OS_EE_LIB_STM32F4XX_DSP_SPL_1_8_0
endif	# STM32F4XX_DSP_SPL_FILES

STM32F4XX_DSP_SPL_ROOT := $(call short_native_path, $(STM32F4XX_DSP_SPL_FILES))

EE_VPATH += $(STM32F4XX_DSP_SPL_ROOT)

##
## MCU Selection.
##
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
#OS_EE_OPT += STM32F40XX
OS_EE_DEFS_AS	+= -DSTM32F40XX
OS_EE_DEFS_CC	+= -DSTM32F40XX
OS_EE_DEFS_CXX	+= -DSTM32F40XX
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

##
## SPD Enabling.
##
#OS_EE_OPT += USE_STDPERIPH_DRIVER
OS_EE_DEFS_AS	+= -DUSE_STDPERIPH_DRIVER
OS_EE_DEFS_CC	+= -DUSE_STDPERIPH_DRIVER
OS_EE_DEFS_CXX	+= -DUSE_STDPERIPH_DRIVER

ifeq	($(call iseeopt, OS_EE_ARCH_CORTEX_M_STM32F4_DISCOVERY),yes)
##
## Value of the External High Speed oscillator (HSE) in Hz
##
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
#OS_EE_OPT += HSE_VALUE=8000000U
OS_EE_DEFS_AS	+= -DHSE_VALUE=8000000U
OS_EE_DEFS_CC	+= -DHSE_VALUE=8000000U
OS_EE_DEFS_CXX	+= -DHSE_VALUE=8000000U
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx
endif	# OS_EE_ARCH_CORTEX_M_STM32F4_DISCOVERY

##
## Add the inc path to the include pathlist
## New include mechanism

##
## SPD
##
INCLUDE_PATH :=	\
$(STM32F4XX_DSP_SPL_ROOT)/Libraries/STM32F4xx_StdPeriph_Driver/inc	\
$(INCLUDE_PATH)

##
## CMSIS
##
INCLUDE_PATH :=	\
$(STM32F4XX_DSP_SPL_ROOT)/Libraries/CMSIS/Include			\
$(STM32F4XX_DSP_SPL_ROOT)/Libraries/CMSIS/Device/ST/STM32F4xx/Include	\
$(STM32F4XX_DSP_SPL_ROOT)/Project/STM32F4xx_StdPeriph_Templates		\
$(INCLUDE_PATH)

##
## Start-Up Code
##
## Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/TrueSTUDIO/startup_stm32f40_41xxx.s
## Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/SW4STM32/startup_stm32f40_41xxx.s
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
OS_EE_APP_CFG_SRCS += \
Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/SW4STM32/startup_stm32f40_41xxx.s
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

##
## Linker Script
##
## Project/STM32F4xx_StdPeriph_Templates/TrueSTUDIO/STM32F40_41xxx/STM32F417IG_FLASH.ld
## Project/STM32F4xx_StdPeriph_Templates/SW4STM32/STM32F40_41xxx/STM32F417IGHx_FLASH.ld
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
OS_EE_LINKER_SCRIPT := \
$(STM32F4XX_DSP_SPL_ROOT)/Project/STM32F4xx_StdPeriph_Templates/SW4STM32/STM32F40_41xxx/STM32F417IGHx_FLASH.ld
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

ifneq	($(if $(filter OS_EE_BUILD,$(OS_EE_OPT)),yes,), yes)
ifeq	($(call islibopt, OS_EE_LIB_STM32F4XX_DSP_SPL_SA), yes)
STM32F4XXDSPSPL = stm32f4xxdspspl
STM32F4XX_DSP_SPL := lib$(STM32F4XXDSPSPL).a

OPT_LIBS += -l$(STM32F4XXDSPSPL)
ALL_LIBS += $(OS_EE_LIB_BASE_DIR)/$(STM32F4XX_DSP_SPL)
endif	# OS_EE_LIB_STM32F4XX_DSP_SPL_SA
endif	# !OS_EE_BUILD

endif	# OS_EE_LIB_STM32F4XX_DSP_SPL

##
## STM32CubeF4 Firmware Package
##
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4), yes)

ifndef	STM32_CUBE_F4_FILES
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_1_18_0), yes)
export	STM32_CUBE_F4_FILES = C:/Evidence/STM32Cube_FW_F4_V1.18.0
else	# OS_EE_LIB_STM32_CUBE_F4_1_18_0
export	STM32_CUBE_F4_FILES = C:/Evidence/STM32Cube_FW_F4
endif	# OS_EE_LIB_STM32_CUBE_F4_1_18_0
endif	# STM32_CUBE_F4_FILES

STM32_CUBE_F4_ROOT := $(call short_native_path, $(STM32_CUBE_F4_FILES))

EE_VPATH += $(STM32_CUBE_F4_ROOT)

ifeq	($(or	\
  $(and $(call iseeopt, OS_EE_BUILD), $(call iseeopt, OS_EE_BUILD_DEBUG)),     \
  $(and 								       \
	$(call iseeopt, OS_EE_APPL_BUILD),				       \
	$(call iseeopt, OS_EE_APPL_BUILD_DEBUG)				       \
  )									       \
), yes)
OS_EE_DEFS_AS	+= -DDEBUG
OS_EE_DEFS_CC	+= -DDEBUG
OS_EE_DEFS_CXX	+= -DDEBUG
endif

##
## MCU Selection.
##
OS_EE_DEFS_AS	+= -DSTM32 -DSTM32F4
OS_EE_DEFS_CC	+= -DSTM32 -DSTM32F4
OS_EE_DEFS_CXX	+= -DSTM32 -DSTM32F4

ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
#OS_EE_OPT += STM32F407xx
OS_EE_DEFS_AS	+= -DSTM32F407xx
OS_EE_DEFS_CC	+= -DSTM32F407xx
OS_EE_DEFS_CXX	+= -DSTM32F407xx
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

ifeq ($(findstring STM32F429xx, $(OS_EE_CORTEX_M_MCU)), STM32F429xx)
#OS_EE_OPT += STM32F429xx
OS_EE_DEFS_AS	+= -DSTM32F429xx
OS_EE_DEFS_CC	+= -DSTM32F429xx
OS_EE_DEFS_CXX	+= -DSTM32F429xx
endif	# OS_EE_CORTEX_M_MCU == STM32F429xx

##
## BOARD Selection.
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4_DISCOVERY), yes)
OS_EE_DEFS_AS	+= -DSTM32F407VGTx -DSTM32F407G_DISC1
OS_EE_DEFS_CC	+= -DSTM32F407VGTx -DSTM32F407G_DISC1
OS_EE_DEFS_CXX	+= -DSTM32F407VGTx -DSTM32F407G_DISC1
endif	# OS_EE_LIB_STM32F4_DISCOVERY

ifeq	($(call islibopt, OS_EE_LIB_STM32F429I_DISC1), yes)
OS_EE_DEFS_AS	+= -DSTM32F429ZITx -DSTM32F429I_DISC1
OS_EE_DEFS_CC	+= -DSTM32F429ZITx -DSTM32F429I_DISC1
OS_EE_DEFS_CXX	+= -DSTM32F429ZITx -DSTM32F429I_DISC1
endif	# OS_EE_LIB_STM32F429I_DISC1

##
## HAL Enabling.
##
#OS_EE_OPT += USE_HAL_DRIVER
OS_EE_DEFS_AS	+= -DUSE_HAL_DRIVER
OS_EE_DEFS_CC	+= -DUSE_HAL_DRIVER
OS_EE_DEFS_CXX	+= -DUSE_HAL_DRIVER

##
## Add the inc path to the include pathlist
## New include mechanism

##
## BSP
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4_DISCOVERY), yes)
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Drivers/BSP/STM32F4-Discovery	$(INCLUDE_PATH)
endif	# OS_EE_LIB_STM32F4_DISCOVERY

ifeq	($(call islibopt, OS_EE_LIB_STM32F429I_DISC1), yes)
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Drivers/BSP/			\
$(STM32_CUBE_F4_ROOT)/Drivers/BSP/STM32F429I-Discovery	\
$(STM32_CUBE_F4_ROOT)/Drivers/BSP/Components/ili9341	\
$(STM32_CUBE_F4_ROOT)/Drivers/BSP/Components/stmpe811	\
$(INCLUDE_PATH)
endif	# OS_EE_LIB_STM32F429I_DISC1

##
## HAL
##
ifeq	($(call islibopt, OS_EE_LIB_STM32F4_DISCOVERY), yes)
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Projects/STM32F4-Discovery/Templates/Inc	\
$(INCLUDE_PATH)
endif	# OS_EE_LIB_STM32F4_DISCOVERY

ifeq	($(call islibopt, OS_EE_LIB_STM32F429I_DISC1), yes)
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Projects/STM32F429I-Discovery/Templates/Inc	\
$(INCLUDE_PATH)
endif	# OS_EE_LIB_STM32F429I_DISC1

INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Drivers/STM32F4xx_HAL_Driver/Inc $(INCLUDE_PATH)

##
## CMSIS
##
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Drivers/CMSIS/Include				\
$(STM32_CUBE_F4_ROOT)/Drivers/CMSIS/Device/ST/STM32F4xx/Include	\
$(INCLUDE_PATH)

##
## TouchGFX
##
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX), yes)
ifndef	STM32_CUBE_F4_TOUCH_GFX_FILES
export STM32_CUBE_F4_TOUCH_GFX_FILES := C:/TouchGFXProjects/MyApplication
endif
STM32_CUBE_F4_TOUCH_GFX_ROOT := $(call short_native_path, $(STM32_CUBE_F4_TOUCH_GFX_FILES))

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE), yes)
EE_VPATH += $(STM32_CUBE_F4_TOUCH_GFX_ROOT)
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0), yes)
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_TOUCH_GFX_ROOT)/Middlewares/ST/TouchGFX/touchgfx/framework/include \
$(INCLUDE_PATH)
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_TOUCH_GFX_ROOT)/Middlewares/ST/touchgfx/framework/include      \
$(INCLUDE_PATH)
endif	#OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
INCLUDE_PATH :=	\
$(STM32_CUBE_F4_ROOT)/Middlewares/ST/TouchGFX/touchgfx/framework/include       \
$(INCLUDE_PATH)
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX

##
## Start-Up Code
##
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
OS_EE_APP_CFG_SRCS += \
Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

ifeq ($(findstring STM32F429xx, $(OS_EE_CORTEX_M_MCU)), STM32F429xx)
ifeq	($(and	\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX),		\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE)	\
	), yes)
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0), yes)
OS_EE_APP_CFG_SRCS += Project/gcc/startup_stm32f429xx.s
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
OS_EE_APP_CFG_SRCS += gcc/startup_stm32f429zitx.s
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX && OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
OS_EE_APP_CFG_SRCS += \
Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f429xx.s
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX && OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
endif	# OS_EE_CORTEX_M_MCU == STM32F429xx

##
## Linker Script
##
ifeq ($(findstring STM32F407xx, $(OS_EE_CORTEX_M_MCU)), STM32F407xx)
OS_EE_LINKER_SCRIPT := \
$(STM32_CUBE_F4_ROOT)/Projects/STM32F4-Discovery/Templates/SW4STM32/STM32F4-Discovery/STM32F407VGTx_FLASH.ld
endif	# OS_EE_CORTEX_M_MCU == STM32F407xx

ifeq ($(findstring STM32F429xx, $(OS_EE_CORTEX_M_MCU)), STM32F429xx)
ifeq	($(and	\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX),		\
		$(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE)	\
	), yes)
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0), yes)
OS_EE_LINKER_SCRIPT := \
$(STM32_CUBE_F4_TOUCH_GFX_ROOT)/Project/gcc/STM32F429ZITX_FLASH.ld
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
OS_EE_LINKER_SCRIPT := \
$(STM32_CUBE_F4_TOUCH_GFX_ROOT)/gcc/STM32F429ZITX_FLASH.ld
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX && OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
OS_EE_LINKER_SCRIPT := \
$(STM32_CUBE_F4_ROOT)/Projects/STM32F429I-Discovery/Templates/SW4STM32/STM32F429I_DISCO/STM32F429ZITx_FLASH.ld
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX && OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
endif	# OS_EE_CORTEX_M_MCU == STM32F429xx

ifneq	($(if $(filter OS_EE_BUILD,$(OS_EE_OPT)),yes,), yes)
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_SA), yes)
STM32CUBEF4 = stm32cubef4
STM32_CUBE_F4 := lib$(STM32CUBEF4).a

OPT_LIBS += -l$(STM32CUBEF4)
ALL_LIBS += $(OS_EE_LIB_BASE_DIR)/$(STM32_CUBE_F4)

ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX), yes)

ifeq	($(call iseeopt, OS_EE_ARCH_CORTEX_M_M4F_FPU), yes)
TOUCHGFX = touchgfx-float-abi-hard
else	# OS_EE_ARCH_CORTEX_M_M4F_FPU
TOUCHGFX = touchgfx
endif	# OS_EE_ARCH_CORTEX_M_M4F_FPU
TOUCH_GFX := lib$(TOUCHGFX).a

OPT_LINK += -specs=nosys.specs -specs=nano.specs
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE), yes)
ifeq	($(call islibopt, OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0), yes)
OPT_LINK += -L $(STM32_CUBE_F4_TOUCH_GFX_ROOT)/Middlewares/ST/TouchGFX/touchgfx/lib/core/cortex_m4f/gcc
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
OPT_LINK += -L $(STM32_CUBE_F4_TOUCH_GFX_ROOT)/Middlewares/ST/touchgfx/lib/core/cortex_m4f/gcc
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_4_10_0
else	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE
OPT_LINK += -L $(STM32_CUBE_F4_ROOT)/Middlewares/ST/TouchGFX/touchgfx/lib/core/cortex_m4f/gcc
endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX_STAND_ALONE

OPT_LIBS += -l$(TOUCHGFX)

endif	# OS_EE_LIB_STM32_CUBE_F4_TOUCH_GFX
endif	# OS_EE_LIB_STM32_CUBE_F4_SA
endif	# !OS_EE_BUILD

endif	# OS_EE_LIB_STM32_CUBE_F4

endif	# OS_EE_ARCH_CORTEX_M && OS_EE_ARCH_CORTEX_M_STM32F4

endif	# OS_EE_LIB_STM32F4XX_DSP_SPL || OS_EE_LIB_STM32_CUBE_F4
