#include "uart.h"

UART_HandleTypeDef hlpuart1;

int __io_putchar(int ch)
{
    HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
    return ch;
}

void MX_LPUART1_UART_Init(void)
{
    hlpuart1.Instance         = LPUART1;
    hlpuart1.Init.BaudRate    = 115200;
    hlpuart1.Init.Mode        = UART_MODE_TX_RX;
    hlpuart1.Init.WordLength  = UART_WORDLENGTH_8B;
    hlpuart1.Init.StopBits    = UART_STOPBITS_1;
    hlpuart1.Init.Parity      = UART_PARITY_NONE;
    hlpuart1.Init.HwFlowCtl   = UART_HWCONTROL_NONE;
    hlpuart1.Init.OverSampling= UART_OVERSAMPLING_16;

    if (HAL_UART_Init(&hlpuart1) != HAL_OK)
    {
        Error_Handler();
    }
}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    if(uartHandle->Instance == LPUART1)
    {
        __HAL_RCC_LPUART1_CLK_ENABLE();
        __HAL_RCC_GPIOG_CLK_ENABLE();

        GPIO_InitStruct.Pin       = GPIO_PIN_7 | GPIO_PIN_8;
        GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Speed     = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF8_LPUART1;
        HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);
    }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{
    if(uartHandle->Instance == LPUART1)
    {
        __HAL_RCC_LPUART1_CLK_DISABLE();
        HAL_GPIO_DeInit(GPIOG, GPIO_PIN_7 | GPIO_PIN_8);
    }
}