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
    // static int src, dst;
    HAL_DMA_Start_IT(&hdma_memtomem_dma1_channel1, (uint32_t) ADDR_CONTENTION,
                    (uint32_t)ADDR_CONTENTION, size);
}

int input_symbol = 0, sample = 0;

__attribute__((optimize(0))) void covert_channel(){
    int *ptr_cnt = &htim2.Instance->CNT; // (24 bits)
    int *ptr_ctr = &htim2.Instance->CR1; // (24 bits)
    // trigger chain of interrupts (DMA transfers)
    config_DMA_M2M(TRASNFER_SIZE);
    *ptr_cnt = 0; // reset the val counter
    HAL_TIM_Base_Start(&htim2);
    //start DMA transaction
    __HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
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
__attribute__((optimize(0))) void DMA_IRQHandler(){
	int *ptr_cnt = &htim2.Instance->CNT;
	int *ptr_ctr = &htim2.Instance->CR1;
	static int first = 1;
	HAL_TIM_Base_Stop(&htim2);
	HAL_DMA_IRQHandler(&hdma_memtomem_dma1_channel1);
	if(!first){ //ignore the first measurement, it is trash
		printf("(%d, %d)\r\n", input_symbol, *ptr_cnt);
	}
	first = 0;
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
	*ptr_cnt = 0; // reset the val counter
	HAL_TIM_Base_Start(&htim2);
	//start DMA transaction
	__HAL_DMA_ENABLE(&hdma_memtomem_dma1_channel1);
#ifdef TROJAN_SECURE
	trojan_s(input_symbol);
#else
	trojan(input_symbol);
#endif
	return;

}