#ifndef __STM32F4XX_IT_H
#define __STM32F4XX_IT_H

#ifdef __cplusplus
extern "C" {
#endif

/* Exported functions prototypes ---------------------------------------------*/
void SysTick_Handler(void);
void DMA1_Stream1_IRQHandler(void);
void DMA1_Stream6_IRQHandler(void);
void DMA1_Stream7_IRQHandler(void);
void DMA2_Stream2_IRQHandler(void);
void TIM1_IRQHandler(void);
void TIM3_IRQHandler(void);
void TIM8_IRQHandler(void);

#ifdef __cplusplus
}
#endif

#endif /* __STM32F4XX_IT_H */