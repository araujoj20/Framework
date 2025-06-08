#include "trace.h"


volatile int *ptr_cnt = &TIM7->CNT;
static uint32_t dst_covert[BUFFER_SIZE] = {0};


// ------ TRACE FUNCTIONS --------


char dma_accurate_collisions_latencies[N_INSTRUCTIONS] = {0};

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

void accurate_trace_time(sVictimFunc *s_vict){
  int auto_reload = 1, n_collisions = 2;
  int i = 0, instruction = 0;
  int clock_size_array[s_vict->time];
  clock_size_array[s_vict->time] = END;

  // Accurate Trace NS -> Calling IF PATH TRUE --------------------------------
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
	
  // TIM7->ARR = 0;
  // TIM3->CNT = 0;
  // TIM3->SR = 0;
  // TIM3->DIER = 0;

  HAL_TIM_Base_Start(&htim7);     
  time1 = TIM7->CNT;

  victim();

  time2 = TIM7->CNT;

  HAL_TIM_Base_Stop(&htim7);     

  return time2-time1-9;
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

void if_else_true(){
  int s, b;
  s = 0;

  if (s == 0)
    b = 1;
  else 
    b = 0;

}

void if_else_false(){
  int s, b;
  s = 1;

  if (s == 0)
    b = 1;
  else 
    b = 0;

}

void light_op(){
  int s = 0;
  volatile int x;

  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}


void heavy_op(){
  int s = 1;
  volatile int x;

  if (s == 0)
      x = x + 2;
  else
      x = (x / 3 * 4) + s;
}

char acc_buff[256];

void access_near(){
  int s = 0;
  volatile char x;

  if (s == 0)
      x = acc_buff[7];    // ldrb	r3, [r3, #7]      (16bits)
  else
      x = acc_buff[255];  // ldrb.w	r3, [r3, #255]  (32bits)
}

void access_far(){
  int s = 1;
  volatile char x;

  if (s == 0)
      x = acc_buff[7];
  else
      x = acc_buff[255];
}