#ifndef __COVERT_CHANNEL_H__
#define __COVERT_CHANNEL_H__

#include "main.h"

#define SETUP_CONTENTION_SRAM1()do { \
    __asm("ldr r0, =0x20018000"); \
} while(0)

#define SETUP_NO_CONTENTION()do { \
    __asm("ldr r0, =0x20030000"); \
} while(0)

#define SETUP_CONTENTION()do { \
	  SETUP_CONTENTION_SRAM1(); \
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

#define MAX_SYMBOL 256
#define N_SAMPLES 100
#define TRASNFER_SIZE 8000

//#define TROJAN_SECURE
#define CONTENTION


void covert_channel(void);


#endif