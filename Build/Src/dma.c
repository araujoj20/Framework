#include "dma.h"

/* DMA handles*/
DMA_HandleTypeDef hdma_memtomem_dma1_stream4;
DMA_HandleTypeDef hdma_memtomem_dma2_stream5;

void MX_DMA_Init(void)
{   
    /* DMA controller clock enable */
    __HAL_RCC_DMA1_CLK_ENABLE();
    __HAL_RCC_DMA2_CLK_ENABLE();

    /* Configure DMA request on DMA1_Stream4 */
    hdma_memtomem_dma1_stream4.Instance = DMA1_Stream4;
    hdma_memtomem_dma1_stream4.Init.Request = DMA_REQUEST_MEM2MEM;
    hdma_memtomem_dma1_stream4.Init.Direction = DMA_MEMORY_TO_MEMORY;
    hdma_memtomem_dma1_stream4.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_memtomem_dma1_stream4.Init.MemInc = DMA_MINC_ENABLE;
    hdma_memtomem_dma1_stream4.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_memtomem_dma1_stream4.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_memtomem_dma1_stream4.Init.Mode = DMA_NORMAL;
    hdma_memtomem_dma1_stream4.Init.Priority = DMA_PRIORITY_LOW;
    hdma_memtomem_dma1_stream4.Init.Channel = DMA_CHANNEL_0;
    hdma_memtomem_dma1_stream4.Init.FIFOMode = DMA_FIFOMODE_ENABLE;
    hdma_memtomem_dma1_stream4.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    hdma_memtomem_dma1_stream4.Init.MemBurst = DMA_MBURST_SINGLE;
    hdma_memtomem_dma1_stream4.Init.PeriphBurst = DMA_PBURST_SINGLE;

    if (HAL_DMA_Init(&hdma_memtomem_dma1_Stream4) != HAL_OK)
    {
        Error_Handler();
    }

    /* Configure DMA request on DMA2_Stream5 */
    hdma_memtomem_dma2_stream5.Instance = DMA2_Stream5;
    hdma_memtomem_dma2_stream5.Init.Request = DMA_REQUEST_MEM2MEM;
    hdma_memtomem_dma2_stream5.Init.Direction = DMA_MEMORY_TO_MEMORY;
    hdma_memtomem_dma2_stream5.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_memtomem_dma2_stream5.Init.MemInc = DMA_MINC_ENABLE;
    hdma_memtomem_dma2_stream5.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_memtomem_dma2_stream5.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_memtomem_dma2_stream5.Init.Mode = DMA_NORMAL;
    hdma_memtomem_dma2_stream5.Init.Priority = DMA_PRIORITY_LOW;
    hdma_memtomem_dma2_stream5.Init.Channel = DMA_CHANNEL_0;
    hdma_memtomem_dma2_stream5.Init.FIFOMode = DMA_FIFOMODE_ENABLE;
    hdma_memtomem_dma2_stream5.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    hdma_memtomem_dma2_stream5.Init.MemBurst = DMA_MBURST_SINGLE;
    hdma_memtomem_dma2_stream5.Init.PeriphBurst = DMA_PBURST_SINGLE;

    if (HAL_DMA_Init(&hdma_memtomem_dma2_Stream5) != HAL_OK)
    {
        Error_Handler();
    }

    /* DMA interrupt init */
    HAL_NVIC_SetPriority(DMA1_Stream4_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Stream4_IRQn);
    HAL_NVIC_SetPriority(DMA2_Stream5_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA2_Stream5_IRQn);
    HAL_NVIC_SetPriority(DMA1_Stream6_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Stream6_IRQn);
    HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
    HAL_NVIC_SetPriority(DMA1_Stream7_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Stream7_IRQn);
    HAL_NVIC_SetPriority(DMA2_Stream2_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA2_Stream2_IRQn);
}