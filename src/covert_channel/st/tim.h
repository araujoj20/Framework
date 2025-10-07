/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

extern TIM_HandleTypeDef htim;

/* USER CODE BEGIN Private defines */
#define TIM_INSTANCE    TIM2
#define TIM_PRESCALER   0
#define TIM_COUNTERMODE TIM_COUNTERMODE_UP
#define TIM_PERIOD      4294967295
#define TIM_CLK_DIV     TIM_CLOCKDIVISION_DIV1
#define TIM_ARP         TIM_AUTORELOAD_PRELOAD_DISABLE
#define TIM_CLK_SRC     TIM_CLOCKSOURCE_INTERNAL
#define TIM_TRGO        TIM_TRGO_RESET
#define TIM_SLAVE       TIM_MASTERSLAVEMODE_DISABLE


#define __HAL_RCC_TIM_CLK_ENABLE    __HAL_RCC_TIM2_CLK_ENABLE
#define __HAL_RCC_TIM_CLK_DISABLE   __HAL_RCC_TIM2_CLK_DISABLE


/* USER CODE END Private defines */

void TIM_Init(void);

/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */

