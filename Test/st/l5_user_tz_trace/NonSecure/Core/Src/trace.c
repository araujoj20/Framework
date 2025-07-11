#include "trace.h"

volatile int *ptr_cnt = &TIM7->CNT;
static uint32_t dst_covert[BUFFER_SIZE] = {0};

// ------ TRACE FUNCTIONS --------

#define START_ACCURATE_TRACE() do{\
    TIM3->ARR = auto_reload; \
    TIM3->CNT = (auto_reload-1) - clock_to_collide; \
    TIM3->SR = 0; \
    TIM3->DIER = 0; \
    HAL_TIM_Base_Start(&htim7);                                      \
    HAL_DMA_Start(&hdma_tim3_up, (uint32_t)ptr_cnt, (uint32_t)&dst_covert, n_collisions); \
    __HAL_DMA_ENABLE(&hdma_tim3_up); \
    TIM3->DIER = 1<<8; \         
    __HAL_TIM_ENABLE(&htim3);\    
    MY_NOP(); \
    MY_NOP(); \
    MY_NOP(); \
    MY_NOP(); \
    MY_NOP(); \
    DELAY_6_CLOCKS(); \
  }while(0)

#define END_ACCURATE_TRACE() do{\
    NOPS_TO_AVOID_COLLISIONS(); \
    __HAL_TIM_DISABLE(&htim3);\
    HAL_DMA_Abort(&hdma_tim3_up);\
    HAL_TIM_Base_Stop(&htim7);\
    *ptr_cnt = 0;\
  }while(0)

char dma_accurate_collisions_latencies[N_INSTRUCTIONS] = {0};

void print_clock(int *instructions){
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

__attribute__((section(".cacheable_text"), optimize(0))) void get_accurate_trace(   int  auto_reload, 
                                                                                    int clock_to_collide, 
                                                                                    int n_collisions,
                                                                                    void (*victim)()){
  START_ACCURATE_TRACE();
  victim();
  END_ACCURATE_TRACE();
}

void accurate_trace_time(sVictimFunc *s_vict){
  int auto_reload = 1, n_collisions = 2;
  int i = 0, instruction = 0;
  int clock_size_array[s_vict->time];
  clock_size_array[s_vict->time] = END;

  i = 0, instruction = 0;
  
  while(i < s_vict->time){
    get_accurate_trace(auto_reload, i, n_collisions, s_vict->func);  
    process_accurate_collision(i++);
  }
  
  printf("\r\n");
  printf("Trace %s  \r\n", s_vict->name);
  print_clock(clock_size_array);
  print_accurate_collision_w_instruction(clock_size_array);
  printf("\r\n");
}

__attribute__((optimize(0))) unsigned int measure_time(void (*victim)()){
	int time1, time2;

  HAL_TIM_Base_Start(&htim7);     
  time1 = TIM7->CNT;

  victim();

  time2 = TIM7->CNT;

  HAL_TIM_Base_Stop(&htim7);     

  return time2 - time1 - 19;
}

// --- Sample victim functions (can be removed or kept for testing) ---

void print_1(){};

__attribute__((section(".cacheable_text"), optimize(0)))
void comp_true(){
  int num1 = 50, num2 = 20, max;
  if(num1 > num2)
      max = num1;
  else
      max = num2;
}

__attribute__((section(".cacheable_text"), optimize(0)))
void comp_false(){
  int num1 = 20, num2 = 50, max;
  if(num1 > num2)
      max = num1;
  else
      max = num2;
}

__attribute__((section(".cacheable_text"), optimize(0)))
void if_else_true(){
  int s = 0, b;
  if (s == 0)
    b = 1;
  else 
    b = 0;
}

__attribute__((section(".cacheable_text"), optimize(0)))
void if_else_false(){
  int s = 1, b;
  if (s == 0)
    b = 1;
  else 
    b = 0;
}

__attribute__((section(".cacheable_text"), optimize(0)))
void light_op(){
  int s = 0;
  volatile int x;
  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}

__attribute__((section(".cacheable_text"), optimize(0)))
void heavy_op(){
  int s = 1;
  volatile int x;
  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}

char acc_buff[256];

__attribute__((section(".cacheable_text"), optimize(0)))
void access_near(){
  int s = 0;
  volatile char x;
  if (s == 0)
      x = acc_buff[7];
  else
      x = acc_buff[255];
}

__attribute__((section(".cacheable_text"), optimize(0)))
void access_far(){
  int s = 1;
  volatile char x;
  if (s == 0)
      x = acc_buff[7];
  else
      x = acc_buff[255];
}