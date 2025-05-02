#include "covert_channel.h"
#include "tim.h"
#include "dma.h"

__attribute__((optimize(0))) void trojan(int input_symbol){
	// Trying to balance this code in terms of time as much as possible  
	for(int i=0;i < MAX_SYMBOL; i++){
	  if(i < input_symbol){
		#ifdef CONTENTION
		  SETUP_CONTENTION();
		#else
		  SETUP_NO_CONTENTION();
		#endif
	  }
	  // With else it would be unbalanced in terms of LDRs
	  if(i >= input_symbol){
		  SETUP_NO_CONTENTION();
	  }
	  HUND_LDRS();
	}
  }
  
  void config_DMA_M2M(int size){
  // Make this vars global. The stack will be destroyed.
	static int src, dst;
	//need to comment __HAL_DMA_ENABLE in function HAL_DMA_Start()
	HAL_DMA_Start_IT(&hdma, (uint32_t)&src,
					  (uint32_t)&dst, size);
  }
  
  int input_symbol = 0, sample = 0;
  
  __attribute__((optimize(0))) void covert_channel(){
	int *ptr_cnt = 0x40000000+0x24; // TIM2 (32 bits)
	// trigger chain of interrupts (DMA transfers)
	config_DMA_M2M(TRASNFER_SIZE);
	*ptr_cnt = 0;
	HAL_TIM_Base_Start(&htim);
	//start DMA transaction
	//need to comment this line in function HAL_DMA_Start()
	__HAL_DMA_ENABLE(&hdma);
	#ifdef TROJAN_SECURE
	  trojan_s(input_symbol);
	#else
	  trojan(input_symbol);
	#endif
	while(1);
  }
  
  /* 
  * The channel is measured in the DMA ISR to avoid accessing the SRAM,which would 
  * introduce a lot of noise in the covert-channel. (Remove the need of a flag
  * shared between ISR and code, that would generate a lot of SRAM accesses)
  */
  __attribute__((optimize(0))) void DMA1_Channel1_IRQHandler(){
	int *ptr_cnt = 0x40000000+0x24; // TIM2 (32 bits)
	HAL_TIM_Base_Stop(&htim);
	HAL_DMA_IRQHandler(&hdma);
	printf("(%d, %d)\r\n", input_symbol, *ptr_cnt);
	sample++;
	// N_SAMPLES per input symbol
	if(sample >= N_SAMPLES){
	  if(input_symbol < MAX_SYMBOL-1){
		input_symbol++;
		sample = 0;
	  }
	  else {
		input_symbol = 0;
	   // printf("END\r\n");
		return;
	  }
	}
  
	config_DMA_M2M(TRASNFER_SIZE);
	*ptr_cnt = 0;
	HAL_TIM_Base_Start(&htim);
	//start DMA transaction
	//need to comment this line in function HAL_DMA_Start()
	__HAL_DMA_ENABLE(&hdma);
	#ifdef TROJAN_SECURE
	  trojan_s(input_symbol);
	#else
	  trojan(input_symbol);
	#endif
	return;
  
  }