#ifndef __COVERT_CHANNEL_H__
#define __COVERT_CHANNEL_H__

#include "main.h"

#define MAX_SYMBOL  256
#define N_SAMPLES   100
#define TRASNFER_SIZE 10000

//#define TROJAN_SECURE
#define CONTENTION

#define DMA_IRQHandler  DMA2_Stream2_IRQHandler

#define ADDR_CONTENTION     0x20020000
#define ADDR_NO_CONTENTION  0x20000000

// #define DMA_IRQHandler  DMA2_Stream0_IRQHandler

// #define ADDR_CONTENTION     0x20020000
// #define ADDR_NO_CONTENTION  0x20000000

#define SETUP_COLLISION_SRAM1()do { \
	__asm("ldr r0, =%0" :: "i"(ADDR_CONTENTION)); \
} while(0)

#define SETUP_NO_COLLISION_DTCM()do { \
	__asm("ldr r0, =%0" :: "i"(ADDR_NO_CONTENTION)); \
} while(0)


#define SETUP_CONTENTION()do { \
		SETUP_COLLISION_SRAM1(); \
} while(0)

#define SETUP_NO_CONTENTION()do { \
		SETUP_NO_COLLISION_DTCM(); \
} while(0)


#define TEN_LDRS() do { \
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
} while(0)

#define HUND_LDRS()do {\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
	} while(0)






#endif