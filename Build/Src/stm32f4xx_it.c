#include "main.h"
#include "stm32f4xx_it.h"

/* Extern handles used by IRQs */
extern DMA_HandleTypeDef hdma_tim2_ch3;
extern DMA_HandleTypeDef hdma_tim2_up;
extern DMA_HandleTypeDef hdma_tim2_ch4;
extern DMA_HandleTypeDef hdma_tim8_ch1;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim8;

void SysTick_Handler(void)
{
  HAL_IncTick();
}
void DMA1_Stream1_IRQHandler(void)
{
  HAL_DMA_IRQHandler(&hdma_tim2_ch3);
}
void DMA1_Stream6_IRQHandler(void)
{
  HAL_DMA_IRQHandler(&hdma_tim2_up);
}
void DMA1_Stream7_IRQHandler(void)
{
  HAL_DMA_IRQHandler(&hdma_tim2_ch4);
}
void DMA2_Stream2_IRQHandler(void)
{
  HAL_DMA_IRQHandler(&hdma_tim8_ch1);
}
void TIM1_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&htim1);
}
void TIM3_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&htim3);
}
void TIM8_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&htim8);
}
