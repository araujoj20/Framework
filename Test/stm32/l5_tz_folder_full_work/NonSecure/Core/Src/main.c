/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
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
#include "trace.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "secure_nsc.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

int __io_putchar(int ch){ // printf
	HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
return ch;
}

void ICache_invalidation(){
        if (READ_BIT(ICACHE->SR, ICACHE_SR_BUSYF) != 0U)
             {
               return -1;
             }
             else
             {
               /* Make sure BSYENDF is reset before to start cache invalidation */
               CLEAR_BIT(ICACHE->FCR, ICACHE_FCR_CBSYENDF);

               /* Launch cache invalidation */
               SET_BIT(ICACHE->CR, ICACHE_CR_CACHEINV);

                while (READ_BIT(ICACHE->SR, ICACHE_SR_BSYENDF) == 0U);

             }
             /* Clear BSYENDF */
            WRITE_REG(ICACHE->FCR, ICACHE_FCR_CBSYENDF);

	}


  extern uint32_t __cacheable_text_start__;  
extern uint32_t __cacheable_text_end__;

#define REGION_NON_CACHEABLE 0UL  
#define REGION_CACHEABLE 1UL

void setup_ns_mpu(void) {
  uint32_t base_cacheable = (uint32_t)&__cacheable_text_start__;
  ARM_MPU_Disable();

  // REGION 0: Mark entire NS memory as Strongly Ordered Non-cacheable
  ARM_MPU_SetMemAttr(REGION_NON_CACHEABLE, ARM_MPU_ATTR_DEVICE_nGnRnE);
  MPU->RNR = REGION_NON_CACHEABLE;
  MPU->RBAR = 0x8041400;
  MPU->RLAR = (base_cacheable - 1) | (REGION_NON_CACHEABLE << MPU_RLAR_AttrIndx_Pos) | MPU_RLAR_EN_Msk;
  ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk); // No default memory map
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
	SysTick->CTRL = 0; //Disable systick

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_DMA_Init();
	MX_LPUART1_UART_Init();
	MX_TIM3_Init();
	MX_TIM7_Init();
	MX_ICACHE_Init();
	/* USER CODE BEGIN 2 */
	
  //ICache_invalidation();

  // setup_ns_mpu();


  if_else_false();
  if_else_true();
  access_near();
  access_far();

  #define CACHEABLE_CHECK 1

  #ifdef CACHEABLE_CHECK
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func false: %d \r\n", measure_time(if_else_false));
    printf("Time func true : %d \r\n", measure_time(if_else_true));
    printf("Time func true : %d \r\n", measure_time(if_else_true));
    printf("Time func true : %d \r\n", measure_time(if_else_true));
    printf("Time func near : %d \r\n", measure_time(access_near));
    printf("Time func near : %d \r\n", measure_time(access_near));
    printf("Time func near : %d \r\n", measure_time(access_near));
    printf("Time func far  : %d \r\n", measure_time(access_far));
    printf("Time func far  : %d \r\n", measure_time(access_far));
    printf("Time func far  : %d \r\n", measure_time(access_far));
  #endif

  printf("Time func false : %d \r\n", measure_time(if_else_false));
  DEFINE_VICTIM(s_if_else_false, if_else_false);
  accurate_trace_time(&s_if_else_false);
  
  printf("Time func true : %d \r\n", measure_time(if_else_true));
  DEFINE_VICTIM(s_if_else_true, if_else_true);
  accurate_trace_time(&s_if_else_true);
  
  printf("Time func near : %d \r\n", measure_time(access_near));
  DEFINE_VICTIM(s_access_near, access_near);
  accurate_trace_time(&s_access_near);
  
  printf("Time func far  : %d \r\n", measure_time(access_far));
  DEFINE_VICTIM(s_access_far, access_far);
  accurate_trace_time(&s_access_far);


	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	while (1)
	{
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
