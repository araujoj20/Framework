#include "tim.h"

/* --- TIM Handle declarations --- */

TIM_HandleTypeDef htim7;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim3;

/* --- OW Variables --- */
uint8_t TIM4_OW = 0;
uint8_t TIM3_OW = 0;

/* --- DMA Handle declarations --- */
DMA_HandleTypeDef hdma_tim2_up;
DMA_HandleTypeDef hdma_tim4_up;
DMA_HandleTypeDef hdma_tim3_up;

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

void MX_TIM2_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 222;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM4_Init(void)
{
  TIM4_OW = 0;
  HAL_TIM_Base_DeInit(&htim4);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 444;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM4_Init_OW_1(void)
{
  TIM4_OW = 1;
  HAL_TIM_Base_DeInit(&htim4);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 111;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM4_Init_OW_2(void)
{
  TIM4_OW = 2;
  HAL_TIM_Base_DeInit(&htim4);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 12345;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM3_Init(void)
{
  TIM3_OW = 0;
  HAL_TIM_Base_DeInit(&htim3);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 65535;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM3_Init_OW_1(void)
{
  TIM3_OW = 1;
  HAL_TIM_Base_DeInit(&htim3);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 1;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM3_Init_OW_2(void)
{
  TIM3_OW = 2;
  HAL_TIM_Base_DeInit(&htim3);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 2;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM3_Init_OW_3(void)
{
  TIM3_OW = 3;
  HAL_TIM_Base_DeInit(&htim3);

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 333;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}


void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{
  if(tim_baseHandle->Instance == TIM7)
  {
    __HAL_RCC_TIM7_CLK_ENABLE();
  }
  if(tim_baseHandle->Instance == TIM2)
  {
    __HAL_RCC_TIM2_CLK_ENABLE();
      hdma_tim2_up.Instance = DMA1_Channel4;
      hdma_tim2_up.Init.Request = DMA_REQUEST_TIM2_UP;
      hdma_tim2_up.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim2_up.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim2_up.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim2_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim2_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim2_up.Init.Mode = DMA_NORMAL;
      hdma_tim2_up.Init.Priority = DMA_PRIORITY_LOW;
      if (HAL_DMA_Init(&hdma_tim2_up) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim2_up, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim2_up);
  }
  if(tim_baseHandle->Instance == TIM4)
  {
    __HAL_RCC_TIM4_CLK_ENABLE();
    if (TIM4_OW == 1)
    {
      hdma_tim4_up.Instance = DMA1_Channel4;
      hdma_tim4_up.Init.Request = DMA_REQUEST_TIM4_UP;
      hdma_tim4_up.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim4_up.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim4_up.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim4_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim4_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim4_up.Init.Mode = DMA_NORMAL;
      hdma_tim4_up.Init.Priority = DMA_PRIORITY_LOW;
      if (HAL_DMA_Init(&hdma_tim4_up) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim4_up, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim4_up);
    }
    if (TIM4_OW == 2)
    {
    }
  }
  if(tim_baseHandle->Instance == TIM3)
  {
    __HAL_RCC_TIM3_CLK_ENABLE();
    if (TIM3_OW == 1)
    {
      hdma_tim3_up.Instance = DMA1_Channel4;
      hdma_tim3_up.Init.Request = DMA_REQUEST_TIM3_UP;
      hdma_tim3_up.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim3_up.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim3_up.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim3_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim3_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim3_up.Init.Mode = DMA_NORMAL;
      hdma_tim3_up.Init.Priority = DMA_PRIORITY_LOW;
      if (HAL_DMA_Init(&hdma_tim3_up) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim3_up, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim3_up);
    }
    if (TIM3_OW == 2)
    {
      hdma_tim3_up.Instance = DMA1_Channel2;
      hdma_tim3_up.Init.Request = DMA_REQUEST_TIM3_UP;
      hdma_tim3_up.Init.Direction = DMA_MEMORY_TO_PERIPH;
      hdma_tim3_up.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim3_up.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim3_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim3_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim3_up.Init.Mode = DMA_NORMAL;
      hdma_tim3_up.Init.Priority = DMA_PRIORITY_LOW;
      if (HAL_DMA_Init(&hdma_tim3_up) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim3_up, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim3_up);
    }
    if (TIM3_OW == 3)
    {
    }
  }
}
