/*
 * peripherals.c
 *
 *  Created on: April 24, 2025
 *      Author: araujoj20
 */

#include "dma.h"
#include "main.h"

DMA_HandleTypeDef hdma;

void DMA_Init(void)
{

    /* DMA controller clock enable */

    #if defined(STM32L552xx)
        __HAL_RCC_DMAMUX_CLK_ENABLE();
    #endif

    __HAL_RCC_DMA_CLK_ENABLE();

    /* Configure DMA request hdma on DMAx_Channelx or DMAx_Streamx */
    hdma.Instance = DMA_INSTANCE;
    //hdma.Init.Request = DMA_REQUEST;
    hdma.Init.Direction = DMA_DIRECTION;
    hdma.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma.Init.MemInc = DMA_MINC_DISABLE;
    hdma.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma.Init.Mode = DMA_NORMAL;
    hdma.Init.Priority = DMA_PRIORITY_LOW;

    if (HAL_DMA_Init(&hdma) != HAL_OK)
    {
    Error_Handler();
    }

    #if defined(STM32L552xx)
        if (HAL_DMA_ConfigChannelAttributes(&hdma, DMA_CHANNEL_NPRIV) != HAL_OK)
        {
            Error_Handler();
        }
    #endif
  
  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA_IRQ, 0, 0);
  HAL_NVIC_EnableIRQ(DMA_IRQ);

}