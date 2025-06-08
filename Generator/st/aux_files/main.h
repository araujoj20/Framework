/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#ifdef TZEN
    #include "secure_nsc.h"
#endif

#include "stdio.h"
#include "uart.h"
#include "dma.h"
#include "tim.h"

#if defined(stm32f7xx)
    #include "stm32f7xx_hal.h"
    #include "stm32f7xx_clock.h"
#elif defined(stm32f4xx)
    #include "stm32f4xx_hal.h"
    #include "stm32f4xx_clock.h"
#elif defined(stm32l5xx)
    #include "stm32l5xx_hal.h"
    #include "stm32l5xx_clock.h"
    #include "icache.h"
#elif defined(stm32u5xx)
    #include "stm32u5xx_hal.h"
    #include "stm32u5xx_clock.h"
#else
    #error "Unknown MCU family"
#endif

#define TO_STRING(name) #name
#define PRINT_MACRO(x) TO_STRING(x)

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
