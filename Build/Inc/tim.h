#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

/* --- TIM handle declarations --- */

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim8;
TIM_HandleTypeDef htim13;

/* --- DMA Handle declarations --- */
DMA_HandleTypeDef hdma_tim2_up;
DMA_HandleTypeDef hdma_tim1_ch3;
DMA_HandleTypeDef hdma_tim2_ch4;
DMA_HandleTypeDef hdma_tim8_ch1;

/* --- MX_TIMx_Init prototypes --- */
void MX_TIM1_Init(void);
void MX_TIM1_OW_1_Init(void);
void MX_TIM1_OW_2_Init(void);
void MX_TIM1_OW_3_Init(void);
void MX_TIM2_Init(void);
void MX_TIM2_OW_1_Init(void);
void MX_TIM2_OW_2_Init(void);
void MX_TIM2_OW_3_Init(void);
void MX_TIM2_OW_4_Init(void);
void MX_TIM3_Init(void);
void MX_TIM3_OW_1_Init(void);
void MX_TIM8_Init(void);
void MX_TIM13_Init(void);
void MX_TIM13_OW_1_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */