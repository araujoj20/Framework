#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#ifdef TZEN
    #include "secure_nsc.h"
#endif

#include "stdio.h"

#include "stm32l5xx_hal.h"
#include "stm32l5xx_clock.h"
#include "icache.h"


#include "uart.h"
#include "dma.h"
#include "tim.h"
#include "trace.h"

/* MACROS ---------------------------------------------*/
#define TO_STRING(name) #name
#define PRINT_MACRO(x) TO_STRING(x)

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */