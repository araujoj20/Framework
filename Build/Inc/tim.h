#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

/* --- TIM handle declarations --- */
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim8;

/* --- DMA handle declarations --- */
extern DMA_HandleTypeDef hdma_tim2_up;
extern DMA_HandleTypeDef hdma_tim8_up;

/* --- MX_TIMx_Init prototypes --- */
void MX_TIM1_Init(void);
void MX_TIM2_Init(void);
void MX_TIM2_Init_OW_1(void);
void MX_TIM2_Init_OW_2(void);
void MX_TIM2_Init_OW_3(void);
void MX_TIM2_Init_OW_4(void);
void MX_TIM3_Init(void);
void MX_TIM3_Init_OW_1(void);
void MX_TIM8_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */