#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "../../Core/Inc/main.h"

/* --- TIM handle declarations --- */
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;

/* --- DMA handle declarations --- */
extern DMA_HandleTypeDef hdma_tim1_up;

/* --- MX_TIMx_Init prototypes --- */
void MX_TIM1_Init(void);
void MX_TIM2_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */
