/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "icache.h"
#include "usart.h"
#include "tim.h"
#include "gpio.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "secure_nsc.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define BUFFER_SIZE              1000

#define NO_COLLISION 0
#define CLEAN_AMBIGUITY 0
#define COLLISION 1
#define AMBIGUITY 2

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

// 600 Nops
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

volatile int time1 = 0, time2 = 0, *ptr_cnt = 0x40001400+0x24, result,
              *tim6_cnt = 0x40001000+0x24 ;

#define N_SHIFTS 9
// Equal to the number of DMA_reads -1, because we are making measuring the
// diference between reads, so, less one in total
#define N_DMA_COLLISIONS_LATENCY ((BUFFER_SIZE)-1)
int dma_collisions_latencies[N_SHIFTS][N_DMA_COLLISIONS_LATENCY] = {0};
// Equal to the size of the dma_collisions_latencies times the worst time (12)
// times 4, to give enough room to accommodate all clocks
// Each dma read, at minimum, represents 9 processor clocks.
#define N_CLOCKS ((N_DMA_COLLISIONS_LATENCY)*12*4)
char cpu_clock_collisions[N_CLOCKS]= {0};
float coverage;

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
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
int __io_putchar(int ch){ // printf
	HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
return ch;
}
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

//IN SRAM
#define N_SHFTS 9
#define MAX_SECRET 256
static uint32_t dst[N_SHFTS][BUFFER_SIZE];
static uint32_t dst_covert[BUFFER_SIZE] = {0};
static uint32_t dst2[BUFFER_SIZE];

// PATH1 (r2 > r1) // 29/28 CLOCKS
int victim_instructions_PATH1[] = { LDR,  // SetUp code 1 clock r3
          BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble)
          BLX,
          BLX,
          BLX,
          PUSH, // 1 clock
          SUB,  // 1 clock
          ADD,  // 1 clock
          MOVW, // 1 clock
          STR,  // 1 clock
          MOVS, // 1 clock
          STR,  // 1 clock
          LDR,  // 1 clock
          LDR,  // 1 clock r3
          // CMP,  // 2 clock hazard RAW r3 (STALL / Pipeline Bubble)
          CMP,  // 2 clock hazard RAW r3
          BLE,  // 1 clock
          LDR,  // 1 clock r3
          // STR,  // 2 clock hazard RAW r3  (STALL / Pipeline Bubble)
          STR,  // 2 clock hazard RAW r3
          B,    // 3 clock
          B,
          B,
        //  NOP,  // 1 clock ou 0 clock
          ADDS, // 1 clock
          MOV,  // 1 clock
          LDR,  // 1 clock
          BX,   // 3 clock
          BX,
          BX,
          END};

  // PATH2 (r2 <= r1) // 28/27 CLOCKS
int victim_instructions_PATH2[] = { LDR,  // SetUp code 1 clock r3
          BLX,  // SetUp code 3clocks + 1 hazard RAW r3 (STALL / Pipeline Bubble)
          BLX,
          BLX,
          BLX,
          PUSH, // 1 clock
          SUB,  // 1 clock
          ADD,  // 1 clock
          MOVW, // 1 clock
          STR,  // 1 clock
          MOVS, // 1 clock
          STR,  // 1 clock
          LDR,  // 1 clock
          LDR,  // 1 clock r3
          // CMP,  // 2 clock hazard RAW r3 (STALL / Pipeline Bubble)
          CMP,  // 2 clock hazard RAW r3
          BLE,  // 3 clockS
          BLE,
          BLE,
          LDR,  // 1 clock r3
          // STR,  // 2 clock hazard RAW r3  (STALL / Pipeline Bubble)
          STR,  // 2 clock hazard RAW r3
         // NOP,  // 1 clock ou 0 clock
          ADDS, // 1 clock
          MOV,  // 1 clock
          LDR,  // 1 clock
          BX,   // 3 clock
          BX,
          BX,
          END};

#define PUTTY
#define RED_COLOR() printf("\033[1;31m")
#define RESET_COLOR() printf("\033[0m")

void print_instructions(int *instructions){
  // Print Instructions
  int instruction = 0;
  printf("INS\t|");
  while(instructions[instruction] != END){
    if(instructions[instruction] == MOV)
      printf(" MOV\t|");
    if(instructions[instruction] == LDR)
      printf(" LDR\t|");
    if(instructions[instruction] == NOP)
      printf(" NOP\t|");
    if(instructions[instruction] == PUSH)
      printf("PUSH\t|");
    if(instructions[instruction] == SUB)
      printf(" SUB\t|");
    if(instructions[instruction] == ADD)
      printf(" ADD\t|");
    if(instructions[instruction] == MOVS)
      printf("MOVS\t|");
    if(instructions[instruction] == CMP)
      printf(" CMP\t|");
    if(instructions[instruction] == BLE)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BLE\t|");
        RESET_COLOR();
        }
      #else
        printf(" BLE\t|");
      #endif
    if(instructions[instruction] == B)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf("   B\t|");
        RESET_COLOR();
        }
      #else
        printf("   B\t|");
      #endif
    if(instructions[instruction] == ADDS)
      printf("ADDS\t|");
    if(instructions[instruction] == LDRW)
      printf("LDRW\t|");
    if(instructions[instruction] == BX)
      printf("  BX\t|");
    if(instructions[instruction] == BLX)
      printf(" BLX\t|");
    if(instructions[instruction] == MOVW)
      printf("MOVW\t|");
    if(instructions[instruction] == STR)
      printf(" STR\t|");
    if(instructions[instruction] == LSL)
      printf(" LSL\t|");
    if(instructions[instruction] == ANDS)
      printf("ANDS\t|");
    if(instructions[instruction] == BNE)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BNE\t|");
        RESET_COLOR();
        }
      #else
        printf(" BNE\t|");
      #endif
    if(instructions[instruction] == UXTB)
      printf("UXTB\t|");
    if(instructions[instruction] == STRB)
      printf("STRB\t|");
    if(instructions[instruction] == BEQ)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf(" BEQ\t|");
        RESET_COLOR();
        }
      #else
        printf(" BEQ\t|");
      #endif
    if(instructions[instruction] == LD_PC)
      printf("LD_PC\t|");
    if(instructions[instruction] == BL)
      #ifdef PUTTY
        {
        RED_COLOR();
        printf("  BL\t|");
        RESET_COLOR();
        }
      #else
        printf("  BL\t|");
      #endif
    if(instructions[instruction] == RSB)
      printf(" RSB\t|");
    instruction++;
  }
  printf("\r\n");
}

void print_collisions(){
  printf("CLK\t|");
  // print clock
  // for(int i=0; i < N_CLOCKS; i++ )
  for(int i=0; i < 100; i++ )
    printf("%3d\t|", i);
  printf("\n");
  printf("COL\t|");
  // for(int clock=0; clock < N_CLOCKS; clock++){
  for(int clock=0; clock < 100; clock++){
    if(cpu_clock_collisions[clock] == COLLISION)
      printf("%3c\t|", COLLISION_CHAR);
    if(cpu_clock_collisions[clock] == NO_COLLISION)
      printf("%3c\t|", NO_COLLISION_CHAR);
    if(cpu_clock_collisions[clock] == AMBIGUITY)
      printf("%3c\t|", AMBIGUITY_CHAR);
  }
  printf("\n");
  // NOTA: Esta função cracha na última iteração pk não chega a imprimir o fim
  printf("FIM\n");
}

void print_1(){};
void victim_1_NS(){
  int num1, num2, max;
  num1 = 50;
  num2 = 20;
  if((num1>num2))
      max = num1;
  else
      max = num2;
}

void victim_2_NS(){
  int num1, num2, max;
  num1 = 20;
  num2 = 50;
  if((num1>num2))
      max = num1;
  else
      max = num2;
}

/* TODO

__attribute__((optimize(0))) void get_sliding_window_trace(){
  int instruction = 0;
  for(int shift=0; shift < N_SHIFTS ; shift++){
    (sliding_window[shift])(victim_1_S);
    add_collisions(shift);
  }
  printf("\n");
  print_all_shifts_collisions();
  // process_collisions();
  // print_instructions(victim_instructions);
  // print_collisions();
}
*/

//******************************************************************************
// DMA Side-Channel -> Accurate Tracing
//******************************************************************************
// Note: For back-to-back 1 clock precision tracing (when the trace is taken in
//multiple rounds) ARR can have other values than 1, but in the range of 1 to 9,
//otherwise the next DMA transaction, does not start right after the previous one
#define START_ACCURATE_TRACE() do{\
    int volatile  *tim3_CR1 =   0x40000400, \
                  *tim3_SR =    0x40000410,  \
                  *tim3_DIER =  0x4000040C,  \
                  *tim3_EGR =   0x40000414,  \
                  *tim3_CNT =   0x40000424, \
                  *tim3_ARR =   0x4000042C; \
    *tim3_ARR = auto_reload; \
    *tim3_CNT = (auto_reload-1) - clock_to_collide; \
    *tim3_SR = 0; \
    *tim3_DIER = 0; \
    HAL_TIM_Base_Start(&htim7);                                      \
    HAL_DMA_Start(&hdma_tim3_up, (uint32_t)ptr_cnt, (uint32_t)&dst_covert, n_collisions); \
    __HAL_DMA_ENABLE(&hdma_tim3_up); \
    *tim3_DIER = 1<<8; \
    __HAL_TIM_ENABLE(&htim3);\
    MY_NOP(); /* 1 Clock to wait that tim5 start counting*/\
    MY_NOP(); /* 1 Clock for the counter reach the smallest ARR value = 1*/\
    MY_NOP(); /* 1 clock for the interrupt (a.k.a, update event) be generated*/\
    MY_NOP(); /* 1 clock dma setup*/\
    MY_NOP(); /* 1 clock dma setup*/\
    DELAY_6_CLOCKS(); /* delay to ensure the 1st collision happens in the victim 1st clock*/\
  }while(0)

#define END_ACCURATE_TRACE() do{\
    NOPS_TO_AVOID_COLLISIONS(); \
    __HAL_TIM_DISABLE(&htim3);\
    HAL_DMA_Abort(&hdma_tim3_up);\
    HAL_TIM_Base_Stop(&htim7);\
    *ptr_cnt = 0;\
  }while(0)




#define N_INSTRUCTIONS 500

char dma_accurate_collisions_latencies[N_INSTRUCTIONS] = {0};

// void print_accurate_collision(){
//   for(int j=1; j<2; j++){
//     printf("%d %d\n", j, dst_covert[j]-dst_covert[j-1] );
//     // printf("%d %d\n", j, dst_covert[j-1] );

//   }
//   printf("\n");
// }
void print_clock(int *instructions){
  // print clock
  int i = 0, instruction = 0;
  printf("CLK\t|");
  while(instructions[instruction++] != END)
    printf("%3d\t|", i++);
  printf("\r\n");
}
void process_accurate_collision(int collision_n){
  dma_accurate_collisions_latencies[collision_n] = (dst_covert[1]-dst_covert[0])&0xFF;
}

void print_accurate_collision(){
  printf("CLK\t|");
  for(int clk = 0; clk < 50; clk++){
     printf(" %3d\t|", clk );
  }
  printf("\r\n");
  printf("COL\t|");
  for(int clk = 1; clk < N_INSTRUCTIONS; clk++){
     printf(" %3d\t|", dma_accurate_collisions_latencies[clk] );
     if(!(clk%50))
      printf("\r\n\t");
  }
  printf("\r\n");
}

void print_accurate_collision_w_instruction(int *instructions){
  int collision = 0, instruction = 0;
  printf("COL\t|");
  while(instructions[instruction] != END){
    printf(" %3d\t|", dma_accurate_collisions_latencies[collision] );
    instruction++;
    collision++;
  }
  printf("\r\n");
}


// Auto_reload -> number o clocks the timer will count untill interrupt
// clock_to_collide -> the clock where the 1st interrupt will occur
// n_collisions -> number of collisions that we want to provoke, i.e., DMA reads
__attribute__((optimize(0))) void get_accurate_trace( int  auto_reload,
                                                      int clock_to_collide,
                                                      int n_collisions,
                                                      void (*victim)()){
  //clock_to_collide is used inside this macro
  START_ACCURATE_TRACE();
  // Victim start --------------------------------------------------------------
  victim();
  // Victim end ----------------------------------------------------------------
  END_ACCURATE_TRACE();
}

void accurate_trace(){
  int auto_reload = 1, n_collisions = 2;
  int i = 0, instruction = 0;
  // Coarse Trace S-> Calling Victim PATH 1 --------------------------------

  //TODO
   printf("TRACE S 1 world\r\n");
   for(int clk = 0; clk < 400; clk++){
      get_accurate_trace(auto_reload, clk, n_collisions, victim_1_S);
      process_accurate_collision(clk);
   }
   print_accurate_collision();

   i = 0, instruction = 0;

   printf("TRACE S 2 world\r\n");
      for(int clk = 0; clk < 400; clk++){
         get_accurate_trace(auto_reload, clk, n_collisions, victim_2_S);
         process_accurate_collision(clk);
      }

      print_accurate_collision();


  // print_accurate_collision();

  // Accurate Trace NS -> Calling Victim PATH 1 --------------------------------
  // while(victim_instructions_PATH1[instruction++] != END){
  //   get_accurate_trace(auto_reload, i, n_collisions, victim_1_NS);
  //   process_accurate_collision(i++);
  // }
  // printf("\r\n");
  // printf("Trace PATH1 (NS) \r\n");
  // print_clock(victim_instructions_PATH1);
  // print_instructions(victim_instructions_PATH1);
  // print_accurate_collision_w_instruction(victim_instructions_PATH1);
  // printf("\r\n");



  // // print_accurate_collision();

  // // Accurate Trace NS -> Calling Victim PATH 2 --------------------------------
  // i = 0, instruction = 0;
  // while(victim_instructions_PATH2[instruction++] != END){
  //   get_accurate_trace(auto_reload, i, n_collisions, victim_2_NS);
  //   process_accurate_collision(i++);
  // }
  // printf("\r\n");
  // printf("Trace PATH2 (NS)  \r\n");
  // print_clock(victim_instructions_PATH2);
  // print_instructions(victim_instructions_PATH2);
  // print_accurate_collision_w_instruction(victim_instructions_PATH2);

  // PRINT BOTH PATHS AND THEIR COLLISION PATTERNS

  // Accurate Trace NS -> Calling Victim PATH 1 --------------------------------
  i = 0, instruction = 0;
  while(victim_instructions_PATH1[instruction++] != END){
    get_accurate_trace(auto_reload, i, n_collisions, victim_1_NS);
    process_accurate_collision(i++);
  }
  printf("\r\n");
  printf("Trace PATH1 (NS)  \r\n");
  print_clock(victim_instructions_PATH1);
  print_instructions(victim_instructions_PATH1);
  print_accurate_collision_w_instruction(victim_instructions_PATH1);
  printf("\r\n");

  // Accurate Trace NS -> Calling Victim PATH 2 --------------------------------
  i = 0, instruction = 0;
  while(victim_instructions_PATH2[instruction++] != END){
    get_accurate_trace(auto_reload, i, n_collisions, victim_2_NS);
    process_accurate_collision(i++);
  }
  printf("\r\n");
  printf("Trace PATH2 (NS)  \r\n");
  print_clock(victim_instructions_PATH2);
  print_instructions(victim_instructions_PATH2);
  print_accurate_collision_w_instruction(victim_instructions_PATH2);
}


void ICache_invalidation(){
        if (READ_BIT(ICACHE->SR, ICACHE_SR_BUSYF) != 0U)
             {
               return -1;
             }
             else
             {
               /* Make sure BSYENDF is reset before to start cache invalidation */
               CLEAR_BIT(ICACHE->FCR, ICACHE_FCR_CBSYENDF);

               /* Launch cache invalidation */
               SET_BIT(ICACHE->CR, ICACHE_CR_CACHEINV);

                while (READ_BIT(ICACHE->SR, ICACHE_SR_BSYENDF) == 0U);

             }
             /* Clear BSYENDF */
            WRITE_REG(ICACHE->FCR, ICACHE_FCR_CBSYENDF);

	}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

	/* USER CODE BEGIN 1 */
	volatile int time_push_pops = 0, *ptr;
	register int r4 __asm("r4");
	register int r5 __asm("r5");
	register int r6 __asm("r6");
	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */
	SysTick->CTRL = 0; //Disable systick

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_DMA_Init();
	MX_LPUART1_UART_Init();
	MX_TIM3_Init();
	MX_TIM7_Init();
	MX_ICACHE_Init();
	/* USER CODE BEGIN 2 */
	ICache_invalidation();

	printf("FW FULL NS & S \r\n");

	accurate_trace();


	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	while (1)
	{
		/* USER CODE END WHILE */

		/* USER CODE BEGIN 3 */
	}
	/* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE0) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 55;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
