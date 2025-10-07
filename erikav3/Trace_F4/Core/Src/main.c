#include "../../Core/Inc/main.h"

OsEE_bool volatile stk_wrong = OSEE_FALSE;
OsEE_addr volatile old_sp;
uint32_t volatile idle_cnt;

extern TASK(Task1); //DeclareTask(Task1); //extern void FuncTask1(void);

extern void idle_hook(void);
extern void StartupHook(void);

#define	IDLE_CNT_MAX	1000000U


#define OSEE_BREAK_POINT()  do {                                    \
	HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);							\
    DisableAllInterrupts();                                         \
    my_printf("Test Failed!!!, line:" OSEE_S(__LINE__) " \r\n"); 	\
    while ( 1 ) {                                                   \
      ;                                                             \
    }                                                               \
  } while ( 0 )

#define osEE_CheckStackIntegrity() do {		\
	if ( !stk_wrong ) {						\
		if (!old_sp) {						\
			old_sp = osEE_get_SP();			\
		}									\
		else if (old_sp != osEE_get_SP()) {	\
			stk_wrong = OSEE_TRUE;			\
			OSEE_BREAK_POINT();				\
		}									\
	}										\
} while ( 0 ) 								\

void Error_Handler(void)
{
	HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
	while (1){;}
}



void SerialISR(void)
{
	HAL_UART_IRQHandler(&husart2);
}

void DmaISR(void){

	HAL_DMA_IRQHandler(&hdma_tim1_up);

}

void DMA2_Stream5_IRQHandler(void)
{
  /* USER CODE BEGIN DMA2_Stream5_IRQn 0 */

  /* USER CODE END DMA2_Stream5_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_tim1_up);
  /* USER CODE BEGIN DMA2_Stream5_IRQn 1 */

  /* USER CODE END DMA2_Stream5_IRQn 1 */
}

void MX_GPIO_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    __HAL_RCC_GPIOD_CLK_ENABLE();

    GPIO_InitStruct.Pin = GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);
}



#define SETUP_COLLISION_SRAM1()do { \
	__asm("ldr r5, =0x20000000"); \
} while(0)

#define SETUP_NO_COLLISION()do { \
	__asm("ldr r5, =0x2001C000"); \
} while(0)

#define SETUP_CONTENTION()do { \
	SETUP_COLLISION_SRAM1(); \
} while(0)

#define SETUP_NO_CONTENTION()do { \
	SETUP_NO_COLLISION(); \
} while(0)

#define TEN_LDRS() do { \
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
	__asm volatile("ldr r1, [r5]");\
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

/*
 * NOP instruction cannot used, because it is not reliable!
 * Sometimes it lasts 1 clock, sometimes 0 clocks.
 * Even with -o0 and the actual nop being present in the asm code.
 * I think the processor sometimes does not execute the nop instructions.
 * Moving the contents of r8 to r8 itself, doesn’t change the state of the
 * r8 register, and it’s similar to a NOP instruction
 */
#define MY_NOP()  __asm volatile("mov r8, r8")

#define FIVE_NOPS()do {\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
} while(0)

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

#define HUND_NOPS()do {\
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

#define VICTIM_CODE()do {\
	MY_NOP(); \
	SETUP_CONTENTION(); \
	__asm volatile("ldr r1, [r5]"); \
	__asm volatile("ldr r1, [r5]"); \
	__asm volatile("ldr r1, [r5]"); \
	TEN_NOPS(); \
	__asm volatile("ldr r1, [r5]"); \
	__asm volatile("ldr r1, [r5]"); \
} while(0)

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */


int volatile CR1[1] = {0x80}; // perform contention on SRAM1
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

// Victim with multiple paths
int num1, num2, max;
// __attribute__((optimize(0))) void victim_(){
// 	for(int i = 0; i < 2; ++i){
// 	  if(i == num1)
// 		max = num1;
// 	}
// 	if(num1 == 2){
// 	  max = 10;
// 	}
// 	if(num2 > 10){
// 	  if(num2 < 20)
// 		  num2 = 19;
// 	  else
// 		  max = num2;
// 	}
// }

__attribute__((optimize(0))) void victim_(){
	MY_NOP();
	SETUP_CONTENTION();
	TEN_NOPS();
	TEN_NOPS();
	TEN_NOPS();
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
	__asm volatile("ldr r1, [r5]");
	__asm volatile("ldr r1, [r5]");
	TEN_NOPS();
}

__attribute__((optimize(0))) void if_code(){

	MY_NOP();
	SETUP_CONTENTION();
	TEN_NOPS();
	int s, v=0;

	if(s == 0){
		v = 12;
	}
	else{
		v = 22;
	}
}

volatile uint32_t *ptr_cnt = &TIM2->CNT;
static uint32_t dst_covert[1000] = {0};

// Configure and Start gadget
// START PROFILING ATTACK

TickType counter = 0;
TickRefType cntValue = &counter;

__attribute__((optimize(0))) void get_accurate_trace(int clock_to_collide, void (*victim)()){

	// int volatile CR1[1] = {0x80}; // Uncomment this when trying to perform contention on SRAM2

	TIM1->CNT = 0 - clock_to_collide; // Changing the collision clock
	TIM1->SR = 0;
	TIM1->DIER = 0; // Disable Update DMA request

	// Fixes weird bug, where the timings depend on the auto reload register, although it should not
	if(clock_to_collide%2 == 0 ) // if it is an even number
		TIM1->ARR = 2;
	else
		TIM1->ARR = 1;

    HAL_TIM_Base_Start(&htim2);
	// Configure and enable DMA
	HAL_DMA_Start(&hdma_tim1_up, (uint32_t)CR1, (uint32_t)&TIM2->CR1, 1);
	__HAL_DMA_ENABLE(&hdma_tim1_up);

	TIM1->DIER = 1<<8; //Enable Update DMA request
	//TIM1->CR1 |= (1<<3); // One pulse mode

	// Enable both timers at the same time
	//__HAL_TIM_ENABLE(&htim2);
	__HAL_TIM_ENABLE(&htim1);

	// 8 CYCLES of delay for the hardware to do its thing
	FIVE_NOPS();
	MY_NOP();
	MY_NOP();
	MY_NOP();
//	int val = ChainTask(Task1);
	//GetCounterValue(myCounter, cntValue);

	if_code();
	// Run victim
	//VICTIM_CODE(); //define
	//victim(); // function
/*	static int first = 1;
	if (first){
		first = 0;
		my_printf("val: %d\r\n", val);
	}*/

	// Stop gadget. NOPS for the DMA shutdown.
	HUND_NOPS();
	HUND_NOPS();
	__HAL_TIM_DISABLE(&htim1);
	HAL_DMA_Abort(&hdma_tim1_up);
	HAL_TIM_Base_Stop(&htim2);
}

__attribute__((optimize(0))) void process_accurate_collision(int collision_n){
	int value = TIM2->CNT;
	my_printf("%d @ %d\r\n", value, collision_n);
	//my_printf("cntValue: %d\r\n", cntValue);

	TIM2->CNT = 0;
	// Empirically tested

}

__attribute__((optimize(0))) void accurate_trace(){

	my_printf("BEGIN\r\n");

	for(int clk = 0; clk < 500; clk++){
		get_accurate_trace(clk, victim_);
		process_accurate_collision(clk);
	}

	my_printf("END\r\n");
}

// FUNCTION TO MEASURE VICTIM EXECUTION TIME
// ATENTION FOR BIGGER VICTIMS USE A 32BIT TIMER
__attribute__((optimize(0))) void measure_time(){
	int time1, time2;
	SysTick->CTRL = 0x0;
	SysTick->LOAD  = (uint32_t)(0xFFFFFF - 1); //max counter value
	SysTick->VAL = 0; // reset the val  counter
	SysTick->CTRL = 5;
	time1 = SysTick->VAL;

    uint64_t key = 0x133457799BBCDFF1UL;
    uint64_t plaintext  = 0x96746ABCDEFUL;

    uint64_t cyphertext = des_encrypt(plaintext, key);

	time2 = SysTick->VAL;
	my_printf("Time = %d\n",time1-time2-7); // 7 clks without nothing
}

void idle_hook(void)
{

	my_printf("ERIKAv3\n\r");
	accurate_trace();

//	measure_time();

	while (1)
	{
	}

//	osEE_CheckStackIntegrity();
//
//	++idle_cnt;
//	if (idle_cnt >= IDLE_CNT_MAX) {
//		idle_cnt = 0;
//
//		HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
//	}

	//DemoHAL_MainFunction();
}

int main(void)
{
	HAL_Init();

	SysTick->CTRL = 0; //Disable systick

	SystemClock_Config();

	MX_DMA_Init();
	MX_TIM1_Init();
	MX_TIM2_Init();

	//MX_TIM2_Init();
	MX_GPIO_Init();
	MX_USART2_Init();

	//HAL_TIM_Base_Start_IT(&htim2);

	StartOS(OSDEFAULTAPPMODE);

	return 0;
}
