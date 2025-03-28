#ifndef __PERIPHERALS_H__
#define __PERIPHERALS_H__

//#include "main.h"

#include "stm32f7xx_hal.h"

#define UART_INSTANCE USART3
#define UART_BAUDRATE 115200
#define UART_RCC_PERIPHCLK RCC_PERIPHCLK_USART3
#define UART_RCC_CLKSOURCE RCC_USART3CLKSOURCE_PCLK1
#define __HAL_RCC_GPIO_CLK_ENABLE  __HAL_RCC_GPIOD_CLK_ENABLE
#define __HAL_RCC_UART_CLK_ENABLE  __HAL_RCC_USART3_CLK_ENABLE
#define __HAL_RCC_UART_CLK_DISABLE __HAL_RCC_USART3_CLK_DISABLE
#define UART_TX_GPIO_PIN	GPIO_PIN_8
#define UART_RX_GPIO_PIN	GPIO_PIN_9
#define UART_GPIO_PORT GPIOD
#define UART_GPIO_MODE GPIO_MODE_AF_PP
#define UART_GPIO_SPEED GPIO_SPEED_FREQ_VERY_HIGH // GPIO_SPEED_FREQ_LOW = 0 no need to change
#define UART_GPIO_ALTERNATE GPIO_AF7_USART3 // IMPORTANT!!!

void UART_Init(void);
//void UART_Init(UART_HandleTypeDef*, USART_TypeDef, uint32_t);

#endif /* __PERIPHERALS_H__ */
