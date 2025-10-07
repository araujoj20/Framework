#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "ee.h"

#include <stdio.h>
#include <string.h>


#include "stm32f4xx_hal.h"

#include "../../Core/Inc/uart.h"
#include "../../Core/Inc/tim.h"
#include "../../Core/Inc/print.h"
#include "../../Core/Inc/dma.h"

#include "../../Core/Inc/stm32f4xx_clock.h"
#include "../../Core/Inc/stm32f4xx_hal_conf.h"
#include "../../Core/Inc/stm32f4xx_it.h"



/* MACROS ---------------------------------------------*/
#define TO_STRING(name) #name
#define PRINT_MACRO(x) TO_STRING(x)

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
