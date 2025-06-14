#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

/* --- TIM handle declarations --- */
extern TIM_HandleTypeDef htim7;
extern TIM_HandleTypeDef htim8;

/* --- DMA handle declarations --- */
extern DMA_HandleTypeDef hdma_tim8_up;

/* --- MX_TIMx_Init prototypes --- */
void MX_TIM7_Init(void);
void MX_TIM8_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */