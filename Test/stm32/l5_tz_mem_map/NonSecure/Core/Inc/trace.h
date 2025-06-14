#ifndef __COVERT_CHANNEL_H__
#define __COVERT_CHANNEL_H__

#include "main.h"

#define TO_STRING(name) #name
#define PRINT_MACRO(x) TO_STRING(x)

#define DEFINE_VICTIM(struct_name, func) \
    sVictimFunc struct_name = {func, #func, measure_time(func)}

typedef struct {
    void (*func)(void);
    const char* name;
    unsigned int time;
}sVictimFunc;

#define NO_COLLISION_CHAR '-'
#define COLLISION_CHAR 'X'
#define AMBIGUITY_CHAR 'O'

#define MOV   1
#define LDR   2
#define NOP   3
#define END   4
#define PUSH  5
#define SUB   6
#define ADD   7
#define MOVS  8
#define CMP   9
#define BLE   10
#define B     11
#define ADDS  12
#define LDRW  13
#define BX    14
#define BLX   15
#define MOVW  16
#define STR   17
#define LSL   18
#define ANDS  19
#define BNE   20
#define UXTB  21
#define STRB  22
#define BEQ   23
#define LD_PC 24
#define BL    25
#define RSB   26

#define N_INSTRUCTIONS  3000
#define BUFFER_SIZE     1000

#define MY_NOP()  __asm volatile("mov r8,r8")

#define TEN_NOPS()do {\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
		MY_NOP();\
	} while(0)

#define DELAY_6_CLOCKS() do { \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
		MY_NOP(); \
	} while(0)
// -------- TRACE FUNCTIONS ----------
#define NOPS_TO_AVOID_COLLISIONS() do { \
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
    TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
      TEN_NOPS();\
	} while(0)

unsigned int measure_time(void (*)(void));
void accurate_trace_time(sVictimFunc *);
void get_accurate_trace(int, int, int, void (*)(void));

// -------- VICTIM FUNCTIONS ----------
void print_1();
void victim_1_NS();
void victim_2_NS();
void if_else_true();
void if_else_false();
void light_op();
void heavy_op();
void access_near();
void access_far();

#endif