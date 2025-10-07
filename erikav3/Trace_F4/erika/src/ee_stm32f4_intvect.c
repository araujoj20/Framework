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

/** \file	ee_stm32f4_intvect.c
 *  \brief	STM43F4 MCUs Interrupts vector.
 *
 *  This files contains the implementation of STMicroelectronics STM43F4 MCUs
 *  Interrupts vector in Erika Enterprise.
 *
 *  \note	TO BE DOCUMENTED!!!
 *
 *  \author	Giuseppe Serano
 *  \date	2018
 */

/* ERIKA Enterprise Internals */
#include "ee_internal.h"

/*
 * MCU System Initialization.
 */

FUNC(void, OS_CODE) osEE_cortex_m_mcu_system_init(void)
{

/**
 * Window Watchdog interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_WWDG_ISR_TID) &&		\
			(OSEE_CORTEX_M_WWDG_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_WWDG_ISR) &&		\
			(OSEE_CORTEX_M_WWDG_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_WWDG_NUM		(				\
	OSEE_CORTEX_M_WWDG_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_WWDG_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_WWDG_NUM, OSEE_CORTEX_M_WWDG_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_WWDG_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_WWDG_NUM);
#endif	/* OSEE_CORTEX_M_WWDG_ISR */

/**
 * PVD through EXTI line detection interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_PVD_ISR_TID) &&		\
			(OSEE_CORTEX_M_PVD_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_PVD_ISR) &&		\
			(OSEE_CORTEX_M_PVD_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_PVD_NUM		(				\
	OSEE_CORTEX_M_PVD_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_PVD_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_PVD_NUM, OSEE_CORTEX_M_PVD_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_PVD_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_PVD_NUM);
#endif	/* OSEE_CORTEX_M_PVD_ISR */

/**
 * Tamper and TimeStamp interrupts through the EXTI line
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TAMP_STAMP_ISR_TID) &&	\
			(OSEE_CORTEX_M_TAMP_STAMP_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TAMP_STAMP_ISR) &&	\
			(OSEE_CORTEX_M_TAMP_STAMP_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TAMP_STAMP_NUM		(			\
	OSEE_CORTEX_M_TAMP_STAMP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TAMP_STAMP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TAMP_STAMP_NUM, OSEE_CORTEX_M_TAMP_STAMP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TAMP_STAMP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TAMP_STAMP_NUM);
#endif	/* OSEE_CORTEX_M_TAMP_STAMP_ISR */

/**
 * RTC Wakeup interrupt through the EXTI line
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_RTC_WKUP_ISR_TID) &&	\
			(OSEE_CORTEX_M_RTC_WKUP_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_RTC_WKUP_ISR) &&	\
			(OSEE_CORTEX_M_RTC_WKUP_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_RTC_WKUP_NUM		(			\
	OSEE_CORTEX_M_RTC_WKUP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_RTC_WKUP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_RTC_WKUP_NUM, OSEE_CORTEX_M_RTC_WKUP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_RTC_WKUP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_RTC_WKUP_NUM);
#endif	/* OSEE_CORTEX_M_RTC_WKUP_ISR */

/**
 * Flash global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_FLASH_ISR_TID) &&		\
			(OSEE_CORTEX_M_FLASH_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_FLASH_ISR) &&		\
			(OSEE_CORTEX_M_FLASH_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_FLASH_NUM		(				\
	OSEE_CORTEX_M_FLASH_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_FLASH_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_FLASH_NUM, OSEE_CORTEX_M_FLASH_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_FLASH_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_FLASH_NUM);
#endif	/* OSEE_CORTEX_M_FLASH_ISR */

/**
 * RCC global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_RCC_ISR_TID) &&		\
			(OSEE_CORTEX_M_RCC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_RCC_ISR) &&		\
			(OSEE_CORTEX_M_RCC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_RCC_NUM		(				\
	OSEE_CORTEX_M_RCC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_RCC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_RCC_NUM, OSEE_CORTEX_M_RCC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_RCC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_RCC_NUM);
#endif	/* OSEE_CORTEX_M_RCC_ISR */

/**
 * EXTI Line0 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI0_ISR_TID) &&		\
			(OSEE_CORTEX_M_EXTI0_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI0_ISR) &&		\
			(OSEE_CORTEX_M_EXTI0_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI0_NUM		(				\
	OSEE_CORTEX_M_EXTI0_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI0_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI0_NUM, OSEE_CORTEX_M_EXTI0_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI0_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI0_NUM);
#endif	/* OSEE_CORTEX_M_EXTI0_ISR */

/**
 * EXTI Line1 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI1_ISR_TID) &&		\
			(OSEE_CORTEX_M_EXTI1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI1_ISR) &&		\
			(OSEE_CORTEX_M_EXTI1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI1_NUM		(				\
	OSEE_CORTEX_M_EXTI1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI1_NUM, OSEE_CORTEX_M_EXTI1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI1_NUM);
#endif	/* OSEE_CORTEX_M_EXTI1_ISR */

/**
 * EXTI Line2 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI2_ISR_TID) &&		\
			(OSEE_CORTEX_M_EXTI2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI2_ISR) &&		\
			(OSEE_CORTEX_M_EXTI2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI2_NUM		(				\
	OSEE_CORTEX_M_EXTI2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI2_NUM, OSEE_CORTEX_M_EXTI2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI2_NUM);
#endif	/* OSEE_CORTEX_M_EXTI2_ISR */

/**
 * EXTI Line3 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI3_ISR_TID) &&		\
			(OSEE_CORTEX_M_EXTI3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI3_ISR) &&		\
			(OSEE_CORTEX_M_EXTI3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI3_NUM		(				\
	OSEE_CORTEX_M_EXTI3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI3_NUM, OSEE_CORTEX_M_EXTI3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI3_NUM);
#endif	/* OSEE_CORTEX_M_EXTI3_ISR */

/**
 * EXTI Line4 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI4_ISR_TID) &&		\
			(OSEE_CORTEX_M_EXTI4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI4_ISR) &&		\
			(OSEE_CORTEX_M_EXTI4_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI4_NUM		(				\
	OSEE_CORTEX_M_EXTI4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI4_NUM, OSEE_CORTEX_M_EXTI4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI4_NUM);
#endif	/* OSEE_CORTEX_M_EXTI4_ISR */

/**
 * DMA1 Stream0 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S0_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S0_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S0_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S0_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S0_NUM		(			\
	OSEE_CORTEX_M_DMA1_S0_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S0_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S0_NUM, OSEE_CORTEX_M_DMA1_S0_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S0_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S0_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S0_ISR */

/**
 * DMA1 Stream1 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S1_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S1_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S1_NUM		(			\
	OSEE_CORTEX_M_DMA1_S1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S1_NUM, OSEE_CORTEX_M_DMA1_S1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S1_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S1_ISR */

/**
 * DMA1 Stream2 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S2_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S2_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S2_NUM		(			\
	OSEE_CORTEX_M_DMA1_S2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S2_NUM, OSEE_CORTEX_M_DMA1_S2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S2_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S2_ISR */

/**
 * DMA1 Stream3 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S3_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S3_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S3_NUM		(			\
	OSEE_CORTEX_M_DMA1_S3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S3_NUM, OSEE_CORTEX_M_DMA1_S3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S3_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S3_ISR */

/**
 * DMA1 Stream4 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S4_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S4_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S4_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S4_NUM		(			\
	OSEE_CORTEX_M_DMA1_S4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S4_NUM, OSEE_CORTEX_M_DMA1_S4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S4_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S4_ISR */

/**
 * DMA1 Stream5 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S5_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S5_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S5_NUM		(			\
	OSEE_CORTEX_M_DMA1_S5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S5_NUM, OSEE_CORTEX_M_DMA1_S5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S5_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S5_ISR */

/**
 * DMA1 Stream6 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S6_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S6_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S6_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S6_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S6_NUM		(			\
	OSEE_CORTEX_M_DMA1_S6_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S6_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S6_NUM, OSEE_CORTEX_M_DMA1_S6_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S6_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S6_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S6_ISR */

/**
 * ADC1, ADC2 and ADC3 global interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_ADC_ISR_TID) &&		\
			(OSEE_CORTEX_M_ADC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_ADC_ISR) &&		\
			(OSEE_CORTEX_M_ADC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_ADC_NUM		(			\
	OSEE_CORTEX_M_ADC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_ADC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_ADC_NUM, OSEE_CORTEX_M_ADC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_ADC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_ADC_NUM);
#endif	/* OSEE_CORTEX_M_ADC_ISR */

/**
 * CAN1 TX interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN1_TX_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN1_TX_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN1_TX_ISR) &&		\
			(OSEE_CORTEX_M_CAN1_TX_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN1_TX_NUM		(			\
	OSEE_CORTEX_M_CAN1_TX_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN1_TX_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN1_TX_NUM, OSEE_CORTEX_M_CAN1_TX_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN1_TX_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN1_TX_NUM);
#endif	/* OSEE_CORTEX_M_CAN1_TX_ISR */

/**
 * CAN1 RX0 interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN1_RX0_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN1_RX0_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN1_RX0_ISR) &&		\
			(OSEE_CORTEX_M_CAN1_RX0_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN1_RX0_NUM		(			\
	OSEE_CORTEX_M_CAN1_RX0_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN1_RX0_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN1_RX0_NUM, OSEE_CORTEX_M_CAN1_RX0_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN1_RX0_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN1_RX0_NUM);
#endif	/* OSEE_CORTEX_M_CAN1_RX0_ISR */

/**
 * CAN1 RX1 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN1_RX1_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN1_RX1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN1_RX1_ISR) &&		\
			(OSEE_CORTEX_M_CAN1_RX1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN1_RX1_NUM		(			\
	OSEE_CORTEX_M_CAN1_RX1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN1_RX1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN1_RX1_NUM, OSEE_CORTEX_M_CAN1_RX1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN1_RX1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN1_RX1_NUM);
#endif	/* OSEE_CORTEX_M_CAN1_RX1_ISR */

/**
 * CAN1 SCE interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN1_SCE_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN1_SCE_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN1_SCE_ISR) &&		\
			(OSEE_CORTEX_M_CAN1_SCE_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN1_SCE_NUM		(			\
	OSEE_CORTEX_M_CAN1_SCE_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN1_SCE_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN1_SCE_NUM, OSEE_CORTEX_M_CAN1_SCE_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN1_SCE_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN1_SCE_NUM);
#endif	/* OSEE_CORTEX_M_CAN1_SCE_ISR */

/**
 * EXTI Line[9:5] interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI9_5_ISR_TID) &&	\
			(OSEE_CORTEX_M_EXTI9_5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI9_5_ISR) &&		\
			(OSEE_CORTEX_M_EXTI9_5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI9_5_NUM		(			\
	OSEE_CORTEX_M_EXTI9_5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI9_5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI9_5_NUM, OSEE_CORTEX_M_EXTI9_5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI9_5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI9_5_NUM);
#endif	/* OSEE_CORTEX_M_EXTI9_5_ISR */

/**
 * TIM1 Break interrupt and TIM9 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_TID) &&	\
			(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_CAT == 2)	\
		) || (							\
			defined(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR) &&	\
			(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_CAT == 1)	\
		)							\
)
#define	OSEE_CORTEX_M_TIM1_BRK_TIM9_NUM		(			\
	OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM     \
)
#ifdef	OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM1_BRK_TIM9_NUM,
		OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM1_BRK_TIM9_NUM);
#endif	/* OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR */

/**
 * TIM1 Update interrupt and TIM10 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_TID) &&	\
			(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_CAT == 2)	\
		) || (							\
			defined(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR) &&	\
			(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_CAT == 1)	\
		)							\
)
#define	OSEE_CORTEX_M_TIM1_UP_TIM10_NUM		(			\
	OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM     \
)
#ifdef	OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM1_UP_TIM10_NUM,
		OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM1_UP_TIM10_NUM);
#endif	/* OSEE_CORTEX_M_TIM1_UP_TIM10_ISR */

/**
 * TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
 */
#if	(								       \
		(							       \
			defined(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_TID) &&   \
			(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_CAT == 2)	       \
		) || (							       \
			defined(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR) &&       \
			(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_CAT == 1)	       \
		)							       \
)
#define	OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_NUM		(		       \
	OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_ID -			       \
	OSEE_CORTEX_M_OVERALL_EXC_NUM					       \
)
#ifdef	OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_NUM,
		OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_NUM);
#endif	/* OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR */

/**
 * TIM1 Capture Compare interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM1_CC_ISR_TID) &&	\
			(OSEE_CORTEX_M_TIM1_CC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM1_CC_ISR) &&		\
			(OSEE_CORTEX_M_TIM1_CC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM1_CC_NUM		(			\
	OSEE_CORTEX_M_TIM1_CC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM1_CC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM1_CC_NUM, OSEE_CORTEX_M_TIM1_CC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM1_CC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM1_CC_NUM);
#endif	/* OSEE_CORTEX_M_TIM1_CC_ISR */

/**
 * TIM2 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM2_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM2_ISR) &&		\
			(OSEE_CORTEX_M_TIM2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM2_NUM		(				\
	OSEE_CORTEX_M_TIM2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM2_NUM, OSEE_CORTEX_M_TIM2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM2_NUM);
#endif	/* OSEE_CORTEX_M_TIM2_ISR */

/**
 * TIM3 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM3_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM3_ISR) &&		\
			(OSEE_CORTEX_M_TIM3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM3_NUM		(				\
	OSEE_CORTEX_M_TIM3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM3_NUM, OSEE_CORTEX_M_TIM3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM3_NUM);
#endif	/* OSEE_CORTEX_M_TIM3_ISR */

/**
 * TIM4 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM4_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM4_ISR) &&		\
			(OSEE_CORTEX_M_TIM4_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM4_NUM		(				\
	OSEE_CORTEX_M_TIM4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM4_NUM, OSEE_CORTEX_M_TIM4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM4_NUM);
#endif	/* OSEE_CORTEX_M_TIM4_ISR */

/**
 * I2C1 event interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C1_EV_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C1_EV_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C1_EV_ISR) &&		\
			(OSEE_CORTEX_M_I2C1_EV_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C1_EV_NUM		(			\
	OSEE_CORTEX_M_I2C1_EV_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C1_EV_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C1_EV_NUM, OSEE_CORTEX_M_I2C1_EV_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C1_EV_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C1_EV_NUM);
#endif	/* OSEE_CORTEX_M_I2C1_EV_ISR */

/**
 * I2C1 error interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C1_ER_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C1_ER_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C1_ER_ISR) &&		\
			(OSEE_CORTEX_M_I2C1_ER_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C1_ER_NUM		(			\
	OSEE_CORTEX_M_I2C1_ER_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C1_ER_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C1_ER_NUM, OSEE_CORTEX_M_I2C1_ER_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C1_ER_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C1_ER_NUM);
#endif	/* OSEE_CORTEX_M_I2C1_ER_ISR */

/**
 * I2C2 event interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C2_EV_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C2_EV_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C2_EV_ISR) &&		\
			(OSEE_CORTEX_M_I2C2_EV_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C2_EV_NUM		(			\
	OSEE_CORTEX_M_I2C2_EV_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C2_EV_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C2_EV_NUM, OSEE_CORTEX_M_I2C2_EV_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C2_EV_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C2_EV_NUM);
#endif	/* OSEE_CORTEX_M_I2C2_EV_ISR */

/**
 * I2C2 error interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C2_ER_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C2_ER_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C2_ER_ISR) &&		\
			(OSEE_CORTEX_M_I2C2_ER_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C2_ER_NUM		(			\
	OSEE_CORTEX_M_I2C2_ER_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C2_ER_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C2_ER_NUM, OSEE_CORTEX_M_I2C2_ER_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C2_ER_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C2_ER_NUM);
#endif	/* OSEE_CORTEX_M_I2C2_ER_ISR */

/**
 * SPI1 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI1_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI1_ISR) &&		\
			(OSEE_CORTEX_M_SPI1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI1_NUM		(				\
	OSEE_CORTEX_M_SPI1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI1_NUM, OSEE_CORTEX_M_SPI1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI1_NUM);
#endif	/* OSEE_CORTEX_M_SPI1_ISR */

/**
 * SPI2 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI2_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI2_ISR) &&		\
			(OSEE_CORTEX_M_SPI2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI2_NUM		(				\
	OSEE_CORTEX_M_SPI2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI2_NUM, OSEE_CORTEX_M_SPI2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI2_NUM);
#endif	/* OSEE_CORTEX_M_SPI2_ISR */

/**
 * USART1 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_USART1_ISR_TID) &&	\
			(OSEE_CORTEX_M_USART1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_USART1_ISR) &&		\
			(OSEE_CORTEX_M_USART1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_USART1_NUM		(			\
	OSEE_CORTEX_M_USART1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_USART1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_USART1_NUM, OSEE_CORTEX_M_USART1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_USART1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_USART1_NUM);
#endif	/* OSEE_CORTEX_M_USART1_ISR */

/**
 * USART2 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_USART2_ISR_TID) &&	\
			(OSEE_CORTEX_M_USART2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_USART2_ISR) &&		\
			(OSEE_CORTEX_M_USART2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_USART2_NUM		(			\
	OSEE_CORTEX_M_USART2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_USART2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_USART2_NUM, OSEE_CORTEX_M_USART2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_USART2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_USART2_NUM);
#endif	/* OSEE_CORTEX_M_USART2_ISR */

/**
 * USART3 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_USART3_ISR_TID) &&	\
			(OSEE_CORTEX_M_USART3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_USART3_ISR) &&		\
			(OSEE_CORTEX_M_USART3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_USART3_NUM		(			\
	OSEE_CORTEX_M_USART3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_USART3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_USART3_NUM, OSEE_CORTEX_M_USART3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_USART3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_USART3_NUM);
#endif	/* OSEE_CORTEX_M_USART3_ISR */

/**
 * EXTI Line[15:10] interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_EXTI15_10_ISR_TID) &&	\
			(OSEE_CORTEX_M_EXTI15_10_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_EXTI15_10_ISR) &&		\
			(OSEE_CORTEX_M_EXTI15_10_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_EXTI15_10_NUM		(			\
	OSEE_CORTEX_M_EXTI15_10_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_EXTI15_10_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_EXTI15_10_NUM, OSEE_CORTEX_M_EXTI15_10_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_EXTI15_10_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_EXTI15_10_NUM);
#endif	/* OSEE_CORTEX_M_EXTI15_10_ISR */

/**
 * RTC Alarms (A and B) through EXTI line interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_RTC_ALARM_ISR_TID) &&	\
			(OSEE_CORTEX_M_RTC_ALARM_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_RTC_ALARM_ISR) &&		\
			(OSEE_CORTEX_M_RTC_ALARM_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_RTC_ALARM_NUM		(			\
	OSEE_CORTEX_M_RTC_ALARM_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_RTC_ALARM_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_RTC_ALARM_NUM, OSEE_CORTEX_M_RTC_ALARM_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_RTC_ALARM_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_RTC_ALARM_NUM);
#endif	/* OSEE_CORTEX_M_RTC_ALARM_ISR */

/**
 * USB On-The-Go FS Wakeup through EXTI line interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_OTG_FS_WKUP_ISR_TID) &&	\
			(OSEE_CORTEX_M_OTG_FS_WKUP_ISR_CAT == 2)	\
		) || (							\
			defined(OSEE_CORTEX_M_OTG_FS_WKUP_ISR) &&	\
			(OSEE_CORTEX_M_OTG_FS_WKUP_ISR_CAT == 1)	\
		)							\
)
#define	OSEE_CORTEX_M_OTG_FS_WKUP_NUM		(			\
	OSEE_CORTEX_M_OTG_FS_WKUP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM       \
)
#ifdef	OSEE_CORTEX_M_OTG_FS_WKUP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_FS_WKUP_NUM, OSEE_CORTEX_M_OTG_FS_WKUP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_FS_WKUP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_FS_WKUP_NUM);
#endif	/* OSEE_CORTEX_M_OTG_FS_WKUP_ISR */

/**
 * TIM8 Break interrupt and TIM12 global interrupt
 */
#if	(								       \
		(							       \
			defined(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_TID) &&       \
			(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_CAT == 2)	       \
		) || (							       \
			defined(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR) &&	       \
			(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_CAT == 1)	       \
		)							       \
)
#define	OSEE_CORTEX_M_TIM8_BRK_TIM12_NUM		(		       \
	OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM    \
)
#ifdef	OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM8_BRK_TIM12_NUM,
		OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM8_BRK_TIM12_NUM);
#endif	/* OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR */

/**
 * TIM8 Update interrupt and TIM13 global interrupt
 */
#if	(								       \
		(							       \
			defined(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_TID) &&        \
			(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_CAT == 2)	       \
		) || (							       \
			defined(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR) &&	       \
			(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_CAT == 1)	       \
		)							       \
)
#define	OSEE_CORTEX_M_TIM8_UP_TIM13_NUM		(			       \
	OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM     \
)
#ifdef	OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM8_UP_TIM13_NUM,
		OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM8_UP_TIM13_NUM);
#endif	/* OSEE_CORTEX_M_TIM8_UP_TIM13_ISR */

/**
 * TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
 */
#if	(								       \
		(							       \
			defined(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_TID) &&   \
			(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_CAT == 2)	       \
		) || (							       \
			defined(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR) &&       \
			(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_CAT == 1)	       \
		)							       \
)
#define	OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_NUM		(		       \
	OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_ID -			       \
	OSEE_CORTEX_M_OVERALL_EXC_NUM					       \
)
#ifdef	OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_NUM,
		OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_NUM);
#endif	/* OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR */

/**
 * TIM8 Capture Compare interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM8_CC_ISR_TID) &&	\
			(OSEE_CORTEX_M_TIM8_CC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM8_CC_ISR) &&		\
			(OSEE_CORTEX_M_TIM8_CC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM8_CC_NUM		(			\
	OSEE_CORTEX_M_TIM8_CC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM8_CC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM8_CC_NUM, OSEE_CORTEX_M_TIM8_CC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM8_CC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM8_CC_NUM);
#endif	/* OSEE_CORTEX_M_TIM8_CC_ISR */

/**
 * DMA1 Stream7 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA1_S7_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA1_S7_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA1_S7_ISR) &&		\
			(OSEE_CORTEX_M_DMA1_S7_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA1_S7_NUM		(			\
	OSEE_CORTEX_M_DMA1_S7_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA1_S7_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA1_S7_NUM, OSEE_CORTEX_M_DMA1_S7_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA1_S7_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA1_S7_NUM);
#endif	/* OSEE_CORTEX_M_DMA1_S7_ISR */

/**
 * FSMC global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_FSMC_ISR_TID) &&		\
			(OSEE_CORTEX_M_FSMC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_FSMC_ISR) &&		\
			(OSEE_CORTEX_M_FSMC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_FSMC_NUM		(				\
	OSEE_CORTEX_M_FSMC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_FSMC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_FSMC_NUM, OSEE_CORTEX_M_FSMC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_FSMC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_FSMC_NUM);
#endif	/* OSEE_CORTEX_M_FSMC_ISR */

/**
 * SDIO global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SDIO_ISR_TID) &&		\
			(OSEE_CORTEX_M_SDIO_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SDIO_ISR) &&		\
			(OSEE_CORTEX_M_SDIO_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SDIO_NUM		(				\
	OSEE_CORTEX_M_SDIO_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SDIO_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SDIO_NUM, OSEE_CORTEX_M_SDIO_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SDIO_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SDIO_NUM);
#endif	/* OSEE_CORTEX_M_SDIO_ISR */

/**
 * TIM5 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM5_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM5_ISR) &&		\
			(OSEE_CORTEX_M_TIM5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM5_NUM		(				\
	OSEE_CORTEX_M_TIM5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM5_NUM, OSEE_CORTEX_M_TIM5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM5_NUM);
#endif	/* OSEE_CORTEX_M_TIM5_ISR */

/**
 * SPI3 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI3_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI3_ISR) &&		\
			(OSEE_CORTEX_M_SPI3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI3_NUM		(				\
	OSEE_CORTEX_M_SPI3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI3_NUM, OSEE_CORTEX_M_SPI3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI3_NUM);
#endif	/* OSEE_CORTEX_M_SPI3_ISR */

/**
 * UART4 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_UART4_ISR_TID) &&		\
			(OSEE_CORTEX_M_UART4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_UART4_ISR) &&		\
			(OSEE_CORTEX_M_UART4_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_UART4_NUM	(					\
	OSEE_CORTEX_M_UART4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_UART4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_UART4_NUM, OSEE_CORTEX_M_UART4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_UART4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_UART4_NUM);
#endif	/* OSEE_CORTEX_M_UART4_ISR */

/**
 * UART5 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_UART5_ISR_TID) &&		\
			(OSEE_CORTEX_M_UART5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_UART5_ISR) &&		\
			(OSEE_CORTEX_M_UART5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_UART5_NUM	(					\
	OSEE_CORTEX_M_UART5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_UART5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_UART5_NUM, OSEE_CORTEX_M_UART5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_UART5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_UART5_NUM);
#endif	/* OSEE_CORTEX_M_UART5_ISR */

/**
 * TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM6_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM6_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM6_ISR) &&		\
			(OSEE_CORTEX_M_TIM6_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM6_NUM		(				\
	OSEE_CORTEX_M_TIM6_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM6_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM6_NUM, OSEE_CORTEX_M_TIM6_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM6_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM6_NUM);
#endif	/* OSEE_CORTEX_M_TIM6_ISR */

/**
 * TIM7 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_TIM7_ISR_TID) &&		\
			(OSEE_CORTEX_M_TIM7_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_TIM7_ISR) &&		\
			(OSEE_CORTEX_M_TIM7_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_TIM7_NUM		(				\
	OSEE_CORTEX_M_TIM7_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_TIM7_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_TIM7_NUM, OSEE_CORTEX_M_TIM7_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_TIM7_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_TIM7_NUM);
#endif	/* OSEE_CORTEX_M_TIM7_ISR */

/**
 * DMA2 Stream0 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S0_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S0_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S0_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S0_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S0_NUM		(			\
	OSEE_CORTEX_M_DMA2_S0_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S0_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S0_NUM, OSEE_CORTEX_M_DMA2_S0_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S0_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S0_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S0_ISR */

/**
 * DMA2 Stream1 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S1_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S1_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S1_NUM		(			\
	OSEE_CORTEX_M_DMA2_S1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S1_NUM, OSEE_CORTEX_M_DMA2_S1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S1_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S1_ISR */

/**
 * DMA2 Stream2 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S2_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S2_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S2_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S2_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S2_NUM		(			\
	OSEE_CORTEX_M_DMA2_S2_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S2_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S2_NUM, OSEE_CORTEX_M_DMA2_S2_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S2_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S2_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S2_ISR */

/**
 * DMA2 Stream3 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S3_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S3_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S3_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S3_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S3_NUM		(			\
	OSEE_CORTEX_M_DMA2_S3_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S3_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S3_NUM, OSEE_CORTEX_M_DMA2_S3_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S3_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S3_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S3_ISR */

/**
 * DMA2 Stream4 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S4_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S4_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S4_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S4_NUM		(			\
	OSEE_CORTEX_M_DMA2_S4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S4_NUM, OSEE_CORTEX_M_DMA2_S4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S4_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S4_ISR */

/**
 * Ethernet global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_ETH_ISR_TID) &&		\
			(OSEE_CORTEX_M_ETH_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_ETH_ISR) &&		\
			(OSEE_CORTEX_M_ETH_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_ETH_NUM		(				\
	OSEE_CORTEX_M_ETH_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_ETH_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_ETH_NUM, OSEE_CORTEX_M_ETH_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_ETH_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_ETH_NUM);
#endif	/* OSEE_CORTEX_M_ETH_ISR */

/**
 * Ethernet Wakeup through EXTI line interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_ETH_WKUP_ISR_TID) &&	\
			(OSEE_CORTEX_M_ETH_WKUP_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_ETH_WKUP_ISR) &&		\
			(OSEE_CORTEX_M_ETH_WKUP_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_ETH_WKUP_NUM		(			\
	OSEE_CORTEX_M_ETH_WKUP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_ETH_WKUP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_ETH_WKUP_NUM, OSEE_CORTEX_M_ETH_WKUP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_ETH_WKUP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_ETH_WKUP_NUM);
#endif	/* OSEE_CORTEX_M_ETH_WKUP_ISR */

/**
 * CAN2 TX interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN2_TX_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN2_TX_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN2_TX_ISR) &&		\
			(OSEE_CORTEX_M_CAN2_TX_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN2_TX_NUM		(			\
	OSEE_CORTEX_M_CAN2_TX_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN2_TX_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN2_TX_NUM, OSEE_CORTEX_M_CAN2_TX_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN2_TX_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN2_TX_NUM);
#endif	/* OSEE_CORTEX_M_CAN2_TX_ISR */

/**
 * CAN2 RX0 interrupts
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN2_RX0_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN2_RX0_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN2_RX0_ISR) &&		\
			(OSEE_CORTEX_M_CAN2_RX0_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN2_RX0_NUM		(			\
	OSEE_CORTEX_M_CAN2_RX0_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN2_RX0_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN2_RX0_NUM, OSEE_CORTEX_M_CAN2_RX0_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN2_RX0_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN2_RX0_NUM);
#endif	/* OSEE_CORTEX_M_CAN2_RX0_ISR */

/**
 * CAN2 RX1 interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN2_RX1_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN2_RX1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN2_RX1_ISR) &&		\
			(OSEE_CORTEX_M_CAN2_RX1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN2_RX1_NUM		(			\
	OSEE_CORTEX_M_CAN2_RX1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN2_RX1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN2_RX1_NUM, OSEE_CORTEX_M_CAN2_RX1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN2_RX1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN2_RX1_NUM);
#endif	/* OSEE_CORTEX_M_CAN2_RX1_ISR */

/**
 * CAN2 SCE interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CAN2_SCE_ISR_TID) &&	\
			(OSEE_CORTEX_M_CAN2_SCE_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CAN2_SCE_ISR) &&		\
			(OSEE_CORTEX_M_CAN2_SCE_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CAN2_SCE_NUM		(			\
	OSEE_CORTEX_M_CAN2_SCE_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CAN2_SCE_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CAN2_SCE_NUM, OSEE_CORTEX_M_CAN2_SCE_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CAN2_SCE_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CAN2_SCE_NUM);
#endif	/* OSEE_CORTEX_M_CAN2_SCE_ISR */

/**
 * USB On The Go FS global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_OTG_FS_ISR_TID) &&	\
			(OSEE_CORTEX_M_OTG_FS_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_OTG_FS_ISR) &&		\
			(OSEE_CORTEX_M_OTG_FS_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_OTG_FS_NUM		(			\
	OSEE_CORTEX_M_OTG_FS_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_OTG_FS_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_FS_NUM, OSEE_CORTEX_M_OTG_FS_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_FS_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_FS_NUM);
#endif	/* OSEE_CORTEX_M_OTG_FS_ISR */

/**
 * DMA2 Stream5 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S5_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S5_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S5_NUM		(			\
	OSEE_CORTEX_M_DMA2_S5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S5_NUM, OSEE_CORTEX_M_DMA2_S5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S5_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S5_ISR */

/**
 * DMA2 Stream6 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S6_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S6_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S6_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S6_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S6_NUM		(			\
	OSEE_CORTEX_M_DMA2_S6_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S6_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S6_NUM, OSEE_CORTEX_M_DMA2_S6_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S6_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S6_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S6_ISR */

/**
 * DMA2 Stream7 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2_S7_ISR_TID) &&	\
			(OSEE_CORTEX_M_DMA2_S7_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2_S7_ISR) &&		\
			(OSEE_CORTEX_M_DMA2_S7_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2_S7_NUM		(			\
	OSEE_CORTEX_M_DMA2_S7_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2_S7_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2_S7_NUM, OSEE_CORTEX_M_DMA2_S7_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2_S7_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2_S7_NUM);
#endif	/* OSEE_CORTEX_M_DMA2_S7_ISR */

/**
 * USART6 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_USART6_ISR_TID) &&	\
			(OSEE_CORTEX_M_USART6_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_USART6_ISR) &&		\
			(OSEE_CORTEX_M_USART6_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_USART6_NUM		(			\
	OSEE_CORTEX_M_USART6_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_USART6_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_USART6_NUM, OSEE_CORTEX_M_USART6_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_USART6_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_USART6_NUM);
#endif	/* OSEE_CORTEX_M_USART6_ISR */

/**
 * I2C3 event interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C3_EV_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C3_EV_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C3_EV_ISR) &&		\
			(OSEE_CORTEX_M_I2C3_EV_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C3_EV_NUM		(			\
	OSEE_CORTEX_M_I2C3_EV_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C3_EV_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C3_EV_NUM, OSEE_CORTEX_M_I2C3_EV_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C3_EV_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C3_EV_NUM);
#endif	/* OSEE_CORTEX_M_I2C3_EV_ISR */

/**
 * I2C3 error interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_I2C3_ER_ISR_TID) &&	\
			(OSEE_CORTEX_M_I2C3_ER_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_I2C3_ER_ISR) &&		\
			(OSEE_CORTEX_M_I2C3_ER_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_I2C3_ER_NUM		(			\
	OSEE_CORTEX_M_I2C3_ER_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_I2C3_ER_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_I2C3_ER_NUM, OSEE_CORTEX_M_I2C3_ER_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_I2C3_ER_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_I2C3_ER_NUM);
#endif	/* OSEE_CORTEX_M_I2C3_ER_ISR */

/**
 * USB On The Go HS End Point 1 Out global interrupt
 */
#if	(								       \
		(							       \
			defined(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_TID) &&       \
			(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_CAT == 2)	       \
		) || (							       \
			defined(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR) &&	       \
			(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_CAT == 1)	       \
		)							       \
)
#define	OSEE_CORTEX_M_OTG_HS_EP1_OUT_NUM	(			       \
	OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM    \
)
#ifdef	OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_HS_EP1_OUT_NUM,
		OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_HS_EP1_OUT_NUM);
#endif	/* OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR */

/**
 * USB On The Go HS End Point 1 In global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_TID) &&	\
			(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_CAT == 2)	\
		) || (							\
			defined(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR) &&	\
			(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_CAT == 1)	\
		)							\
)
#define	OSEE_CORTEX_M_OTG_HS_EP1_IN_NUM		(			\
	OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM     \
)
#ifdef	OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_HS_EP1_IN_NUM,
		OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_HS_EP1_IN_NUM);
#endif	/* OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR */

/**
 * USB On The Go HS Wakeup through EXTI interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_OTG_HS_WKUP_ISR_TID) &&	\
			(OSEE_CORTEX_M_OTG_HS_WKUP_ISR_CAT == 2)	\
		) || (							\
			defined(OSEE_CORTEX_M_OTG_HS_WKUP_ISR) &&	\
			(OSEE_CORTEX_M_OTG_HS_WKUP_ISR_CAT == 1)	\
		)							\
)
#define	OSEE_CORTEX_M_OTG_HS_WKUP_NUM		(			\
	OSEE_CORTEX_M_OTG_HS_WKUP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM       \
)
#ifdef	OSEE_CORTEX_M_OTG_HS_WKUP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_HS_WKUP_NUM, OSEE_CORTEX_M_OTG_HS_WKUP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_HS_WKUP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_HS_WKUP_NUM);
#endif	/* OSEE_CORTEX_M_OTG_HS_WKUP_ISR */

/**
 * USB On The Go HS global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_OTG_HS_ISR_TID) &&	\
			(OSEE_CORTEX_M_OTG_HS_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_OTG_HS_ISR) &&		\
			(OSEE_CORTEX_M_OTG_HS_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_OTG_HS_NUM		(			\
	OSEE_CORTEX_M_OTG_HS_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_OTG_HS_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_OTG_HS_NUM, OSEE_CORTEX_M_OTG_HS_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_OTG_HS_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_OTG_HS_NUM);
#endif	/* OSEE_CORTEX_M_OTG_HS_ISR */

/**
 * DCMI global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DCMI_ISR_TID) &&		\
			(OSEE_CORTEX_M_DCMI_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DCMI_ISR) &&		\
			(OSEE_CORTEX_M_DCMI_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DCMI_NUM		(				\
	OSEE_CORTEX_M_DCMI_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DCMI_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DCMI_NUM, OSEE_CORTEX_M_DCMI_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DCMI_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DCMI_NUM);
#endif	/* OSEE_CORTEX_M_DCMI_ISR */

/**
 * CRYP global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_CRYP_ISR_TID) &&		\
			(OSEE_CORTEX_M_CRYP_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_CRYP_ISR) &&		\
			(OSEE_CORTEX_M_CRYP_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_CRYP_NUM		(				\
	OSEE_CORTEX_M_CRYP_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_CRYP_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_CRYP_NUM, OSEE_CORTEX_M_CRYP_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_CRYP_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_CRYP_NUM);
#endif	/* OSEE_CORTEX_M_CRYP_ISR */

/**
 * Hash and Rng global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_HASH_RNG_ISR_TID) &&	\
			(OSEE_CORTEX_M_HASH_RNG_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_HASH_RNG_ISR) &&		\
			(OSEE_CORTEX_M_HASH_RNG_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_HASH_RNG_NUM		(			\
	OSEE_CORTEX_M_HASH_RNG_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_HASH_RNG_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_HASH_RNG_NUM, OSEE_CORTEX_M_HASH_RNG_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_HASH_RNG_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_HASH_RNG_NUM);
#endif	/* OSEE_CORTEX_M_HASH_RNG_ISR */

/**
 * FPU global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_FPU_ISR_TID) &&		\
			(OSEE_CORTEX_M_FPU_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_FPU_ISR) &&		\
			(OSEE_CORTEX_M_FPU_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_FPU_NUM		(				\
	OSEE_CORTEX_M_FPU_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_FPU_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_FPU_NUM, OSEE_CORTEX_M_FPU_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_FPU_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_FPU_NUM);
#endif	/* OSEE_CORTEX_M_FPU_ISR */


#ifdef	OS_EE_ARCH_CORTEX_M_STM32F429xx

/**
 * UART7 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_UART7_ISR_TID) &&		\
			(OSEE_CORTEX_M_UART7_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_UART7_ISR) &&		\
			(OSEE_CORTEX_M_UART7_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_UART7_NUM	(					\
	OSEE_CORTEX_M_UART7_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_UART7_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_UART7_NUM, OSEE_CORTEX_M_UART7_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_UART7_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_UART7_NUM);
#endif	/* OSEE_CORTEX_M_UART7_ISR */

/**
 * UART8 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_UART8_ISR_TID) &&		\
			(OSEE_CORTEX_M_UART8_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_UART8_ISR) &&		\
			(OSEE_CORTEX_M_UART8_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_UART8_NUM	(					\
	OSEE_CORTEX_M_UART8_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_UART8_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_UART8_NUM, OSEE_CORTEX_M_UART8_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_UART8_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_UART8_NUM);
#endif	/* OSEE_CORTEX_M_UART8_ISR */

/**
 * SPI4 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI4_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI4_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI1_ISR) &&		\
			(OSEE_CORTEX_M_SPI1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI4_NUM		(				\
	OSEE_CORTEX_M_SPI4_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI4_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI4_NUM, OSEE_CORTEX_M_SPI4_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI4_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI4_NUM);
#endif	/* OSEE_CORTEX_M_SPI4_ISR */

/**
 * SPI5 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI5_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI5_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI5_ISR) &&		\
			(OSEE_CORTEX_M_SPI5_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI5_NUM		(				\
	OSEE_CORTEX_M_SPI5_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI5_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI5_NUM, OSEE_CORTEX_M_SPI5_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI5_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI5_NUM);
#endif	/* OSEE_CORTEX_M_SPI5_ISR */

/**
 * SPI6 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SPI6_ISR_TID) &&		\
			(OSEE_CORTEX_M_SPI6_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SPI6_ISR) &&		\
			(OSEE_CORTEX_M_SPI6_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SPI6_NUM		(				\
	OSEE_CORTEX_M_SPI6_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SPI6_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SPI6_NUM, OSEE_CORTEX_M_SPI6_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SPI6_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SPI6_NUM);
#endif	/* OSEE_CORTEX_M_SPI6_ISR */

/**
 * SAI1 global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_SAI1_ISR_TID) &&		\
			(OSEE_CORTEX_M_SAI1_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_SAI1_ISR) &&		\
			(OSEE_CORTEX_M_SAI1_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_SAI1_NUM		(				\
	OSEE_CORTEX_M_SAI1_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_SAI1_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_SAI1_NUM, OSEE_CORTEX_M_SAI1_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_SAI1_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_SAI1_NUM);
#endif	/* OSEE_CORTEX_M_SAI1_ISR */

/**
 * LTDC global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_LTDC_ISR_TID) &&		\
			(OSEE_CORTEX_M_LTDC_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_LTDC_ISR) &&		\
			(OSEE_CORTEX_M_LTDC_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_LTDC_NUM		(				\
	OSEE_CORTEX_M_LTDC_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_LTDC_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_LTDC_NUM, OSEE_CORTEX_M_LTDC_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_LTDC_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_LTDC_NUM);
#endif	/* OSEE_CORTEX_M_LTDC_ISR */

/**
 * LTDC global error interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_LTDC_ER_ISR_TID) &&	\
			(OSEE_CORTEX_M_LTDC_ER_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_LTDC_ER_ISR) &&		\
			(OSEE_CORTEX_M_LTDC_ER_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_LTDC_ER_NUM		(			\
	OSEE_CORTEX_M_LTDC_ER_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_LTDC_ER_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_LTDC_ER_NUM, OSEE_CORTEX_M_LTDC_ER_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_LTDC_ER_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_LTDC_ER_NUM);
#endif	/* OSEE_CORTEX_M_LTDC_ER_ISR */

/**
 * DMA2D global interrupt
 */
#if	(								\
		(							\
			defined(OSEE_CORTEX_M_DMA2D_ISR_TID) &&		\
			(OSEE_CORTEX_M_DMA2D_ISR_CAT == 2)		\
		) || (							\
			defined(OSEE_CORTEX_M_DMA2D_ISR) &&		\
			(OSEE_CORTEX_M_DMA2D_ISR_CAT == 1)		\
		)							\
)
#define	OSEE_CORTEX_M_DMA2D_NUM		(				\
	OSEE_CORTEX_M_DMA2D_ISR_ID - OSEE_CORTEX_M_OVERALL_EXC_NUM	\
)
#ifdef	OSEE_CORTEX_M_DMA2D_ISR_PRI
	OSEE_CORTEX_M_NVIC_SET_PRI(
		OSEE_CORTEX_M_DMA2D_NUM, OSEE_CORTEX_M_DMA2D_ISR_PRI
	);
#endif	/* OSEE_CORTEX_M_DMA2D_ISR_PRI */
	OSEE_CORTEX_M_NVIC_INT_ENABLE(OSEE_CORTEX_M_DMA2D_NUM);
#endif	/* OSEE_CORTEX_M_DMA2D_ISR */
#endif	/* OS_EE_ARCH_CORTEX_M_STM32F429xx */
}	/* osEE_cortex_m_mcu_system_init() */

/*
 * Interrupt Vector Definition
 */

#if	(defined(OSEE_API_DYNAMIC))

/**
 * Window Watchdog interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(WWDG_IRQHandler, OSEE_CORTEX_M_WWDG_ISR_ID)

/**
 * PVD through EXTI line detection interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(PVD_IRQHandler, OSEE_CORTEX_M_PVD_ISR_ID)

/**
 * Tamper and TimeStamp interrupts through the EXTI line
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TAMP_STAMP_IRQHandler, OSEE_CORTEX_M_TAMP_STAMP_ISR_ID
)

/**
 * RTC Wakeup interrupt through the EXTI line
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	RTC_WKUP_IRQHandler, OSEE_CORTEX_M_RTC_WKUP_ISR_ID
)

/**
 * Flash global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(FLASH_IRQHandler, OSEE_CORTEX_M_FLASH_ISR_ID)

/**
 * RCC global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(RCC_IRQHandler, OSEE_CORTEX_M_RCC_ISR_ID)

/**
 * EXTI Line0 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI0_IRQHandler, OSEE_CORTEX_M_EXTI0_ISR_ID)

/**
 * EXTI Line1 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI1_IRQHandler, OSEE_CORTEX_M_EXTI1_ISR_ID)

/**
 * EXTI Line2 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI2_IRQHandler, OSEE_CORTEX_M_EXTI2_ISR_ID)

/**
 * EXTI Line3 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI3_IRQHandler, OSEE_CORTEX_M_EXTI3_ISR_ID)

/**
 * EXTI Line4 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI4_IRQHandler, OSEE_CORTEX_M_EXTI4_ISR_ID)

/**
 * DMA1 Stream0 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream0_IRQHandler, OSEE_CORTEX_M_DMA1_S0_ISR_ID
)

/**
 * DMA1 Stream1 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream1_IRQHandler, OSEE_CORTEX_M_DMA1_S1_ISR_ID
)

/**
 * DMA1 Stream2 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream2_IRQHandler, OSEE_CORTEX_M_DMA1_S2_ISR_ID
)

/**
 * DMA1 Stream3 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream3_IRQHandler, OSEE_CORTEX_M_DMA1_S3_ISR_ID
)

/**
 * DMA1 Stream4 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream4_IRQHandler, OSEE_CORTEX_M_DMA1_S4_ISR_ID
)

/**
 * DMA1 Stream5 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream5_IRQHandler, OSEE_CORTEX_M_DMA1_S5_ISR_ID
)

/**
 * DMA1 Stream6 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream6_IRQHandler, OSEE_CORTEX_M_DMA1_S6_ISR_ID
)

/**
 * ADC1, ADC2 and ADC3 global interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(ADC_IRQHandler, OSEE_CORTEX_M_ADC_ISR_ID)

/**
 * CAN1 TX interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(CAN1_TX_IRQHandler, OSEE_CORTEX_M_CAN1_TX_ISR_ID)

/**
 * CAN1 RX0 interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN1_RX0_IRQHandler, OSEE_CORTEX_M_CAN1_RX0_ISR_ID
)

/**
 * CAN1 RX1 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN1_RX1_IRQHandler, OSEE_CORTEX_M_CAN1_RX1_ISR_ID
)

/**
 * CAN1 SCE interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN1_SCE_IRQHandler, OSEE_CORTEX_M_CAN1_SCE_ISR_ID
)

/**
 * EXTI Line[9:5] interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI9_5_IRQHandler, OSEE_CORTEX_M_EXTI9_5_ISR_ID)

/**
 * TIM1 Break interrupt and TIM9 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM1_BRK_TIM9_IRQHandler, OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_ID
)

/**
 * TIM1 Update interrupt and TIM10 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM1_UP_TIM10_IRQHandler, OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_ID
)

/**
 * TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM1_TRG_COM_TIM11_IRQHandler, OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_ID
)

/**
 * TIM1 Capture Compare interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM1_CC_IRQHandler, OSEE_CORTEX_M_TIM1_CC_ISR_ID)

/**
 * TIM2 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM2_IRQHandler, OSEE_CORTEX_M_TIM2_ISR_ID)

/**
 * TIM3 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM3_IRQHandler, OSEE_CORTEX_M_TIM3_ISR_ID)

/**
 * TIM4 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM4_IRQHandler, OSEE_CORTEX_M_TIM4_ISR_ID)

/**
 * I2C1 event interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C1_EV_IRQHandler, OSEE_CORTEX_M_I2C1_EV_ISR_ID)

/**
 * I2C1 error interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C1_ER_IRQHandler, OSEE_CORTEX_M_I2C1_ER_ISR_ID)

/**
 * I2C2 event interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C2_EV_IRQHandler, OSEE_CORTEX_M_I2C2_EV_ISR_ID)

/**
 * I2C2 error interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C2_ER_IRQHandler, OSEE_CORTEX_M_I2C2_ER_ISR_ID)

/**
 * SPI1 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI1_IRQHandler, OSEE_CORTEX_M_SPI1_ISR_ID)

/**
 * SPI2 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI2_IRQHandler, OSEE_CORTEX_M_SPI2_ISR_ID)

/**
 * USART1 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(USART1_IRQHandler, OSEE_CORTEX_M_USART1_ISR_ID)

/**
 * USART2 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(USART2_IRQHandler, OSEE_CORTEX_M_USART2_ISR_ID)

/**
 * USART3 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(USART3_IRQHandler, OSEE_CORTEX_M_USART3_ISR_ID)

/**
 * EXTI Line[15:10] interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	EXTI15_10_IRQHandler, OSEE_CORTEX_M_EXTI15_10_ISR_ID
)

/**
 * RTC Alarms (A and B) through EXTI line interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	RTC_Alarm_IRQHandler, OSEE_CORTEX_M_RTC_ALARM_ISR_ID
)

/**
 * USB On-The-Go FS Wakeup through EXTI line interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	OTG_FS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_FS_WKUP_ISR_ID
)

/**
 * TIM8 Break interrupt and TIM12 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM8_BRK_TIM12_IRQHandler, OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_ID
)

/**
 * TIM8 Update interrupt and TIM13 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM8_UP_TIM13_IRQHandler, OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_ID
)

/**
 * TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM8_TRG_COM_TIM14_IRQHandler, OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_ID
)

/**
 * TIM8 Capture Compare interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM8_CC_IRQHandler, OSEE_CORTEX_M_TIM8_CC_ISR_ID)

/**
 * DMA1 Stream7 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA1_Stream7_IRQHandler, OSEE_CORTEX_M_DMA1_S7_ISR_ID
)

/**
 * FSMC global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(FSMC_IRQHandler, OSEE_CORTEX_M_FSMC_ISR_ID)

/**
 * SDIO global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SDIO_IRQHandler, OSEE_CORTEX_M_SDIO_ISR_ID)

/**
 * TIM5 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM5_IRQHandler, OSEE_CORTEX_M_TIM5_ISR_ID)

/**
 * SPI3 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI3_IRQHandler, OSEE_CORTEX_M_SPI3_ISR_ID)

/**
 * UART4 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(UART4_IRQHandler, OSEE_CORTEX_M_UART4_ISR_ID)

/**
 * UART5 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(UART5_IRQHandler, OSEE_CORTEX_M_UART5_ISR_ID)

/**
 * TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	TIM6_DAC_IRQHandler, OSEE_CORTEX_M_TIM6_DAC_ISR_ID
)

/**
 * TIM7 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(TIM7_IRQHandler, OSEE_CORTEX_M_TIM7_ISR_ID)

/**
 * DMA2 Stream0 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream0_IRQHandler, OSEE_CORTEX_M_DMA2_S0_ISR_ID
)

/**
 * DMA2 Stream1 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream1_IRQHandler, OSEE_CORTEX_M_DMA2_S1_ISR_ID
)

/**
 * DMA2 Stream2 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream2_IRQHandler, OSEE_CORTEX_M_DMA2_S2_ISR_ID
)

/**
 * DMA2 Stream3 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream3_IRQHandler, OSEE_CORTEX_M_DMA2_S3_ISR_ID
)

/**
 * DMA2 Stream4 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream4_IRQHandler, OSEE_CORTEX_M_DMA2_S4_ISR_ID
)

/**
 * Ethernet global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(ETH_IRQHandler, OSEE_CORTEX_M_ETH_ISR_ID)

/**
 * Ethernet Wakeup through EXTI line interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	ETH_WKUP_IRQHandler, OSEE_CORTEX_M_ETH_WKUP_ISR_ID
)

/**
 * CAN2 TX interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(CAN2_TX_IRQHandler, OSEE_CORTEX_M_CAN2_TX_ISR_ID)

/**
 * CAN2 RX0 interrupts
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN2_RX0_IRQHandler, OSEE_CORTEX_M_CAN2_RX0_ISR_ID
)

/**
 * CAN2 RX1 interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN2_RX1_IRQHandler, OSEE_CORTEX_M_CAN2_RX1_ISR_ID
)

/**
 * CAN2 SCE interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	CAN2_SCE_IRQHandler, OSEE_CORTEX_M_CAN2_SCE_ISR_ID
)

/**
 * USB On The Go FS global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	OTG_FS_IRQHandler, OSEE_CORTEX_M_OTG_FS_ISR_ID
)

/**
 * DMA2 Stream5 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream5_IRQHandler, OSEE_CORTEX_M_DMA2_S5_ISR_ID
)

/**
 * DMA2 Stream6 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream6_IRQHandler, OSEE_CORTEX_M_DMA2_S6_ISR_ID
)

/**
 * DMA2 Stream7 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	DMA2_Stream7_IRQHandler, OSEE_CORTEX_M_DMA2_S7_ISR_ID
)

/**
 * USART6 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(USART6_IRQHandler, OSEE_CORTEX_M_USART6_ISR_ID)

/**
 * I2C3 event interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C3_EV_IRQHandler, OSEE_CORTEX_M_I2C3_EV_ISR_ID)

/**
 * I2C3 error interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(I2C3_ER_IRQHandler, OSEE_CORTEX_M_I2C3_ER_ISR_ID)

/**
 * USB On The Go HS End Point 1 Out global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	OTG_HS_EP1_OUT_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_ID
)

/**
 * USB On The Go HS End Point 1 In global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	OTG_HS_EP1_IN_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_ID
)

/**
 * USB On The Go HS Wakeup through EXTI interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	OTG_HS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_HS_WKUP_ISR_ID
)

/**
 * USB On The Go HS global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_HS_IRQHandler, OSEE_CORTEX_M_OTG_HS_ISR_ID)

/**
 * DCMI global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(DCMI_IRQHandler, OSEE_CORTEX_M_DCMI_ISR_ID)

/**
 * CRYP global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(CRYP_IRQHandler, OSEE_CORTEX_M_CRYP_ISR_ID)

/**
 * Hash and Rng global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(
	HASH_RNG_IRQHandler, OSEE_CORTEX_M_HASH_RNG_ISR_ID
)

/**
 * FPU global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(FPU_IRQHandler, OSEE_CORTEX_M_FPU_ISR_ID)

#ifdef	OS_EE_ARCH_CORTEX_M_STM32F429xx

/**
 * UART7 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(UART7_IRQHandler, OSEE_CORTEX_M_UART7_ISR_ID)

/**
 * UART8 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(UART8_IRQHandler, OSEE_CORTEX_M_UART8_ISR_ID)

/**
 * SPI4 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI4_IRQHandler, OSEE_CORTEX_M_SPI4_ISR_ID)

/**
 * SPI5 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI5_IRQHandler, OSEE_CORTEX_M_SPI5_ISR_ID)

/**
 * SPI6 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SPI6_IRQHandler, OSEE_CORTEX_M_SPI6_ISR_ID)

/**
 * SAI1 global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(SAI1_IRQHandler, OSEE_CORTEX_M_SAI1_ISR_ID)

/**
 * LTDC global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(LTDC_IRQHandler, OSEE_CORTEX_M_LTDC_ISR_ID)

/**
 * LTDC global error interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(LTDC_ER_IRQHandler, OSEE_CORTEX_M_LTDC_ER_ISR_ID)

/**
 * DMA2D global interrupt
 */
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2D_IRQHandler, OSEE_CORTEX_M_DMA2D_ISR_ID)

#endif	/* OS_EE_ARCH_CORTEX_M_STM32F429xx */

#else  /* OSEE_API_DYNAMIC */

/* [GS]: TID Al posto dell'Handler */

/**
 * Window Watchdog interrupt
 */
#if (defined(OSEE_CORTEX_M_WWDG_ISR_TID)) && (OSEE_CORTEX_M_WWDG_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(WWDG_IRQHandler, OSEE_CORTEX_M_WWDG_ISR_TID)
#elif (defined(OSEE_CORTEX_M_WWDG_ISR)) && (OSEE_CORTEX_M_WWDG_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(WWDG_IRQHandler, OSEE_CORTEX_M_WWDG_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(WWDG_IRQHandler)
#endif /* OSEE_CORTEX_M_WWDG_ISR */

/**
 * PVD through EXTI line detection interrupt
 */
#if (defined(OSEE_CORTEX_M_PVD_ISR_TID)) && (OSEE_CORTEX_M_PVD_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(PVD_IRQHandler, OSEE_CORTEX_M_PVD_ISR_TID)
#elif (defined(OSEE_CORTEX_M_PVD_ISR)) && (OSEE_CORTEX_M_PVD_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(PVD_IRQHandler, OSEE_CORTEX_M_PVD_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(PVD_IRQHandler)
#endif /* OSEE_CORTEX_M_PVD_ISR */

/**
 * Tamper and TimeStamp interrupts through the EXTI line
 */
#if (defined(OSEE_CORTEX_M_TAMP_STAMP_ISR_TID)) && (OSEE_CORTEX_M_TAMP_STAMP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TAMP_STAMP_IRQHandler, OSEE_CORTEX_M_TAMP_STAMP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TAMP_STAMP_ISR)) && (OSEE_CORTEX_M_TAMP_STAMP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TAMP_STAMP_IRQHandler, OSEE_CORTEX_M_TAMP_STAMP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TAMP_STAMP_IRQHandler)
#endif /* OSEE_CORTEX_M_TAMP_STAMP_ISR */

/**
 * RTC Wakeup interrupt through the EXTI line
 */
#if (defined(OSEE_CORTEX_M_RTC_WKUP_ISR_TID)) && (OSEE_CORTEX_M_RTC_WKUP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(RTC_WKUP_IRQHandler, OSEE_CORTEX_M_RTC_WKUP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_RTC_WKUP_ISR)) && (OSEE_CORTEX_M_RTC_WKUP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(RTC_WKUP_IRQHandler, OSEE_CORTEX_M_RTC_WKUP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(RTC_WKUP_IRQHandler)
#endif /* OSEE_CORTEX_M_RTC_WKUP_ISR */

/**
 * Flash global interrupt
 */
#if (defined(OSEE_CORTEX_M_FLASH_ISR_TID)) && (OSEE_CORTEX_M_FLASH_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(FLASH_IRQHandler, OSEE_CORTEX_M_FLASH_ISR_TID)
#elif (defined(OSEE_CORTEX_M_FLASH_ISR)) && (OSEE_CORTEX_M_FLASH_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(FLASH_IRQHandler, OSEE_CORTEX_M_FLASH_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(FLASH_IRQHandler)
#endif /* OSEE_CORTEX_M_FLASH_ISR */

/**
 * RCC global interrupt
 */
#if (defined(OSEE_CORTEX_M_RCC_ISR_TID)) && (OSEE_CORTEX_M_RCC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(RCC_IRQHandler, OSEE_CORTEX_M_RCC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_RCC_ISR)) && (OSEE_CORTEX_M_RCC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(RCC_IRQHandler, OSEE_CORTEX_M_RCC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(RCC_IRQHandler)
#endif /* OSEE_CORTEX_M_RCC_ISR */

/**
 * EXTI Line0 interrupt
 */
#if (defined(OSEE_CORTEX_M_EXTI0_ISR_TID)) && (OSEE_CORTEX_M_EXTI0_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI0_IRQHandler, OSEE_CORTEX_M_EXTI0_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI0_ISR)) && (OSEE_CORTEX_M_EXTI0_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI0_IRQHandler, OSEE_CORTEX_M_EXTI0_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI0_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI0_ISR */

/**
 * EXTI Line1 interrupt
 */
#if (defined(OSEE_CORTEX_M_EXTI1_ISR_TID)) && (OSEE_CORTEX_M_EXTI1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI1_IRQHandler, OSEE_CORTEX_M_EXTI1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI1_ISR)) && (OSEE_CORTEX_M_EXTI1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI1_IRQHandler, OSEE_CORTEX_M_EXTI1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI1_IRQHandler)
#endif  /* OSEE_CORTEX_M_EXTI1_ISR */

/**
 * EXTI Line2 interrupt
 */
#if (defined(OSEE_CORTEX_M_EXTI2_ISR_TID)) && (OSEE_CORTEX_M_EXTI2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI2_IRQHandler, OSEE_CORTEX_M_EXTI2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI2_ISR)) && (OSEE_CORTEX_M_EXTI2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI2_IRQHandler, OSEE_CORTEX_M_EXTI2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI2_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI2_ISR */

/**
 * EXTI Line3 interrupt
 */
#if (defined(OSEE_CORTEX_M_EXTI3_ISR_TID)) && (OSEE_CORTEX_M_EXTI3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI3_IRQHandler, OSEE_CORTEX_M_EXTI3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI3_ISR)) && (OSEE_CORTEX_M_EXTI3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI3_IRQHandler, OSEE_CORTEX_M_EXTI3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI3_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI3_ISR */

/**
 * EXTI Line4 interrupt
 */
#if (defined(OSEE_CORTEX_M_EXTI4_ISR_TID)) && (OSEE_CORTEX_M_EXTI4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI4_IRQHandler, OSEE_CORTEX_M_EXTI4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI4_ISR)) && (OSEE_CORTEX_M_EXTI4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI4_IRQHandler, OSEE_CORTEX_M_EXTI4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI4_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI4_ISR */

/**
 * DMA1 Stream0 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S0_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S0_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream0_IRQHandler, OSEE_CORTEX_M_DMA1_S0_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S0_ISR)) && (OSEE_CORTEX_M_DMA1_S0_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream0_IRQHandler, OSEE_CORTEX_M_DMA1_S0_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream0_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S0_ISR */

/**
 * DMA1 Stream1 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S1_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream1_IRQHandler, OSEE_CORTEX_M_DMA1_S1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S1_ISR)) && (OSEE_CORTEX_M_DMA1_S1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream1_IRQHandler, OSEE_CORTEX_M_DMA1_S1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream1_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S1_ISR */

/**
 * DMA1 Stream2 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S2_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream2_IRQHandler, OSEE_CORTEX_M_DMA1_S2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S2_ISR)) && (OSEE_CORTEX_M_DMA1_S2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream2_IRQHandler, OSEE_CORTEX_M_DMA1_S2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream2_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S2_ISR */

/**
 * DMA1 Stream3 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S3_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream3_IRQHandler, OSEE_CORTEX_M_DMA1_S3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S3_ISR)) && (OSEE_CORTEX_M_DMA1_S3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream3_IRQHandler, OSEE_CORTEX_M_DMA1_S3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream3_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S3_ISR */

/**
 * DMA1 Stream4 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S4_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream5_IRQHandler, OSEE_CORTEX_M_DMA1_S4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S4_ISR)) && (OSEE_CORTEX_M_DMA1_S4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream4_IRQHandler, OSEE_CORTEX_M_DMA1_S4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream4_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S4_ISR */

/**
 * DMA1 Stream5 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S5_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream5_IRQHandler, OSEE_CORTEX_M_DMA1_S5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S5_ISR)) && (OSEE_CORTEX_M_DMA1_S5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream5_IRQHandler, OSEE_CORTEX_M_DMA1_S5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream5_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S5_ISR */

/**
 * DMA1 Stream6 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S6_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S6_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream6_IRQHandler, OSEE_CORTEX_M_DMA1_S6_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S6_ISR)) && (OSEE_CORTEX_M_DMA1_S6_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream6_IRQHandler, OSEE_CORTEX_M_DMA1_S6_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream6_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S6_ISR */

/**
 * ADC1, ADC2 and ADC3 global interrupts
 */
#if (defined(OSEE_CORTEX_M_ADC_ISR_TID)) && (OSEE_CORTEX_M_ADC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(ADC_IRQHandler, OSEE_CORTEX_M_ADC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_ADC_ISR)) && (OSEE_CORTEX_M_ADC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(ADC_IRQHandler, OSEE_CORTEX_M_ADC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(ADC_IRQHandler)
#endif /* OSEE_CORTEX_M_ADC_ISR */

/**
 * CAN1 TX interrupts
 */
#if (defined(OSEE_CORTEX_M_CAN1_TX_ISR_TID)) && (OSEE_CORTEX_M_CAN1_TX_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN1_TX_IRQHandler, OSEE_CORTEX_M_CAN1_TX_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN1_TX_ISR)) && (OSEE_CORTEX_M_CAN1_TX_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN1_TX_IRQHandler, OSEE_CORTEX_M_CAN1_TX_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN1_TX_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN1_TX_ISR */

/**
 * CAN1 RX0 interrupts
 */
#if (defined(OSEE_CORTEX_M_CAN1_RX0_ISR_TID)) && (OSEE_CORTEX_M_CAN1_RX0_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN1_RX0_IRQHandler, OSEE_CORTEX_M_CAN1_RX0_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN1_RX0_ISR)) && (OSEE_CORTEX_M_CAN1_RX0_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN1_RX0_IRQHandler, OSEE_CORTEX_M_CAN1_RX0_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN1_RX0_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN1_RX0_ISR */

/**
 * CAN1 RX1 interrupt
 */
#if (defined(OSEE_CORTEX_M_CAN1_RX1_ISR_TID)) && (OSEE_CORTEX_M_CAN1_RX1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN1_RX1_IRQHandler, OSEE_CORTEX_M_CAN1_RX1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN1_RX1_ISR)) && (OSEE_CORTEX_M_CAN1_RX1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN1_RX1_IRQHandler, OSEE_CORTEX_M_CAN1_RX1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN1_RX1_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN1_RX1_ISR */

/**
 * CAN1 SCE interrupt
 */
#if (defined(OSEE_CORTEX_M_CAN1_SCE_ISR_TID)) && (OSEE_CORTEX_M_CAN1_SCE_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN1_SCE_IRQHandler, OSEE_CORTEX_M_CAN1_SCE_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN1_SCE_ISR)) && (OSEE_CORTEX_M_CAN1_SCE_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN1_SCE_IRQHandler, OSEE_CORTEX_M_CAN1_SCE_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN1_SCE_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN1_SCE_ISR */

/**
 * EXTI Line[9:5] interrupts
 */
#if (defined(OSEE_CORTEX_M_EXTI9_5_ISR_TID)) && (OSEE_CORTEX_M_EXTI9_5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI9_5_IRQHandler, OSEE_CORTEX_M_EXTI9_5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI9_5_ISR)) && (OSEE_CORTEX_M_EXTI9_5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI9_5_IRQHandler, OSEE_CORTEX_M_EXTI9_5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI9_5_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI9_5_ISR */

/**
 * TIM1 Break interrupt and TIM9 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_TID)) && (OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM1_BRK_TIM9_IRQHandler, OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR)) && (OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM1_BRK_TIM9_IRQHandler, OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM1_BRK_TIM9_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM1_BRK_TIM9_ISR */

/**
 * TIM1 Update interrupt and TIM10 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_TID)) && (OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM1_UP_TIM10_IRQHandler, OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM1_UP_TIM10_ISR)) && (OSEE_CORTEX_M_TIM1_UP_TIM10_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM1_UP_TIM10_IRQHandler, OSEE_CORTEX_M_TIM1_UP_TIM10_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM1_UP_TIM10_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM1_UP_TIM10_ISR */

/**
 * TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_TID)) && (OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM1_TRG_COM_TIM11_IRQHandler, OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR)) && (OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM1_TRG_COM_TIM11_IRQHandler, OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM1_TRG_COM_TIM11_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM1_TRG_COM_TIM11_ISR */

/**
 * TIM1 Capture Compare interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM1_CC_ISR_TID)) && (OSEE_CORTEX_M_TIM1_CC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM1_CC_IRQHandler, OSEE_CORTEX_M_TIM1_CC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM1_CC_ISR)) && (OSEE_CORTEX_M_TIM1_CC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM1_CC_IRQHandler, OSEE_CORTEX_M_TIM1_CC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM1_CC_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM1_CC_ISR */

/**
 * TIM2 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM2_ISR_TID)) && (OSEE_CORTEX_M_TIM2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM2_IRQHandler, OSEE_CORTEX_M_TIM2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM2_ISR)) && (OSEE_CORTEX_M_TIM2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM2_IRQHandler, OSEE_CORTEX_M_TIM2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM2_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM2_ISR */

/**
 * TIM3 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM3_ISR_TID)) && (OSEE_CORTEX_M_TIM3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM3_IRQHandler, OSEE_CORTEX_M_TIM3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM3_ISR)) && (OSEE_CORTEX_M_TIM3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM3_IRQHandler, OSEE_CORTEX_M_TIM3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM3_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM3_ISR */

/**
 * TIM4 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM4_ISR_TID)) && (OSEE_CORTEX_M_TIM4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM4_IRQHandler, OSEE_CORTEX_M_TIM4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM4_ISR)) && (OSEE_CORTEX_M_TIM4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM4_IRQHandler, OSEE_CORTEX_M_TIM4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM4_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM4_ISR */

/**
 * I2C1 event interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C1_EV_ISR_TID)) && (OSEE_CORTEX_M_I2C1_EV_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C1_EV_IRQHandler, OSEE_CORTEX_M_I2C1_EV_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C1_EV_ISR)) && (OSEE_CORTEX_M_I2C1_EV_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C1_EV_IRQHandler, OSEE_CORTEX_M_I2C1_EV_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C1_EV_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C1_EV_ISR */

/**
 * I2C1 error interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C1_ER_ISR_TID)) && (OSEE_CORTEX_M_I2C1_ER_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C1_ER_IRQHandler, OSEE_CORTEX_M_I2C1_ER_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C1_ER_ISR)) && (OSEE_CORTEX_M_I2C1_ER_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C1_ER_IRQHandler, OSEE_CORTEX_M_I2C1_ER_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C1_ER_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C1_ER_ISR */

/**
 * I2C2 event interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C2_EV_ISR_TID)) && (OSEE_CORTEX_M_I2C2_EV_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C2_EV_IRQHandler, OSEE_CORTEX_M_I2C2_EV_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C2_EV_ISR)) && (OSEE_CORTEX_M_I2C2_EV_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C2_EV_IRQHandler, OSEE_CORTEX_M_I2C2_EV_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C2_EV_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C2_EV_ISR */

/**
 * I2C2 error interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C2_ER_ISR_TID)) && (OSEE_CORTEX_M_I2C2_ER_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C2_ER_IRQHandler, OSEE_CORTEX_M_I2C2_ER_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C2_ER_ISR)) && (OSEE_CORTEX_M_I2C2_ER_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C2_ER_IRQHandler, OSEE_CORTEX_M_I2C2_ER_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C2_ER_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C2_ER_ISR */

/**
 * SPI1 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI1_ISR_TID)) && (OSEE_CORTEX_M_SPI1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI1_IRQHandler, OSEE_CORTEX_M_SPI1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI1_ISR)) && (OSEE_CORTEX_M_SPI1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI1_IRQHandler, OSEE_CORTEX_M_SPI1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI1_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI1_ISR */

/**
 * SPI2 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI2_ISR_TID)) && (OSEE_CORTEX_M_SPI2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI2_IRQHandler, OSEE_CORTEX_M_SPI2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI2_ISR)) && (OSEE_CORTEX_M_SPI2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI2_IRQHandler, OSEE_CORTEX_M_SPI2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI2_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI2_ISR */

/**
 * USART1 global interrupt
 */
#if (defined(OSEE_CORTEX_M_USART1_ISR_TID)) && (OSEE_CORTEX_M_USART1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(USART1_IRQHandler, OSEE_CORTEX_M_USART1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_USART1_ISR)) && (OSEE_CORTEX_M_USART1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(USART1_IRQHandler, OSEE_CORTEX_M_USART1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(USART1_IRQHandler)
#endif /* OSEE_CORTEX_M_USART1_ISR */

/**
 * USART2 global interrupt
 */
#if (defined(OSEE_CORTEX_M_USART2_ISR_TID)) && (OSEE_CORTEX_M_USART2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(USART2_IRQHandler, OSEE_CORTEX_M_USART2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_USART2_ISR)) && (OSEE_CORTEX_M_USART2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(USART2_IRQHandler, OSEE_CORTEX_M_USART2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(USART2_IRQHandler)
#endif /* OSEE_CORTEX_M_USART2_ISR */

/**
 * USART3 global interrupt
 */
#if (defined(OSEE_CORTEX_M_USART3_ISR_TID)) && (OSEE_CORTEX_M_USART3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(USART3_IRQHandler, OSEE_CORTEX_M_USART3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_USART3_ISR)) && (OSEE_CORTEX_M_USART3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(USART3_IRQHandler, OSEE_CORTEX_M_USART3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(USART3_IRQHandler)
#endif /* OSEE_CORTEX_M_USART3_ISR */

/**
 * EXTI Line[15:10] interrupts
 */
#if (defined(OSEE_CORTEX_M_EXTI15_10_ISR_TID)) && (OSEE_CORTEX_M_EXTI15_10_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(EXTI15_10_IRQHandler, OSEE_CORTEX_M_EXTI15_10_ISR_TID)
#elif (defined(OSEE_CORTEX_M_EXTI15_10_ISR)) && (OSEE_CORTEX_M_EXTI15_10_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(EXTI15_10_IRQHandler, OSEE_CORTEX_M_EXTI15_10_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(EXTI15_10_IRQHandler)
#endif /* OSEE_CORTEX_M_EXTI15_10_ISR */

/**
 * RTC Alarms (A and B) through EXTI line interrupt
 */
#if (defined(OSEE_CORTEX_M_RTC_ALARM_ISR_TID)) && (OSEE_CORTEX_M_RTC_ALARM_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(RTC_Alarm_IRQHandler, OSEE_CORTEX_M_RTC_ALARM_ISR_TID)
#elif (defined(OSEE_CORTEX_M_RTC_ALARM_ISR)) && (OSEE_CORTEX_M_RTC_ALARM_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(RTC_Alarm_IRQHandler, OSEE_CORTEX_M_RTC_ALARM_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(RTC_Alarm_IRQHandler)
#endif /* OSEE_CORTEX_M_RTC_ALARM_ISR */

/**
 * USB On-The-Go FS Wakeup through EXTI line interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_FS_WKUP_ISR_TID)) && (OSEE_CORTEX_M_OTG_FS_WKUP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_FS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_FS_WKUP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_FS_WKUP_ISR)) && (OSEE_CORTEX_M_OTG_FS_WKUP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_FS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_FS_WKUP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_FS_WKUP_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_FS_WKUP_ISR */

/**
 * TIM8 Break interrupt and TIM12 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_TID)) && (OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM8_BRK_TIM12_IRQHandler, OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR)) && (OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM8_BRK_TIM12_IRQHandler, OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM8_BRK_TIM12_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM8_BRK_TIM12_ISR */

/**
 * TIM8 Update interrupt and TIM13 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_TID)) && (OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM8_UP_TIM13_IRQHandler, OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM8_UP_TIM13_ISR)) && (OSEE_CORTEX_M_TIM8_UP_TIM13_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM8_UP_TIM13_IRQHandler, OSEE_CORTEX_M_TIM8_UP_TIM13_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM8_UP_TIM13_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM8_UP_TIM13_ISR */

/**
 * TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_TID)) && (OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM8_TRG_COM_TIM14_IRQHandler, OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR)) && (OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM8_TRG_COM_TIM14_IRQHandler, OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM8_TRG_COM_TIM14_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM8_TRG_COM_TIM14_ISR */

/**
 * TIM8 Capture Compare interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM8_CC_ISR_TID)) && (OSEE_CORTEX_M_TIM8_CC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM8_CC_IRQHandler, OSEE_CORTEX_M_TIM8_CC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM8_CC_ISR)) && (OSEE_CORTEX_M_TIM8_CC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM8_CC_IRQHandler, OSEE_CORTEX_M_TIM8_CC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM8_CC_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM8_CC_ISR */

/**
 * DMA1 Stream7 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA1_S7_ISR_TID)) && (OSEE_CORTEX_M_DMA1_S7_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA1_Stream7_IRQHandler, OSEE_CORTEX_M_DMA1_S7_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA1_S7_ISR)) && (OSEE_CORTEX_M_DMA1_S7_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA1_Stream7_IRQHandler, OSEE_CORTEX_M_DMA1_S7_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA1_Stream7_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA1_S7_ISR */

/**
 * FSMC global interrupt
 */
#if (defined(OSEE_CORTEX_M_FSMC_ISR_TID)) && (OSEE_CORTEX_M_FSMC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(FSMC_IRQHandler, OSEE_CORTEX_M_FSMC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_FSMC_ISR)) && (OSEE_CORTEX_M_FSMC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(FSMC_IRQHandler, OSEE_CORTEX_M_FSMC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(FSMC_IRQHandler)
#endif /* OSEE_CORTEX_M_FSMC_ISR */

/**
 * SDIO global interrupt
 */
#if (defined(OSEE_CORTEX_M_SDIO_ISR_TID)) && (OSEE_CORTEX_M_SDIO_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SDIO_IRQHandler, OSEE_CORTEX_M_SDIO_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SDIO_ISR)) && (OSEE_CORTEX_M_SDIO_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SDIO_IRQHandler, OSEE_CORTEX_M_SDIO_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SDIO_IRQHandler)
#endif /* OSEE_CORTEX_M_SDIO_ISR */

/**
 * TIM5 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM5_ISR_TID)) && (OSEE_CORTEX_M_TIM5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM5_IRQHandler, OSEE_CORTEX_M_TIM5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM5_ISR)) && (OSEE_CORTEX_M_TIM5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM5_IRQHandler, OSEE_CORTEX_M_TIM5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM5_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM5_ISR */

/**
 * SPI3 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI3_ISR_TID)) && (OSEE_CORTEX_M_SPI3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI3_IRQHandler, OSEE_CORTEX_M_SPI3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI3_ISR)) && (OSEE_CORTEX_M_SPI3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI3_IRQHandler, OSEE_CORTEX_M_SPI3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI3_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI3_ISR */

/**
 * UART4 global interrupt
 */
#if (defined(OSEE_CORTEX_M_UART4_ISR_TID)) && (OSEE_CORTEX_M_UART4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(UART4_IRQHandler, OSEE_CORTEX_M_UART4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_UART4_ISR)) && (OSEE_CORTEX_M_UART4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(UART4_IRQHandler, OSEE_CORTEX_M_UART4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(UART4_IRQHandler)
#endif /* OSEE_CORTEX_M_UART4_ISR */

/**
 * UART5 global interrupt
 */
#if (defined(OSEE_CORTEX_M_UART5_ISR_TID)) && (OSEE_CORTEX_M_UART5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(UART5_IRQHandler, OSEE_CORTEX_M_UART5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_UART5_ISR)) && (OSEE_CORTEX_M_UART5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(UART5_IRQHandler, OSEE_CORTEX_M_UART5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(UART5_IRQHandler)
#endif /* OSEE_CORTEX_M_UART5_ISR */

/**
 * TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts
 */
#if (defined(OSEE_CORTEX_M_TIM6_DAC_ISR_TID)) && (OSEE_CORTEX_M_TIM6_DAC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM6_DAC_IRQHandler, OSEE_CORTEX_M_TIM6_DAC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM6_DAC_ISR)) && (OSEE_CORTEX_M_TIM6_DAC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM6_DAC_IRQHandler, OSEE_CORTEX_M_TIM6_DAC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM6_DAC_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM6_DAC_ISR */

/**
 * TIM7 global interrupt
 */
#if (defined(OSEE_CORTEX_M_TIM7_ISR_TID)) && (OSEE_CORTEX_M_TIM7_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(TIM7_IRQHandler, OSEE_CORTEX_M_TIM7_ISR_TID)
#elif (defined(OSEE_CORTEX_M_TIM7_ISR)) && (OSEE_CORTEX_M_TIM7_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(TIM7_IRQHandler, OSEE_CORTEX_M_TIM7_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(TIM7_IRQHandler)
#endif /* OSEE_CORTEX_M_TIM7_ISR */

/**
 * DMA2 Stream0 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S0_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S0_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream0_IRQHandler, OSEE_CORTEX_M_DMA2_S0_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S0_ISR)) && (OSEE_CORTEX_M_DMA2_S0_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream0_IRQHandler, OSEE_CORTEX_M_DMA2_S0_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream0_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S0_ISR */

/**
 * DMA2 Stream1 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S1_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream1_IRQHandler, OSEE_CORTEX_M_DMA2_S1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S1_ISR)) && (OSEE_CORTEX_M_DMA2_S1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream1_IRQHandler, OSEE_CORTEX_M_DMA2_S1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream1_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S1_ISR */

/**
 * DMA2 Stream2 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S2_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S2_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream2_IRQHandler, OSEE_CORTEX_M_DMA2_S2_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S2_ISR)) && (OSEE_CORTEX_M_DMA2_S2_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream2_IRQHandler, OSEE_CORTEX_M_DMA2_S2_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream2_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S2_ISR */

/**
 * DMA2 Stream3 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S3_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S3_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream3_IRQHandler, OSEE_CORTEX_M_DMA2_S3_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S3_ISR)) && (OSEE_CORTEX_M_DMA2_S3_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream3_IRQHandler, OSEE_CORTEX_M_DMA2_S3_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream3_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S3_ISR */

/**
 * DMA2 Stream4 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S4_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream4_IRQHandler, OSEE_CORTEX_M_DMA2_S4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S4_ISR)) && (OSEE_CORTEX_M_DMA2_S4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream4_IRQHandler, OSEE_CORTEX_M_DMA2_S4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream4_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S4_ISR */

/**
 * Ethernet global interrupt
 */
#if (defined(OSEE_CORTEX_M_ETH_ISR_TID)) && (OSEE_CORTEX_M_ETH_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(ETH_IRQHandler, OSEE_CORTEX_M_ETH_ISR_TID)
#elif (defined(OSEE_CORTEX_M_ETH_ISR)) && (OSEE_CORTEX_M_ETH_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(ETH_IRQHandler, OSEE_CORTEX_M_ETH_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(ETH_IRQHandler)
#endif /* OSEE_CORTEX_M_ETH_ISR */

/**
 * Ethernet Wakeup through EXTI line interrupt
 */
#if (defined(OSEE_CORTEX_M_ETH_WKUP_ISR_TID)) && (OSEE_CORTEX_M_ETH_WKUP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(ETH_WKUP_IRQHandler, OSEE_CORTEX_M_ETH_WKUP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_ETH_WKUP_ISR)) && (OSEE_CORTEX_M_ETH_WKUP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(ETH_WKUP_IRQHandler, OSEE_CORTEX_M_ETH_WKUP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(ETH_WKUP_IRQHandler)
#endif /* OSEE_CORTEX_M_ETH_WKUP_ISR */

/**
 * CAN2 TX interrupts
 */
#if (defined(OSEE_CORTEX_M_CAN2_TX_ISR_TID)) && (OSEE_CORTEX_M_CAN2_TX_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN2_TX_IRQHandler, OSEE_CORTEX_M_CAN2_TX_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN2_TX_ISR)) && (OSEE_CORTEX_M_CAN2_TX_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN2_TX_IRQHandler, OSEE_CORTEX_M_CAN2_TX_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN2_TX_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN2_TX_ISR */

/**
 * CAN2 RX0 interrupts
 */
#if (defined(OSEE_CORTEX_M_CAN2_RX0_ISR_TID)) && (OSEE_CORTEX_M_CAN2_RX0_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN2_RX0_IRQHandler, OSEE_CORTEX_M_CAN2_RX0_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN2_RX0_ISR)) && (OSEE_CORTEX_M_CAN2_RX0_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN2_RX0_IRQHandler, OSEE_CORTEX_M_CAN2_RX0_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN2_RX0_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN2_RX0_ISR */

/**
 * CAN2 RX1 interrupt
 */
#if (defined(OSEE_CORTEX_M_CAN2_RX1_ISR_TID)) && (OSEE_CORTEX_M_CAN2_RX1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN2_RX1_IRQHandler, OSEE_CORTEX_M_CAN2_RX1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN2_RX1_ISR)) && (OSEE_CORTEX_M_CAN2_RX1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN2_RX1_IRQHandler, OSEE_CORTEX_M_CAN2_RX1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN2_RX1_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN2_RX1_ISR */

/**
 * CAN2 SCE interrupt
 */
#if (defined(OSEE_CORTEX_M_CAN2_SCE_ISR_TID)) && (OSEE_CORTEX_M_CAN2_SCE_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CAN2_SCE_IRQHandler, OSEE_CORTEX_M_CAN2_SCE_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CAN2_SCE_ISR)) && (OSEE_CORTEX_M_CAN2_SCE_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CAN2_SCE_IRQHandler, OSEE_CORTEX_M_CAN2_SCE_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CAN2_SCE_IRQHandler)
#endif /* OSEE_CORTEX_M_CAN2_SCE_ISR */

/**
 * USB On The Go FS global interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_FS_ISR_TID)) && (OSEE_CORTEX_M_OTG_FS_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_FS_IRQHandler, OSEE_CORTEX_M_OTG_FS_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_FS_ISR)) && (OSEE_CORTEX_M_OTG_FS_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_FS_IRQHandler, OSEE_CORTEX_M_OTG_FS_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_FS_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_FS_ISR */

/**
 * DMA2 Stream5 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S5_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream5_IRQHandler, OSEE_CORTEX_M_DMA2_S5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S5_ISR)) && (OSEE_CORTEX_M_DMA2_S5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream5_IRQHandler, OSEE_CORTEX_M_DMA2_S5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream5_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S5_ISR */

/**
 * DMA2 Stream6 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S6_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S6_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream6_IRQHandler, OSEE_CORTEX_M_DMA2_S6_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S6_ISR)) && (OSEE_CORTEX_M_DMA2_S6_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream6_IRQHandler, OSEE_CORTEX_M_DMA2_S6_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream6_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S6_ISR */

/**
 * DMA2 Stream7 global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2_S7_ISR_TID)) && (OSEE_CORTEX_M_DMA2_S7_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2_Stream7_IRQHandler, OSEE_CORTEX_M_DMA2_S7_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2_S7_ISR)) && (OSEE_CORTEX_M_DMA2_S7_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2_Stream7_IRQHandler, OSEE_CORTEX_M_DMA2_S7_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2_Stream7_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2_S7_ISR */

/**
 * USART6 global interrupt
 */
#if (defined(OSEE_CORTEX_M_USART6_ISR_TID)) && (OSEE_CORTEX_M_USART6_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(USART6_IRQHandler, OSEE_CORTEX_M_USART6_ISR_TID)
#elif (defined(OSEE_CORTEX_M_USART6_ISR)) && (OSEE_CORTEX_M_USART6_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(USART6_IRQHandler, OSEE_CORTEX_M_USART6_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(USART6_IRQHandler)
#endif /* OSEE_CORTEX_M_USART6_ISR */

/**
 * I2C3 event interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C3_EV_ISR_TID)) && (OSEE_CORTEX_M_I2C3_EV_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C3_EV_IRQHandler, OSEE_CORTEX_M_I2C3_EV_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C3_EV_ISR)) && (OSEE_CORTEX_M_I2C3_EV_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C3_EV_IRQHandler, OSEE_CORTEX_M_I2C3_EV_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C3_EV_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C3_EV_ISR */

/**
 * I2C3 error interrupt
 */
#if (defined(OSEE_CORTEX_M_I2C3_ER_ISR_TID)) && (OSEE_CORTEX_M_I2C3_ER_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(I2C3_ER_IRQHandler, OSEE_CORTEX_M_I2C3_ER_ISR_TID)
#elif (defined(OSEE_CORTEX_M_I2C3_ER_ISR)) && (OSEE_CORTEX_M_I2C3_ER_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(I2C3_ER_IRQHandler, OSEE_CORTEX_M_I2C3_ER_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(I2C3_ER_IRQHandler)
#endif /* OSEE_CORTEX_M_I2C3_ER_ISR */

/**
 * USB On The Go HS End Point 1 Out global interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_TID)) && (OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_HS_EP1_OUT_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR)) && (OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_HS_EP1_OUT_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_HS_EP1_OUT_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_HS_EP1_OUT_ISR */

/**
 * USB On The Go HS End Point 1 In global interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_TID)) && (OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_HS_EP1_IN_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR)) && (OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_HS_EP1_IN_IRQHandler, OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_HS_EP1_IN_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_HS_EP1_IN_ISR */

/**
 * USB On The Go HS Wakeup through EXTI interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_HS_WKUP_ISR_TID)) && (OSEE_CORTEX_M_OTG_HS_WKUP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_HS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_HS_WKUP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_HS_WKUP_ISR)) && (OSEE_CORTEX_M_OTG_HS_WKUP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_HS_WKUP_IRQHandler, OSEE_CORTEX_M_OTG_HS_WKUP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_HS_WKUP_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_HS_WKUP_ISR */

/**
 * USB On The Go HS global interrupt
 */
#if (defined(OSEE_CORTEX_M_OTG_HS_ISR_TID)) && (OSEE_CORTEX_M_OTG_HS_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(OTG_HS_IRQHandler, OSEE_CORTEX_M_OTG_HS_ISR_TID)
#elif (defined(OSEE_CORTEX_M_OTG_HS_ISR)) && (OSEE_CORTEX_M_OTG_HS_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(OTG_HS_IRQHandler, OSEE_CORTEX_M_OTG_HS_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(OTG_HS_IRQHandler)
#endif /* OSEE_CORTEX_M_OTG_HS_ISR */

/**
 * DCMI global interrupt
 */
#if (defined(OSEE_CORTEX_M_DCMI_ISR_TID)) && (OSEE_CORTEX_M_DCMI_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DCMI_IRQHandler, OSEE_CORTEX_M_DCMI_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DCMI_ISR)) && (OSEE_CORTEX_M_DCMI_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DCMI_IRQHandler, OSEE_CORTEX_M_DCMI_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DCMI_IRQHandler)
#endif /* OSEE_CORTEX_M_DCMI_ISR */

/**
 * CRYP global interrupt
 */
#if (defined(OSEE_CORTEX_M_CRYP_ISR_TID)) && (OSEE_CORTEX_M_CRYP_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(CRYP_IRQHandler, OSEE_CORTEX_M_CRYP_ISR_TID)
#elif (defined(OSEE_CORTEX_M_CRYP_ISR)) && (OSEE_CORTEX_M_CRYP_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(CRYP_IRQHandler, OSEE_CORTEX_M_CRYP_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(CRYP_IRQHandler)
#endif /* OSEE_CORTEX_M_CRYP_ISR */

/**
 * Hash and Rng global interrupt
 */
#if (defined(OSEE_CORTEX_M_HASH_RNG_ISR_TID)) && (OSEE_CORTEX_M_HASH_RNG_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(HASH_RNG_IRQHandler, OSEE_CORTEX_M_HASH_RNG_ISR_TID)
#elif (defined(OSEE_CORTEX_M_HASH_RNG_ISR)) && (OSEE_CORTEX_M_HASH_RNG_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(HASH_RNG_IRQHandler, OSEE_CORTEX_M_HASH_RNG_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(HASH_RNG_IRQHandler)
#endif /* OSEE_CORTEX_M_HASH_RNG_ISR */

/**
 * FPU global interrupt
 */
#if (defined(OSEE_CORTEX_M_FPU_ISR_TID)) && (OSEE_CORTEX_M_FPU_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(FPU_IRQHandler, OSEE_CORTEX_M_FPU_ISR_TID)
#elif (defined(OSEE_CORTEX_M_FPU_ISR)) && (OSEE_CORTEX_M_FPU_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(FPU_IRQHandler, OSEE_CORTEX_M_FPU_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(FPU_IRQHandler)
#endif /* OSEE_CORTEX_M_FPU_ISR */

#ifdef	OS_EE_ARCH_CORTEX_M_STM32F429xx

/**
 * UART7 global interrupt
 */
#if (defined(OSEE_CORTEX_M_UART7_ISR_TID)) && (OSEE_CORTEX_M_UART7_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(UART7_IRQHandler, OSEE_CORTEX_M_UART7_ISR_TID)
#elif (defined(OSEE_CORTEX_M_UART7_ISR)) && (OSEE_CORTEX_M_UART7_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(UART7_IRQHandler, OSEE_CORTEX_M_UART7_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(UART7_IRQHandler)
#endif /* OSEE_CORTEX_M_UART7_ISR */

/**
 * UART8 global interrupt
 */
#if (defined(OSEE_CORTEX_M_UART8_ISR_TID)) && (OSEE_CORTEX_M_UART8_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(UART8_IRQHandler, OSEE_CORTEX_M_UART8_ISR_TID)
#elif (defined(OSEE_CORTEX_M_UART8_ISR)) && (OSEE_CORTEX_M_UART8_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(UART8_IRQHandler, OSEE_CORTEX_M_UART8_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(UART8_IRQHandler)
#endif /* OSEE_CORTEX_M_UART8_ISR */

/**
 * SPI4 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI4_ISR_TID)) && (OSEE_CORTEX_M_SPI4_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI4_IRQHandler, OSEE_CORTEX_M_SPI4_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI4_ISR)) && (OSEE_CORTEX_M_SPI4_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI4_IRQHandler, OSEE_CORTEX_M_SPI4_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI4_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI4_ISR */

/**
 * SPI5 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI5_ISR_TID)) && (OSEE_CORTEX_M_SPI5_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI5_IRQHandler, OSEE_CORTEX_M_SPI5_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI5_ISR)) && (OSEE_CORTEX_M_SPI5_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI5_IRQHandler, OSEE_CORTEX_M_SPI5_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI5_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI5_ISR */

/**
 * SPI6 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SPI6_ISR_TID)) && (OSEE_CORTEX_M_SPI6_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SPI6_IRQHandler, OSEE_CORTEX_M_SPI6_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SPI6_ISR)) && (OSEE_CORTEX_M_SPI6_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SPI6_IRQHandler, OSEE_CORTEX_M_SPI6_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SPI6_IRQHandler)
#endif /* OSEE_CORTEX_M_SPI6_ISR */

/**
 * SAI1 global interrupt
 */
#if (defined(OSEE_CORTEX_M_SAI1_ISR_TID)) && (OSEE_CORTEX_M_SAI1_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(SAI1_IRQHandler, OSEE_CORTEX_M_SAI1_ISR_TID)
#elif (defined(OSEE_CORTEX_M_SAI1_ISR)) && (OSEE_CORTEX_M_SAI1_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(SAI1_IRQHandler, OSEE_CORTEX_M_SAI1_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(SAI1_IRQHandler)
#endif /* OSEE_CORTEX_M_SAI1_ISR */

/**
 * LTDC global interrupt
 */
#if (defined(OSEE_CORTEX_M_LTDC_ISR_TID)) && (OSEE_CORTEX_M_LTDC_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(LTDC_IRQHandler, OSEE_CORTEX_M_LTDC_ISR_TID)
#elif (defined(OSEE_CORTEX_M_LTDC_ISR)) && (OSEE_CORTEX_M_LTDC_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(LTDC_IRQHandler, OSEE_CORTEX_M_LTDC_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(LTDC_IRQHandler)
#endif /* OSEE_CORTEX_M_LTDC_ISR */

/**
 * LTDC global error interrupt
 */
#if (defined(OSEE_CORTEX_M_LTDC_ER_ISR_TID)) && (OSEE_CORTEX_M_LTDC_ER_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(LTDC_ER_IRQHandler, OSEE_CORTEX_M_LTDC_ER_ISR_TID)
#elif (defined(OSEE_CORTEX_M_LTDC_ER_ISR)) && (OSEE_CORTEX_M_LTDC_ER_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(LTDC_ER_IRQHandler, OSEE_CORTEX_M_LTDC_ER_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(LTDC_ER_IRQHandler)
#endif /* OSEE_CORTEX_M_LTDC_ER_ISR */

/**
 * DMA2D global interrupt
 */
#if (defined(OSEE_CORTEX_M_DMA2D_ISR_TID)) && (OSEE_CORTEX_M_DMA2D_ISR_CAT == 2)
OSEE_CORTEX_M_ISR2_DEFINITION(DMA2D_IRQHandler, OSEE_CORTEX_M_DMA2D_ISR_TID)
#elif (defined(OSEE_CORTEX_M_DMA2D_ISR)) && (OSEE_CORTEX_M_DMA2D_ISR_CAT == 1)
OSEE_CORTEX_M_ISR1_DEFINITION(DMA2D_IRQHandler, OSEE_CORTEX_M_DMA2D_ISR)
#elif (defined(OSEE_MCU_EXTENDED_STATUS))
OSEE_CORTEX_M_ISR_NOT_DEFINED(DMA2D_IRQHandler)
#endif /* OSEE_CORTEX_M_DMA2D_ISR */

#endif	/* OS_EE_ARCH_CORTEX_M_STM32F429xx */

#endif	/* OSEE_API_DYNAMIC */
