/* ###*B*###
 * Erika Enterprise, version 3
 * 
 * Copyright (C) 2017 - 2018 Evidence s.r.l.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 * 
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * < www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 * 
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 * 
 * THIRD PARTIES' MATERIALS
 * 
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 * 
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 * 
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file	ee_stm32f4_irq.h
 *  \brief	STM32F4 IRQs.
 *
 *  This files contains the interfaces of the IRQs support for
 *  STMicroelectronics STM32F4 Architecture available in Erika Enterprise.
 *
 *  \note	TO BE DOCUMENTED!!!
 *
 *  \author	Giuseppe Serano
 *  \date	2018
 */
#ifndef OSEE_STM32F4_IRQ_H
#define	OSEE_STM32F4_IRQ_H

#if (defined(__cplusplus))
extern "C" {
#endif

/*==============================================================================
				ISR IDs
 =============================================================================*/

/**
 * Window Watchdog interrupt
 */
#define	OSEE_CORTEX_M_WWDG_ISR_ID		(			\
	OSEE_CORTEX_M_INT_00_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * PVD through EXTI line detection interrupt
 */
#define	OSEE_CORTEX_M_PVD_ISR_ID		(			\
	OSEE_CORTEX_M_INT_01_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * Tamper and TimeStamp interrupts through the EXTI line
 */
#define	OSEE_CORTEX_M_TAMP_STAMP_ISR_ID		(			\
	OSEE_CORTEX_M_INT_02_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * RTC Wakeup interrupt through the EXTI line
 */
#define	OSEE_CORTEX_M_RTC_WKUP_ISR_ID		(			\
	OSEE_CORTEX_M_INT_03_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * Flash global interrupt
 */
#define	OSEE_CORTEX_M_FLASH_ISR_ID		(			\
	OSEE_CORTEX_M_INT_04_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * RCC global interrupt
 */
#define	OSEE_CORTEX_M_RCC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_05_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line0 interrupt
 */
#define	OSEE_CORTEX_M_EXTI0_ISR_ID		(			\
	OSEE_CORTEX_M_INT_06_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line1 interrupt
 */
#define	OSEE_CORTEX_M_EXTI1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_07_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line2 interrupt
 */
#define	OSEE_CORTEX_M_EXTI2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_08_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line3 interrupt
 */
#define	OSEE_CORTEX_M_EXTI3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_09_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line4 interrupt
 */
#define	OSEE_CORTEX_M_EXTI4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream0 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S0_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0B_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream1 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0C_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream2 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0D_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream3 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0E_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream4 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_0F_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream5 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_10_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream6 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S6_ISR_ID		(			\
	OSEE_CORTEX_M_INT_11_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * ADC1, ADC2 and ADC3 global interrupts
 */
#define	OSEE_CORTEX_M_ADC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_12_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN1 TX interrupts
 */
#define	OSEE_CORTEX_M_CAN1_TX_ISR_ID		(			\
	OSEE_CORTEX_M_INT_13_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN1 RX0 interrupts
 */
#define	OSEE_CORTEX_M_CAN1_RX0_ISR_ID		(			\
	OSEE_CORTEX_M_INT_14_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN1 RX1 interrupt
 */
#define	OSEE_CORTEX_M_CAN1_RX1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_15_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN1 SCE interrupt
 */
#define	OSEE_CORTEX_M_CAN1_SCE_ISR_ID		(			\
	OSEE_CORTEX_M_INT_16_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line[9:5] interrupts
 */
#define	OSEE_CORTEX_M_EXTI9_5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_17_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM1 Break interrupt and TIM9 global interrupt
 */
#define	OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_ID	(			\
	OSEE_CORTEX_M_INT_18_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM1 Update interrupt and TIM10 global interrupt
 */
#define	OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_ID	(			\
	OSEE_CORTEX_M_INT_19_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
 */
#define	OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_ID	(			\
	OSEE_CORTEX_M_INT_1A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM1 Capture Compare interrupt
 */
#define	OSEE_CORTEX_M_TIM1_CC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_1B_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM2 global interrupt
 */
#define	OSEE_CORTEX_M_TIM2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_1C_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM3 global interrupt
 */
#define	OSEE_CORTEX_M_TIM3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_1D_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM4 global interrupt
 */
#define	OSEE_CORTEX_M_TIM4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_1E_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C1 event interrupt
 */
#define	OSEE_CORTEX_M_I2C1_EV_ISR_ID		(			\
	OSEE_CORTEX_M_INT_1F_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C1 error interrupt
 */
#define	OSEE_CORTEX_M_I2C1_ER_ISR_ID		(			\
	OSEE_CORTEX_M_INT_20_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C2 event interrupt
 */
#define	OSEE_CORTEX_M_I2C2_EV_ISR_ID		(			\
	OSEE_CORTEX_M_INT_21_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C2 error interrupt
 */
#define	OSEE_CORTEX_M_I2C2_ER_ISR_ID		(			\
	OSEE_CORTEX_M_INT_22_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI1 global interrupt
 */
#define	OSEE_CORTEX_M_SPI1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_23_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI2 global interrupt
 */
#define	OSEE_CORTEX_M_SPI2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_24_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USART1 global interrupt
 */
#define	OSEE_CORTEX_M_USART1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_25_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USART2 global interrupt
 */
#define	OSEE_CORTEX_M_USART2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_26_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USART3 global interrupt
 */
#define	OSEE_CORTEX_M_USART3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_27_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * EXTI Line[15:10] interrupts
 */
#define	OSEE_CORTEX_M_EXTI15_10_ISR_ID		(			\
	OSEE_CORTEX_M_INT_28_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * RTC Alarms (A and B) through EXTI line interrupt
 */
#define	OSEE_CORTEX_M_RTC_ALARM_ISR_ID		(			\
	OSEE_CORTEX_M_INT_29_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On-The-Go FS Wakeup through EXTI line interrupt
 */
#define	OSEE_CORTEX_M_OTG_FS_WKUP_ISR_ID	(			\
	OSEE_CORTEX_M_INT_2A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM8 Break interrupt and TIM12 global interrupt
 */
#define	OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_ID	(			\
	OSEE_CORTEX_M_INT_2B_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM8 Update interrupt and TIM13 global interrupt
 */
#define	OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_ID	(			\
	OSEE_CORTEX_M_INT_2C_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
 */
#define	OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_ID	(			\
	OSEE_CORTEX_M_INT_2D_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM8 Capture Compare interrupt
 */
#define	OSEE_CORTEX_M_TIM8_CC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_2E_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA1 Stream7 global interrupt
 */
#define	OSEE_CORTEX_M_DMA1_S7_ISR_ID		(			\
	OSEE_CORTEX_M_INT_2F_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * FSMC global interrupt
 */
#define	OSEE_CORTEX_M_FSMC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_30_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SDIO global interrupt
 */
#define	OSEE_CORTEX_M_SDIO_ISR_ID		(			\
	OSEE_CORTEX_M_INT_31_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM5 global interrupt
 */
#define	OSEE_CORTEX_M_TIM5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_32_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI3 global interrupt
 */
#define	OSEE_CORTEX_M_SPI3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_33_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * UART4 global interrupt
 */
#define	OSEE_CORTEX_M_UART4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_34_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * UART5 global interrupt
 */
#define	OSEE_CORTEX_M_UART5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_35_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts
 */
#define	OSEE_CORTEX_M_TIM6_DAC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_36_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * TIM7 global interrupt
 */
#define	OSEE_CORTEX_M_TIM7_ISR_ID		(			\
	OSEE_CORTEX_M_INT_37_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream0 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S0_ISR_ID		(			\
	OSEE_CORTEX_M_INT_38_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream1 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_39_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream2 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S2_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream3 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S3_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3B_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream4 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3C_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * Ethernet global interrupt
 */
#define	OSEE_CORTEX_M_ETH_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3D_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * Ethernet Wakeup through EXTI line interrupt
 */
#define	OSEE_CORTEX_M_ETH_WKUP_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3E_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN2 TX interrupts
 */
#define	OSEE_CORTEX_M_CAN2_TX_ISR_ID		(			\
	OSEE_CORTEX_M_INT_3F_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN2 RX0 interrupts
 */
#define	OSEE_CORTEX_M_CAN2_RX0_ISR_ID		(			\
	OSEE_CORTEX_M_INT_40_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN2 RX1 interrupt
 */
#define	OSEE_CORTEX_M_CAN2_RX1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_41_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CAN2 SCE interrupt
 */
#define	OSEE_CORTEX_M_CAN2_SCE_ISR_ID		(			\
	OSEE_CORTEX_M_INT_42_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On The Go FS global interrupt
 */
#define	OSEE_CORTEX_M_OTG_FS_ISR_ID		(			\
	OSEE_CORTEX_M_INT_43_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream5 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_44_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream6 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S6_ISR_ID		(			\
	OSEE_CORTEX_M_INT_45_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2 Stream7 global interrupt
 */
#define	OSEE_CORTEX_M_DMA2_S7_ISR_ID		(			\
	OSEE_CORTEX_M_INT_46_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USART6 global interrupt
 */
#define	OSEE_CORTEX_M_USART6_ISR_ID		(			\
	OSEE_CORTEX_M_INT_47_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C3 event interrupt
 */
#define	OSEE_CORTEX_M_I2C3_EV_ISR_ID		(			\
	OSEE_CORTEX_M_INT_48_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * I2C3 error interrupt
 */
#define	OSEE_CORTEX_M_I2C3_ER_ISR_ID		(			\
	OSEE_CORTEX_M_INT_49_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On The Go HS End Point 1 Out global interrupt
 */
#define	OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_ID	(			\
	OSEE_CORTEX_M_INT_4A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On The Go HS End Point 1 In global interrupt
 */
#define	OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_ID	(			\
	OSEE_CORTEX_M_INT_4B_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On The Go HS Wakeup through EXTI interrupt
 */
#define	OSEE_CORTEX_M_OTG_HS_WKUP_ISR_ID	(			\
	OSEE_CORTEX_M_INT_4C_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * USB On The Go HS global interrupt
 */
#define	OSEE_CORTEX_M_OTG_HS_ISR_ID		(			\
	OSEE_CORTEX_M_INT_4D_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DCMI global interrupt
 */
#define	OSEE_CORTEX_M_DCMI_ISR_ID		(			\
	OSEE_CORTEX_M_INT_4E_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * CRYP global interrupt
 */
#define	OSEE_CORTEX_M_CRYP_ISR_ID		(			\
	OSEE_CORTEX_M_INT_4F_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * Hash and Rng global interrupt
 */
#define	OSEE_CORTEX_M_HASH_RNG_ISR_ID		(			\
	OSEE_CORTEX_M_INT_50_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * FPU global interrupt
 */
#define	OSEE_CORTEX_M_FPU_ISR_ID		(			\
	OSEE_CORTEX_M_INT_51_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

#ifdef	OS_EE_ARCH_CORTEX_M_STM32F407xx
/**
 * ISR Number.
 */
#define	OSEE_CORTEX_M_ISR_ID_NUM	(				\
	OSEE_CORTEX_M_FPU_ISR_ID + 1					\
)
#endif	/* OS_EE_ARCH_CORTEX_M_STM32F407xx */

#ifdef	OS_EE_ARCH_CORTEX_M_STM32F429xx

/**
 * UART7 global interrupt
 */
#define	OSEE_CORTEX_M_UART7_ISR_ID		(			\
	OSEE_CORTEX_M_INT_52_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * UART8 global interrupt
 */
#define	OSEE_CORTEX_M_UART8_ISR_ID		(			\
	OSEE_CORTEX_M_INT_53_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI4 global interrupt
 */
#define	OSEE_CORTEX_M_SPI4_ISR_ID		(			\
	OSEE_CORTEX_M_INT_54_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI5 global interrupt
 */
#define	OSEE_CORTEX_M_SPI5_ISR_ID		(			\
	OSEE_CORTEX_M_INT_55_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SPI6 global interrupt
 */
#define	OSEE_CORTEX_M_SPI6_ISR_ID		(			\
	OSEE_CORTEX_M_INT_56_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * SAI1 global interrupt
 */
#define	OSEE_CORTEX_M_SAI1_ISR_ID		(			\
	OSEE_CORTEX_M_INT_57_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * LTDC global interrupt
 */
#define	OSEE_CORTEX_M_LTDC_ISR_ID		(			\
	OSEE_CORTEX_M_INT_58_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * LTDC global error interrupt
 */
#define	OSEE_CORTEX_M_LTDC_ER_ISR_ID		(			\
	OSEE_CORTEX_M_INT_59_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * DMA2D global interrupt
 */
#define	OSEE_CORTEX_M_DMA2D_ISR_ID		(			\
	OSEE_CORTEX_M_INT_5A_NUM + OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)

/**
 * ISR Number.
 */
#define	OSEE_CORTEX_M_ISR_ID_NUM	(				\
	OSEE_CORTEX_M_DMA2D_ISR_ID + 1					\
)
#endif	/* OS_EE_ARCH_CORTEX_M_STM32F429xx */

#if (defined(__cplusplus))
}
#endif

#endif	/* !OSEE_STM32F4_IRQ_H */
