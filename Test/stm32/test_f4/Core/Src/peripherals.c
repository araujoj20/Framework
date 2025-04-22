/*
 * peripherals.c
 *
 *  Created on: Mar 20, 2025
 *      Author: araujoj20
 */

#include "peripherals.h"
#include "main.h"

UART_HandleTypeDef huart;

int __io_putchar(int ch){
    HAL_UART_Transmit(&huart, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
return ch;
}

void UART_Init(void)
{
    huart.Instance 		    = UART_INSTANCE;
    huart.Init.BaudRate     = UART_BAUDRATE;
    huart.Init.Mode 	    = UART_MODE_TX_RX;
//    huart.Init.WordLength 	= UART_WORDLENGTH_8B;
//    huart.Init.StopBits 		= UART_STOPBITS_1;
//    huart.Init.Parity 		= UART_PARITY_NONE;
//    huart.Init.HwFlowCtl 		= UART_HWCONTROL_NONE;
//    huart.Init.OverSampling 	= UART_OVERSAMPLING_16;

    if (HAL_UART_Init(&huart) != HAL_OK)
    {
        Error_Handler();
    }
}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{

    GPIO_InitTypeDef GPIO_InitStruct = {0};
    RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};
    if(uartHandle->Instance == UART_INSTANCE)
    {
    //  PeriphClkInitStruct.PeriphClockSelection = UART_RCC_PERIPHCLK;
    //  //PeriphClkInitStruct.Usart3ClockSelection = UART_RCC_CLKSOURCE;
    //  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
    //  {
    //      Error_Handler();
    //  }
        
        __HAL_RCC_UART_CLK_ENABLE();
        __HAL_RCC_GPIO_CLK_ENABLE();

        GPIO_InitStruct.Pin         = UART_TX_GPIO_PIN|UART_RX_GPIO_PIN;
        GPIO_InitStruct.Mode        = UART_GPIO_MODE;
        GPIO_InitStruct.Speed       = UART_GPIO_SPEED;
        GPIO_InitStruct.Alternate   = UART_GPIO_ALTERNATE;
        HAL_GPIO_Init(UART_GPIO_PORT, &GPIO_InitStruct);

    }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{

    if(uartHandle->Instance == UART_INSTANCE)
    {
        __HAL_RCC_UART_CLK_DISABLE();
        HAL_GPIO_DeInit(UART_GPIO_PORT, UART_TX_GPIO_PIN|UART_RX_GPIO_PIN);
    }
} 