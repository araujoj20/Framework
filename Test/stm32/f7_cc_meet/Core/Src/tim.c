/* Includes ------------------------------------------------------------------*/
#include "tim.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

TIM_HandleTypeDef htim;

/* TIM init function */
void TIM_Init(void)
{

  /* USER CODE BEGIN TIM_Init 0 */

  /* USER CODE END TIM_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM_Init 1 */

  /* USER CODE END TIM_Init 1 */
  htim.Instance = TIM_INSTANCE;
  htim.Init.Prescaler = TIM_PRESCALER;
  htim.Init.CounterMode = TIM_COUNTERMODE;
  htim.Init.Period = TIM_PERIOD;
  htim.Init.ClockDivision = TIM_CLK_DIV;
  htim.Init.AutoReloadPreload = TIM_ARP;
  if (HAL_TIM_Base_Init(&htim) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLK_SRC;
  if (HAL_TIM_ConfigClockSource(&htim, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO;
  sMasterConfig.MasterSlaveMode = TIM_SLAVE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM_Init 2 */

  /* USER CODE END TIM_Init 2 */

}

void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{

  if(tim_baseHandle->Instance==TIM_INSTANCE)
  {
  /* USER CODE BEGIN TIM_MspInit 0 */

  /* USER CODE END TIM_MspInit 0 */
    /* TIM clock enable */
    __HAL_RCC_TIM_CLK_ENABLE();
  /* USER CODE BEGIN TIM_MspInit 1 */

  /* USER CODE END TIM_MspInit 1 */
  }
}

void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef* tim_baseHandle)
{

  if(tim_baseHandle->Instance==TIM_INSTANCE)
  {
  /* USER CODE BEGIN TIM_MspDeInit 0 */

  /* USER CODE END TIM_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_TIM_CLK_DISABLE();
  /* USER CODE BEGIN TIM_MspDeInit 1 */

  /* USER CODE END TIM_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
