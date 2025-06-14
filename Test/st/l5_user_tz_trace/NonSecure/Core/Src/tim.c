#include "tim.h"

/* --- TIM Handle declarations --- */
TIM_HandleTypeDef htim7;
TIM_HandleTypeDef htim8;

/* --- DMA Handle declarations --- */
DMA_HandleTypeDef hdma_tim8_up;

/* --- MX_TIMERS Init functions --- */
void MX_TIM7_Init(void)
{
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim7.Instance = TIM7;
  htim7.Init.Prescaler = 0;
  htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim7.Init.Period = 65535;
  htim7.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim7.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim7) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim7, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim7, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}
void MX_TIM8_Init(void)
{
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim8.Instance = TIM8;
  htim8.Init.Prescaler = 0;
  htim8.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim8.Init.Period = 65535;
  htim8.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim8.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim8) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim8, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim8, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

/* --- HAL_TIM_Base_MspInit --- */
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{
  if(tim_baseHandle->Instance == TIM7)
  {
    __HAL_RCC_TIM7_CLK_ENABLE();
  }
  if(tim_baseHandle->Instance == TIM8)
  {
    __HAL_RCC_TIM8_CLK_ENABLE();
    hdma_tim8_up.Instance = DMA1_Channel4;
    hdma_tim8_up.Init.Request = DMA_REQUEST_TIM8_UP;
    hdma_tim8_up.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_tim8_up.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_tim8_up.Init.MemInc = DMA_MINC_ENABLE;
    hdma_tim8_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_tim8_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_tim8_up.Init.Mode = DMA_NORMAL;
    hdma_tim8_up.Init.Priority = DMA_PRIORITY_LOW;
    if (HAL_DMA_Init(&hdma_tim8_up) != HAL_OK)
    {
      Error_Handler();
    }

    if (HAL_DMA_ConfigChannelAttributes(&hdma_tim8_up, DMA_CHANNEL_NPRIV) != HAL_OK)
    {
      Error_Handler();
    }

    __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim8_up);
  }
}

/* --- HAL_TIM_Base_MspDeInit --- */
void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef* tim_baseHandle)
{
  if(tim_baseHandle->Instance == TIM7)
  {
    __HAL_RCC_TIM7_CLK_DISABLE();
  }
  if(tim_baseHandle->Instance == TIM8)
  {
    __HAL_RCC_TIM8_CLK_DISABLE();
    HAL_DMA_DeInit(tim_baseHandle->hdma[TIM_DMA_ID_UPDATE]);
  }
}