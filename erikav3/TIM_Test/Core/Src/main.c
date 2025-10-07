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

/** \file	code.c
 *  \brief	Main application.
 *
 *  This file contains the code of main application for Erika Enterprise.
 *
 *  \author	Giuseppe Serano
 *  \date	2018
 */

/* ERIKA Enterprise. */
#include "../../Core/Inc/main.h"

OsEE_bool volatile stk_wrong = OSEE_FALSE;
OsEE_addr volatile old_sp;
uint32_t volatile idle_cnt;

extern TASK(Task1); //DeclareTask(Task1); //extern void FuncTask1(void);

extern void idle_hook(void);
extern void StartupHook(void);

#define	IDLE_CNT_MAX	1000000U

void print_sp(TaskType tid, OsEE_addr sp)
{
  static char msg[] = "TASK n SP<0xXXXX>\r\n  ";
  SuspendAllInterrupts();
  sprintf(msg, "TASK %d SP<%p>\r\n", tid, sp);
  ResumeAllInterrupts();
  my_printf(msg);
}

#define OSEE_BREAK_POINT()  do {                                    \
	HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);							\
    DisableAllInterrupts();                                         \
    my_printf("Test Failed!!!, line:" OSEE_S(__LINE__) " \r\n"); 	\
    while ( 1 ) {                                                   \
      ;                                                             \
    }                                                               \
  } while ( 0 )

#define osEE_CheckStackIntegrity() do {		\
	if ( !stk_wrong ) {						\
		if (!old_sp) {						\
			old_sp = osEE_get_SP();			\
		}									\
		else if (old_sp != osEE_get_SP()) {	\
			stk_wrong = OSEE_TRUE;			\
			OSEE_BREAK_POINT();				\
		}									\
	}										\
} while ( 0 ) 								\

void Error_Handler(void)
{
	HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
	while (1){;}
}


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if (htim->Instance == TIM2)
	{
		my_printf("TIM2 ISR\r\n");
	}
}

void SerialISR(void)
{
	HAL_UART_IRQHandler(&husart2);
}

//void TimISR(void)
//{
//	HAL_TIM_IRQHandler(&htim2);
//}

void DmaISR(void){

	HAL_DMA_IRQHandler(&hdma_tim3_up);

}

void MX_GPIO_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    __HAL_RCC_GPIOD_CLK_ENABLE();

    GPIO_InitStruct.Pin = GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);
}

void StartupHook(void)
{
	//DemoHAL_SerialInit();
	//MX_USART2_UART_Init();
}

void idle_hook(void)
{
	osEE_CheckStackIntegrity();

	++idle_cnt;
	if (idle_cnt >= IDLE_CNT_MAX) {
		idle_cnt = 0;

		CallTrustedFunction();

		comp_true();
		comp_false();
		if_else_true();
		if_else_false();
		access_near();
		access_far();

		DEFINE_VICTIM(s_comp_true, comp_true);
		accurate_trace_time(&s_comp_true);

		DEFINE_VICTIM(s_comp_false, comp_false);
		accurate_trace_time(&s_comp_false);

		DEFINE_VICTIM(s_if_else_true, if_else_true);
		accurate_trace_time(&s_if_else_true);

		DEFINE_VICTIM(s_if_else_false, if_else_false);
		accurate_trace_time(&s_if_else_false);

		DEFINE_VICTIM(s_access_near, access_near);
		accurate_trace_time(&s_access_near);

		DEFINE_VICTIM(s_access_far, access_far);
		accurate_trace_time(&s_access_far);

		my_printf("Time func comp t : %d \r\n", measure_time(comp_true));
		my_printf("Time func comp f : %d \r\n", measure_time(comp_false));
		my_printf("Time func if t   : %d \r\n", measure_time(if_else_true));
		my_printf("Time func if f   : %d \r\n", measure_time(if_else_false));
		my_printf("Time func near   : %d \r\n", measure_time(access_near));
		my_printf("Time func far    : %d \r\n", measure_time(access_far));

		while(1){

		}
		my_printf("Idle\r\n");
		//ActivateTask(Task1);
		//ActivateTask(Task2);

		HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
	}

	//DemoHAL_MainFunction();
}


int main(void)
{
	HAL_Init();

	SysTick->CTRL = 0; //Disable systick

	SystemClock_Config();

	MX_DMA_Init();
	MX_TIM3_Init();
	MX_TIM7_Init();

	//MX_TIM2_Init();
	MX_GPIO_Init();
	MX_USART2_Init();

	//HAL_TIM_Base_Start_IT(&htim2);

	StartOS(OSDEFAULTAPPMODE);

	return 0;
}
