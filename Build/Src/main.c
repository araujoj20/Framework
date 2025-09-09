/* Includes ------------------------------------------------------------------*/
#include "main.h"

int main(void)
{
    HAL_Init();
    SystemClock_Config();
    
    MX_DMA_Init();
    /* Timers initialization */
    MX_TIM1_Init();
    // MX_TIM1_OW_1_Init();
    // MX_TIM1_OW_2_Init();
    // MX_TIM1_OW_3_Init();
    MX_TIM2_Init();
    // MX_TIM2_OW_1_Init();
    // MX_TIM2_OW_2_Init();
    // MX_TIM2_OW_4_Init();
    MX_TIM3_Init();
    // MX_TIM3_OW_1_Init();
    MX_TIM8_Init();
    MX_TIM13_Init();
    // MX_TIM13_OW_1_Init();

    while (1)
    {
    }
}