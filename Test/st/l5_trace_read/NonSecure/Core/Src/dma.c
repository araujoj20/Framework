#include "dma.h"

/* DMA handles*/
DMA_HandleTypeDef hdma_memtomem_dma1_channel1;
DMA_HandleTypeDef hdma_memtomem_dma2_channel3;

void MX_DMA_Init(void)
{   
    /* DMA controller clock enable */
    __HAL_RCC_DMAMUX1_CLK_ENABLE();
    __HAL_RCC_DMA1_CLK_ENABLE();
    __HAL_RCC_DMA2_CLK_ENABLE();

    /* Configure DMA request on DMA1_Channel1 */
    hdma_memtomem_dma1_channel1.Instance = DMA1_Channel1;
    hdma_memtomem_dma1_channel1.Init.Request = DMA_REQUEST_MEM2MEM;
    hdma_memtomem_dma1_channel1.Init.Direction = DMA_MEMORY_TO_MEMORY;
    hdma_memtomem_dma1_channel1.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_memtomem_dma1_channel1.Init.MemInc = DMA_MINC_ENABLE;
    hdma_memtomem_dma1_channel1.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_memtomem_dma1_channel1.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_memtomem_dma1_channel1.Init.Mode = DMA_NORMAL;
    hdma_memtomem_dma1_channel1.Init.Priority = DMA_PRIORITY_LOW;

    if (HAL_DMA_Init(&hdma_memtomem_dma1_channel1) != HAL_OK)
    {
        Error_Handler();
    }
    if (HAL_DMA_ConfigChannelAttributes(&hdma_memtomem_dma1_channel1, DMA_CHANNEL_NPRIV) != HAL_OK)
    {
        Error_Handler();
    }

    /* Configure DMA request on DMA2_Channel3 */
    hdma_memtomem_dma2_channel3.Instance = DMA2_Channel3;
    hdma_memtomem_dma2_channel3.Init.Request = DMA_REQUEST_MEM2MEM;
    hdma_memtomem_dma2_channel3.Init.Direction = DMA_MEMORY_TO_MEMORY;
    hdma_memtomem_dma2_channel3.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_memtomem_dma2_channel3.Init.MemInc = DMA_MINC_ENABLE;
    hdma_memtomem_dma2_channel3.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_memtomem_dma2_channel3.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_memtomem_dma2_channel3.Init.Mode = DMA_NORMAL;
    hdma_memtomem_dma2_channel3.Init.Priority = DMA_PRIORITY_LOW;

    if (HAL_DMA_Init(&hdma_memtomem_dma2_channel3) != HAL_OK)
    {
        Error_Handler();
    }
    if (HAL_DMA_ConfigChannelAttributes(&hdma_memtomem_dma2_channel3, DMA_CHANNEL_NPRIV) != HAL_OK)
    {
        Error_Handler();
    }

    /* DMA interrupt init */
    HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
    HAL_NVIC_SetPriority(DMA2_Channel3_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA2_Channel3_IRQn);
    HAL_NVIC_SetPriority(DMA1_Channel6_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel6_IRQn);
    HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
    HAL_NVIC_SetPriority(DMA1_Channel7_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel7_IRQn);
    HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);
    HAL_NVIC_SetPriority(DMA1_Channel4_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel4_IRQn);
}