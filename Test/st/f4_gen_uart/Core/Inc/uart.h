#ifndef __UART_H__
#define __UART_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

extern UART_HandleTypeDef husart2;

void MX_USART2_UART_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __UART_H__ */