#include "tim.h"

/* --- TIM Handle declarations --- */

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim8;

/* --- OW Variables --- */
uint8_t TIM2_OW = 0;
uint8_t TIM3_OW = 0;

/* --- DMA Handle declarations --- */
DMA_HandleTypeDef hdma_tim2_up;
DMA_HandleTypeDef hdma_tim1_ch3;
DMA_HandleTypeDef hdma_tim2_ch4;
DMA_HandleTypeDef hdma_tim8_ch1;

/* --- MX_TIMERS Init functions --- */

void MX_TIM1_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 65535;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_OC1REF;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_ENABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM2_Init(void)
{
  TIM2_OW = 0;

  if (__HAL_RCC_TIM2_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim2);
  }

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 2;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM2_Init_OW_1(void)
{
  TIM2_OW = 1;

  if (__HAL_RCC_TIM2_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim2);
  }

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 22;
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
  
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_OC1;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

void MX_TIM2_Init_OW_2(void)
{
  TIM2_OW = 2;

  if (__HAL_RCC_TIM2_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim2);
  }

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

void MX_TIM2_Init_OW_3(void)
{
  TIM2_OW = 3;

  if (__HAL_RCC_TIM2_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim2);
  }

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 2233;
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

void MX_TIM2_Init_OW_4(void)
{
  TIM2_OW = 4;

  if (__HAL_RCC_TIM2_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim2);
  }

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 2233;
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

void MX_TIM3_Init(void)
{
  TIM3_OW = 0;

  if (__HAL_RCC_TIM3_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim3);
  }

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

  if (__HAL_RCC_TIM3_IS_CLK_ENABLED()) {
    HAL_TIM_Base_DeInit(&htim3);
  }

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

void MX_TIM8_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  htim8.Instance = TIM8;
  htim8.Init.Prescaler = 0;
  htim8.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim8.Init.Period = 222;
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


void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{
  if(tim_baseHandle->Instance == TIM1)
  {
    __HAL_RCC_TIM1_CLK_ENABLE();
  }
  if(tim_baseHandle->Instance == TIM2)
  {
    __HAL_RCC_TIM2_CLK_ENABLE();
    if (TIM2_OW == 1)
    {
      hdma_tim2_up.Instance = DMA1_Stream6;
      hdma_tim2_up.Init.Request = DMA_REQUEST_TIM2_UP;
      hdma_tim2_up.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim2_up.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim2_up.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim2_up.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim2_up.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim2_up.Init.Mode = DMA_NORMAL;
      hdma_tim2_up.Init.Priority = DMA_PRIORITY_LOW;
      hdma_tim2_up.Init.Channel = DMA_Channel3;
      hdma_tim2_up.Init.FIFOMode = DMA_FIFOMODE_DISABLE;

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
    if (TIM2_OW == 2)
    {
      hdma_tim1_ch3.Instance = DMA2_Stream6;
      hdma_tim1_ch3.Init.Request = DMA_REQUEST_TIM2_UP;
      hdma_tim1_ch3.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim1_ch3.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim1_ch3.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim1_ch3.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim1_ch3.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim1_ch3.Init.Mode = DMA_NORMAL;
      hdma_tim1_ch3.Init.Priority = DMA_PRIORITY_LOW;
      hdma_tim1_ch3.Init.Channel = DMA_Channel6;
      hdma_tim1_ch3.Init.FIFOMode = DMA_FIFOMODE_DISABLE;

      if (HAL_DMA_Init(&hdma_tim1_ch3) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim1_ch3, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim1_ch3);
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_CC3], hdma_tim1_ch3);
    }
    if (TIM2_OW == 3)
    {
      hdma_tim1_ch3.Instance = DMA2_Stream6;
      hdma_tim1_ch3.Init.Request = DMA_REQUEST_TIM2_UP;
      hdma_tim1_ch3.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim1_ch3.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim1_ch3.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim1_ch3.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim1_ch3.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim1_ch3.Init.Mode = DMA_NORMAL;
      hdma_tim1_ch3.Init.Priority = DMA_PRIORITY_LOW;
      hdma_tim1_ch3.Init.Channel = DMA_Channel6;
      hdma_tim1_ch3.Init.FIFOMode = DMA_FIFOMODE_DISABLE;

      if (HAL_DMA_Init(&hdma_tim1_ch3) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim1_ch3, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim1_ch3);
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_CC3], hdma_tim1_ch3);
    }
    if (TIM2_OW == 4)
    {
      hdma_tim2_ch4.Instance = DMA1_Stream7;
      hdma_tim2_ch4.Init.Request = DMA_REQUEST_TIM2_UP;
      hdma_tim2_ch4.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim2_ch4.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim2_ch4.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim2_ch4.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim2_ch4.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim2_ch4.Init.Mode = DMA_NORMAL;
      hdma_tim2_ch4.Init.Priority = DMA_PRIORITY_LOW;
      hdma_tim2_ch4.Init.Channel = DMA_Channel3;
      hdma_tim2_ch4.Init.FIFOMode = DMA_FIFOMODE_DISABLE;

      if (HAL_DMA_Init(&hdma_tim2_ch4) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim2_ch4, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim2_ch4);
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_CC4], hdma_tim2_ch4);
    }
  }
  if(tim_baseHandle->Instance == TIM3)
  {
    __HAL_RCC_TIM3_CLK_ENABLE();
    if (TIM3_OW == 1)
    {
    }
  }
  if(tim_baseHandle->Instance == TIM8)
  {
    __HAL_RCC_TIM8_CLK_ENABLE();
      hdma_tim8_ch1.Instance = DMA2_Stream2;
      hdma_tim8_ch1.Init.Request = DMA_REQUEST_TIM8_UP;
      hdma_tim8_ch1.Init.Direction = DMA_PERIPH_TO_MEMORY;
      hdma_tim8_ch1.Init.PeriphInc = DMA_PINC_DISABLE;
      hdma_tim8_ch1.Init.MemInc = DMA_MINC_ENABLE;
      hdma_tim8_ch1.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
      hdma_tim8_ch1.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
      hdma_tim8_ch1.Init.Mode = DMA_NORMAL;
      hdma_tim8_ch1.Init.Priority = DMA_PRIORITY_LOW;
      hdma_tim8_ch1.Init.Channel = DMA_Channel7;
      hdma_tim8_ch1.Init.FIFOMode = DMA_FIFOMODE_DISABLE;

      if (HAL_DMA_Init(&hdma_tim8_ch1) != HAL_OK)
      {
        Error_Handler();
      }
      if (HAL_DMA_ConfigChannelAttributes(&hdma_tim8_ch1, DMA_CHANNEL_NPRIV) != HAL_OK)
      {
        Error_Handler();
      }
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_UPDATE], hdma_tim8_ch1);
      __HAL_LINKDMA(tim_baseHandle, hdma[TIM_DMA_ID_CC1], hdma_tim8_ch1);
  }
}
