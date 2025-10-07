#include "../../Core/Inc/uart.h"


UART_HandleTypeDef husart2;

// int __io_putchar(int ch)
// {
//     HAL_UART_Transmit(&husart2, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
//     return ch;
// }

void MX_USART2_Init(void)
{
    husart2.Instance         = USART2;
    husart2.Init.BaudRate    = 115200;
    husart2.Init.Mode        = UART_MODE_TX_RX;
    husart2.Init.WordLength  = UART_WORDLENGTH_8B;
    husart2.Init.StopBits    = UART_STOPBITS_1;
    husart2.Init.Parity      = UART_PARITY_NONE;
    husart2.Init.HwFlowCtl   = UART_HWCONTROL_NONE;
    husart2.Init.OverSampling= UART_OVERSAMPLING_16;

    if (HAL_UART_Init(&husart2) != HAL_OK)
    {
    	Error_Handler();
    }
}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    if(uartHandle->Instance == USART2)
    {
        __HAL_RCC_USART2_CLK_ENABLE();
        __HAL_RCC_GPIOA_CLK_ENABLE();

        GPIO_InitStruct.Pin       = GPIO_PIN_2 | GPIO_PIN_3;
        GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull      = GPIO_NOPULL;
        GPIO_InitStruct.Speed     = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{
    if(uartHandle->Instance == USART2)
    {
        __HAL_RCC_USART2_CLK_DISABLE();
        HAL_GPIO_DeInit(GPIOA, GPIO_PIN_2 | GPIO_PIN_3);
    }
}
