/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "icache.h"
#include "usart.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "secure_interface.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */


#define TO_STRING(name) #name
#define PRINT_MACRO(x) TO_STRING(x)

#define DEFINE_VICTIM(struct_name, func) \
    sVictimFunc struct_name = {func, #func, measure_time(func)}


typedef struct {
    void (*func)(void);
    const char* name;
    unsigned int time;
}sVictimFunc;


#define BUFFER_SIZE              1000
//stored in SRAM
// static uint32_t src_zeros[BUFFER_SIZE]=
// {
// 	0,0,0,0,0,0,0,0,0,0, // 1
// 	0,0,0,0,0,0,0,0,0,0, // 2
// 	0,0,0,0,0,0,0,0,0,0, // 3
// 	0,0,0,0,0,0,0,0,0,0, // 4
// 	0,0,0,0,0,0,0,0,0,0, // 5
// 	0,0,0,0,0,0,0,0,0,0, // 6
// 	0,0,0,0,0,0,0,0,0,0, // 7
// 	0,0,0,0,0,0,0,0,0,0, // 8
// 	0,0,0,0,0,0,0,0,0,0, // 9
// 	0,0,0,0,0,0,0,0,0,0, // 10
// 	0,0,0,0,0,0,0,0,0,0, // 11
// 	0,0,0,0,0,0,0,0,0,0, // 12
// 	0,0,0,0,0,0,0,0,0,0, // 13
// 	0,0,0,0,0,0,0,0,0,0, // 14
// 	0,0,0,0,0,0,0,0,0,0, // 15
// 	0,0,0,0,0,0,0,0,0,0, // 16
// 	0,0,0,0,0,0,0,0,0,0, // 17
// 	0,0,0,0,0,0,0,0,0,0, // 18
// 	0,0,0,0,0,0,0,0,0,0, // 19
// 	0,0,0,0,0,0,0,0,0,0, // 20
// 	0,0,0,0,0,0,0,0,0,0, // 1
// 	0,0,0,0,0,0,0,0,0,0, // 2
// 	0,0,0,0,0,0,0,0,0,0, // 3
// 	0,0,0,0,0,0,0,0,0,0, // 4
// 	0,0,0,0,0,0,0,0,0,0, // 5
// 	0,0,0,0,0,0,0,0,0,0, // 6
// 	0,0,0,0,0,0,0,0,0,0, // 7
// 	0,0,0,0,0,0,0,0,0,0, // 8
// 	0,0,0,0,0,0,0,0,0,0, // 9
// 	0,0,0,0,0,0,0,0,0,0, // 10
// 	0,0,0,0,0,0,0,0,0,0, // 11
// 	0,0,0,0,0,0,0,0,0,0, // 12
// 	0,0,0,0,0,0,0,0,0,0, // 13
// 	0,0,0,0,0,0,0,0,0,0, // 14
// 	0,0,0,0,0,0,0,0,0,0, // 15
// 	0,0,0,0,0,0,0,0,0,0, // 16
// 	0,0,0,0,0,0,0,0,0,0, // 17
// 	0,0,0,0,0,0,0,0,0,0, // 18
// 	0,0,0,0,0,0,0,0,0,0, // 19
// 	0,0,0,0,0,0,0,0,0,0 // 20
// };

// static uint32_t src[BUFFER_SIZE]=
// {
// 	1,2,3,4,5,6,7,8,9,10, // 1
// 	1,2,3,4,5,6,7,8,9,10, // 2
// 	1,2,3,4,5,6,7,8,9,10, // 3
// 	1,2,3,4,5,6,7,8,9,10, // 4
// 	1,2,3,4,5,6,7,8,9,10, // 5
// 	1,2,3,4,5,6,7,8,9,10, // 6
// 	1,2,3,4,5,6,7,8,9,10, // 7
// 	1,2,3,4,5,6,7,8,9,10, // 8
// 	1,2,3,4,5,6,7,8,9,10, // 9
// 	1,2,3,4,5,6,7,8,9,10, // 10
// 	1,2,3,4,5,6,7,8,9,10, // 11
// 	1,2,3,4,5,6,7,8,9,10, // 12
// 	1,2,3,4,5,6,7,8,9,10, // 13
// 	1,2,3,4,5,6,7,8,9,10, // 14
// 	1,2,3,4,5,6,7,8,9,10, // 15
// 	1,2,3,4,5,6,7,8,9,10, // 16
// 	1,2,3,4,5,6,7,8,9,10, // 17
// 	1,2,3,4,5,6,7,8,9,10, // 18
// 	1,2,3,4,5,6,7,8,9,10, // 19
// 	1,2,3,4,5,6,7,8,9,10, // 20
// 	1,2,3,4,5,6,7,8,9,10, // 1
// 	1,2,3,4,5,6,7,8,9,10, // 2
// 	1,2,3,4,5,6,7,8,9,10, // 3
// 	1,2,3,4,5,6,7,8,9,10, // 4
// 	1,2,3,4,5,6,7,8,9,10, // 5
// 	1,2,3,4,5,6,7,8,9,10, // 6
// 	1,2,3,4,5,6,7,8,9,10, // 7
// 	1,2,3,4,5,6,7,8,9,10, // 8
// 	1,2,3,4,5,6,7,8,9,10, // 9
// 	1,2,3,4,5,6,7,8,9,10, // 10
// 	1,2,3,4,5,6,7,8,9,10, // 11
// 	1,2,3,4,5,6,7,8,9,10, // 12
// 	1,2,3,4,5,6,7,8,9,10, // 13
// 	1,2,3,4,5,6,7,8,9,10, // 14
// 	1,2,3,4,5,6,7,8,9,10, // 15
// 	1,2,3,4,5,6,7,8,9,10, // 16
// 	1,2,3,4,5,6,7,8,9,10, // 17
// 	1,2,3,4,5,6,7,8,9,10, // 18
// 	1,2,3,4,5,6,7,8,9,10, // 19
// 	1,2,3,4,5,6,7,8,9,10 // 20
// };

//IN SRAM
#define N_SHFTS 9
#define MAX_SECRET 256
static uint32_t dst[N_SHFTS][BUFFER_SIZE];
static uint32_t dst_covert[BUFFER_SIZE] = {0};
static uint32_t dst2[BUFFER_SIZE];
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
#include "string.h"
#include "stdio.h"
#include "stdlib.h"
#include "time.h"

int __io_putchar(int ch){ // printf
	HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
return ch;
}
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

#define PROFILE 40 // 0x40001400+0x24
volatile int time1 = 0, time2 = 0, *ptr_cnt = &TIM7->CNT, result, 
              *tim6_cnt = 0x40001000+0x24 ;

static void TransferComplete(DMA_HandleTypeDef *DmaHandle)
{
  /* Turn LED4 on: Transfer correct */
  // printf("time1 %d, dst[0] %d, dst[1] %d \n", time1, dst[0], dst[1]);
  // for(int i=1; i<PROFILE; i++)
  //   printf("Vector %d = %d | diff = %d\n ", i, dst[i], dst[i]-dst[i-1]);
  __HAL_DMA_DISABLE(DmaHandle);
}
static void TransferComplete2(DMA_HandleTypeDef *DmaHandle)
{
  /* Turn LED4 on: Transfer correct */
  // for(int i=1; i<PROFILE; i++)
    // printf("Vector %d = %d | diff = %d | Vector %d = %d | diff = %d | diff between vectors = %d \n ", i, dst[i], dst[i]-dst[i-1], i, dst2[i], dst2[i]-dst2[i-1], dst2[i-1] - dst[i-1]);
  __HAL_DMA_DISABLE(DmaHandle);
}

// this time was measure using this function -> ldr_time_from_timer
#define LDR_TIME_FROM_TIMER 3
__attribute__((optimize(0))) int ldr_time_from_timer(){
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  HAL_TIM_Base_Start(&htim7);
  r4 = ptr_cnt;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r4]");
  __asm("ldr r6, [r4]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from a APB Timer : %d, (%d,%d)\n", r6-r5, r5,r6 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int ldr_time_from_systick(){
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  HAL_TIM_Base_Start(&htim7);
  r4 = 0xE000E018;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r4]");
  __asm("ldr r6, [r4]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from a APB Timer : %d, (%d,%d)\n", r6-r5, r5,r6 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int ldr_time_from_SRAM1_plus_mov_addr(){
  register int r3 __asm("r3");
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  register int r7 __asm("r7");
  register int r8 __asm("r8");
  register int r9 __asm("r9");
  HAL_TIM_Base_Start(&htim7);
  r3 = ptr_cnt;
  r4 = 0x20018000;
  r8 = 0x20018100;
  r9 = 0x20018000;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r3]");
    __asm("mov r4, #0x8000");   // 1 clock
    __asm("movt r4,  #0x2001"); // 1 clock
    __asm("ldr r6, [r4]"); // 2 clock -> first load is 2 clocks
    __asm("ldr r6, [r4]"); // 1 clock -> 1 clock because -> Neighboring load and store single instructions can pipeline their address and data phases. This enables these instructions to complete in a single execution cycle. From -> https://developer.arm.com/documentation/ddi0439/b/CHDDIGAC
    __asm("ldr r6, [r4]"); // 1 clock
    //__asm("ldr r6, [r4]"); // 1 clock
    __asm("mov r0,r0");
    __asm("ldr r6, [r4]"); // 1 clock |-> Collision
  __asm("ldr r7, [r3]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r7-r5-LDR_TIME_FROM_TIMER, r5,r7 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int ldr_time_from_SRAM1(){
  register int r3 __asm("r3");
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  register int r7 __asm("r7");
  register int r8 __asm("r8");
  register int r9 __asm("r9");
  HAL_TIM_Base_Start(&htim7);
  r3 = ptr_cnt;
  r4 = 0x20018000;
  r8 = 0x20018100;
  r9 = 0x20018000;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r3]");
  __asm("ldr r6, [r4]"); // from SRAM 2
  __asm("ldr r6, [r8]"); // from SRAM 1
  __asm("ldr r6, [r4]"); // from SRAM 1
  __asm("ldr r6, [r8]"); // from SRAM 1
  __asm("ldr r6, [r4]"); // from SRAM 1
  __asm("ldr r6, [r8]"); // from SRAM 1
  __asm("ldr r6, [r4]"); // from SRAM 1
  __asm("ldr r6, [r8]"); // from SRAM 1
  __asm("ldr r7, [r3]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r7-r5-LDR_TIME_FROM_TIMER, r5,r7 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int ldr_time_from_SRAM1_systick(){
  register int r3 __asm("r3");
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  register int r7 __asm("r7");
  register int r8 __asm("r8");
  register int r9 __asm("r9");
  HAL_TIM_Base_Start(&htim7);
  r3 = 0xE000E018;
  r4 = 0x20018000;
  r8 = 0x20018100;
  r9 = 0x20018000;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r3]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r7, [r3]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r7-r5-LDR_TIME_FROM_TIMER, r5,r7 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

// this time was measure using this function -> ldr_time_from_SRAM
#define LDR_TIME_FROM_SRAM 3
__attribute__((optimize(0))) int ldr_time_from_SRAM1_SRAM2(){
  register int r3 __asm("r3");
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  register int r7 __asm("r7");
  register int r8 __asm("r8");
  register int r9 __asm("r9");
  HAL_TIM_Base_Start(&htim7);
  r3 = ptr_cnt;
  r4 = 0x20030000;
  r8 = 0x20018000;
  r9 = 0x20018000;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r3]");
  __asm("ldr r6, [r4]"); // from SRAM 2
  __asm("ldr r6, [r8]"); // from SRAM 2
  __asm("ldr r6, [r4]"); // from SRAM 2
  __asm("ldr r6, [r8]"); // from SRAM 2
  __asm("ldr r6, [r4]"); // from SRAM 2
  __asm("ldr r6, [r8]"); // from SRAM 2
  __asm("ldr r6, [r4]"); // from SRAM 2
  __asm("ldr r6, [r8]"); // from SRAM 2
  __asm("ldr r7, [r3]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r7-r5-LDR_TIME_FROM_TIMER, r5,r7 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int ldr_time_from_SRAM1_SRAM2_systick(){
  register int r3 __asm("r3");
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  register int r7 __asm("r7");
  register int r8 __asm("r8");
  register int r9 __asm("r9");
  HAL_TIM_Base_Start(&htim7);
  r3 = 0xE000E018;
  r4 = 0x20030000;
  r8 = 0x20018000;
  r9 = 0x20018000;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r3]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r6, [r4]");
  __asm("ldr r6, [r8]");
  __asm("ldr r7, [r3]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r7-r5-LDR_TIME_FROM_TIMER, r5,r7 );
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
}

__attribute__((optimize(0))) int time_to_enable_dma(){
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  HAL_TIM_Base_Start(&htim7);
  r4 = ptr_cnt;
  // Instructions To Measure ---------------------------------------------------
  __asm("ldr r5, [r4]");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("ldr r6, [r4]");
  // ---------------------------------------------------------------------------
  printf("Time to ldr from SRAM : %d (%d,%d)\n", r6-r5-LDR_TIME_FROM_TIMER, r5,r6 );
  HAL_TIM_Base_Stop(&htim7);
  __HAL_DMA_DISABLE(&hdma_memtomem_dma1_channel1);
  *ptr_cnt = 0;
}
//******************************************************************************
// DMA setup code
//******************************************************************************
#define SETUP_COLLISION_RAM1()do { \
    __asm("mov r0, #0x8000"); \
    __asm("movt r0,  #0x2001"); \
} while(0)

#define SETUP_NO_COLLISION_RAM2()do { \
    __asm("mov r0, #0x0000"); \
    __asm("movt r0, #0x2003"); \
} while(0)

// #define TEN_LDRS() do { \     x0  x1  x2  x3  x4  x5  x6  x7  x8
// 2    __asm("ldr r1, [r0]");\  -   x   x   -   -   -   -   -   -
// 3	  __asm("ldr r1, [r0]"); \  -   -   -   x   -   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   N   -   -   -   -
// 5	  __asm("ldr r1, [r0]"); \  -   -   -   -   -   x   -   -   -
// 6	  __asm("ldr r1, [r0]"); \  -   -   -   -   -   -   x   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   N   -
// 8 	__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   x
// 9 	__asm("ldr r1, [r0]"); \  x   -   -   -   -   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -

//     __asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 13  __asm("ldr r1, [r0]"); \  -   x   x   x   x   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
//     __asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 16  __asm("ldr r1, [r0]"); \  -   -   -   -   -   x   x   x   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 19  __asm("ldr r1, [r0]"); \  x   -   -   -   -   -   -   -   x
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 		__asm("ldr r1, [r0]"); \  -   -   -   -   -   -   -   -   -
// 		                       \  -   -   -   -   -   -   -   -   -
// 23	                       \  -   x   x   x   x   -   -   -   -
// 	} while(0)

#define TEN_LDRS() do { \
     __asm("ldr r1, [r0]");\
    __asm("ldr r1, [r0]"); \
		__asm("ldr r1, [r0]"); \
	  __asm("ldr r1, [r0]"); \
	  __asm("ldr r1, [r0]"); \
		__asm("ldr r1, [r0]"); \
 	  __asm("ldr r1, [r0]"); \
 	  __asm("ldr r1, [r0]"); \
		__asm("ldr r1, [r0]"); \
		__asm("ldr r1, [r0]"); \
	} while(0)


// #define TEN_LDRS() do { \
//     __asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 		__asm("ldr r1, [r0]"); \
// 	} while(0)

// "nop" instruction cannot used, because it is not reliable! Sometimes it
// last 1 clock other times 0 clocks. Even with -o0 and the actual nop being
// present in the asm code. I think the processor sometimes does not execute the
// nop instructions
#define MY_NOP()  __asm volatile("mov r8,r8")

#define TEN_NOPS()do {\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
	} while(0)

//******************************************************************************
// DMA Side-Channel with shifts
//******************************************************************************
__attribute__((optimize(0))) void ten_ldrs(){

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func0(){

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func1(){
  MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}
__attribute__((optimize(0))) void func2(){
  MY_NOP();
  MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func3(){
  MY_NOP();
  MY_NOP();
    MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func4(){
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func5(){
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();
  MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func6(){
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();
  MY_NOP();
  MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func7(){
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();
  MY_NOP();
  MY_NOP();
    MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

__attribute__((optimize(0))) void func8(){
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();
  MY_NOP();
  MY_NOP();
    MY_NOP();
    MY_NOP();

  SETUP_COLLISION_RAM1();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
  TEN_LDRS();
}

void DMA_Side_Channel_w_Shifts(){
  void (*func[N_SHFTS])(void) = {func0, func1, func2, func3, func4,
                                  func5, func6, func7, func8};
    void (*func_ptr)(void);

    HAL_DMA_RegisterCallback(&hdma_memtomem_dma1_channel1, HAL_DMA_XFER_CPLT_CB_ID, TransferComplete);

    //init, push functions to cache
    for(int shift=0; shift < N_SHFTS; shift++){
      func_ptr = func[shift];
      func_ptr();
    }

    for(int shift=0; shift < N_SHFTS; shift++){
      func_ptr = func[shift];
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt, (uint32_t)&dst[shift], PROFILE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      //need to be functions to save the context
      //func0();
      ten_ldrs();
      HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
    }
    for (int i = 0; i < N_SHFTS; i++)
    {
      for(int j=1; j<PROFILE; j++)
        // x -> shift | y -> dma read | Time diference -> Format for gnuplot
        printf("%d %d %d\n", i, j, dst[i][j] ? dst[i][j]-dst[i][j-1] : 0 );
        //printf("%d %d %d %d\n", i, j,  dst[i][j], dst[i][j] ? dst[i][j]-dst[i][j-1] : 0 );
        //printf("Vector %d = %d | diff = %d\n ", j, dst[i][j], dst[i][j]-dst[i][j-1]);
      printf("\n");
    }
}
//******************************************************************************


//******************************************************************************
// DMA Covert-Channel
//******************************************************************************
__attribute__((optimize(0))) void trojan_ns(int s){
  int i;
  for(i=0;i<MAX_SECRET; i++){
    if(i < s)
      SETUP_COLLISION_RAM1();
    else
      SETUP_NO_COLLISION_RAM2();
    TEN_LDRS();
  }
}

void DMA_Covert_Channel(){
  HAL_DMA_RegisterCallback(&hdma_memtomem_dma1_channel1,
                            HAL_DMA_XFER_CPLT_CB_ID, TransferComplete);
    int secret = 0;

    int number_of_collisions = 0;
    for(int s=0; s < MAX_SECRET; s++){
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      trojan_s(s);
      //trojan_ns(s);
      HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      number_of_collisions = 0;
      for(int j=1; j<BUFFER_SIZE; j++){
        // x -> shift | y -> dma read | Time diference -> Format for gnuplot
        number_of_collisions += (dst_covert[j]-dst_covert[j-1] > 9 ? 1 : 0) ;
        //printf("%d %d\n", j, dst_covert[j]-dst_covert[j-1] );
      }
      printf("%d %d\n", s, number_of_collisions);
    }
}
//******************************************************************************
// measure collision point
//******************************************************************************
#define PRINT_N_BUFFER 20

#define COLLISION_CLOCK_1() do { \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_2() do { \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_3() do { \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_4() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_5() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_6() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_7() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_8() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_9() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_10() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_11() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_12() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_13() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_14() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_15() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

#define COLLISION_CLOCK_16() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
    __asm("ldr r1, [r0]"); \
	} while(0)

// 600 Nops
#define NOPS_TO_AVOID_COLLISIONS() do { \
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
	} while(0)

//print in a separeted function to avoid crash due to corruption of the regs
void print(){
  for(int j=1; j<PRINT_N_BUFFER; j++){
    // x -> shift | y -> dma read | Time diference -> Format for gnuplot
    //number_of_collisions += (dst_covert[j]-dst_covert[j-1] > 9 ? 1 : 0) ;
    printf("%d %d\n", j, dst_covert[j]-dst_covert[j-1] );
    // printf("%d %d\n", j, dst_covert[j-1] );

  }
  printf("\n");
}

void collide(){
  printf("collide\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  __asm("ldr r1, [r0]"); // 2 clock -> first load is 2 clocks
  __asm("ldr r1, [r0]"); // 1 clock -> 1 clock because -> Neighboring load and store single instructions can pipeline their address and data phases. This enables these instructions to complete in a single execution cycle. From -> https://developer.arm.com/documentation/ddi0439/b/CHDDIGAC
  __asm("ldr r1, [r0]"); // 1 clock
  __asm("ldr r1, [r0]"); // 1 clock
    __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision

  // __asm("ldr r1, [r0]"); // 2 clock -> 2 clocks because the stream of laods was interrupt
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision

  //  __asm("ldr r1, [r0]"); // 2 clock -> 2 clocks because the stream of laods was interrupt
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision

  //  __asm("ldr r1, [r0]"); // 2 clock -> 2 clocks because the stream of laods was interrupt
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  // __asm("ldr r1, [r0]"); // 1 clock
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision


  NOPS_TO_AVOID_COLLISIONS();

  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void collide_new_nop(){
  printf("collide_new_nop\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  __asm("mov r8,r8"); // 1 clock
  __asm("mov r8,r8"); // 1 clock
  __asm("mov r8,r8"); // 1 clock
  __asm("mov r8,r8"); // 1 clock
    __asm("ldr r1, [r0]"); // 2 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision

  NOPS_TO_AVOID_COLLISIONS();

  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void not_collide_new_nop(){
  printf("collide_new_nop\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  __asm("mov r8,r8"); // 1 clock
  __asm("mov r8,r8");// 1 clock
  __asm("mov r8,r8");// 1 clock
    __asm("ldr r1, [r0]"); // 2 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision
  //   __asm("ldr r1, [r0]"); // 1 clock |-> Collision

  NOPS_TO_AVOID_COLLISIONS();

  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}


void measure_collision_point_1(){
  printf("measure_collision_point_1\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_2(){
  printf("measure_collision_point_2\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_3(){
  printf("measure_collision_point_3\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_4(){
  printf("measure_collision_point_4\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 4
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 5
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 6
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_5(){
  printf("measure_collision_point_5\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 5
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 7 Não cria collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_6(){
  printf("measure_collision_point_6\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 7 collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision 8
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_7(){
  printf("measure_collision_point_7\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision  7 collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_8(){
  printf("measure_collision_point_8\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_9(){
  printf("measure_collision_point_9\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  __asm("ldr r1, [r0]");      // 1 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

//-----------------------------------------------------------------------------
// 10
//-----------------------------------------------------------------------------

void measure_collision_point_10(){
  printf("measure_collision_point_10\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
    void measure_collision_point_10_1(){
      printf("measure_collision_point_10_1\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_1();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_2(){
      printf("measure_collision_point_10_2\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_2();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_3(){
      printf("measure_collision_point_10_3\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_3();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_4(){
      printf("measure_collision_point_10_4\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_4();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_5(){
      printf("measure_collision_point_10_5\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_5();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_6(){
      printf("measure_collision_point_10_6\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_6();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_7(){
      printf("measure_collision_point_10_7\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_7();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_8(){
      printf("measure_collision_point_10_8\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_8();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_9(){
      printf("measure_collision_point_10_9\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_9();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_10(){
      printf("measure_collision_point_10_10\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_10();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_11(){
      printf("measure_collision_point_10_11\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_11();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_12(){
      printf("measure_collision_point_10_12\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_12();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_13(){
      printf("measure_collision_point_10_13\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_13();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_14(){
      printf("measure_collision_point_10_14\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_14();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_15(){
      printf("measure_collision_point_10_15\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_15();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }

    void measure_collision_point_10_16(){
      printf("measure_collision_point_10_16\n");
      HAL_TIM_Base_Start(&htim7);
      HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                    (uint32_t)&dst_covert, BUFFER_SIZE);
      __asm("DMB");
      __asm("DSB");
      __asm("ISB");
      __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
      __asm("mov r0, #0x8000");   // 1 clock
      __asm("movt r0,  #0x2001"); // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      MY_NOP();               // 1 clock
      __asm("ldr r1, [r0]");      // 2 clocks -> collision
      COLLISION_CLOCK_16();
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
      HAL_TIM_Base_Stop(&htim7);
      *ptr_cnt = 0;
      print();
    }



//-----------------------------------------------------------------------------
// 11
//-----------------------------------------------------------------------------
void measure_collision_point_11(){
  printf("measure_collision_point_11\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

//-----------------------------------------------------------------------------
// 12
//-----------------------------------------------------------------------------
void measure_collision_point_12(){
  printf("measure_collision_point_12\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void measure_collision_point_13(){
  printf("measure_collision_point_13\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_14(){
  printf("measure_collision_point_14\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_15(){
  printf("measure_collision_point_15\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_16(){
  printf("measure_collision_point_16\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void measure_collision_point_17(){
  printf("measure_collision_point_17\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2001"); // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void measure_collision_9_NOPS(){
  printf("measure_collision_9_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_8_NOPS(){
  printf("measure_collision_8_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_7_NOPS(){
  printf("measure_collision_7_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_6_NOPS(){
  printf("measure_collision_6_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_5_NOPS(){
  printf("measure_collision_5_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_4_NOPS(){
  printf("measure_collision_4_NOPS\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock

  __asm volatile("mov r0, #0x8000");   // 1 clock
  __asm volatile("movt r0,  #0x2001"); // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("mov r8, #1");   // 1 clock
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("ldr r1, [r0]");      // 1 clocks -> collision
  __asm volatile("mov r8, #1");   // 1 clock
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}

void measure_collision_point_6_STR(){
  printf("measure_collision_point_6_STR\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2002"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_7_STR(){
  printf("measure_collision_point_7_STR\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2002"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_8_STR(){
  printf("measure_collision_point_8_STR\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2002"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}
void measure_collision_point_9_STR(){
  printf("measure_collision_point_9_STR\n");
  HAL_TIM_Base_Start(&htim7);
  HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,
                (uint32_t)&dst_covert, BUFFER_SIZE);
  __asm("DMB");
  __asm("DSB");
  __asm("ISB");
  __asm("mov r0, #0x8000");   // 1 clock
  __asm("movt r0,  #0x2002"); // 1 clock
  __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  MY_NOP();               // 1 clock
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  __asm("ldr r1, [r0]");      // 2 clocks -> collision 6
  NOPS_TO_AVOID_COLLISIONS();
  HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);
  HAL_TIM_Base_Stop(&htim7);
  *ptr_cnt = 0;
  print();
}


void collisions_str(){
  // measure_collision_point_5();
  measure_collision_point_6_STR();
  measure_collision_point_7_STR();
  measure_collision_point_8_STR();
  measure_collision_point_9_STR();
  // measure_collision_point_10();
}

void collisions_1st(){
  // measure_collision_point_1();
  // measure_collision_point_2();
  // measure_collision_point_3();
  // measure_collision_point_4();
  // measure_collision_point_5();
  // measure_collision_point_6();
  // measure_collision_point_7();
  // measure_collision_point_8();
  // measure_collision_point_9();
  // measure_collision_point_10();
  // measure_collision_point_11();
  // measure_collision_point_12();
  // measure_collision_point_13();
  // measure_collision_point_14();
  // measure_collision_point_15();
  // measure_collision_point_16();
  // measure_collision_point_17();
  measure_collision_9_NOPS();
  measure_collision_8_NOPS();
  measure_collision_7_NOPS();
  measure_collision_6_NOPS();
  measure_collision_5_NOPS();
  measure_collision_4_NOPS();
}
// 1st iteration gave collision in 10,11 adn 12 clock, let's find next collision
void collisions_2nd(){
  measure_collision_point_1();
  measure_collision_point_2();
  measure_collision_point_3();
  measure_collision_point_4();
  measure_collision_point_5();
  measure_collision_point_6();
  measure_collision_point_7();
  measure_collision_point_8();
  measure_collision_point_9();
  measure_collision_point_10();
  // measure_collision_point_11();
  // measure_collision_point_12();
  // measure_collision_point_13();
  // measure_collision_point_14();
 // measure_collision_point_15();
  //measure_collision_point_10();
    // measure_collision_point_10_1();
    // measure_collision_point_10_2();
    // measure_collision_point_10_3();
    // measure_collision_point_10_4();
    // measure_collision_point_10_5();
    // measure_collision_point_10_6();
    // measure_collision_point_10_7();
    // measure_collision_point_10_8();
    // measure_collision_point_10_9();
    // measure_collision_point_10_10();
    // measure_collision_point_10_11();
    // measure_collision_point_10_12();
    // measure_collision_point_10_13();
    // measure_collision_point_10_14();
    // measure_collision_point_10_15();
    // measure_collision_point_10_16();

 // measure_collision_point_11();
    // measure_collision_point_11_8();
    // measure_collision_point_11_9();
    // measure_collision_point_11_10();

  //measure_collision_point_12();
    // measure_collision_point_12_8();
    // measure_collision_point_12_9();
    // measure_collision_point_12_10();
}

//******************************************************************************
// DMA Side-Channel -> Tracing
//******************************************************************************

#define START_TRACE() do{                                           \
    HAL_TIM_Base_Start(&htim7);                                     \
    HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t)ptr_cnt,  \
                (uint32_t)&dst_covert, BUFFER_SIZE);                \
    __asm("DMB");                                                   \
    __asm("DSB");                                                   \
    __asm("ISB");                                                   \
    __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);                 \
  }while(0)

#define END_TRACE() do{                                            \
    HAL_DMA_Abort(&hdma_memtomem_dma1_channel1);                   \
    HAL_TIM_Base_Stop(&htim7);                                     \
    *ptr_cnt = 0;                                                  \
  }while(0)

// ------------------------- MACROS FOR SHIFTS AND DELAYS ----------------------
#define DELAY_6_CLOCKS() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
	} while(0)

#define SHIFT_1_CLOCK() MY_NOP()

#define SHIFT_2_CLOCKS() do { \
    SHIFT_1_CLOCK(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_3_CLOCKS() do { \
    SHIFT_2_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_4_CLOCKS() do { \
    SHIFT_3_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_5_CLOCKS() do { \
    SHIFT_4_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_6_CLOCKS() do { \
    SHIFT_5_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_7_CLOCKS() do { \
    SHIFT_6_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_8_CLOCKS() do { \
    SHIFT_7_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_9_CLOCKS() do { \
    SHIFT_8_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

#define SHIFT_10_CLOCKS() do { \
    SHIFT_9_CLOCKS(); \
    SHIFT_1_CLOCK(); \
  } while(0)

// ------------------------- START VICTIM TEST IMPLEMENTATION ------------------
#define TEN_STRS() do { \
    __asm("str r1, [r0]");\
    __asm("str r1, [r0]"); \
		__asm("str r1, [r0]"); \
	  __asm("str r1, [r0]"); \
	  __asm("str r1, [r0]"); \
		__asm("str r1, [r0]"); \
 	  __asm("str r1, [r0]"); \
 	  __asm("str r1, [r0]"); \
		__asm("str r1, [r0]"); \
		__asm("str r1, [r0]"); \
	} while(0)

// 9
// 12
// 11
// 10
// 9
// 11
// 10
// 9
// 11
// 10
#define ALL_CASE_COLLISIONS_LDRS() do { \
		__asm("mov r0, #0x8000");  \
		__asm("movt r0,  #0x2001"); \
		TEN_LDRS(); \
	} while(0)

// 9
// 12
// 11
// 10
// 9
// 11
// 10
// 9
// 11
// 10
#define ALL_CASE_COLLISIONS_STR() do { \
		__asm("mov r0, #0x8000");  \
		__asm("movt r0,  #0x2002"); \
		TEN_STRS(); \
	} while(0)


  #define MIX_STRS_NOPS() do { \
    __asm("mov r0, #0x8000");  \
		__asm("movt r0,  #0x2002");\
    __asm("ldr r1, [r0]"); \
	__asm("movt r8,  #0x1"); \
		__asm("ldr r1, [r0]"); \
	__asm("movt r8,  #0x1"); \
    __asm("ldr r1, [r0]"); \
	__asm("movt r8,  #0x1"); \
		__asm("ldr r1, [r0]"); \
	__asm("movt r8,  #0x1"); \
	} while(0)


#define LDR_NOP_LDR() do { \
    printf("asudhlkjhadlkjhadlkajshdlkajsdhlkajhdlakjdshalksdj\n");\
	} while(0)

  __attribute__((naked)) void check_speculative_reads(){
    __asm("mov r3, #0");
      __asm("cmp r3, #0");
      __asm("beq.n LABEL_VICTIM");
        __asm("ldr	r3, [r7, #4]");
        __asm("ldr	r3, [r7, #0]");
      __asm("LABEL_VICTIM: mov r3, #0");
        __asm("mov r3, #0");\
        __asm("mov r3, #0");\
        __asm("bx lr");\
  }

//  int *num1 = (int*)0x20019000,
//       *num2 = (int*)0x20019004,
// 	  *max = (int*)0x20019008;

// #define VICTIM() do { \
//   *num1 = 543;\
//   *num2 = 23; \
//   if((*num1>*num2))\
//       max = *num1;\
//    else \
//       max = *num2;\
// 	} while(0)

int x;
int secret = 10, y;

  // #define VICTIM() ALL_CASE_COLLISIONS_LDRS()
  // #define VICTIM() ALL_CASE_COLLISIONS_STR()

  // #define VICTIM() MIX_LDRS_NOPS()
  // #define VICTIM() MIX_STRS_NOPS()
  // #define VICTIM() MIX_STRS_LDRS()
  #define VICTIM() victim()

  // #define VICTIM() check_speculative_reads()

  // #define VICTIM() do { \
  //    __asm("mov r3, #0");\
  //    __asm("cmp r3, #0");\
  //    __asm("beq.n LABEL_VICTIM");\
  //       __asm("ldr	r3, [r7, #4]");\
  //       __asm("ldr	r3, [r7, #0]");\
  //    __asm("LABEL_VICTIM: mov r3, #0");\
  //       __asm("mov r3, #0");\
  //       __asm("mov r3, #0");\
  // 	} while(0)

  // #define VICTIM()
 //#define VICTIM() LDR_NOP_LDR()
// #define VICTIM() do { \
//   if(secret == x)\
//     y = x;\
//   else  \
//     y =0; \
// 	} while(0)
// ------------------------- FUNCTIONS FOR SLIDING WINDOW TRACING --------------
//
// Left shitfs, because Dma always starts at same time
// First collision will be missed
// Collisions happen in clock 7 and 8 (fisrt collision is in clock 7)
//
// Collisions                        | X   X                               X    X
// CPU clock  1   2   3   4   5   6  | 7   8   9   1   2   3   4   5   6   7    8   9
// DMA READ  |-------------READ 1---------------| |-------------READ 2--------------|
// 0 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop nop nop  V    V   V
// 1 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop nop  V   V    V   V
// 2 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop  V   V   V    V   V
// 3 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop  V   V   V   V    V   V
// 4 shhift  nop nop nop nop nop nop |nop nop nop nop nop  V   V   V   V   V    V   V
// 5 shhift  nop nop nop nop nop nop |nop nop nop nop  V   V   V   V   V   V    V   V
// 6 shhift  nop nop nop nop nop nop |nop nop nop  V   V   V   V   V   V   V    V   V
// 7 shhift  nop nop nop nop nop nop |nop nop  V   V   V   V   V   V   V   V    V   V
// 8 shhift  nop nop nop nop nop nop |nop  V   V   V   V   V   V   V   V   V    V   V
// From now on, it would be repeated
// 9 shhift  nop nop nop nop nop nop | V   V   V   V   V   V   V   V   V   V    V   V

__attribute__((optimize(0))) void window_0_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_9_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_1_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_8_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_2_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_7_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_3_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_6_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_4_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_5_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_5_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_4_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_6_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_3_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_7_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_2_CLOCKS();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}
__attribute__((optimize(0))) void window_8_shifts(void (*victim)()){
  START_TRACE();
  DELAY_6_CLOCKS();
  SHIFT_1_CLOCK();
  // In the next clock (clk 7 + n shifts) a collision/bus contention will happen
  //victim();
  VICTIM();
  // or put some other specifc mark to indicate the end of tracing
  NOPS_TO_AVOID_COLLISIONS();
  END_TRACE();
}

void (*sliding_window[])(void (*victim)()) = {
  window_0_shifts,
  window_1_shifts,
  window_2_shifts,
  window_3_shifts,
  window_4_shifts,
  window_5_shifts,
  window_6_shifts,
  window_7_shifts,
  window_8_shifts,
  };

// ------------------------- Process Collisions Information --------------------
#define NO_COLLISION 0
#define CLEAN_AMBIGUITY 0
#define COLLISION 1
#define AMBIGUITY 2

#define N_SHIFTS 9
// Equal to the number of DMA_reads -1, because we are making measuring the
// diference between reads, so, less one in total
#define N_DMA_COLLISIONS_LATENCY ((BUFFER_SIZE)-1)
int dma_collisions_latencies[N_SHIFTS][N_DMA_COLLISIONS_LATENCY] = {0};
// Equal to the size of the dma_collisions_latencies times the worst time (12)
// times 4, to give enough room to accommodate all clocks
// Each dma read, at minimum, represents 9 processor clocks.
#define N_CLOCKS ((N_DMA_COLLISIONS_LATENCY)*12*4)
char cpu_clock_collisions[N_CLOCKS]= {0};
float coverage;

void print_all_shifts_collisions(){
//	printf("\e[2J\e[H"); // clear terminal screen
  printf("DMA\t|");
  // print clock
  for(int i=0; i < N_DMA_COLLISIONS_LATENCY; i++ )
    printf("%3d\t|", i);
  printf("\n");
  for(int shift=0; shift < N_SHIFTS ; shift++){
    printf("SH%d\t|", shift);
    for(int j=0; j < N_DMA_COLLISIONS_LATENCY; j++){
      if(!j) // first collision is within our code
        printf("%3c\t|", '-');
      else if(!dma_collisions_latencies[shift][j])
        printf("%3c\t|", ' ');
      else
        printf("%3d\t|", dma_collisions_latencies[shift][j] );
    }
    printf("\n");
  }
  printf("\n");
}


// this function adds a array of collisions to the matrix of shift collisions
void add_collisions(int shift){
  int dma_latency = 0;
   for(int j=1; j<BUFFER_SIZE; j++){
    dma_latency = (dst_covert[j]-dst_covert[j-1])&0xfff;
    dma_collisions_latencies[shift][j-1] = dma_latency;
  }
}

// clean the clock collision after or before. This depends where the collision
//that removed the ambiguity occurred
// | ambiguity | ambiguity  |
// | collision |    -       | -> clean second ambiguity (clock + 1)
// |     -     |  collision | -> clean first ambiguity (clock - 1)
void clean_ambiguity(int clock){
   if(cpu_clock_collisions[clock+1]==AMBIGUITY)
    cpu_clock_collisions[clock+1] = CLEAN_AMBIGUITY;
   else
    cpu_clock_collisions[clock-1] = CLEAN_AMBIGUITY;

}

// Collisions                        | X   X                               X    X
// CPU clock  1   2   3   4   5   6  | 7   8   9   1   2   3   4   5   6   7    8   9
// DMA READ  |-------------READ 0---------------| |-------------READ 1--------------|
// 0 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop nop nop  V    V   V
// 1 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop nop  V   V    V   V
// 2 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop nop  V   V   V    V   V
// 3 shhift  nop nop nop nop nop nop |nop nop nop nop nop nop  V   V   V   V    V   V
// 4 shhift  nop nop nop nop nop nop |nop nop nop nop nop  V   V   V   V   V    V   V
// 5 shhift  nop nop nop nop nop nop |nop nop nop nop  V   V   V   V   V   V    V   V
// 6 shhift  nop nop nop nop nop nop |nop nop nop  V   V   V   V   V   V   V    V   V
// 7 shhift  nop nop nop nop nop nop |nop nop  V   V   V   V   V   V   V   V    V   V
// 8 shhift  nop nop nop nop nop nop |nop  V   V   V   V   V   V   V   V   V    V   V
// From now on, it would be repeated
// 9 shhift  nop nop nop nop nop nop | V   V   V   V   V   V   V   V   V   V    V   V
//
// this function determines where the collisions happened (i.e, clock collisions)
// dma latency = 9 -> no collision
// dma latency = 10 -> collision on clk 7
// dma latency = 11 -> ambiguity (either clk 7 or clk 8 collision)
// dma latency = 12 -> collision on clk 8
void process_collisions(){
  int dma_latency = 0;
  // starts in -7, to convert the clock collision to the index of the
  // cpu_clock_collisions vector
  int clock = -7;  // this variable holds the first clock of current DMA read, so
                  //to access the clocks with collision -> clock +7 or +8
  for(int shift=0; shift < N_SHIFTS ; shift++){
    // start in dma_read = 1 to remove the first collision that lies within our
    // setup code, and ends in the last read of the buffer + the index o de shift
    // due to the sliding window
    clock = -7+shift; //shift
    for(int dma_read = 1; dma_read < N_DMA_COLLISIONS_LATENCY; dma_read++){
      dma_latency = dma_collisions_latencies[shift][dma_read];
      if(dma_latency==10){ // dma latency = 10 -> collision on clk 7
        // clean ambiguity, because We know that 10 means collision clk 7
        // if(cpu_clock_collisions[clock+7]==AMBIGUITY)
        //   clean_ambiguity(clock+7);
        cpu_clock_collisions[clock+7] = COLLISION; // collision dma clk 7
        printf(" 10 -> %d|", clock+7);
      }
      if(dma_latency==11){ // dma latency = 11 -> ambiguity (either clk 7 or clk 8 collision)
        if(cpu_clock_collisions[clock+7]!=COLLISION)
          cpu_clock_collisions[clock+7] = AMBIGUITY; // collision dma clk 7
        if(cpu_clock_collisions[clock+8]!=COLLISION)
          cpu_clock_collisions[clock+8] = AMBIGUITY; // collision dma clk 8
        printf(" 11 -> %d %d|", clock+7, clock+8);
      }
      if(dma_latency==12){ // dma latency = 12 -> collision on clk 8
        // clean ambiguity, because We know that 12 means collision clk 8
        // if(cpu_clock_collisions[clock+8]==AMBIGUITY)
        //   clean_ambiguity(clock+8);
        cpu_clock_collisions[clock+8] = COLLISION; // collision dma clk 8
        printf(" 12 -> %d|", clock+8);
      }
      clock += dma_latency;
    }
      printf("\n");
  }
}

#define NO_COLLISION_CHAR '-'
#define COLLISION_CHAR 'X'
#define AMBIGUITY_CHAR 'O'

#define MOV   1
#define LDR   2
#define NOP   3
#define END   4
#define PUSH  5      
#define SUB   6       
#define ADD   7   
#define MOVS  8     
#define CMP   9   
#define BLE   10   
#define B     11 
#define ADDS  12    
#define LDRW  13     
#define BX    14   
#define BLX   15   
#define MOVW  16
#define STR   17
#define LSL   18
#define ANDS  19
#define BNE   20
#define UXTB  21
#define STRB  22
#define BEQ   23 
#define LD_PC 24 
#define BL    25 
#define RSB   26 


// int victim_instructions[] = { MOV,
//                               MOV,
//                               LDR,  // 1
//                               LDR,  // 2
//                               LDR,  // 3
//                               LDR,  // 4
//                               LDR,  // 5
//                               LDR,  // 6
//                               LDR,  // 7
//                               LDR,  // 8
//                               LDR,  // 9
//                               LDR,  // 10
//                               LDR,  // 1
//                               LDR,  // 2
//                               LDR,  // 3
//                               LDR,  // 4
//                               LDR,  // 5
//                               LDR,  // 6
//                               LDR,  // 7
//                               LDR,  // 8
//                               LDR,  // 9
//                               LDR,  // 10
//                               END};

// int victim_instructions[] = { MOV,
//                               MOV,
//                               LDR,  // 1
//                               LDR,  // 2
//                               MOV,  // 3
//                               LDR,  // 4
//                               MOV,  // 5
//                               LDR,  // 6
//                               MOV,  // 7
//                               LDR,  // 8
//                               MOV,  // 9
//                               LDR,  // 10
//                               END};
 
// 8040f64:	b480      	push	{r7}
// 8040f66:	b085      	sub	sp, #20
// 8040f68:	af00      	add	r7, sp, #0
// 8040f6a:	f240 231f 	movw	r3, #543	; 0x21f
// 8040f6e:	60fb      	str	r3, [r7, #12]
// 8040f70:	2317      	movs	r3, #23
// 8040f72:	60bb      	str	r3, [r7, #8]
// 8040f74:	68fa      	ldr	r2, [r7, #12]
// 8040f76:	68bb      	ldr	r3, [r7, #8]
// 8040f78:	429a      	cmp	r2, r3
// 8040f7a:	dd02      	ble.n	8040f82 <victim_1+0x1e>
// 8040f7c:	68fb      	ldr	r3, [r7, #12]
// 8040f7e:	607b      	str	r3, [r7, #4]
// 8040f80:	e001      	b.n	8040f86 <victim_1+0x22>
// 8040f82:	68bb      	ldr	r3, [r7, #8]
// 8040f84:	607b      	str	r3, [r7, #4]
// 8040f86:	bf00      	nop
// 8040f88:	3714      	adds	r7, #20
// 8040f8a:	46bd      	mov	sp, r7
// 8040f8c:	f85d 7b04 	ldr.w	r7, [sp], #4
// 8040f90:	4770      	bx	lr

                            // PATH1 (r2 > r1) // 29/28 CLOCKS
  int victim_instructions_PATH1[] = { LDR,  // SetUp code 1 clock r3
                                      BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble) 
                                      BLX,
                                      BLX,
                                      BLX,
                                      PUSH, // 1 clock  
                                      SUB,  // 1 clock   
                                      ADD,  // 1 clock 
                                      MOVW, // 1 clock   
                                      STR,  // 1 clock 
                                      MOVS, // 1 clock   
                                      STR,  // 1 clock 
                                      LDR,  // 1 clock 
                                      LDR,  // 1 clock r3
                                      // CMP,  // 2 clock hazard RAW r3 (STALL / Pipeline Bubble) 
                                      CMP,  // 2 clock hazard RAW r3  
                                      BLE,  // 1 clock   
                                      LDR,  // 1 clock r3
                                      // STR,  // 2 clock hazard RAW r3  (STALL / Pipeline Bubble) 
                                      STR,  // 2 clock hazard RAW r3 
                                      B,    // 3 clock 
                                      B,     
                                      B,     
                                    //  NOP,  // 1 clock ou 0 clock
                                      ADDS, // 1 clock   
                                      MOV,  // 1 clock 
                                      LDR,  // 1 clock 
                                      BX,   // 3 clock 
                                      BX,    
                                      BX,   
                                      END};   

                              // PATH2 (r2 <= r1) // 28/27 CLOCKS
  int victim_instructions_PATH2[] = { LDR,  // SetUp code 1 clock r3
                                      BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble) 
                                      BLX,
                                      BLX,
                                      BLX,
                                      PUSH, // 1 clock  
                                      SUB,  // 1 clock   
                                      ADD,  // 1 clock 
                                      MOVW, // 1 clock   
                                      STR,  // 1 clock 
                                      MOVS, // 1 clock   
                                      STR,  // 1 clock 
                                      LDR,  // 1 clock 
                                      LDR,  // 1 clock r3
                                      // CMP,  // 2 clock hazard RAW r3 (STALL / Pipeline Bubble) 
                                      CMP,  // 2 clock hazard RAW r3  
                                      BLE,  // 3 clockS  
                                      BLE,      
                                      BLE,      
                                      LDR,  // 1 clock r3
                                      // STR,  // 2 clock hazard RAW r3  (STALL / Pipeline Bubble) 
                                      STR,  // 2 clock hazard RAW r3     
                                     // NOP,  // 1 clock ou 0 clock
                                      ADDS, // 1 clock   
                                      MOV,  // 1 clock 
                                      LDR,  // 1 clock 
                                      BX,   // 3 clock 
                                      BX,    
                                      BX, 
                                      END};   

int victim_instructions_IF_TRUE[] = { LDR,  // SetUp code 1 clock r3
                                      BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble) 
                                      BLX,
                                      BLX,
                                      BLX,
                                      PUSH, // 1 clock  
                                      SUB,  // 1 clock   
                                      ADD,  // 1 clock

                                      MOVS, // 1 clock   
                                      STR,  // 1 clock 
                                      LDR, // 1 clock   
                                      CMP,  // 2 clock hazard RAW r3  
                                      BNE,  // 1 clockS      
                                      MOVS,
                                      STR,
                                      B,
                                      B,
                                      //B,
                                      //NOP,
                                      ADDS, // 1 clock   
                                      MOV,  // 1 clock 
                                      LDR,  // 1 clock 
                                      BX,   // 3 clock 
                                      BX,    
                                      BX, 
                                      END};

int victim_instructions_IF_FALSE[] = {LDR,  // SetUp code 1 clock r3
                                      BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble) 
                                      BLX,
                                      BLX,
                                      BLX,
                                      PUSH, // 1 clock  
                                      SUB,  // 1 clock   
                                      ADD,  // 1 clock SETUP

                                      MOVS, // 1 clock   
                                      STR,  // 1 clock 
                                      LDR, // 1 clock   
                                      CMP,  // 2 clock hazard RAW r3  
                                      BNE,  // 3 clockS      
                                      BNE,
                                      BNE,
                                      MOVS,
                                      STR,
                                      //NOP,
                                      ADDS, // 1 clock   
                                      MOV,  // 1 clock 
                                      LDR,  // 1 clock 
                                      BX,   // 3 clock 
                                      BX,    
                                      BX, 
                                      END};

int victim_instructions[] = { MOV,
                              MOV,
                              LDR,  // 1
                              LDR,  // 2
                              MOV,  // 3
                              LDR,  // 4
                              MOV,  // 5
                              LDR,  // 6
                              MOV,  // 7
                              LDR,  // 8
                              MOV,  // 9
                              LDR,  // 10
                              END};

#define PUTTY
#define RED_COLOR() printf("\033[1;31m")
#define RESET_COLOR() printf("\033[0m")

void print_instructions(int *instructions){
  // Print Instructions
  int instruction = 0;
  printf("INS\t|");
  while(instructions[instruction] != END){
    if(instructions[instruction] == MOV)
      printf(" MOV\t|");
    if(instructions[instruction] == LDR)
      printf(" LDR\t|");
    if(instructions[instruction] == NOP)
      printf(" NOP\t|");
    if(instructions[instruction] == PUSH)
      printf("PUSH\t|");
    if(instructions[instruction] == SUB)
      printf(" SUB\t|");
    if(instructions[instruction] == ADD)
      printf(" ADD\t|");
    if(instructions[instruction] == MOVS)
      printf("MOVS\t|");
    if(instructions[instruction] == CMP)
      printf(" CMP\t|");
    if(instructions[instruction] == BLE)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BLE\t|");
        RESET_COLOR();
        }
      #else
        printf(" BLE\t|");
      #endif
    if(instructions[instruction] == B)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf("   B\t|");
        RESET_COLOR();
        }
      #else
        printf("   B\t|");
      #endif
    if(instructions[instruction] == ADDS)
      printf("ADDS\t|");
    if(instructions[instruction] == LDRW)
      printf("LDRW\t|");
    if(instructions[instruction] == BX)
      printf("  BX\t|");
    if(instructions[instruction] == BLX)
      printf(" BLX\t|");
    if(instructions[instruction] == MOVW)
      printf("MOVW\t|");
    if(instructions[instruction] == STR)
      printf(" STR\t|");
    if(instructions[instruction] == LSL)
      printf(" LSL\t|");
    if(instructions[instruction] == ANDS)
      printf("ANDS\t|");
    if(instructions[instruction] == BNE)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BNE\t|");
        RESET_COLOR();
        }
      #else
        printf(" BNE\t|");
      #endif
    if(instructions[instruction] == UXTB)
      printf("UXTB\t|");
    if(instructions[instruction] == STRB)
      printf("STRB\t|");
    if(instructions[instruction] == BEQ)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BEQ\t|");
        RESET_COLOR();
        }
      #else
        printf(" BEQ\t|");
      #endif 
    if(instructions[instruction] == LD_PC)
      printf("LD_PC\t|");
    if(instructions[instruction] == BL)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf("  BL\t|");
        RESET_COLOR();
        }
      #else
        printf("  BL\t|");
      #endif 
    if(instructions[instruction] == RSB)
      printf(" RSB\t|");
    instruction++;
  }
  printf("\r\n");
}

void print_collisions(){
  printf("CLK\t|");
  // print clock
  // for(int i=0; i < N_CLOCKS; i++ )
  for(int i=0; i < 100; i++ )
    printf("%3d\t|", i);
  printf("\n");
  printf("COL\t|");
  // for(int clock=0; clock < N_CLOCKS; clock++){
  for(int clock=0; clock < 100; clock++){
    if(cpu_clock_collisions[clock] == COLLISION)
      printf("%3c\t|", COLLISION_CHAR);
    if(cpu_clock_collisions[clock] == NO_COLLISION)
      printf("%3c\t|", NO_COLLISION_CHAR);
    if(cpu_clock_collisions[clock] == AMBIGUITY)
      printf("%3c\t|", AMBIGUITY_CHAR);
  }
  printf("\n");
  // NOTA: Esta função cracha na última iteração pk não chega a imprimir o fim
  printf("FIM\n");
}

void print_1(){};
void victim_1_NS(){
  int num1, num2, max;
  num1 = 50;
  num2 = 20;
  if((num1>num2))
      max = num1;
  else
      max = num2;
}

void victim_2_NS(){
  int num1, num2, max;
  num1 = 20;
  num2 = 50;
  if((num1>num2))
      max = num1;
  else
      max = num2;
}

void if_else_true(){
  int s, b;
  s = 0;

  if (s == 0)
    b = 1;
  else 
    b = 0;

}

void if_else_false(){
  int s, b;
  s = 0;

  if (s == 1)
    b = 1;
  else 
    b = 0;

}

void light_op(){
  int s = 0;
  volatile int x;

  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}


void heavy_op(){
  int s = 1;
  volatile int x;

  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}

char acc_buff[256];

void access_near(){
  int s = 0;
  volatile char x;

  if (s == 0)
      x = acc_buff[7];    // ldrb	r3, [r3, #7]      (16bits)
  else
      x = acc_buff[255];  // ldrb.w	r3, [r3, #255]  (32bits)
}

void access_far(){
  int s = 1;
  volatile char x;

  if (s == 0)
      x = acc_buff[7];
  else
      x = acc_buff[255];
}


/* TODO

__attribute__((optimize(0))) void get_sliding_window_trace(){
  int instruction = 0;
  for(int shift=0; shift < N_SHIFTS ; shift++){
    (sliding_window[shift])(victim_1_S);
    add_collisions(shift);
  }
  printf("\n");
  print_all_shifts_collisions();
  // process_collisions();
  // print_instructions(victim_instructions);
  // print_collisions();
}
*/

//******************************************************************************
// DMA Side-Channel -> Accurate Tracing 
//******************************************************************************
// Note: For back-to-back 1 clock precision tracing (when the trace is taken in
//multiple rounds) ARR can have other values than 1, but in the range of 1 to 9,
//otherwise the next DMA transaction, does not start right after the previous one

// #define START_ACCURATE_TRACE() do{\
//     int volatile  *tim3_CR1 =   0x40000400, \
//                   *tim3_SR =    0x40000410,  \
//                   *tim3_DIER =  0x4000040C,  \
//                   *tim3_EGR =   0x40000414,  \
//                   *tim3_CNT =   0x40000424, \
//                   *tim3_ARR =   0x4000042C; \
//     *tim3_ARR = auto_reload; \
//     *tim3_CNT = (auto_reload-1) - clock_to_collide; \
//     *tim3_SR = 0; \
//     *tim3_DIER = 0; \
//     HAL_TIM_Base_Start(&htim7);                                      \
//     HAL_DMA_Start(&hdma_tim3_up, (uint32_t)ptr_cnt, (uint32_t)&dst_covert, n_collisions); \
//     __HAL_DMA_ENABLE(&hdma_tim3_up); \
//     *tim3_DIER = 1<<8; \         
//     __HAL_TIM_ENABLE(&htim3);\    
//     MY_NOP(); /* 1 Clock to wait that tim5 start counting*/\    
//     MY_NOP(); /* 1 Clock for the counter reach the smallest ARR value = 1*/\    
//     MY_NOP(); /* 1 clock for the interrupt (a.k.a, update event) be generated*/\  
//     MY_NOP(); /* 1 clock dma setup*/\    
//     MY_NOP(); /* 1 clock dma setup*/\   
//     DELAY_6_CLOCKS(); /* delay to ensure the 1st collision happens in the victim 1st clock*/\ 
//   }while(0)


#define START_ACCURATE_TRACE() do{\
    TIM3->ARR = auto_reload; \
    TIM3->CNT = (auto_reload-1) - clock_to_collide; \
    TIM3->SR = 0; \
    TIM3->DIER = 0; \
    HAL_TIM_Base_Start(&htim7);                                      \
    HAL_DMA_Start(&hdma_tim3_up, (uint32_t)ptr_cnt, (uint32_t)&dst_covert, n_collisions); \
    __HAL_DMA_ENABLE(&hdma_tim3_up); \
    TIM3->DIER = 1<<8; \         
    __HAL_TIM_ENABLE(&htim3);\    
    MY_NOP(); /* 1 Clock to wait that tim5 start counting*/\    
    MY_NOP(); /* 1 Clock for the counter reach the smallest ARR value = 1*/\    
    MY_NOP(); /* 1 clock for the interrupt (a.k.a, update event) be generated*/\  
    MY_NOP(); /* 1 clock dma setup*/\    
    MY_NOP(); /* 1 clock dma setup*/\   
    DELAY_6_CLOCKS(); /* delay to ensure the 1st collision happens in the victim 1st clock*/\ 
  }while(0)

#define END_ACCURATE_TRACE() do{\
    NOPS_TO_AVOID_COLLISIONS(); \
    __HAL_TIM_DISABLE(&htim3);\
    HAL_DMA_Abort(&hdma_tim3_up);\
    HAL_TIM_Base_Stop(&htim7);\
    *ptr_cnt = 0;\
  }while(0)




#define N_INSTRUCTIONS 3000

char dma_accurate_collisions_latencies[N_INSTRUCTIONS] = {0};

void print_clock(int *instructions){
  // print clock
  int i = 0, instruction = 0;
  printf("CLK\t|");
  while(instructions[instruction++] != END)
    printf("%3d\t|", i++);
  printf("\r\n");
}
void process_accurate_collision(int collision_n){
  dma_accurate_collisions_latencies[collision_n] = (dst_covert[1]-dst_covert[0])&0xFF;
}

void print_accurate_collision(){

  printf("CLK\t|");
  for(int clk = 0; clk < 50; clk++){
     printf(" %3d\t|", clk );
  }
  printf("\r\n");
  printf("COL\t|");
  for(int clk = 1; clk < N_INSTRUCTIONS; clk++){
     printf(" %3d\t|", dma_accurate_collisions_latencies[clk] );
     if(!(clk%50))
      printf("\r\n\t");
  }
  printf("\r\n");
}

void print_accurate_collision_w_instruction(int *instructions){
  int collision = 0, instruction = 0;
  printf("COL\t|");
  while(instructions[instruction] != END){
    printf(" %3d\t|", dma_accurate_collisions_latencies[collision] );
    instruction++;
    collision++;
  }
  printf("\r\n");
}


// Auto_reload -> number o clocks the timer will count untill interrupt
// clock_to_collide -> the clock where the 1st interrupt will occur
// n_collisions -> number of collisions that we want to provoke, i.e., DMA reads
__attribute__((optimize(0))) void get_accurate_trace( int  auto_reload, 
                                                      int clock_to_collide, 
                                                      int n_collisions,
                                                      void (*victim)()){
  //clock_to_collide is used inside this macro
  START_ACCURATE_TRACE();
  // Victim start --------------------------------------------------------------
  victim();
  // Victim end ----------------------------------------------------------------
  END_ACCURATE_TRACE();
}

void accurate_trace(){
  int auto_reload = 1, n_collisions = 2;
  int i = 0, instruction = 0;
  // Coarse Trace S-> Calling Victim PATH 1 --------------------------------

  // Accurate Trace NS -> Calling Victim PATH 1 --------------------------------
  // i = 0, instruction = 0;
  // while(victim_instructions_PATH1[instruction++] != END){
  //   get_accurate_trace(auto_reload, i, n_collisions, victim_1_NS);  
  //   process_accurate_collision(i++);
  // }
  // printf("\r\n");
  // printf("Trace PATH1 (NS)  \r\n");
  // print_clock(victim_instructions_PATH1);
  // print_instructions(victim_instructions_PATH1);
  // print_accurate_collision_w_instruction(victim_instructions_PATH1);
  // printf("\r\n");

  // // Accurate Trace NS -> Calling Victim PATH 2 --------------------------------
  // i = 0, instruction = 0;
  // while(victim_instructions_PATH2[instruction++] != END){
  //   get_accurate_trace(auto_reload, i, n_collisions, victim_2_NS);  
  //   process_accurate_collision(i++);
  // }
  // printf("\r\n");
  // printf("Trace PATH2 (NS)  \r\n");
  // print_clock(victim_instructions_PATH2);
  // print_instructions(victim_instructions_PATH2);
  // print_accurate_collision_w_instruction(victim_instructions_PATH2);

  // Accurate Trace NS -> Calling IF PATH TRUE --------------------------------
  i = 0, instruction = 0;
  while(victim_instructions_IF_TRUE[instruction++] != END){
    get_accurate_trace(auto_reload, i, n_collisions, if_else_true);  
    process_accurate_collision(i++);
  }
  printf("\r\n");
  printf("Trace IF TRUE (NS)  \r\n");
  print_clock(victim_instructions_IF_TRUE);
  print_instructions(victim_instructions_IF_TRUE);
  print_accurate_collision_w_instruction(victim_instructions_IF_TRUE);
  printf("\r\n");

  // Accurate Trace NS -> Calling IF PATH FALSE --------------------------------
  i = 0, instruction = 0;
  while(victim_instructions_IF_FALSE[instruction++] != END){
    get_accurate_trace(auto_reload, i, n_collisions, if_else_false);  
    process_accurate_collision(i++);
  }
  printf("\r\n");
  printf("Trace IF FALSE (NS)  \r\n");
  print_clock(victim_instructions_IF_FALSE);
  print_instructions(victim_instructions_IF_FALSE);
  print_accurate_collision_w_instruction(victim_instructions_IF_FALSE);
}

void accurate_trace_time(sVictimFunc *s_vict){
  int auto_reload = 1, n_collisions = 2;
  int i = 0, instruction = 0;
  int clock_size_array[s_vict->time];
  clock_size_array[s_vict->time] = END;

  // Accurate Trace NS -> Calling IF PATH TRUE --------------------------------
  i = 0, instruction = 0;
  
  while(i < s_vict->time){
    get_accurate_trace(auto_reload, i, n_collisions, s_vict->func);  
    process_accurate_collision(i++);
  }
  
  printf("\r\n");
  printf("Trace %s  \r\n", s_vict->name);
  print_clock(clock_size_array);
  print_accurate_collision_w_instruction(clock_size_array);
  printf("\r\n");

}

void process_single_trace_collisions(int n_collisions, int trace){
  int buffer_offset = n_collisions*trace;
  for (int i = 0; i < n_collisions; i++)
  {
    dma_accurate_collisions_latencies[buffer_offset + i] = (dst_covert[i+1]-dst_covert[i])&0xFF;
  }
  
}

void print_single_trace_collisions(int n_collisions, int trace){
  int buffer_offset = n_collisions*trace;
  for (int i = 0; i < n_collisions; i++)
  {
    printf("Collision %d | Latency = %d\n", i, dma_accurate_collisions_latencies[buffer_offset + i]);
  }
  
}


int add(int a, int b){
	return a+b;
}

void test_if_else(){
	int c, r, d, s;
	if (c == 0){ r = add(r, d); } else { r = add(r, s); }
}

__attribute__((optimize(0))) unsigned int measure_time(void (*victim)()){
	volatile int time1, time2;
	
  // TIM7->ARR = 0;
  // TIM7->CNT = 0;
  // TIM3->CNT = 0;
  // TIM3->SR = 0;
  // TIM3->DIER = 0;

  HAL_TIM_Base_Start(&htim7);     
  time1 = TIM7->CNT;

  victim();

  time2 = TIM7->CNT;

  HAL_TIM_Base_Stop(&htim7);     

  return time2-time1-9;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  volatile int time_push_pops = 0, *ptr;
  register int r4 __asm("r4");
  register int r5 __asm("r5");
  register int r6 __asm("r6");
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
  //--------------------------------------------------------------------------------------
  //----------------ATTENTION ------------------------------------------------------------
  // WE HAVE TO COMMENT THE SYSTICK CONFIGURATION IN core_cm33.h BECAUSE, SOMEHOW IT STILL
  //INTERFERES WITH THE TRACING IN SPITE OF I AM DISABLE SYSTICK HERE
  SysTick->CTRL = 0; //Disable systick
  //--------------------------------------------------------------------------------------
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  // config_mpu_all_nGnRnE();
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_DMA_Init();
  //MX_ICACHE_Init();
  MX_GPIO_Init();
  MX_LPUART1_UART_Init();
  MX_TIM7_Init();
  MX_TIM2_Init();
  MX_TIM8_Init();
  MX_TIM5_Init();
  MX_TIM4_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  printf("HELLO STM\r\n");

  // DEFINE_VICTIM(s_if_true, simple_if_else_true);
  // accurate_trace_time(&s_if_true);

  // DEFINE_VICTIM(s_if_false, simple_if_else_false);
  // accurate_trace_time(&s_if_false);

  // DEFINE_VICTIM(s_light_op, light_op);
  // accurate_trace_time(&s_light_op);

  // DEFINE_VICTIM(s_heavy_op, heavy_op);
  // accurate_trace_time(&s_heavy_op);

  printf("Time Measured true  = %d \r\n", measure_time(if_else_true));
  printf("Time Measured false = %d \r\n", measure_time(if_else_false));


  // DEFINE_VICTIM(s_access_near, access_near);
  // accurate_trace_time(&s_access_near);

  // DEFINE_VICTIM(s_access_far, access_far);
  // accurate_trace_time(&s_access_far);

  // vict_time = measure_time(vict_func);
  // printf("Time Measured = %d (%s)\r\n",vict_time, TO_STRING(simple_if_else_true)); 
  // accurate_trace_time(TO_STRING(vict_func), vict_time, vict_func);
  
  // vict_func = simple_if_else_false;

  // vict_time = measure_time(vict_func);
  // printf("Time Measured = %d (%s)\r\n",vict_time, TO_STRING(simple_if_else_false)); 
  // accurate_trace_time(TO_STRING(vict_func), vict_time, vict_func);

  //accurate_trace();



  while (1)
  {
    // printf("time %d = %d\n", (i)&0xFF, dst_covert[(i++)&0xFF]);
    
    //printf("%d ", *ptr_cnt);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE2) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

