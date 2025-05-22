
l5_auto_trace.elf:     file format elf32-littlearm
l5_auto_trace.elf
architecture: armv8-m.main, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x080476c1

Program Header:
    LOAD off    0x00001000 vaddr 0x08040000 paddr 0x08040000 align 2**12
         filesz 0x00008824 memsz 0x00008824 flags rwx
    LOAD off    0x0000a000 vaddr 0x20018000 paddr 0x08048824 align 2**12
         filesz 0x0000012c memsz 0x00002390 flags rw-
    LOAD off    0x00000390 vaddr 0x2001a390 paddr 0x08048950 align 2**12
         filesz 0x00000000 memsz 0x00000600 flags rw-
private flags = 0x5000400: [Version5 EABI] [hard-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .isr_vector   000001f4  08040000  08040000  00001000  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00007e14  080401f4  080401f4  000011f4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       0000080c  08048008  08048008  00009008  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .ARM.extab    00000000  08048814  08048814  0000a12c  2**0
                  CONTENTS
  4 .ARM          00000008  08048814  08048814  00009814  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .preinit_array 00000000  0804881c  0804881c  0000a12c  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  6 .init_array   00000004  0804881c  0804881c  0000981c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .fini_array   00000004  08048820  08048820  00009820  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  8 .data         0000012c  20018000  08048824  0000a000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  9 .bss          00002264  2001812c  08048950  0000a12c  2**2
                  ALLOC
 10 ._user_heap_stack 00000600  2001a390  08048950  0000a390  2**0
                  ALLOC
 11 .ARM.attributes 00000036  00000000  00000000  0000a12c  2**0
                  CONTENTS, READONLY
 12 .debug_frame  0000089c  00000000  00000000  0000a164  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .comment      00000043  00000000  00000000  0000aa00  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
08040000 l    d  .isr_vector	00000000 .isr_vector
080401f4 l    d  .text	00000000 .text
08048008 l    d  .rodata	00000000 .rodata
08048814 l    d  .ARM.extab	00000000 .ARM.extab
08048814 l    d  .ARM	00000000 .ARM
0804881c l    d  .preinit_array	00000000 .preinit_array
0804881c l    d  .init_array	00000000 .init_array
08048820 l    d  .fini_array	00000000 .fini_array
20018000 l    d  .data	00000000 .data
2001812c l    d  .bss	00000000 .bss
2001a390 l    d  ._user_heap_stack	00000000 ._user_heap_stack
00000000 l    d  .ARM.attributes	00000000 .ARM.attributes
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .comment	00000000 .comment
00000000 l    df *ABS*	00000000 startup_stm32l552xx.s.obj
f1e0f85f l       *ABS*	00000000 BootRAM
080476d4 l       .text	00000000 LoopCopyDataInit
080476cc l       .text	00000000 CopyDataInit
080476e8 l       .text	00000000 LoopFillZerobss
080476e2 l       .text	00000000 FillZerobss
080476f6 l       .text	00000000 LoopForever
08047710 l       .text	00000000 Infinite_Loop
00000000 l    df *ABS*	00000000 crtbegin.o
08047ff0 l     O .text	00000000 __EH_FRAME_BEGIN__
080401f4 l     F .text	00000000 __do_global_dtors_aux
2001812c l       .bss	00000001 completed.1
08048820 l     O .fini_array	00000000 __do_global_dtors_aux_fini_array_entry
08040218 l     F .text	00000000 frame_dummy
20018130 l       .bss	00000018 object.0
0804881c l     O .init_array	00000000 __frame_dummy_init_array_entry
00000000 l    df *ABS*	00000000 _aeabi_uldivmod.o
00000000 l    df *ABS*	00000000 _udivmoddi4.o
00000000 l    df *ABS*	00000000 _dvmd_tls.o
00000000 l    df *ABS*	00000000 libc_a-findfp.o
080405b0 l     F .text	0000006c std
0804061c l     F .text	00000018 stdio_exit_handler
08040634 l     F .text	00000040 cleanup_stdio
08040674 l     F .text	0000003c global_stdio_init.part.0
00000000 l    df *ABS*	00000000 libc_a-fwalk.o
00000000 l    df *ABS*	00000000 libc_a-stdio.o
00000000 l    df *ABS*	00000000 libc_a-memset.o
00000000 l    df *ABS*	00000000 libc_a-closer.o
00000000 l    df *ABS*	00000000 libc_a-lseekr.o
00000000 l    df *ABS*	00000000 libc_a-readr.o
00000000 l    df *ABS*	00000000 libc_a-writer.o
00000000 l    df *ABS*	00000000 libc_a-init.o
00000000 l    df *ABS*	00000000 libc_a-lock.o
00000000 l    df *ABS*	00000000 libc_a-freer.o
00000000 l    df *ABS*	00000000 libc_a-mallocr.o
0804093c l     F .text	00000044 sbrk_aligned
00000000 l    df *ABS*	00000000 libc_a-mlock.o
00000000 l    df *ABS*	00000000 libc_a-fflush.o
00000000 l    df *ABS*	00000000 libc_a-sbrkr.o
00000000 l    df *ABS*	00000000 dma.c
00000000 l    df *ABS*	00000000 gpio.c
00000000 l    df *ABS*	00000000 icache.c
00000000 l    df *ABS*	00000000 main.c
20018364 l     O .bss	00000fa0 dst_covert
00000000 l    df *ABS*	00000000 secure_interface.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal_msp.c
00000000 l    df *ABS*	00000000 stm32l5xx_it.c
00000000 l    df *ABS*	00000000 syscalls.c
00000000 l    df *ABS*	00000000 sysmem.c
20019ebc l     O .bss	00000004 __sbrk_heap_end
00000000 l    df *ABS*	00000000 system_stm32l5xx_ns.c
00000000 l    df *ABS*	00000000 tim.c
00000000 l    df *ABS*	00000000 usart.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal_cortex.c
08043010 l     F .text	00000048 __NVIC_SetPriorityGrouping
08043058 l     F .text	0000001c __NVIC_GetPriorityGrouping
08043074 l     F .text	0000003c __NVIC_EnableIRQ
080430b0 l     F .text	00000054 __NVIC_SetPriority
08043104 l     F .text	00000066 NVIC_EncodePriority
0804316c l     F .text	00000044 SysTick_Config
00000000 l    df *ABS*	00000000 stm32l5xx_hal_dma.c
0804379c l     F .text	0000007c DMA_CalcDMAMUXChannelBaseAndMask
08043818 l     F .text	00000048 DMA_CalcDMAMUXRequestGenBaseAndMask
0804371e l     F .text	0000007c DMA_SetConfig
00000000 l    df *ABS*	00000000 stm32l5xx_hal_gpio.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal_pwr_ex.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal_rcc.c
08044aac l     F .text	000000c8 RCC_SetFlashLatencyFromMSIRange
08044b74 l     F .text	000000d8 RCC_GetSysClockFreqFromPLLSource
00000000 l    df *ABS*	00000000 stm32l5xx_hal_rcc_ex.c
08045354 l     F .text	000001cc RCCEx_PLLSAI1_Config
08045520 l     F .text	00000158 RCCEx_PLLSAI2_Config
00000000 l    df *ABS*	00000000 stm32l5xx_hal_tim.c
08045e88 l     F .text	00000120 TIM_OC1_SetConfig
080460bc l     F .text	00000110 TIM_OC3_SetConfig
080461cc l     F .text	000000d4 TIM_OC4_SetConfig
080462a0 l     F .text	000000c8 TIM_OC5_SetConfig
08046368 l     F .text	000000cc TIM_OC6_SetConfig
0804655e l     F .text	0000005e TIM_TI1_ConfigInputStage
0804661c l     F .text	0000003a TIM_ITRx_SetConfig
080465bc l     F .text	00000060 TIM_TI2_ConfigInputStage
08046434 l     F .text	0000012a TIM_SlaveTimer_SetConfig
00000000 l    df *ABS*	00000000 stm32l5xx_hal_tim_ex.c
00000000 l    df *ABS*	00000000 stm32l5xx_hal_uart.c
080473ee l     F .text	000000cc UART_EndRxTransfer
00000000 l    df *ABS*	00000000 stm32l5xx_hal_uart_ex.c
08047624 l     F .text	0000009c UARTEx_SetNbDataToProcess
080487d0 l     O .rodata	00000008 numerator.1
080487d8 l     O .rodata	00000008 denominator.0
00000000 l    df *ABS*	00000000 libc_a-printf.o
00000000 l    df *ABS*	00000000 libc_a-puts.o
00000000 l    df *ABS*	00000000 libc_a-wbuf.o
00000000 l    df *ABS*	00000000 libc_a-wsetup.o
00000000 l    df *ABS*	00000000 libc_a-errno.o
00000000 l    df *ABS*	00000000 libc_a-nano-vfprintf.o
08047928 l     F .text	0000002e __sfputc_r
00000000 l    df *ABS*	00000000 libc_a-nano-vfprintf_i.o
00000000 l    df *ABS*	00000000 libc_a-makebuf.o
00000000 l    df *ABS*	00000000 libc_a-fstatr.o
00000000 l    df *ABS*	00000000 libc_a-isattyr.o
00000000 l    df *ABS*	00000000 libc_a-memchr-stub.o
00000000 l    df *ABS*	00000000 crti.o
00000000 l    df *ABS*	00000000 crtn.o
00000000 l    df *ABS*	00000000 libc_a-impure.o
00000000 l    df *ABS*	00000000 libc_a-reent.o
00000000 l    df *ABS*	00000000 
08048820 l       .init_array	00000000 __init_array_end
0804881c l       .preinit_array	00000000 __preinit_array_end
0804881c l       .init_array	00000000 __init_array_start
0804881c l       .preinit_array	00000000 __preinit_array_start
08047710  w    F .text	00000002 EXTI2_IRQHandler
08047710  w    F .text	00000002 TIM8_TRG_COM_IRQHandler
08048770 g     O .rodata	00000008 APBPrescTable
080426d4 g     F .text	000000c8 MX_TIM5_Init
08047710  w    F .text	00000002 TIM8_CC_IRQHandler
08047fb4 g     F .text	00000020 _isatty_r
08047710  w    F .text	00000002 EXTI5_IRQHandler
08047738 g     F .text	000000aa _puts_r
08045908 g     F .text	00000226 HAL_TIM_PWM_ConfigChannel
08047710  w    F .text	00000002 DebugMon_Handler
080407ec g     F .text	00000024 _lseek_r
08045728 g     F .text	000000d0 HAL_TIM_Base_Start
080457f8 g     F .text	0000004e HAL_TIM_Base_Stop
08041372 g     F .text	000000d4 func5
08040da0 g     F .text	00000148 MX_GPIO_Init
08043230 g     F .text	00000150 HAL_DMA_Init
08047710  w    F .text	00000002 FLASH_S_IRQHandler
2001a290 g     O .bss	00000068 hdma_tim8_ch2
0804279c g     F .text	0000006c MX_TIM7_Init
08047714 g     F .text	00000024 printf
08047710  w    F .text	00000002 EXTI13_IRQHandler
08042808 g     F .text	000001a8 MX_TIM8_Init
08044a5c g     F .text	00000028 HAL_RCC_GetPCLK1Freq
08047710  w    F .text	00000002 TIM1_CC_IRQHandler
080431c6 g     F .text	00000034 HAL_NVIC_SetPriority
08044a84 g     F .text	00000028 HAL_RCC_GetPCLK2Freq
08047710  w    F .text	00000002 TSC_IRQHandler
08042500 g     F .text	00000098 MX_TIM2_Init
0804078e g     F .text	00000024 __sseek
080406c8 g     F .text	00000030 __sinit
080477f4 g     F .text	0000007c __swbuf_r
08047710  w    F .text	00000002 HardFault_Handler
08047710  w    F .text	00000002 TAMP_IRQHandler
08040a8c g     F .text	0000000c __malloc_unlock
00000400 g       *ABS*	00000000 _Min_Stack_Size
08047710  w    F .text	00000002 TIM6_IRQHandler
08047710  w    F .text	00000002 EXTI12_IRQHandler
08042634 g     F .text	000000a0 MX_TIM4_Init
080422e4 g     F .text	0000000c SysTick_Handler
08043b74 g     F .text	00000030 HAL_GPIO_WritePin
08043c98 g     F .text	00000048 HAL_PWREx_SMPS_GetEffectiveMode
08048824 g       *ABS*	00000000 _sidata
08044a34 g     F .text	00000028 HAL_RCC_GetHCLKFreq
080422d6 g     F .text	0000000e PendSV_Handler
08047710  w    F .text	00000002 DMA2_Channel8_IRQHandler
08047710  w    F .text	00000002 NMI_Handler
080431fa g     F .text	0000001c HAL_NVIC_EnableIRQ
0804881c g       .ARM	00000000 __exidx_end
08047710  w    F .text	00000002 EXTI3_IRQHandler
080448fc g     F .text	00000138 HAL_RCC_GetSysClockFreq
2001a03c g     O .bss	0000004c htim8
0804791c g     F .text	0000000c __errno
08043380 g     F .text	00000086 HAL_DMA_Start
08042260 g     F .text	00000010 SECURE_SystemCoreClockUpdate
08040ee8 g     F .text	0000000e MX_ICACHE_Init
08047710  w    F .text	00000002 EXTI8_IRQHandler
080436be g     F .text	00000060 HAL_DMA_ConfigChannelAttributes
08047710  w    F .text	00000002 LPTIM2_IRQHandler
20018280 g     O .bss	00000004 __stdio_exit_handler
20019f58 g     O .bss	0000004c htim4
08042270 g     F .text	00000048 HAL_MspInit
08047710  w    F .text	00000002 DFSDM1_FLT1_IRQHandler
08047f90 g     F .text	00000024 _fstat_r
20018284 g     O .bss	00000004 errno
08048008 g       .text	00000000 _etext
2001812c g       .bss	00000000 _sbss
08047710  w    F .text	00000002 USB_FS_IRQHandler
08047710  w    F .text	00000002 I2C3_ER_IRQHandler
08047710  w    F .text	00000002 DFSDM1_FLT2_IRQHandler
2001805c g     O .data	00000004 ptr_cnt
08043860 g     F .text	00000314 HAL_GPIO_Init
08047710  w    F .text	00000002 DMAMUX1_IRQHandler
08047710  w    F .text	00000002 LPTIM3_IRQHandler
080416d0 g     F .text	000002dc print_instructions
2001a088 g     O .bss	00000068 hdma_tim2_up
08047710  w    F .text	00000002 EXTI0_IRQHandler
08048778 g     O .rodata	00000040 MSIRangeTable
08047710  w    F .text	00000002 I2C2_EV_IRQHandler
08040234 g     F .text	00000000 .hidden __aeabi_uldivmod
080477e4 g     F .text	00000010 puts
0804151c g     F .text	000000d8 func7
08047710  w    F .text	00000002 FPU_IRQHandler
20018120 g     O .data	00000004 SystemCoreClock
08047710  w    F .text	00000002 FDCAN1_IT1_IRQHandler
08045cc2 g     F .text	00000084 HAL_TIM_SlaveConfigSynchro
20018128 g     O .data	00000001 uwTickFreq
0804241a g     F .text	00000020 _fstat
080422c0 g     F .text	00000008 UsageFault_Handler
2001a228 g     O .bss	00000068 hdma_tim8_ch1
08047710  w    F .text	00000002 ADC1_2_IRQHandler
2001812c g       .bss	00000000 __bss_start__
20018000 g       .data	00000000 _sdata
08047710  w    F .text	00000002 SPI1_IRQHandler
08047710  w    F .text	00000002 OCTOSPI1_IRQHandler
08040264 g     F .text	00000346 .hidden __udivmoddi4
08040bf0 g     F .text	00000020 _sbrk_r
080411bc g     F .text	000000e4 func3
080419ac g     F .text	00000026 simple_if_else_true
08042598 g     F .text	0000009c MX_TIM3_Init
08042090 g     F .text	000000e0 accurate_trace
08046a7c g     F .text	00000600 UART_SetConfig
08040810 g     F .text	00000024 _read_r
2001a38c g     O .bss	00000004 uwTick
080421c8 g     F .text	0000008c SystemClock_Config
08043216 g     F .text	00000018 HAL_SYSTICK_Config
08047710  w    F .text	00000002 TIM8_UP_IRQHandler
08047710  w    F .text	00000002 RCC_S_IRQHandler
08048814 g       .ARM	00000000 __exidx_start
0804243a g     F .text	00000016 _isatty
08040f1c g     F .text	000000de func0
08040858 g     F .text	00000048 __libc_init_array
20019fa4 g     O .bss	0000004c htim5
08047710  w    F .text	00000002 DMA2_Channel2_IRQHandler
0804232c g     F .text	00000014 DMA1_Channel4_IRQHandler
08047710  w    F .text	00000002 SAI2_IRQHandler
0804246c g     F .text	0000006c _sbrk
08047710  w    F .text	00000002 DFSDM1_FLT3_IRQHandler
08047ff0 g     F .text	00000000 _init
20019f0c g     O .bss	0000004c htim3
2001a2f8 g     O .bss	00000094 hlpuart1
08047710  w    F .text	00000002 EXTI15_IRQHandler
08047710  w    F .text	00000002 TIM17_IRQHandler
08047710  w    F .text	00000002 USART3_IRQHandler
08047710  w    F .text	00000002 RTC_IRQHandler
2001a390 g       .bss	00000000 _ebss
08047710  w    F .text	00000002 EXTI9_IRQHandler
08042368 g     F .text	00000014 DMA1_Channel7_IRQHandler
080476c0  w    F .text	00000038 Reset_Handler
08045d48 g     F .text	00000140 TIM_Base_SetConfig
200180c0 g     O .data	00000060 victim_instructions_IF_FALSE
08047710  w    F .text	00000002 UART5_IRQHandler
20018288 g     O .bss	00000001 __lock___malloc_recursive_mutex
080487b8 g     O .rodata	00000018 UARTPrescTable
20018124 g     O .data	00000004 uwTickPrio
08042f24 g     F .text	00000034 HAL_Init
20018148 g     O .bss	00000138 __sf
08047314 g     F .text	000000da UART_WaitOnFlagUntilTimeout
08041446 g     F .text	000000d6 func6
08043c78 g     F .text	00000020 HAL_PWREx_EnableVddIO2
08047710  w    F .text	00000002 TIM4_IRQHandler
08047710  w    F .text	00000002 DMA2_Channel1_IRQHandler
0804707c g     F .text	00000144 UART_AdvFeatureConfig
08047710  w    F .text	00000002 I2C1_EV_IRQHandler
080408a4 g     F .text	00000002 __retarget_lock_release_recursive
080419f8 g     F .text	00000054 print_clock
2001a1c0 g     O .bss	00000068 hdma_tim5_up
080419d2 g     F .text	00000026 simple_if_else_false
08042354 g     F .text	00000014 DMA1_Channel6_IRQHandler
08047710  w    F .text	00000002 TIM16_IRQHandler
08047956 g     F .text	00000024 __sfputs_r
08047710  w    F .text	00000002 UART4_IRQHandler
08047710  w    F .text	00000002 DMA2_Channel4_IRQHandler
08047710  w    F .text	00000002 SecureFault_Handler
080406b0 g     F .text	0000000c __sfp_lock_acquire
08047fd4 g     F .text	0000001c memchr
08040ffa g     F .text	000000e0 func1
2001a390 g       .bss	00000000 __bss_end__
080408a8 g     F .text	00000094 _free_r
08047710  w    F .text	00000002 TIM3_IRQHandler
08047710  w    F .text	00000002 RCC_IRQHandler
08047710  w    F .text	00000002 TIM1_TRG_COM_IRQHandler
08040ef8 g     F .text	00000024 __io_putchar
00000200 g       *ABS*	00000000 _Min_Heap_Size
080422f0 g     F .text	00000014 DMA1_Channel1_IRQHandler
08047710 g       .text	00000002 Default_Handler
08047710  w    F .text	00000002 DMA2_Channel7_IRQHandler
08048760 g     O .rodata	00000010 AHBPrescTable
08042450 g     F .text	0000001a _lseek
080471c0 g     F .text	00000154 UART_CheckIdleState
08043406 g     F .text	000000b8 HAL_DMA_Abort
080412a0 g     F .text	000000d2 func4
0804468c g     F .text	00000270 HAL_RCC_ClockConfig
080431b0 g     F .text	00000016 HAL_NVIC_SetPriorityGrouping
0804237c g     F .text	00000014 DMA1_Channel8_IRQHandler
08043bc0 g     F .text	000000b8 HAL_PWREx_ControlVoltageScaling
08047710  w    F .text	00000002 TIM7_IRQHandler
08047710  w    F .text	00000002 SDMMC1_IRQHandler
080407cc g     F .text	00000020 _close_r
0804752c g     F .text	0000007c HAL_UARTEx_SetTxFifoThreshold
08047710  w    F .text	00000002 TIM5_IRQHandler
08047710  w    F .text	00000002 UCPD1_IRQHandler
08045678 g     F .text	000000ae HAL_TIM_Base_Init
08047710  w    F .text	00000002 TIM15_IRQHandler
08047710  w    F .text	00000002 I2C3_EV_IRQHandler
08047870 g     F .text	000000ac __swsetup_r
080405ac  w    F .text	00000002 .hidden __aeabi_ldiv0
08041ae4 g     F .text	000005ac get_accurate_trace
08046960 g     F .text	0000011c HAL_UART_Transmit
08040734 g     F .text	00000022 __sread
08042ff8  w    F .text	00000018 HAL_GetTick
08040a80 g     F .text	0000000c __malloc_lock
08047710  w    F .text	00000002 PVD_PVM_IRQHandler
08040ba0 g     F .text	00000050 _fflush_r
08047710  w    F .text	00000002 SPI2_IRQHandler
080408a2 g     F .text	00000002 __retarget_lock_acquire_recursive
08045b30 g     F .text	00000192 HAL_TIM_ConfigClockSource
080407ba g     F .text	00000010 memset
080422b8 g     F .text	00000008 MemManage_Handler
08042170 g     F .text	00000058 main
080408a0 g     F .text	00000002 __retarget_lock_init_recursive
08047710  w    F .text	00000002 EXTI14_IRQHandler
08047710  w    F .text	00000002 EXTI11_IRQHandler
08045846 g     F .text	000000ae HAL_TIM_PWM_Init
080422c8 g     F .text	0000000e SVC_Handler
080410da g     F .text	000000e2 func2
080407b2 g     F .text	00000008 __sclose
08047710  w    F .text	00000002 DMA2_Channel5_IRQHandler
08047710  w    F .text	00000002 CRS_IRQHandler
200182fc g     O .bss	00000068 hdma_memtomem_dma1_channel2
08040980 g     F .text	00000100 _malloc_r
08042340 g     F .text	00000014 DMA1_Channel5_IRQHandler
08047710  w    F .text	00000002 EXTI4_IRQHandler
08041a4c g     F .text	00000038 process_accurate_collision
08047710  w    F .text	00000002 RTC_S_IRQHandler
080424d8 g     F .text	0000000e SystemInit
08047710  w    F .text	00000002 RNG_IRQHandler
08047ffc g     F .text	00000000 _fini
08047710  w    F .text	00000002 DMAMUX1_S_IRQHandler
08047714 g     F .text	00000024 iprintf
08042e64 g     F .text	000000c0 HAL_UART_MspInit
20018294 g     O .bss	00000068 hdma_memtomem_dma1_channel1
08040834 g     F .text	00000024 _write_r
08042318 g     F .text	00000014 DMA1_Channel3_IRQHandler
08047710  w    F .text	00000002 COMP_IRQHandler
080474ba g     F .text	00000072 HAL_UARTEx_DisableFifoMode
08042f58  w    F .text	00000078 HAL_InitTick
08047bac g     F .text	000000e4 _printf_common
2001800c g     O .data	00000004 _impure_ptr
08047710  w    F .text	00000002 TIM1_UP_IRQHandler
080415f4 g     F .text	000000da func8
08040c10 g     F .text	00000190 MX_DMA_Init
08042fd0  w    F .text	00000028 HAL_IncTick
08040a98 g     F .text	00000108 __sflush_r
080434be g     F .text	00000200 HAL_DMA_IRQHandler
080406f8 g     F .text	0000003c _fwalk_sglue
08047710  w    F .text	00000002 WWDG_IRQHandler
08047710  w    F .text	00000002 I2C4_EV_IRQHandler
08047710  w    F .text	00000002 LPUART1_IRQHandler
08047710  w    F .text	00000002 DMA2_Channel6_IRQHandler
08047710  w    F .text	00000002 FDCAN1_IT0_IRQHandler
08047710  w    F .text	00000002 TIM2_IRQHandler
08046698 g     F .text	00000110 HAL_TIMEx_MasterConfigSynchronization
08047710  w    F .text	00000002 TAMP_S_IRQHandler
20019ec0 g     O .bss	0000004c htim2
08045fa8 g     F .text	00000114 TIM_OC2_SetConfig
080475a8 g     F .text	0000007c HAL_UARTEx_SetRxFifoThreshold
08047710  w    F .text	00000002 EXTI7_IRQHandler
08042d5c g     F .text	00000070 HAL_TIM_MspPostInit
08047710  w    F .text	00000002 TIM1_BRK_IRQHandler
08047ecc g     F .text	0000004a __swhatbuf_r
20030000 g       .isr_vector	00000000 _estack
08047710  w    F .text	00000002 DAC_IRQHandler
2001a0f0 g     O .bss	00000068 hdma_tim3_up
08047710  w    F .text	00000002 EXTI1_IRQHandler
08046656 g     F .text	00000040 TIM_ETR_SetConfig
20018000 g     O .data	0000000c __sglue
080423ca  w    F .text	00000038 _write
2001812c g       .data	00000000 _edata
2001a390 g       ._user_heap_stack	00000000 _end
08043ba4 g     F .text	0000001c HAL_PWREx_GetVoltageRange
080467a8 g     F .text	00000118 HAL_TIMEx_ConfigBreakDeadTime
080429b0 g     F .text	000003ac HAL_TIM_Base_MspInit
08047710  w    F .text	00000002 GTZC_IRQHandler
08047710  w    F .text	00000002 USART2_IRQHandler
08040756 g     F .text	00000038 __swrite
08043ce0 g     F .text	000009ac HAL_RCC_OscConfig
08047710  w    F .text	00000002 DFSDM1_FLT0_IRQHandler
20019304 g     O .bss	00000bb8 dma_accurate_collisions_latencies
0804797c g     F .text	00000230 _vfiprintf_r
08040000 g     O .isr_vector	000001f4 g_pfnVectors
080424e8 g     F .text	00000018 SystemCoreClockUpdate
08044c4c g     F .text	00000708 HAL_RCCEx_PeriphCLKConfig
08041a84 g     F .text	00000060 print_accurate_collision_w_instruction
20018010 g     O .data	0000004c _impure_data
08047710  w    F .text	00000002 I2C2_ER_IRQHandler
08042304 g     F .text	00000014 DMA1_Channel2_IRQHandler
080406bc g     F .text	0000000c __sfp_lock_release
08047710  w    F .text	00000002 TIM8_BRK_IRQHandler
08042390  w    F .text	0000003a _read
080405ac  w    F .text	00000002 .hidden __aeabi_idiv0
08047710  w    F .text	00000002 FLASH_IRQHandler
08047710  w    F .text	00000002 BusFault_Handler
08047710  w    F .text	00000002 USART1_IRQHandler
08047f16 g     F .text	00000078 __smakebuf_r
08042dcc g     F .text	00000098 MX_LPUART1_UART_Init
08047710  w    F .text	00000002 EXTI10_IRQHandler
08047c90 g     F .text	0000023c _printf_i
08047710  w    F .text	00000002 SPI3_IRQHandler
20019ff0 g     O .bss	0000004c htim7
080458f4  w    F .text	00000014 HAL_TIM_PWM_MspInit
2001828c g     O .bss	00000004 __malloc_sbrk_start
080468c0 g     F .text	000000a0 HAL_UART_Init
08047710  w    F .text	00000002 I2C1_ER_IRQHandler
08047710  w    F .text	00000002 FMC_IRQHandler
08047710  w    F .text	00000002 EXTI6_IRQHandler
20018290 g     O .bss	00000004 __malloc_free_list
08047710  w    F .text	00000002 LPTIM1_IRQHandler
0804797c g     F .text	00000230 _vfprintf_r
08047710  w    F .text	00000002 I2C4_ER_IRQHandler
08047710  w    F .text	00000002 ICACHE_IRQHandler
2001a158 g     O .bss	00000068 hdma_tim4_up
08047710  w    F .text	00000002 SAI1_IRQHandler
20018289 g     O .bss	00000001 __lock___sfp_recursive_mutex
08047710  w    F .text	00000002 HASH_IRQHandler
08042402 g     F .text	00000018 _close
20018060 g     O .data	00000060 victim_instructions_IF_TRUE
08047710  w    F .text	00000002 DMA2_Channel3_IRQHandler
08042254 g     F .text	0000000c Error_Handler


Contents of section .isr_vector:
 8040000 00000320 c1760408 11770408 11770408  ... .v...w...w..
 8040010 b9220408 11770408 c1220408 11770408  ."...w..."...w..
 8040020 00000000 00000000 00000000 c9220408  ............."..
 8040030 11770408 00000000 d7220408 e5220408  .w......."..."..
 8040040 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040050 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040060 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040070 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040080 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040090 11770408 11770408 11770408 11770408  .w...w...w...w..
 80400a0 11770408 11770408 11770408 11770408  .w...w...w...w..
 80400b0 11770408 f1220408 05230408 19230408  .w..."...#...#..
 80400c0 2d230408 41230408 55230408 69230408  -#..A#..U#..i#..
 80400d0 7d230408 11770408 11770408 11770408  }#...w...w...w..
 80400e0 11770408 11770408 11770408 11770408  .w...w...w...w..
 80400f0 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040100 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040110 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040120 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040130 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040140 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040150 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040160 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040170 11770408 00000000 11770408 00000000  .w.......w......
 8040180 11770408 11770408 11770408 11770408  .w...w...w...w..
 8040190 11770408 11770408 11770408 11770408  .w...w...w...w..
 80401a0 11770408 11770408 11770408 11770408  .w...w...w...w..
 80401b0 11770408 00000000 11770408 11770408  .w.......w...w..
 80401c0 11770408 00000000 11770408 11770408  .w.......w...w..
 80401d0 11770408 11770408 11770408 11770408  .w...w...w...w..
 80401e0 11770408 11770408 11770408 11770408  .w...w...w...w..
 80401f0 00000000                             ....            
Contents of section .text:
 80401f4 10b5054c 237833b9 044b13b1 0448aff3  ...L#x3..K...H..
 8040204 00800123 237010bd 2c810120 00000000  ...##p..,.. ....
 8040214 f07f0408 08b5034b 1bb10349 0348aff3  .......K...I.H..
 8040224 008008bd 00000000 30810120 f07f0408  ........0.. ....
 8040234 53b94ab9 002908bf 00281cbf 4ff0ff31  S.J..)...(..O..1
 8040244 4ff0ff30 00f0b0b9 adf1080c 6de904ce  O..0........m...
 8040254 00f006f8 ddf804e0 dde90223 04b07047  ...........#..pG
 8040264 2de9f04f 099d8846 04468e46 002b4ad1  -..O...F.F.F.+J.
 8040274 8a421746 5fd9b2fa 82f64eb1 c6f12003  .B.F_.....N... .
 8040284 01fa06fe b740b440 20fa03f3 43ea0e0e  .....@.@ ...C...
 8040294 4fea1748 1ffa87fc 230cbefb f8f108fb  O..H....#.......
 80402a4 11ee01fb 0cf243ea 0e439a42 07d9fb18  ......C..C.B....
 80402b4 01f1ff30 02d29a42 00f25481 01469b1a  ...0...B..T..F..
 80402c4 a2b2b3fb f8f008fb 103300fb 0cfc42ea  .........3....B.
 80402d4 03429445 0bd9ba18 00f1ff33 2cbf0124  .B.E.......3,..$
 80402e4 00249445 02d9002c 00f03f81 184640ea  .$.E...,..?..F@.
 80402f4 0140a2eb 0c020021 1db1f240 0023c5e9  .@.....!...@.#..
 8040304 0023bde8 f08f8b42 05d90db1 c5e90001  .#.....B........
 8040314 00210846 f5e7b3fa 83f10029 4ed14345  .!.F.......)N.CE
 8040324 c0f01281 824240f2 0f810846 002de8d0  .....B@....F.-..
 8040334 c5e9004e e5e7002a 00f0ac80 b2fa82f6  ...N...*........
 8040344 002e40f0 bb808b1a 4fea124e bcb20121  ..@.....O..N...!
 8040354 020c80b2 b3fbfefc 0efb1c33 42ea0343  ...........3B..C
 8040364 04fb0cf2 9a420ed9 fb180cf1 ff382cbf  .....B.......8,.
 8040374 4ff00109 4ff00009 9a4203d9 b9f1000f  O...O....B......
 8040384 00f0ec80 c4469b1a b3fbfef8 0efb1833  .....F.........3
 8040394 04fb08f4 40ea0342 94420bd9 ba1808f1  ....@..B.B......
 80403a4 ff332cbf 01200020 944202d9 002800f0  .3,.. . .B...(..
 80403b4 d1809846 121b48ea 0c409de7 c1f12006  ...F..H..@.... .
 80403c4 8b4008fa 01f400fa 01f922fa 06f728fa  .@........"...(.
 80403d4 06f88a40 1f4320fa 06f3380c 23431ffa  ...@.C ...8.#C..
 80403e4 87fc1c0c b8fbf0fe 00fb1e88 44ea0844  ............D..D
 80403f4 0efb0cf8 a0450ed9 3c190ef1 ff3a2cbf  .....E..<....:,.
 8040404 4ff0010b 4ff0000b a04503d9 bbf1000f  O...O....E......
 8040414 00f0b880 d646a4eb 08041ffa 83f8b4fb  .....F..........
 8040424 f0f300fb 134403fb 0cfc48ea 0444a445  .....D....H..D.E
 8040434 0ed93c19 03f1ff30 2cbf4ff0 01084ff0  ..<....0,.O...O.
 8040444 0008a445 03d9b8f1 000f00f0 9f800346  ...E...........F
 8040454 43ea0e40 a4eb0c04 a0fb02ec 64457346  C..@........dEsF
 8040464 e04602d3 07d1f145 05d2beeb 02036ceb  .F.....E......l.
 8040474 070c0138 e0465db1 b9eb0302 64eb0804  ...8.F].....d...
 8040484 04fa06f6 22fa01f3 cc401e43 c5e90064  ...."....@.C...d
 8040494 002136e7 b1fbf2fc 010c1446 80b29646  .!6........F...F
 80404a4 41ea0841 20269046 40ea0143 1046b1fb  A..A &.F@..C.F..
 80404b4 f2f1a3eb 080341ea 0c414be7 b740c6f1  ......A..AK..@..
 80404c4 200301fa 06f221fa 03f84fea 174e20fa   .....!...O..N .
 80404d4 03f3bcb2 b0401343 020c190c 80b2b8fb  .....@.C........
 80404e4 fef90efb 198841ea 084109fb 04f88845  ......A..A.....E
 80404f4 51d97918 09f1ff3c 2cbf4ff0 010a4ff0  Q.y....<,.O...O.
 8040504 000a8845 02d9baf1 000f31d0 a1eb0801  ...E......1.....
 8040514 b1fbfef9 09fb04f8 0efb1911 9bb243ea  ..............C.
 8040524 01434345 35d2fb18 09f1ff31 2cbf4ff0  .CCE5......1,.O.
 8040534 010a4ff0 000a4345 bbd2baf1 000fb8d1  ..O...CE........
 8040544 a9f10201 3b44b4e7 841a68eb 03020120  ....;D....h.... 
 8040554 9646ebe6 3a44a8f1 02082be7 acf1020c  .F..:D....+.....
 8040564 3b4410e7 02393b44 a9e63a44 0238bee6  ;D...9;D..:D.8..
 8040574 a7eb0808 a9f1020c 4144b1fb fef909fb  ........AD......
 8040584 04f8c9e7 aef1020e 3c4444e7 023b3c44  ........<DD..;<D
 8040594 5ee74946 8de7a1eb 0801cc46 b1fbfef9  ^.IF.......F....
 80405a4 09fb04f8 b8e700bf 704700bf 002310b5  ........pG...#..
 80405b4 04468360 81811946 4366c281 08228361  .F.`...FCf...".a
 80405c4 c0e90033 c0e90433 5c3000f0 f4f80d4b  ...3...3\0.....K
 80405d4 24626362 0c4ba362 0c4be362 0c4b2363  $bcb.K.b.K.b.K#c
 80405e4 0c4b9c42 06d003f1 68029442 02d0d033  .K.B....h..B...3
 80405f4 9c4205d1 04f15800 bde81040 00f04eb9  .B....X....@..N.
 8040604 10bd00bf 35070408 57070408 8f070408  ....5...W.......
 8040614 b3070408 48810120 024a0349 034800f0  ....H.. .J.I.H..
 8040624 69b800bf 00800120 a10b0408 10800120  i...... ....... 
 8040634 41680c4b 994210b5 044601d0 00f0aefa  Ah.K.B...F......
 8040644 a168094b 994202d0 204600f0 a7fae168  .h.K.B.. F.....h
 8040654 064b9942 04d02046 bde81040 00f09eba  .K.B.. F...@....
 8040664 10bd00bf 48810120 b0810120 18820120  ....H.. ... ... 
 8040674 10b50b4b 04210b4c 0b4a2046 1a600022  ...K.!.L.J F.`."
 8040684 fff794ff 04f16800 01220921 fff78eff  ......h..".!....
 8040694 04f1d000 02221221 bde81040 fff786bf  .....".!...@....
 80406a4 80820120 48810120 1d060408 014800f0  ... H.. .....H..
 80406b4 f6b800bf 89820120 014800f0 f1b800bf  ....... .H......
 80406c4 89820120 10b50446 fff7f0ff 236a1bb1  ... ...F....#j..
 80406d4 bde81040 fff7f0bf 044b2362 044b1b68  ...@.....K#b.K.h
 80406e4 002bf5d1 fff7c4ff f2e700bf 35060408  .+..........5...
 80406f4 80820120 2de9f843 07468846 14460026  ... -..C.F.F.F.&
 8040704 d4e90195 b9f10109 05d52468 002cf7d1  ..........$h.,..
 8040714 3046bde8 f883ab89 012b07d9 b5f90e30  0F.......+.....0
 8040724 013303d0 29463846 c0470643 6835e9e7  .3..)F8F.G.Ch5..
 8040734 10b50c46 b1f90e10 00f068f8 0028abbf  ...F......h..(..
 8040744 636da389 1b1823f4 8053acbf 6365a381  cm....#..S..ce..
 8040754 10bd2de9 f0411f46 8b890546 0c46db05  ..-..A.F...F.F..
 8040764 164605d5 02230022 b1f90e10 00f03cf8  .F...#."......<.
 8040774 a3893246 b4f90e10 284623f4 8053a381  ..2F....(F#..S..
 8040784 3b46bde8 f04100f0 53b810b5 0c46b1f9  ;F...A..S....F..
 8040794 0e1000f0 29f8431c a38915bf 606523f4  ....).C.....`e#.
 80407a4 805343f4 8053a381 18bfa381 10bdb1f9  .SC..S..........
 80407b4 0e1000f0 09b80244 03469342 00d17047  .......D.F.B..pG
 80407c4 03f8011b f9e70000 38b50023 054d0446  ........8..#.M.F
 80407d4 08462b60 01f013fe 431c02d1 2b6803b1  .F+`....C...+h..
 80407e4 236038bd 84820120 38b50446 064d0846  #`8.... 8..F.M.F
 80407f4 11460022 2a601a46 01f028fe 431c02d1  .F."*`.F..(.C...
 8040804 2b6803b1 236038bd 84820120 38b50446  +h..#`8.... 8..F
 8040814 064d0846 11460022 2a601a46 01f0b6fd  .M.F.F."*`.F....
 8040824 431c02d1 2b6803b1 236038bd 84820120  C...+h..#`8.... 
 8040834 38b50446 064d0846 11460022 2a601a46  8..F.M.F.F."*`.F
 8040844 01f0c1fd 431c02d1 2b6803b1 236038bd  ....C...+h..#`8.
 8040854 84820120 70b50d4d 00260d4c 641ba410  ... p..M.&.Ld...
 8040864 a64209d1 0b4d0026 0b4c07f0 bffb641b  .B...M.&.L....d.
 8040874 a410a642 05d170bd 55f8043b 01369847  ...B..p.U..;.6.G
 8040884 eee755f8 043b0136 9847f2e7 1c880408  ..U..;.6.G......
 8040894 1c880408 1c880408 20880408 70477047  ........ ...pGpG
 80408a4 70470000 38b50546 002941d0 51f8043c  pG..8..F.)A.Q..<
 80408b4 0c1f002b b8bfe418 00f0e0f8 1d4a1368  ...+.........J.h
 80408c4 33b96360 14602846 bde83840 00f0dcb8  3.c`.`(F..8@....
 80408d4 a34208d9 20682118 8b4201bf 19685b68  .B.. h!..B...h[h
 80408e4 09182160 ede71a46 5b680bb1 a342fad9  ..!`...F[h...B..
 80408f4 11685018 a0420bd1 20680144 50181160  .hP..B.. h.DP..`
 8040904 8342e0d1 18685b68 08445360 1060dae7  .B...h[h.DS`.`..
 8040914 02d90c23 2b60d6e7 20682118 8b4202bf  ...#+`.. h!..B..
 8040924 19685b68 09186360 08bf2160 5460cae7  .h[h..c`..!`T`..
 8040934 38bd00bf 90820120 70b50f4e 0c460546  8...... p..N.F.F
 8040944 316811b9 00f052f9 30602146 284600f0  1h....R.0`!F(F..
 8040954 4df9431c 03d14ff0 ff342046 70bdc41c  M.C...O..4 Fp...
 8040964 24f00304 a042f8d0 211a2846 00f03ef9  $....B..!.(F..>.
 8040974 0130f2d1 efe700bf 8c820120 2de9f843  .0......... -..C
 8040984 cd1c0646 25f00305 08350c2d 38bf0c25  ...F%....5.-8..%
 8040994 002d01db a94204d9 0c233360 0020bde8  .-...B...#3`. ..
 80409a4 f883dff8 d48000f0 69f8d8f8 00301c46  ........i....0.F
 80409b4 44bb2946 3046fff7 bfff431c 044658d1  D.)F0F....C..FX.
 80409c4 d8f80040 2746002f 43d1002c 4bd02368  ...@'F./C..,K.#h
 80409d4 39463046 04eb0309 00f008f9 814542d1  9F0F.........EB.
 80409e4 21683046 6d1a2946 fff7a6ff 01303ad0  !h0Fm.)F.....0:.
 80409f4 23682b44 2360d8f8 00305a68 62bbc8f8  #h+D#`...0Zhb...
 8040a04 00700fe0 2268521b 20d40b2a 17d96119  .p.."hR. ..*..a.
 8040a14 a3422560 18bf5960 636808bf c8f80010  .B%`..Y`ch......
 8040a24 62514b60 304600f0 2ff804f1 0b00231d  bQK`0F../.....#.
 8040a34 20f00700 c21a1cbf 1b1aa350 afe76268   ..........P..bh
 8040a44 a3420cbf c8f80020 5a60ebe7 23466468  .B..... Z`..#Fdh
 8040a54 aee73c46 7f68b6e7 1a465b68 a342fbd1  ..<F.h...F[h.B..
 8040a64 00235360 dee70c23 30463360 00f00cf8  .#S`...#0F3`....
 8040a74 94e70560 d6e700bf 90820120 0148fff7  ...`....... .H..
 8040a84 0ebf00bf 88820120 0148fff7 09bf00bf  ....... .H......
 8040a94 88820120 b1f90c20 2de9f041 16070546  ... ... -..A...F
 8040aa4 0c4654d4 4b68002b 02dc0b6c 002b48dd  .FT.Kh.+...l.+H.
 8040ab4 e66a002e 45d00023 12f48052 2f68216a  .j..E..#...R/h!j
 8040ac4 2b6030d0 626da389 590705d5 6368d21a  +`0.bm..Y...ch..
 8040ad4 636b0bb1 236cd21a 0023e66a 216a2846  ck..#l...#.j!j(F
 8040ae4 b047431c a38906d1 29681d29 2bd82a4a  .GC.....)h.)+.*J
 8040af4 ca40d607 27d50022 d9046260 22692260  .@..'.."..b`"i"`
 8040b04 04d5421c 01d12b68 03b96065 616b2f60  ..B...+h..`eak/`
 8040b14 b9b104f1 44039942 02d02846 fff7c2fe  ....D..B..(F....
 8040b24 00236363 0de00123 2846b047 0246501c  .#cc...#(F.G.FP.
 8040b34 c9d12b68 002bc6d0 1d2b01d0 162b1dd1  ..+h.+...+...+..
 8040b44 2f600020 21e043f0 40031bb2 1ae00f69  /`. !.C.@......i
 8040b54 002ff6d0 93070e68 0f600cbf 4b690023  ./.....h.`..Ki.#
 8040b64 a6eb0708 8b60b8f1 000feadd 43463a46  .....`......CF:F
 8040b74 216a2846 a66ab047 002808dc b4f90c30  !j(F.j.G.(.....0
 8040b84 43f04003 4ff0ff30 a381bde8 f0810744  C.@.O..0.......D
 8040b94 a8eb0008 e7e700bf 01004020 38b50b69  ..........@ 8..i
 8040ba4 05460c46 13b90025 284638bd 18b1036a  .F.F...%(F8....j
 8040bb4 0bb9fff7 87fdb4f9 0c30002b f3d0626e  .........0.+..bn
 8040bc4 d00704d4 990502d4 a06dfff7 68fe2846  .........m..h.(F
 8040bd4 2146fff7 5fff636e 0546da07 e4d4a389  !F.._.cn.F......
 8040be4 9b05e1d4 a06dfff7 5bfedde7 38b50023  .....m..[...8..#
 8040bf4 054d0446 08462b60 01f036fc 431c02d1  .M.F.F+`..6.C...
 8040c04 2b6803b1 236038bd 84820120 80b582b0  +h..#`8.... ....
 8040c14 00af5d4b 9b6c5c4a 43f00403 93645a4b  ..]K.l\JC....dZK
 8040c24 9b6c03f0 04037b60 7b68574b 9b6c564a  .l....{`{hWK.lVJ
 8040c34 43f00103 9364544b 9b6c03f0 01033b60  C....dTK.l....;`
 8040c44 3b68524b 524a1a60 504b0022 5a604f4b  ;hRKRJ.`PK."Z`OK
 8040c54 4ff48042 9a604d4b 0022da60 4b4b8022  O..B.`MK.".`KK."
 8040c64 1a614a4b 4ff40072 5a61484b 4ff40062  .aJKO..rZaHKO..b
 8040c74 9a61464b 0022da61 444b0022 1a624348  .aFK.".aDK.".bCH
 8040c84 02f0d4fa 0346002b 01d001f0 e1fa1021  .....F.+.......!
 8040c94 3e4802f0 12fd0346 002b01d0 01f0d8fa  >H.....F.+......
 8040ca4 3c4b3d4a 1a603b4b 00225a60 394b4ff4  <K=J.`;K."Z`9KO.
 8040cb4 80429a60 374b0022 da60364b 80221a61  .B.`7K.".`6K.".a
 8040cc4 344b4ff4 00725a61 324b4ff4 00629a61  4KO..rZa2KO..b.a
 8040cd4 304b0022 da612f4b 00221a62 2d4802f0  0K.".a/K.".b-H..
 8040ce4 a5fa0346 002b01d0 01f0b2fa 10212948  ...F.+.......!)H
 8040cf4 02f0e3fc 0346002b 01d001f0 a9fa0022  .....F.+......."
 8040d04 00211d20 02f05dfa 1d2002f0 74fa0022  .!. ..].. ..t.."
 8040d14 00211e20 02f055fa 1e2002f0 6cfa0022  .!. ..U.. ..l.."
 8040d24 00211f20 02f04dfa 1f2002f0 64fa0022  .!. ..M.. ..d.."
 8040d34 00212020 02f045fa 202002f0 5cfa0022  .!  ..E.  ..\.."
 8040d44 00212120 02f03dfa 212002f0 54fa0022  .!! ..=.! ..T.."
 8040d54 00212220 02f035fa 222002f0 4cfa0022  .!" ..5." ..L.."
 8040d64 00212320 02f02dfa 232002f0 44fa0022  .!# ..-.# ..D.."
 8040d74 00212420 02f025fa 242002f0 3cfa00bf  .!$ ..%.$ ..<...
 8040d84 0837bd46 80bd00bf 00100240 94820120  .7.F.......@... 
 8040d94 08000240 fc820120 1c000240 80b58ab0  ...@... ...@....
 8040da4 00af07f1 14030022 1a605a60 9a60da60  .......".`Z`.`.`
 8040db4 1a61464b db6c454a 43f00403 d364434b  .aFK.lEJC....dCK
 8040dc4 db6c03f0 04033b61 3b69404b db6c3f4a  .l....;a;i@K.l?J
 8040dd4 43f00103 d3643d4b db6c03f0 0103fb60  C....d=K.l.....`
 8040de4 fb683a4b db6c394a 43f00203 d364374b  .h:K.l9JC....d7K
 8040df4 db6c03f0 0203bb60 bb68344b db6c334a  .l.....`.h4K.l3J
 8040e04 43f04003 d364314b db6c03f0 40037b60  C.@..d1K.l..@.{`
 8040e14 7b6802f0 2fff2d4b db6c2c4a 43f00803  {h../.-K.l,JC...
 8040e24 d3642a4b db6c03f0 08033b60 3b680122  .d*K.l....;`;h."
 8040e34 13212748 02f09cfe 01220121 254802f0  .!'H.....".!%H..
 8040e44 97fe0323 7b610023 bb610123 fb6107f1  ...#{a.#.a.#.a..
 8040e54 14031946 204802f0 01fd1323 7b610123  ...F H.....#{a.#
 8040e64 bb610123 fb610023 3b6207f1 14031946  .a.#.a.#;b.....F
 8040e74 174802f0 f3fc0123 7b610123 bb610123  .H.....#{a.#.a.#
 8040e84 fb610023 3b6207f1 14031946 114802f0  .a.#;b.....F.H..
 8040e94 e5fc0423 7b610023 bb610123 fb6107f1  ...#{a.#.a.#.a..
 8040ea4 14031946 0d4802f0 d9fc0823 7b610023  ...F.H.....#{a.#
 8040eb4 bb610123 fb6107f1 14031946 084802f0  .a.#.a.....F.H..
 8040ec4 cdfc00bf 2837bd46 80bd00bf 00100240  ....(7.F.......@
 8040ed4 00000242 00040242 00080242 00180242  ...B...B...B...B
 8040ee4 000c0242 80b400af 00bfbd46 5df8047b  ...B.......F]..{
 8040ef4 70470000 80b582b0 00af7860 391d4ff0  pG........x`9.O.
 8040f04 ff330122 034805f0 29fd7b68 18460837  .3.".H..).{h.F.7
 8040f14 bd4680bd f8a20120 80b400af 4ff40040  .F..... ....O..@
 8040f24 c2f20100 01680168 01680168 01680168  .....h.h.h.h.h.h
 8040f34 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f44 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f54 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f64 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f74 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f84 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040f94 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040fa4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040fb4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040fc4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040fd4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8040fe4 01680168 01680168 01680168 00bfbd46  .h.h.h.h.h.h...F
 8040ff4 5df8047b 704780b4 00afc046 4ff40040  ]..{pG.....FO..@
 8041004 c2f20100 01680168 01680168 01680168  .....h.h.h.h.h.h
 8041014 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041024 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041034 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041044 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041054 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041064 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041074 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041084 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041094 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80410a4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80410b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80410c4 01680168 01680168 01680168 00bfbd46  .h.h.h.h.h.h...F
 80410d4 5df8047b 704780b4 00afc046 c0464ff4  ]..{pG.....F.FO.
 80410e4 0040c2f2 01000168 01680168 01680168  .@.....h.h.h.h.h
 80410f4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041104 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041114 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041124 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041134 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041144 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041154 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041164 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041174 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041184 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041194 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80411a4 01680168 01680168 01680168 016800bf  .h.h.h.h.h.h.h..
 80411b4 bd465df8 047b7047 80b400af c046c046  .F]..{pG.....F.F
 80411c4 c0464ff4 0040c2f2 01000168 01680168  .FO..@.....h.h.h
 80411d4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80411e4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80411f4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041204 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041214 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041224 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041234 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041244 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041254 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041264 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041274 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041284 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041294 016800bf bd465df8 047b7047 80b400af  .h...F]..{pG....
 80412a4 c046c046 c046c046 4ff40040 c2f20100  .F.F.F.FO..@....
 80412b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80412c4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80412d4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80412e4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80412f4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041304 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041314 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041324 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041334 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041344 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041354 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041364 01680168 00bfbd46 5df8047b 704780b4  .h.h...F]..{pG..
 8041374 00afc046 c046c046 c046c046 4ff40040  ...F.F.F.F.FO..@
 8041384 c2f20100 01680168 01680168 01680168  .....h.h.h.h.h.h
 8041394 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413a4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413c4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413d4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413e4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80413f4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041404 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041414 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041424 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041434 01680168 01680168 00bfbd46 5df8047b  .h.h.h.h...F]..{
 8041444 704780b4 00afc046 c046c046 c046c046  pG.....F.F.F.F.F
 8041454 c0464ff4 0040c2f2 01000168 01680168  .FO..@.....h.h.h
 8041464 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041474 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041484 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041494 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414a4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414c4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414d4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414e4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80414f4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041504 01680168 01680168 01680168 016800bf  .h.h.h.h.h.h.h..
 8041514 bd465df8 047b7047 80b400af c046c046  .F]..{pG.....F.F
 8041524 c046c046 c046c046 c0464ff4 0040c2f2  .F.F.F.F.FO..@..
 8041534 01000168 01680168 01680168 01680168  ...h.h.h.h.h.h.h
 8041544 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041554 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041564 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041574 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041584 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041594 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80415a4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80415b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80415c4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80415d4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80415e4 01680168 016800bf bd465df8 047b7047  .h.h.h...F]..{pG
 80415f4 80b400af c046c046 c046c046 c046c046  .....F.F.F.F.F.F
 8041604 c046c046 4ff40040 c2f20100 01680168  .F.FO..@.....h.h
 8041614 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041624 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041634 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041644 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041654 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041664 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041674 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041684 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 8041694 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80416a4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80416b4 01680168 01680168 01680168 01680168  .h.h.h.h.h.h.h.h
 80416c4 00bfbd46 5df8047b 70470000 80b584b0  ...F]..{pG......
 80416d4 00af7860 0023fb60 964806f0 19f81ae1  ..x`.#.`.H......
 80416e4 fb689b00 7a681344 1b68012b 02d19248  .h..zh.D.h.+...H
 80416f4 06f00ef8 fb689b00 7a681344 1b68022b  .....h..zh.D.h.+
 8041704 02d18e48 06f004f8 fb689b00 7a681344  ...H.....h..zh.D
 8041714 1b68032b 02d18a48 05f0faff fb689b00  .h.+...H.....h..
 8041724 7a681344 1b68052b 02d18648 05f0f0ff  zh.D.h.+...H....
 8041734 fb689b00 7a681344 1b68062b 02d18248  .h..zh.D.h.+...H
 8041744 05f0e6ff fb689b00 7a681344 1b68072b  .....h..zh.D.h.+
 8041754 02d17e48 05f0dcff fb689b00 7a681344  ..~H.....h..zh.D
 8041764 1b68082b 02d17a48 05f0d2ff fb689b00  .h.+..zH.....h..
 8041774 7a681344 1b68092b 02d17648 05f0c8ff  zh.D.h.+..vH....
 8041784 fb689b00 7a681344 1b680a2b 08d17248  .h..zh.D.h.+..rH
 8041794 05f0beff 714805f0 bbff7148 05f0b8ff  ....qH....qH....
 80417a4 fb689b00 7a681344 1b680b2b 08d16a48  .h..zh.D.h.+..jH
 80417b4 05f0aeff 6b4805f0 abff6948 05f0a8ff  ....kH....iH....
 80417c4 fb689b00 7a681344 1b680c2b 02d16648  .h..zh.D.h.+..fH
 80417d4 05f09eff fb689b00 7a681344 1b680d2b  .....h..zh.D.h.+
 80417e4 02d16248 05f094ff fb689b00 7a681344  ..bH.....h..zh.D
 80417f4 1b680e2b 02d15e48 05f08aff fb689b00  .h.+..^H.....h..
 8041804 7a681344 1b680f2b 02d15a48 05f080ff  zh.D.h.+..ZH....
 8041814 fb689b00 7a681344 1b68102b 02d15648  .h..zh.D.h.+..VH
 8041824 05f076ff fb689b00 7a681344 1b68112b  ..v..h..zh.D.h.+
 8041834 02d15248 05f06cff fb689b00 7a681344  ..RH..l..h..zh.D
 8041844 1b68122b 02d14e48 05f062ff fb689b00  .h.+..NH..b..h..
 8041854 7a681344 1b68132b 02d14a48 05f058ff  zh.D.h.+..JH..X.
 8041864 fb689b00 7a681344 1b68142b 08d13a48  .h..zh.D.h.+..:H
 8041874 05f04eff 444805f0 4bff3948 05f048ff  ..N.DH..K.9H..H.
 8041884 fb689b00 7a681344 1b68152b 02d13f48  .h..zh.D.h.+..?H
 8041894 05f03eff fb689b00 7a681344 1b68162b  ..>..h..zh.D.h.+
 80418a4 02d13b48 05f034ff fb689b00 7a681344  ..;H..4..h..zh.D
 80418b4 1b68172b 08d12848 05f02aff 354805f0  .h.+..(H..*.5H..
 80418c4 27ff2748 05f024ff fb689b00 7a681344  '.'H..$..h..zh.D
 80418d4 1b68182b 02d13048 05f01aff fb689b00  .h.+..0H.....h..
 80418e4 7a681344 1b68192b 08d11b48 05f010ff  zh.D.h.+...H....
 80418f4 2a4805f0 0dff1a48 05f00aff fb689b00  *H.....H.....h..
 8041904 7a681344 1b681a2b 02d12548 05f000ff  zh.D.h.+..%H....
 8041914 fb680133 fb60fb68 9b007a68 13441b68  .h.3.`.h..zh.D.h
 8041924 042b7ff4 ddae1f48 05f05aff 00bf1037  .+.....H..Z....7
 8041934 bd4680bd f4850408 fc850408 04860408  .F..............
 8041944 0c860408 14860408 1c860408 24860408  ............$...
 8041954 2c860408 34860408 3c860408 44860408  ,...4...<...D...
 8041964 4c860408 54860408 5c860408 64860408  L...T...\...d...
 8041974 6c860408 74860408 7c860408 84860408  l...t...|.......
 8041984 8c860408 94860408 9c860408 a4860408  ................
 8041994 ac860408 b4860408 bc860408 c4860408  ................
 80419a4 cc860408 d4860408 80b483b0 00af0023  ...............#
 80419b4 7b607b68 002b02d1 01233b60 01e00023  {`{h.+...#;`...#
 80419c4 3b6000bf 0c37bd46 5df8047b 704780b4  ;`...7.F]..{pG..
 80419d4 83b000af 01237b60 7b68002b 02d10123  .....#{`{h.+...#
 80419e4 3b6001e0 00233b60 00bf0c37 bd465df8  ;`...#;`...7.F].
 80419f4 047b7047 80b584b0 00af7860 0023fb60  .{pG......x`.#.`
 8041a04 0023bb60 0d4805f0 83fe06e0 fb685a1c  .#.`.H.......hZ.
 8041a14 fa601946 0a4805f0 7bfebb68 5a1cba60  .`.F.H..{..hZ..`
 8041a24 9b007a68 13441b68 042befd1 054805f0  ..zh.D.h.+...H..
 8041a34 d7fe00bf 1037bd46 80bd00bf d8860408  .....7.F........
 8041a44 b4850408 d4860408 80b483b0 00af7860  ..............x`
 8041a54 094b5b68 dab2084b 1b68dbb2 d31ad9b2  .K[h...K.h......
 8041a64 064a7b68 13440a46 1a7000bf 0c37bd46  .J{h.D.F.p...7.F
 8041a74 5df8047b 704700bf 64830120 04930120  ]..{pG..d.. ... 
 8041a84 80b584b0 00af7860 0023fb60 0023bb60  ......x`.#.`.#.`
 8041a94 0f4805f0 3dfe0de0 0e4afb68 13441b78  .H..=....J.h.D.x
 8041aa4 19460d48 05f034fe bb680133 bb60fb68  .F.H..4..h.3.`.h
 8041ab4 0133fb60 bb689b00 7a681344 1b68042b  .3.`.h..zh.D.h.+
 8041ac4 ead10648 05f08cfe 00bf1037 bd4680bd  ...H.......7.F..
 8041ad4 e0860408 04930120 ec860408 d4860408  ....... ........
 8041ae4 80b584b0 00aff860 b9607a60 3b60834a  .......`.`z`;`.J
 8041af4 fb68d362 fb685a1e bb68d21a 7f4b5a62  .h.b.hZ..h...KZb
 8041b04 7e4b0022 1a617d4b 0022da60 7c4803f0  ~K.".a}K.".`|H..
 8041b14 09fe7c4b 1b681946 7b4a7b68 7b4801f0  ..|K.h.F{J{h{H..
 8041b24 2dfc7a4b 1b681a68 784b1b68 42f00102  -.zK.h.hxK.hB...
 8041b34 1a60724b 4ff48072 da60754b 1b681a68  .`rKO..r.`uK.h.h
 8041b44 734b1b68 42f00102 1a60c046 c046c046  sK.hB....`.F.F.F
 8041b54 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041b64 3b689847 c046c046 c046c046 c046c046  ;h.G.F.F.F.F.F.F
 8041b74 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041b84 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041b94 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ba4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041bb4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041bc4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041bd4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041be4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041bf4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c04 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c14 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c24 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c34 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c44 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c54 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c64 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c74 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c84 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041c94 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ca4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041cb4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041cc4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041cd4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ce4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041cf4 c046c046 c046c046 0ce000bf 00040040  .F.F.F.F.......@
 8041d04 f09f0120 5c800120 64830120 f0a00120  ... \.. d.. ... 
 8041d14 0c9f0120 c046c046 c046c046 c046c046  ... .F.F.F.F.F.F
 8041d24 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d34 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d44 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d54 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d64 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d74 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d84 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041d94 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041da4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041db4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041dc4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041dd4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041de4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041df4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e04 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e14 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e24 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e34 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e44 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e54 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e64 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e74 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e84 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041e94 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ea4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041eb4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ec4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ed4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ee4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ef4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f04 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f14 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f24 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f34 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f44 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f54 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f64 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f74 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f84 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041f94 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041fa4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041fb4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041fc4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041fd4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041fe4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8041ff4 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8042004 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8042014 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8042024 c046c046 c046c046 c046c046 c046c046  .F.F.F.F.F.F.F.F
 8042034 124b1b68 1a6a41f2 11131340 002b0fd1  .K.h.jA....@.+..
 8042044 0e4b1b68 1a6a40f2 44431340 002b07d1  .K.h.j@.DC.@.+..
 8042054 0a4b1b68 1a68094b 1b6822f0 01021a60  .K.h.h.K.h"....`
 8042064 074801f0 cef90748 03f0c4fb 064b1b68  .H.....H.....K.h
 8042074 00221a60 00bf1037 bd4680bd 0c9f0120  .".`...7.F..... 
 8042084 f0a00120 f09f0120 5c800120 80b584b0  ... ... \.. ....
 8042094 00af0123 7b600223 3b600023 fb600023  ...#{`.#;`.#.`.#
 80420a4 bb600023 fb600023 bb600be0 284b3a68  .`.#.`.#.`..(K:h
 80420b4 f9687868 fff714fd fb685a1c fa601846  .hxh.....hZ..`.F
 80420c4 fff7c2fc bb685a1c ba60224a 52f82330  .....hZ..`"JR.#0
 80420d4 042bebd1 204805f0 83fb2048 05f080fb  .+.. H.... H....
 80420e4 1c48fff7 87fc1b48 fff7f0fa 1948fff7  .H.....H.....H..
 80420f4 c7fc1948 05f074fb 0023fb60 0023bb60  ...H..t..#.`.#.`
 8042104 0be0174b 3a68f968 7868fff7 e9fcfb68  ...K:h.hxh.....h
 8042114 5a1cfa60 1846fff7 97fcbb68 5a1cba60  Z..`.F.....hZ..`
 8042124 104a52f8 2330042b ebd10b48 05f058fb  .JR.#0.+...H..X.
 8042134 0d4805f0 55fb0b48 fff75cfc 0948fff7  .H..U..H..\..H..
 8042144 c5fa0848 fff79cfc 00bf1037 bd4680bd  ...H.......7.F..
 8042154 ad190408 60800120 d4860408 f8860408  ....`.. ........
 8042164 d3190408 c0800120 10870408 80b582b0  ....... ........
 8042174 00af0023 7b6000f0 d3fe104b 00221a60  ...#{`.....K.".`
 8042184 00f020f8 fef742fd fef7acfe fef706fe  .. ...B.........
 8042194 00f01afe 00f000fb 00f0b0f9 00f032fb  ..............2.
 80421a4 00f096fa 00f044fa 00f0f4f9 044805f0  ......D......H..
 80421b4 17fbfff7 6bff00bf fde700bf 10e000e0  ....k...........
 80421c4 54870408 80b598b0 00af07f1 18034822  T.............H"
 80421d4 00211846 fef7effa 3b1d0022 1a605a60  .!.F....;..".`Z`
 80421e4 9a60da60 1a614ff4 806001f0 e7fc0346  .`.`.aO..`.....F
 80421f4 002b01d0 00f02cf8 1023bb61 01237b63  .+....,..#.a.#{c
 8042204 0023bb63 6023fb63 00237b64 07f11803  .#.c`#.c.#{d....
 8042214 184601f0 63fd0346 002b01d0 00f018f8  .F..c..F.+......
 8042224 0f237b60 0023bb60 0023fb60 00233b61  .#{`.#.`.#.`.#;a
 8042234 00237b61 3b1d0021 184602f0 25fa0346  .#{a;..!.F..%..F
 8042244 002b01d0 00f004f8 00bf6037 bd4680bd  .+........`7.F..
 8042254 80b400af 72b600bf 00bffde7 80b400af  ....r...........
 8042264 00bf1846 bd465df8 047b7047 80b483b0  ...F.F]..{pG....
 8042274 00af0f4b 1b6e0e4a 43f00103 13660c4b  ...K.n.JC....f.K
 8042284 1b6e03f0 01037b60 7b68094b 9b6d084a  .n....{`{h.K.m.J
 8042294 43f08053 9365064b 9b6d03f0 80533b60  C..S.e.K.m...S;`
 80422a4 3b6800bf 0c37bd46 5df8047b 704700bf  ;h...7.F]..{pG..
 80422b4 00100240 80b400af 00bffde7 80b400af  ...@............
 80422c4 00bffde7 80b400af 00bfbd46 5df8047b  ...........F]..{
 80422d4 704780b4 00af00bf bd465df8 047b7047  pG.......F]..{pG
 80422e4 80b500af 00f072fe 00bf80bd 80b500af  ......r.........
 80422f4 024801f0 e2f800bf 80bd00bf 94820120  .H............. 
 8042304 80b500af 024801f0 d8f800bf 80bd00bf  .....H..........
 8042314 fc820120 80b500af 024801f0 cef800bf  ... .....H......
 8042324 80bd00bf 88a00120 80b500af 024801f0  ....... .....H..
 8042334 c4f800bf 80bd00bf f0a00120 80b500af  ........... ....
 8042344 024801f0 baf800bf 80bd00bf c0a10120  .H............. 
 8042354 80b500af 024801f0 b0f800bf 80bd00bf  .....H..........
 8042364 28a20120 80b500af 024801f0 a6f800bf  (.. .....H......
 8042374 80bd00bf 90a20120 80b500af 024801f0  ....... .....H..
 8042384 9cf800bf 80bd00bf 58a10120 80b586b0  ........X.. ....
 8042394 00aff860 b9607a60 00237b61 0ae0aff3  ...`.`z`.#{a....
 80423a4 00800146 bb685a1c ba60cab2 1a707b69  ...F.hZ..`...p{i
 80423b4 01337b61 7a697b68 9a42f0db 7b681846  .3{azi{h.B..{h.F
 80423c4 1837bd46 80bd80b5 86b000af f860b960  .7.F.........`.`
 80423d4 7a600023 7b6109e0 bb685a1c ba601b78  z`.#{a...hZ..`.x
 80423e4 1846fef7 87fd7b69 01337b61 7a697b68  .F....{i.3{azi{h
 80423f4 9a42f1db 7b681846 1837bd46 80bd80b4  .B..{h.F.7.F....
 8042404 83b000af 78604ff0 ff331846 0c37bd46  ....x`O..3.F.7.F
 8042414 5df8047b 704780b4 83b000af 78603960  ]..{pG......x`9`
 8042424 3b684ff4 00525a60 00231846 0c37bd46  ;hO..RZ`.#.F.7.F
 8042434 5df8047b 704780b4 83b000af 78600123  ]..{pG......x`.#
 8042444 18460c37 bd465df8 047b7047 80b485b0  .F.7.F]..{pG....
 8042454 00aff860 b9607a60 00231846 1437bd46  ...`.`z`.#.F.7.F
 8042464 5df8047b 70470000 80b586b0 00af7860  ]..{pG........x`
 8042474 144a154b d31a7b61 7b693b61 134b1b68  .J.K..{a{i;a.K.h
 8042484 002b02d1 114b124a 1a60104b 1a687b68  .+...K.J.`.K.h{h
 8042494 13443a69 9a4207d2 05f03efa 03460c22  .D:i.B....>..F."
 80424a4 1a604ff0 ff3309e0 084b1b68 fb60074b  .`O..3...K.h.`.K
 80424b4 1a687b68 1344054a 1360fb68 18461837  .h{h.D.J.`.h.F.7
 80424c4 bd4680bd 00000320 00040000 bc9e0120  .F..... ....... 
 80424d4 90a30120 80b400af 00bfbd46 5df8047b  ... .......F]..{
 80424e4 70470000 80b500af fff7b8fe 0346024a  pG...........F.J
 80424f4 136000bf 80bd00bf 20810120 80b588b0  .`...... .. ....
 8042504 00af07f1 10030022 1a605a60 9a60da60  .......".`Z`.`.`
 8042514 3b1d0022 1a605a60 9a601d4b 4ff08042  ;..".`Z`.`.KO..B
 8042524 1a601b4b 00225a60 194b0022 9a60184b  .`.K."Z`.K.".`.K
 8042534 0122da60 164b0022 1a61154b 80229a61  .".`.K.".a.K.".a
 8042544 134803f0 97f80346 002b01d0 fff780fe  .H.....F.+......
 8042554 4ff48053 3b6107f1 10031946 0c4803f0  O..S;a.....F.H..
 8042564 e5fa0346 002b01d0 fff772fe 20237b60  ...F.+....r. #{`
 8042574 0023fb60 3b1d1946 054804f0 8bf80346  .#.`;..F.H.....F
 8042584 002b01d0 fff764fe 00bf2037 bd4680bd  .+....d... 7.F..
 8042594 c09e0120 80b588b0 00af07f1 10030022  ... ..........."
 80425a4 1a605a60 9a60da60 3b1d0022 1a605a60  .`Z`.`.`;..".`Z`
 80425b4 9a601d4b 1d4a1a60 1b4b0022 5a601a4b  .`.K.J.`.K."Z`.K
 80425c4 00229a60 184b4ff6 ff72da60 164b0022  .".`.KO..r.`.K."
 80425d4 1a61154b 80229a61 134803f0 4bf80346  .a.K.".a.H..K..F
 80425e4 002b01d0 fff734fe 4ff48053 3b6107f1  .+....4.O..S;a..
 80425f4 10031946 0c4803f0 99fa0346 002b01d0  ...F.H.....F.+..
 8042604 fff726fe 00237b60 0023fb60 3b1d1946  ..&..#{`.#.`;..F
 8042614 054804f0 3ff80346 002b01d0 fff718fe  .H..?..F.+......
 8042624 00bf2037 bd4680bd 0c9f0120 00040040  .. 7.F..... ...@
 8042634 80b588b0 00af07f1 0c030022 1a605a60  ...........".`Z`
 8042644 9a60da60 1a613b46 00221a60 5a609a60  .`.`.a;F.".`Z`.`
 8042654 1d4b1e4a 1a601c4b 00225a60 1a4b0022  .K.J.`.K."Z`.K."
 8042664 9a60194b 0f22da60 174b0022 1a61164b  .`.K.".`.K.".a.K
 8042674 80229a61 144802f0 fdff0346 002b01d0  .".a.H.....F.+..
 8042684 fff7e6fd 0723fb60 10233b61 07f10c03  .....#.`.#;a....
 8042694 19460d48 03f013fb 0346002b 01d0fff7  .F.H.....F.+....
 80426a4 d7fd2023 3b600023 bb603b46 19460648  .. #;`.#.`;F.F.H
 80426b4 03f0f0ff 0346002b 01d0fff7 c9fd00bf  .....F.+........
 80426c4 2037bd46 80bd00bf 589f0120 00080040   7.F....X.. ...@
 80426d4 80b58cb0 00af07f1 20030022 1a605a60  ........ ..".`Z`
 80426e4 9a60da60 07f10c03 00221a60 5a609a60  .`.`.....".`Z`.`
 80426f4 da601a61 3b460022 1a605a60 9a60244b  .`.a;F.".`Z`.`$K
 8042704 244a1a60 224b0022 5a60214b 10229a60  $J.`"K."Z`!K.".`
 8042714 1f4b0122 da601e4b 00221a61 1c4b8022  .K.".`.K.".a.K."
 8042724 9a611b48 02f0a6ff 0346002b 01d0fff7  .a.H.....F.+....
 8042734 8ffd4ff4 80533b62 07f12003 19461448  ..O..S;b.. ..F.H
 8042744 03f0f4f9 0346002b 01d0fff7 81fd0423  .....F.+.......#
 8042754 fb602023 3b6107f1 0c031946 0c4803f0  .` #;a.....F.H..
 8042764 aefa0346 002b01d0 fff772fd 00233b60  ...F.+....r..#;`
 8042774 0023bb60 3b461946 054803f0 8bff0346  .#.`;F.F.H.....F
 8042784 002b01d0 fff764fd 00bf3037 bd4680bd  .+....d...07.F..
 8042794 a49f0120 000c0040 80b584b0 00af3b1d  ... ...@......;.
 80427a4 00221a60 5a609a60 144b154a 1a60134b  .".`Z`.`.K.J.`.K
 80427b4 00225a60 114b0022 9a60104b 4ff6ff72  ."Z`.K.".`.KO..r
 80427c4 da600e4b 80229a61 0c4802f0 53ff0346  .`.K.".a.H..S..F
 80427d4 002b01d0 fff73cfd 00237b60 0023fb60  .+....<..#{`.#.`
 80427e4 3b1d1946 054803f0 55ff0346 002b01d0  ;..F.H..U..F.+..
 80427f4 fff72efd 00bf1037 bd4680bd f09f0120  .......7.F..... 
 8042804 00140040 80b5a0b0 00af07f1 70030022  ...@........p.."
 8042814 1a605a60 9a60da60 07f15c03 00221a60  .`Z`.`.`..\..".`
 8042824 5a609a60 da601a61 07f15003 00221a60  Z`.`.`.a..P..".`
 8042834 5a609a60 07f13403 00221a60 5a609a60  Z`.`..4..".`Z`.`
 8042844 da601a61 5a619a61 3b463422 00211846  .`.aZa.a;F4".!.F
 8042854 fdf7b1ff 534b544a 1a60524b 00225a60  ....SKTJ.`RK."Z`
 8042864 504b0022 9a604f4b 1422da60 4d4b0022  PK.".`OK.".`MK."
 8042874 1a614c4b 00225a61 4a4b8022 9a614948  .aLK."ZaJK.".aIH
 8042884 02f0f8fe 0346002b 01d0fff7 e1fc4ff4  .....F.+......O.
 8042894 80533b67 07f17003 19464248 03f046f9  .S;g..p..FBH..F.
 80428a4 0346002b 01d0fff7 d3fc3e48 02f0c9ff  .F.+......>H....
 80428b4 0346002b 01d0fff7 cbfc4ff4 8033fb65  .F.+......O..3.e
 80428c4 10233b66 07f15c03 19463648 03f0f7f9  .#;f..\..F6H....
 80428d4 0346002b 01d0fff7 bbfc2023 3b650023  .F.+...... #;e.#
 80428e4 7b650023 bb6507f1 50031946 2d4803f0  {e.#.e..P..F-H..
 80428f4 d1fe0346 002b01d0 fff7aafc 70237b63  ...F.+......p#{c
 8042904 0923bb63 0023fb63 00233b64 00237b64  .#.c.#.c.#;d.#{d
 8042914 0023bb64 0023fb64 07f13403 00221946  .#.d.#.d..4..".F
 8042924 204802f0 efff0346 002b01d0 fff790fc   H.....F.+......
 8042934 07f13403 04221946 1a4802f0 e3ff0346  ..4..".F.H.....F
 8042944 002b01d0 fff784fc 00233b60 00237b60  .+.......#;`.#{`
 8042954 0023bb60 0023fb60 00233b61 4ff40053  .#.`.#.`.#;aO..S
 8042964 7b610023 bb610023 fb610023 3b624ff0  {a.#.a.#.a.#;bO.
 8042974 00737b62 0023bb62 0023fb62 00233b63  .s{b.#.b.#.b.#;c
 8042984 3b461946 074803f0 0dff0346 002b01d0  ;F.F.H.....F.+..
 8042994 fff75efc 034800f0 dff900bf 8037bd46  ..^..H.......7.F
 80429a4 80bd00bf 3ca00120 00340140 80b588b0  ....<.. .4.@....
 80429b4 00af7860 7b681b68 b3f1804f 41d1934b  ..x`{h.h...OA..K
 80429c4 9b6d924a 43f00103 9365904b 9b6d03f0  .m.JC....e.K.m..
 80429d4 0103fb61 fb698e4b 8e4a1a60 8c4b3c22  ...a.i.K.J.`.K<"
 80429e4 5a608b4b 10229a60 894b0022 da60884b  Z`.K.".`.K.".`.K
 80429f4 00221a61 864b4ff4 00725a61 844b4ff4  .".a.KO..rZa.KO.
 8042a04 00629a61 824b2022 da61814b 4ff44052  .b.a.K ".a.KO.@R
 8042a14 1a627f48 00f00afc 0346002b 01d0fff7  .b.H.....F.+....
 8042a24 17fc1021 7a4800f0 48fe0346 002b01d0  ...!zH..H..F.+..
 8042a34 fff70efc 7b68764a 1a62754a 7b689362  ....{hvJ.buJ{h.b
 8042a44 79e17b68 1b68744a 934240d1 6f4b9b6d  y.{h.htJ.B@.oK.m
 8042a54 6e4a43f0 02039365 6c4b9b6d 03f00203  nJC....elK.m....
 8042a64 bb61bb69 6d4b6e4a 1a606c4b 41225a60  .a.imKnJ.`lKA"Z`
 8042a74 6a4b0022 9a60694b 0022da60 674b8022  jK.".`iK.".`gK."
 8042a84 1a61664b 4ff40072 5a61644b 4ff40062  .afKO..rZadKO..b
 8042a94 9a61624b 0022da61 604b0022 1a625f48  .abK.".a`K.".b_H
 8042aa4 00f0c4fb 0346002b 01d0fff7 d1fb1021  .....F.+.......!
 8042ab4 5a4800f0 02fe0346 002b01d0 fff7c8fb  ZH.....F.+......
 8042ac4 7b68564a 1a62554a 7b689362 33e17b68  {hVJ.bUJ{h.b3.{h
 8042ad4 1b68544a 934241d1 4c4b9b6d 4b4a43f0  .hTJ.BA.LK.mKJC.
 8042ae4 04039365 494b9b6d 03f00403 7b617b69  ...eIK.m....{a{i
 8042af4 4d4b4e4a 1a604c4b 47225a60 4a4b1022  MKNJ.`LKG"Z`JK."
 8042b04 9a60494b 0022da60 474b0022 1a61464b  .`IK.".`GK.".aFK
 8042b14 4ff40072 5a61444b 4ff40062 9a61424b  O..rZaDKO..b.aBK
 8042b24 2022da61 404b4ff4 40521a62 3e4800f0   ".a@KO.@R.b>H..
 8042b34 7dfb0346 002b01d0 fff78afb 10213a48  }..F.+.......!:H
 8042b44 00f0bbfd 0346002b 01d0fff7 81fb7b68  .....F.+......{h
 8042b54 354a1a62 344a7b68 9362ece0 7b681b68  5J.b4J{h.b..{h.h
 8042b64 334a9342 40d1294b 9b6d284a 43f00803  3J.B@.)K.m(JC...
 8042b74 9365264b 9b6d03f0 08033b61 3b692d4b  .e&K.m....;a;i-K
 8042b84 2d4a1a60 2b4b4c22 5a602a4b 10229a60  -J.`+KL"Z`*K.".`
 8042b94 284b0022 da60274b 00221a61 254b4ff4  (K.".`'K.".a%KO.
 8042ba4 00725a61 234b4ff4 00629a61 214b2022  .rZa#KO..b.a!K "
 8042bb4 da61204b 00221a62 1e4800f0 37fb0346  .a K.".b.H..7..F
 8042bc4 002b01d0 fff744fb 10211a48 00f075fd  .+....D..!.H..u.
 8042bd4 0346002b 01d0fff7 3bfb7b68 154a1a62  .F.+....;.{h.J.b
 8042be4 144a7b68 9362a6e0 7b681b68 134a9342  .J{h.b..{h.h.J.B
 8042bf4 26d1064b 9b6d054a 43f02003 9365034b  &..K.m.JC. ..e.K
 8042c04 9b6d03f0 2003fb60 fb6894e0 00100240  .m.. ..`.h.....@
 8042c14 88a00120 30000240 00040040 f0a00120  ... 0..@...@... 
 8042c24 44000240 00080040 58a10120 94000240  D..@...@X.. ...@
 8042c34 000c0040 c0a10120 58000240 00140040  ...@... X..@...@
 8042c44 7b681b68 3e4a9342 75d13e4b 1b6e3d4a  {h.h>J.Bu.>K.n=J
 8042c54 43f40053 13663b4b 1b6e03f4 0053bb60  C..S.f;K.n...S.`
 8042c64 bb68394b 394a1a60 374b3122 5a60364b  .h9K9J.`7K1"Z`6K
 8042c74 10229a60 344b0022 da60334b 00221a61  .".`4K.".`3K.".a
 8042c84 314b4ff4 00725a61 2f4b4ff4 00629a61  1KO..rZa/KO..b.a
 8042c94 2d4b2022 da612c4b 4ff40052 1a622a48  -K ".a,KO..R.b*H
 8042ca4 00f0c4fa 0346002b 01d0fff7 d1fa1021  .....F.+.......!
 8042cb4 254800f0 02fd0346 002b01d0 fff7c8fa  %H.....F.+......
 8042cc4 7b68214a 5a62204a 7b689362 204b214a  {h!JZb J{h.b K!J
 8042cd4 1a601f4b 32225a60 1d4b0022 9a601c4b  .`.K2"Z`.K.".`.K
 8042ce4 0022da60 1a4b8022 1a61194b 4ff40072  .".`.K.".a.KO..r
 8042cf4 5a61174b 4ff40062 9a61154b 0022da61  Za.KO..b.a.K.".a
 8042d04 134b4ff4 80521a62 114800f0 8ffa0346  .KO..R.b.H.....F
 8042d14 002b01d0 fff79cfa 10210d48 00f0cdfc  .+.......!.H....
 8042d24 0346002b 01d0fff7 93fa7b68 084a9a62  .F.+......{h.J.b
 8042d34 074a7b68 936200bf 2037bd46 80bd00bf  .J{h.b.. 7.F....
 8042d44 00340140 00100240 28a20120 6c000240  .4.@...@(.. l..@
 8042d54 90a20120 80000240 80b588b0 00af7860  ... ...@......x`
 8042d64 07f10c03 00221a60 5a609a60 da601a61  .....".`Z`.`.`.a
 8042d74 7b681b68 114a9342 1bd1114b db6c104a  {h.h.J.B...K.l.J
 8042d84 43f00403 d3640e4b db6c03f0 0403bb60  C....d.K.l.....`
 8042d94 bb68c023 fb600223 3b610023 7b610023  .h.#.`.#;a.#{a.#
 8042da4 bb610323 fb6107f1 0c031946 054800f0  .a.#.a.....F.H..
 8042db4 55fd00bf 2037bd46 80bd00bf 00340140  U... 7.F.....4.@
 8042dc4 00100240 00080242 80b500af 224b234a  ...@...B...."K#J
 8042dd4 1a60214b 4ff4e132 5a601f4b 00229a60  .`!KO..2Z`.K.".`
 8042de4 1d4b0022 da601c4b 00221a61 1a4b0c22  .K.".`.K.".a.K."
 8042df4 5a61194b 00229a61 174b0022 1a62164b  Za.K.".a.K.".b.K
 8042e04 00225a62 144b0022 9a62134b 00225a66  ."Zb.K.".b.K."Zf
 8042e14 114803f0 53fd0346 002b01d0 fff718fa  .H..S..F.+......
 8042e24 00210d48 04f080fb 0346002b 01d0fff7  .!.H.....F.+....
 8042e34 0ffa0021 084804f0 b5fb0346 002b01d0  ...!.H.....F.+..
 8042e44 fff706fa 044804f0 36fb0346 002b01d0  .....H..6..F.+..
 8042e54 fff7fef9 00bf80bd f8a20120 00800040  ........... ...@
 8042e64 80b5aeb0 00af7860 07f1a403 00221a60  ......x`.....".`
 8042e74 5a609a60 da601a61 07f11003 94220021  Z`.`.`.a.....".!
 8042e84 1846fdf7 98fc7b68 1b68224a 93423dd1  .F....{h.h"J.B=.
 8042e94 20233b61 0023bb65 07f11003 184601f0   #;a.#.e.....F..
 8042ea4 d3fe0346 002b01d0 fff7d2f9 1a4bdb6d  ...F.+.......K.m
 8042eb4 194a43f0 0103d365 174bdb6d 03f00103  .JC....e.K.m....
 8042ec4 fb60fb68 144bdb6c 134a43f0 4003d364  .`.h.K.l.JC.@..d
 8042ed4 114bdb6c 03f04003 bb60bb68 00f0cafe  .K.l..@..`.h....
 8042ee4 4ff4c073 c7f8a430 0223c7f8 a8300023  O..s...0.#...0.#
 8042ef4 c7f8ac30 0023c7f8 b0300823 c7f8b430  ...0.#...0.#...0
 8042f04 07f1a403 19460548 00f0a8fc 00bfb837  .....F.H.......7
 8042f14 bd4680bd 00800040 00100240 00180242  .F.....@...@...B
 8042f24 80b582b0 00af0023 fb710420 00f03ef9  .......#.q. ..>.
 8042f34 fff7d8fa 072000f0 0df80346 002b02d0  ..... .....F.+..
 8042f44 0123fb71 01e0fff7 91f9fb79 18460837  .#.q.......y.F.7
 8042f54 bd4680bd 80b584b0 00af7860 0023fb73  .F........x`.#.s
 8042f64 174b1b78 002b23d0 164b1a68 144b1b78  .K.x.+#..K.h.K.x
 8042f74 19464ff4 7a73b3fb f1f3b2fb f3f31846  .FO.zs.........F
 8042f84 00f047f9 0346002b 0fd17b68 072b09d8  ..G..F.+..{h.+..
 8042f94 00227968 4ff0ff30 00f013f9 0a4a7b68  ."yhO..0.....J{h
 8042fa4 136007e0 0123fb73 04e00123 fb7301e0  .`...#.s...#.s..
 8042fb4 0123fb73 fb7b1846 1037bd46 80bd00bf  .#.s.{.F.7.F....
 8042fc4 28810120 20810120 24810120 80b400af  (..  .. $.. ....
 8042fd4 064b1b78 1a46064b 1b681344 044a1360  .K.x.F.K.h.D.J.`
 8042fe4 00bfbd46 5df8047b 704700bf 28810120  ...F]..{pG..(.. 
 8042ff4 8ca30120 80b400af 034b1b68 1846bd46  ... .....K.h.F.F
 8043004 5df8047b 704700bf 8ca30120 80b485b0  ]..{pG..... ....
 8043014 00af7860 7b6803f0 0703fb60 0c4bdb68  ..x`{h.....`.K.h
 8043024 bb60ba68 4ff6ff03 1340bb60 fb681a02  .`.hO....@.`.h..
 8043034 bb681343 43f0bf63 43f40033 bb60044a  .h.CC..cC..3.`.J
 8043044 bb68d360 00bf1437 bd465df8 047b7047  .h.`...7.F]..{pG
 8043054 00ed00e0 80b400af 044bdb68 1b0a03f0  .........K.h....
 8043064 07031846 bd465df8 047b7047 00ed00e0  ...F.F]..{pG....
 8043074 80b483b0 00af0346 fb7197f9 0730002b  .......F.q...0.+
 8043084 0bdbfb79 03f01f02 074997f9 07305b09  ...y.....I...0[.
 8043094 012000fa 02f241f8 232000bf 0c37bd46  . ....A.# ...7.F
 80430a4 5df8047b 704700bf 00e100e0 80b483b0  ]..{pG..........
 80430b4 00af0346 3960fb71 97f90730 002b0adb  ...F9`.q...0.+..
 80430c4 3b68dab2 0c4997f9 07305201 d2b20b44  ;h...I...0R....D
 80430d4 83f80023 0ae03b68 dab20849 fb7903f0  ...#..;h...I.y..
 80430e4 0f03043b 5201d2b2 0b441a76 00bf0c37  ...;R....D.v...7
 80430f4 bd465df8 047b7047 00e100e0 00ed00e0  .F]..{pG........
 8043104 80b489b0 00aff860 b9607a60 fb6803f0  .......`.`z`.h..
 8043114 0703fb61 fb69c3f1 0703032b 28bf0323  ...a.i.....+(..#
 8043124 bb61fb69 0333062b 02d9fb69 043b00e0  .a.i.3.+...i.;..
 8043134 00237b61 4ff0ff32 bb6902fa 03f3da43  .#{aO..2.i.....C
 8043144 bb681a40 7b699a40 4ff0ff31 7b6901fa  .h.@{i.@O..1{i..
 8043154 03f3d943 7b680b40 13431846 2437bd46  ...C{h.@.C.F$7.F
 8043164 5df8047b 70470000 80b582b0 00af7860  ]..{pG........x`
 8043174 7b68013b b3f1807f 01d30123 0fe00a4a  {h.;.......#...J
 8043184 7b68013b 53600721 4ff0ff30 fff78eff  {h.;S`.!O..0....
 8043194 054b0022 9a60044b 07221a60 00231846  .K.".`.K.".`.#.F
 80431a4 0837bd46 80bd00bf 10e000e0 80b582b0  .7.F............
 80431b4 00af7860 7868fff7 29ff00bf 0837bd46  ..x`xh..)....7.F
 80431c4 80bd80b5 86b000af 0346b960 7a60fb73  .........F.`z`.s
 80431d4 fff740ff 78617a68 b9687869 fff790ff  ..@.xazh.hxi....
 80431e4 024697f9 0f301146 1846fff7 5fff00bf  .F...0.F.F.._...
 80431f4 1837bd46 80bd80b5 82b000af 0346fb71  .7.F.........F.q
 8043204 97f90730 1846fff7 33ff00bf 0837bd46  ...0.F..3....7.F
 8043214 80bd80b5 82b000af 78607868 fff7a4ff  ........x`xh....
 8043224 03461846 0837bd46 80bd0000 80b584b0  .F.F.7.F........
 8043234 00af7860 7b68002b 01d10123 8de07b68  ..x`{h.+...#..{h
 8043244 1b681a46 474b9a42 0fd87b68 1b681a46  .h.FGK.B..{h.h.F
 8043254 454b1344 454aa2fb 03231b09 9a007b68  EK.DEJ...#....{h
 8043264 da647b68 424a9a64 0ee07b68 1b681a46  .d{hBJ.d..{h.h.F
 8043274 404b1344 3d4aa2fb 03231b09 9a007b68  @K.D=J...#....{h
 8043284 da647b68 3c4a9a64 7b680222 83f82520  .d{h<J.d{h."..% 
 8043294 7b681b68 1b68fb60 fb6823f4 ff3323f4  {h.h.h.`.h#..3#.
 80432a4 f873fb60 7b689a68 7b68db68 1a437b68  .s.`{h.h{h.h.C{h
 80432b4 1b691a43 7b685b69 1a437b68 9b691a43  .i.C{h[i.C{h.i.C
 80432c4 7b68db69 1a437b68 1b6a1343 fa681343  {h.i.C{h.j.C.h.C
 80432d4 fb607b68 1b68fa68 1a607868 00f05cfa  .`{h.h.h.`xh..\.
 80432e4 7b689b68 b3f5804f 02d17b68 00225a60  {h.h...O..{h."Z`
 80432f4 7b685a68 7b681b6d d2b21a60 7b685b6d  {hZh{h.m...`{h[m
 8043304 7a68926d 5a607b68 5b68002b 10d07b68  zh.mZ`{h[h.+..{h
 8043314 5b68042b 0cd87868 00f07cfa 7b68db6d  [h.+..xh..|.{h.m
 8043324 00221a60 7b681b6e 7a68526e 5a6008e0  .".`{h.nzhRnZ`..
 8043334 7b680022 da657b68 00221a66 7b680022  {h.".e{h.".f{h."
 8043344 5a667b68 00225a64 7b680122 83f82520  Zf{h."Zd{h."..% 
 8043354 7b680022 83f82420 00231846 1037bd46  {h."..$ .#.F.7.F
 8043364 80bd00bf 07040240 f8fffdbf cdcccccc  .......@........
 8043374 00000240 f8fbfdbf 00040240 80b586b0  ...@.......@....
 8043384 00aff860 b9607a60 3b600023 fb75fb68  ...`.`z`;`.#.u.h
 8043394 93f82430 012b01d1 02232ee0 fb680122  ..$0.+...#...h."
 80433a4 83f82420 fb6893f8 2530dbb2 012b1dd1  ..$ .h..%0...+..
 80433b4 fb680222 83f82520 fb680022 5a64fb68  .h."..% .h."Zd.h
 80433c4 1b681a68 fb681b68 22f00102 1a603b68  .h.h.h.h"....`;h
 80433d4 7a68b968 f86800f0 a0f9fb68 1b681a68  zh.h.h.....h.h.h
 80433e4 fb681b68 42f00102 1a6005e0 fb680022  .h.hB....`...h."
 80433f4 83f82420 0223fb75 fb7d1846 1837bd46  ..$ .#.u.}.F.7.F
 8043404 80bd80b4 85b000af 78600023 fb737b68  ........x`.#.s{h
 8043414 93f82530 dbb2022b 08d07b68 04225a64  ..%0...+..{h."Zd
 8043424 7b680022 83f82420 012340e0 7b681b68  {h."..$ .#@.{h.h
 8043434 1a687b68 1b6822f0 0e021a60 7b681b6d  .h{h.h"....`{h.m
 8043444 1a687b68 1b6d22f4 80721a60 7b681b68  .h{h.m"..r.`{h.h
 8043454 1a687b68 1b6822f0 01021a60 7b68db6c  .h{h.h"....`{h.l
 8043464 03f01c02 7b689b6c 012101fa 02f25a60  ....{h.l.!....Z`
 8043474 7b685b6d 7a68926d 5a607b68 db6d002b  {h[mzh.mZ`{h.m.+
 8043484 0cd07b68 db6d1a68 7b68db6d 22f48072  ..{h.m.h{h.m"..r
 8043494 1a607b68 1b6e7a68 526e5a60 7b680122  .`{h.nzhRnZ`{h."
 80434a4 83f82520 7b680022 83f82420 fb7b1846  ..% {h."..$ .{.F
 80434b4 1437bd46 5df8047b 704780b5 84b000af  .7.F]..{pG......
 80434c4 78607b68 9b6c1b68 fb607b68 1b681b68  x`{h.l.h.`{h.h.h
 80434d4 bb607b68 db6c03f0 1c030422 9a40fb68  .`{h.l.....".@.h
 80434e4 1340002b 53d0bb68 03f00403 002b4ed0  .@.+S..h.....+N.
 80434f4 7b681b68 1b6803f4 0043002b 24d07b68  {h.h.h...C.+$.{h
 8043504 db6c03f0 1c027b68 9b6c0421 01fa02f2  .l....{h.l.!....
 8043514 5a607b68 1b681b68 03f48033 002b09d1  Z`{h.h.h...3.+..
 8043524 7b681b6b 002b00f0 c0807b68 1b6b7868  {h.k.+....{h.kxh
 8043534 9847bae0 7b689b6b 002b00f0 b6807b68  .G..{h.k.+....{h
 8043544 9b6b7868 9847b0e0 7b681b68 1b6803f0  .kxh.G..{h.h.h..
 8043554 2003002b 07d17b68 1b681a68 7b681b68   ..+..{h.h.h{h.h
 8043564 22f00402 1a607b68 db6c03f0 1c027b68  "....`{h.l....{h
 8043574 9b6c0421 01fa02f2 5a607b68 1b6b002b  .l.!....Z`{h.k.+
 8043584 00f09380 7b681b6b 78689847 8de07b68  ....{h.kxh.G..{h
 8043594 db6c03f0 1c030222 9a40fb68 1340002b  .l.....".@.h.@.+
 80435a4 4ed0bb68 03f00203 002b49d0 7b681b68  N..h.....+I.{h.h
 80435b4 1b6803f4 0043002b 18d07b68 1b681b68  .h...C.+..{h.h.h
 80435c4 03f48033 002b08d1 7b685b6b 002b6ed0  ...3.+..{h[k.+n.
 80435d4 7b685b6b 78689847 69e07b68 db6a002b  {h[kxh.Gi.{h.j.+
 80435e4 65d07b68 db6a7868 984760e0 7b681b68  e.{h.jxh.G`.{h.h
 80435f4 1b6803f0 2003002b 0bd17b68 1b681a68  .h.. ..+..{h.h.h
 8043604 7b681b68 22f00a02 1a607b68 012283f8  {h.h"....`{h."..
 8043614 25207b68 db6c03f0 1c027b68 9b6c0221  % {h.l....{h.l.!
 8043624 01fa02f2 5a607b68 002283f8 24207b68  ....Z`{h."..$ {h
 8043634 db6a002b 3bd07b68 db6a7868 984736e0  .j.+;.{h.jxh.G6.
 8043644 7b68db6c 03f01c03 08229a40 fb681340  {h.l.....".@.h.@
 8043654 002b2ed0 bb6803f0 0803002b 29d07b68  .+...h.....+).{h
 8043664 1b681a68 7b681b68 22f00e02 1a607b68  .h.h{h.h"....`{h
 8043674 db6c03f0 1c027b68 9b6c0121 01fa02f2  .l....{h.l.!....
 8043684 5a607b68 01225a64 7b680122 83f82520  Z`{h."Zd{h."..% 
 8043694 7b680022 83f82420 7b68db6b 002b08d0  {h."..$ {h.k.+..
 80436a4 7b68db6b 78689847 02e000bf 00e000bf  {h.kxh.G........
 80436b4 00bf00bf 1037bd46 80bd80b4 85b000af  .....7.F........
 80436c4 78603960 0023fb72 7b68002b 03d10123  x`9`.#.r{h.+...#
 80436d4 fb72fb7a 1be07b68 1b681b68 fb603b68  .r.z..{h.h.h.`;h
 80436e4 03f01003 002b0dd0 3b6803f4 8013002b  .....+..;h.....+
 80436f4 04d0fb68 43f48013 fb6003e0 fb6823f4  ...hC....`...h#.
 8043704 8013fb60 7b681b68 fa681a60 fb7a1846  ...`{h.h.h.`.z.F
 8043714 1437bd46 5df8047b 704780b4 85b000af  .7.F]..{pG......
 8043724 f860b960 7a603b60 fb685b6d fa68926d  .`.`z`;`.h[m.h.m
 8043734 5a60fb68 db6d002b 04d0fb68 1b6efa68  Z`.h.m.+...h.n.h
 8043744 526e5a60 fb68db6c 03f01c02 fb689b6c  RnZ`.h.l.....h.l
 8043754 012101fa 02f25a60 fb681b68 3a685a60  .!....Z`.h.h:hZ`
 8043764 fb689b68 102b08d1 fb681b68 7a689a60  .h.h.+...h.hzh.`
 8043774 fb681b68 ba68da60 07e0fb68 1b68ba68  .h.h.h.`...h.h.h
 8043784 9a60fb68 1b687a68 da6000bf 1437bd46  .`.h.hzh.`...7.F
 8043794 5df8047b 70470000 80b485b0 00af7860  ]..{pG........x`
 80437a4 7b681b68 1a46174b 9a420ad8 7b68db6c  {h.h.F.K.B..{h.l
 80437b4 9b089b00 03f18043 03f50233 7a681365  .......C...3zh.e
 80437c4 07e07b68 db6c9b08 9a000f4b 13447a68  ..{h.l.....K.Dzh
 80437d4 13657b68 1b68dbb2 083b0c4a a2fb0323  .e{h.h...;.J...#
 80437e4 1b09fb60 7b680a4a 5a65fb68 03f01f03  ...`{h.JZe.h....
 80437f4 01229a40 7b689a65 00bf1437 bd465df8  .".@{h.e...7.F].
 8043804 047b7047 07040240 20080240 cdcccccc  .{pG...@ ..@....
 8043814 80080240 80b485b0 00af7860 7b685b68  ...@......x`{h[h
 8043824 dbb2fb60 fa680b4b 13449b00 1a467b68  ...`.h.K.D...F{h
 8043834 da657b68 084a1a66 fb68013b 03f00303  .e{h.J.f.h.;....
 8043844 01229a40 7b685a66 00bf1437 bd465df8  .".@{hZf...7.F].
 8043854 047b7047 3f820010 40090240 80b487b0  .{pG?...@..@....
 8043864 00af7860 39600023 7b6162e1 3b681a68  ..x`9`.#{ab.;h.h
 8043874 01217b69 01fa03f3 1340fb60 fb68002b  .!{i.....@.`.h.+
 8043884 00f05481 3b685b68 03f00303 012b05d0  ..T.;h[h.....+..
 8043894 3b685b68 03f00303 022b30d1 7b689b68  ;h[h.....+0.{h.h
 80438a4 3b617b69 5b000322 02fa03f3 db433a69  ;a{i[..".....C:i
 80438b4 13403b61 3b68da68 7b695b00 02fa03f3  .@;a;h.h{i[.....
 80438c4 3a691343 3b617b68 3a699a60 7b685b68  :i.C;a{h:i.`{h[h
 80438d4 3b610122 7b6902fa 03f3db43 3a691340  ;a."{i.....C:i.@
 80438e4 3b613b68 5b681b09 03f00102 7b6902fa  ;a;h[h......{i..
 80438f4 03f33a69 13433b61 7b683a69 5a603b68  ..:i.C;a{h:iZ`;h
 8043904 5b6803f0 0303032b 09d13b68 5b6803f0  [h.....+..;h[h..
 8043914 0303032b 1bd13b68 9b68012b 17d07b68  ...+..;h.h.+..{h
 8043924 db683b61 7b695b00 032202fa 03f3db43  .h;a{i[..".....C
 8043934 3a691340 3b613b68 9a687b69 5b0002fa  :i.@;a;h.h{i[...
 8043944 03f33a69 13433b61 7b683a69 da603b68  ..:i.C;a{h:i.`;h
 8043954 5b6803f0 0303022b 23d17b69 da087b68  [h.....+#.{i..{h
 8043964 083253f8 22303b61 7b6903f0 07039b00  .2S."0;a{i......
 8043974 0f2202fa 03f3db43 3a691340 3b613b68  .".....C:i.@;a;h
 8043984 1a697b69 03f00703 9b0002fa 03f33a69  .i{i..........:i
 8043994 13433b61 7b69da08 7b680832 396943f8  .C;a{i..{h.29iC.
 80439a4 22107b68 1b683b61 7b695b00 032202fa  ".{h.h;a{i[.."..
 80439b4 03f3db43 3a691340 3b613b68 5b6803f0  ...C:i.@;a;h[h..
 80439c4 03027b69 5b0002fa 03f33a69 13433b61  ..{i[.....:i.C;a
 80439d4 7b683a69 1a603b68 5b6803f4 4033002b  {h:i.`;h[h..@3.+
 80439e4 00f0a480 5a4a7b69 9b081833 52f82330  ....ZJ{i...3R.#0
 80439f4 3b617b69 03f00303 db000f22 02fa03f3  ;a{i......."....
 8043a04 db433a69 13403b61 7b68524a 934225d0  .C:i.@;a{hRJ.B%.
 8043a14 7b68514a 93421fd0 7b68504a 934219d0  {hQJ.B..{hPJ.B..
 8043a24 7b684f4a 934213d0 7b684e4a 93420dd0  {hOJ.B..{hNJ.B..
 8043a34 7b684d4a 934207d0 7b684c4a 934201d1  {hMJ.B..{hLJ.B..
 8043a44 06230ce0 07230ae0 052308e0 042306e0  .#...#...#...#..
 8043a54 032304e0 022302e0 012300e0 00237a69  .#...#...#...#zi
 8043a64 02f00302 d2009340 3a691343 3b613849  .......@:i.C;a8I
 8043a74 7b699b08 18333a69 41f82320 344b1b68  {i...3:iA.# 4K.h
 8043a84 3b61fb68 db433a69 13403b61 3b685b68  ;a.h.C:i.@;a;h[h
 8043a94 03f48013 002b03d0 3a69fb68 13433b61  .....+..:i.h.C;a
 8043aa4 2b4a3b69 13602a4b 5b683b61 fb68db43  +J;i.`*K[h;a.h.C
 8043ab4 3a691340 3b613b68 5b6803f4 0013002b  :i.@;a;h[h.....+
 8043ac4 03d03a69 fb681343 3b61214a 3b695360  ..:i.h.C;a!J;iS`
 8043ad4 1f4bd3f8 84303b61 fb68db43 3a691340  .K...0;a.h.C:i.@
 8043ae4 3b613b68 5b6803f4 0033002b 03d03a69  ;a;h[h...3.+..:i
 8043af4 fb681343 3b61164a 3b69c2f8 8430144b  .h.C;a.J;i...0.K
 8043b04 d3f88030 3b61fb68 db433a69 13403b61  ...0;a.h.C:i.@;a
 8043b14 3b685b68 03f48033 002b03d0 3a69fb68  ;h[h...3.+..:i.h
 8043b24 13433b61 0a4a3b69 c2f88030 7b690133  .C;a.J;i...0{i.3
 8043b34 7b613b68 1a687b69 22fa03f3 002b7ff4  {a;h.h{i"....+..
 8043b44 95ae00bf 00bf1c37 bd465df8 047b7047  .......7.F]..{pG
 8043b54 00f40240 00000242 00040242 00080242  ...@...B...B...B
 8043b64 000c0242 00100242 00140242 00180242  ...B...B...B...B
 8043b74 80b483b0 00af7860 0b467b80 13467b70  ......x`.F{..F{p
 8043b84 7b78002b 03d07a88 7b689a61 02e07a88  {x.+..z.{h.a..z.
 8043b94 7b689a62 00bf0c37 bd465df8 047b7047  {h.b...7.F]..{pG
 8043ba4 80b400af 044b1b68 03f4c063 1846bd46  .....K.h...c.F.F
 8043bb4 5df8047b 704700bf 00700040 80b584b0  ]..{pG...p.@....
 8043bc4 00af7860 274b1b68 03f4c063 bb6000f0  ..x`'K.h...c.`..
 8043bd4 61f80346 b3f5004f 01d10123 3ee0214b  a..F...O...#>.!K
 8043be4 db6803f4 0043b3f5 004f01d1 012335e0  .h...C...O...#5.
 8043bf4 ba687b68 9a4201d1 00232fe0 194b1b68  .h{h.B...#/..K.h
 8043c04 23f4c062 17497b68 13430b60 164b1b68  #..b.I{h.C.`.K.h
 8043c14 5b09164a a2fb0323 db093222 02fb03f3  [..J...#..2"....
 8043c24 134aa2fb 0323db08 0133fb60 02e0fb68  .J...#...3.`...h
 8043c34 013bfb60 0b4b5b69 03f48063 b3f5806f  .;.`.K[i...c...o
 8043c44 02d1fb68 002bf2d1 064b5b69 03f48063  ...h.+...K[i...c
 8043c54 b3f5806f 01d10323 00e00023 18461037  ...o...#...#.F.7
 8043c64 bd4680bd 00700040 20810120 c55a7c0a  .F...p.@ .. .Z|.
 8043c74 cdcccccc 80b400af 054b5b68 044a43f4  .........K[h.JC.
 8043c84 00735360 00bfbd46 5df8047b 704700bf  .sS`...F]..{pG..
 8043c94 00700040 80b483b0 00af0f4b 1b693b60  .p.@.......K.i;`
 8043ca4 3b6803f4 8053002b 03d04ff4 80537b60  ;h...S.+..O..S{`
 8043cb4 0ae03b68 03f40043 002b03d1 4ff40043  ..;h...C.+..O..C
 8043cc4 7b6001e0 00237b60 7b681846 0c37bd46  {`...#{`{h.F.7.F
 8043cd4 5df8047b 704700bf 00700040 80b588b0  ]..{pG...p.@....
 8043ce4 00af7860 7b68002b 02d10123 00f0c2bc  ..x`{h.+...#....
 8043cf4 994b9b68 03f00c03 bb61974b db6803f0  .K.h.....a.K.h..
 8043d04 03037b61 7b681b68 03f01003 002b00f0  ..{a{h.h.....+..
 8043d14 e980bb69 002b06d0 bb690c2b 40f08380  ...i.+...i.+@...
 8043d24 7b69012b 7fd18c4b 1b6803f0 0203002b  {i.+...K.h.....+
 8043d34 06d07b68 db69002b 02d10123 00f09abc  ..{h.i.+...#....
 8043d44 7b685a6a 844b1b68 03f00803 002b04d0  {hZj.K.h.....+..
 8043d54 814b1b68 03f0f003 05e07f4b d3f89430  .K.h.......K...0
 8043d64 1b0903f0 f0039342 24d27b68 5b6a1846  .......B$.{h[j.F
 8043d74 00f09afe 0346002b 02d00123 00f07abc  .....F.+...#..z.
 8043d84 754b1b68 744a43f0 08031360 724b1b68  uK.htJC....`rK.h
 8043d94 23f0f002 7b685b6a 6f491343 0b606e4b  #...{h[joI.C.`nK
 8043da4 5b6823f4 7f427b68 1b6a1b02 6a491343  [h#..B{h.j..jI.C
 8043db4 4b6026e0 684b1b68 674a43f0 08031360  K`&.hK.hgJC....`
 8043dc4 654b1b68 23f0f002 7b685b6a 62491343  eK.h#...{h[jbI.C
 8043dd4 0b60614b 5b6823f4 7f427b68 1b6a1b02  .`aK[h#..B{h.j..
 8043de4 5d491343 4b60bb69 002b0ad1 7b685b6a  ]I.CK`.i.+..{h[j
 8043df4 184600f0 59fe0346 002b02d0 012300f0  .F..Y..F.+...#..
 8043e04 39bc00f0 15fe0346 544a1360 544b1b68  9......FTJ.`TK.h
 8043e14 1846fff7 9ff80346 fb73fb7b 002b60d0  .F.....F.s.{.+`.
 8043e24 fb7b00f0 27bc7b68 db69002b 39d04a4b  .{..'.{h.i.+9.JK
 8043e34 1b68494a 43f00103 1360fff7 dbf83861  .hIJC....`....8a
 8043e44 0fe0fff7 d7f80246 3b69d31a 022b08d9  .......F;i...+..
 8043e54 414b1b68 03f00203 002b02d1 032300f0  AK.h.....+...#..
 8043e64 09bc3d4b 1b6803f0 0203002b e9d03a4b  ..=K.h.....+..:K
 8043e74 1b68394a 43f00803 1360374b 1b6823f0  .h9JC....`7K.h#.
 8043e84 f0027b68 5b6a3449 13430b60 324b5b68  ..{h[j4I.C.`2K[h
 8043e94 23f47f42 7b681b6a 1b022f49 13434b60  #..B{h.j../I.CK`
 8043ea4 20e02d4b 1b682c4a 23f00103 1360fff7   .-K.h,J#....`..
 8043eb4 a1f83861 0ee0fff7 9df80246 3b69d31a  ..8a.......F;i..
 8043ec4 022b07d9 244b1b68 03f00203 002b01d0  .+..$K.h.....+..
 8043ed4 0323cfe3 204b1b68 03f00203 002bead1  .#.. K.h.....+..
 8043ee4 00e000bf 7b681b68 03f00103 002b7ed0  ....{h.h.....+~.
 8043ef4 bb69082b 05d0bb69 0c2b0ed1 7b69032b  .i.+...i.+..{i.+
 8043f04 0bd1154b 1b6803f4 0033002b 6ed07b68  ...K.h...3.+n.{h
 8043f14 5b68002b 6ad10123 ace37b68 5b68b3f5  [h.+j..#..{h[h..
 8043f24 803f06d1 0c4b1b68 0b4a43f4 80331360  .?...K.h.JC..3.`
 8043f34 24e07b68 5b68b3f5 a02f13d1 064b1b68  $.{h[h.../...K.h
 8043f44 054a43f4 80231360 034b1b68 024a43f4  .JC..#.`.K.h.JC.
 8043f54 80331360 12e000bf 00100240 20810120  .3.`.......@ .. 
 8043f64 24810120 8b4b1b68 8a4a23f4 80331360  $.. .K.h.J#..3.`
 8043f74 884b1b68 874a23f4 80231360 7b685b68  .K.h.J#..#.`{h[h
 8043f84 002b19d0 fff736f8 38610ee0 fff732f8  .+....6.8a....2.
 8043f94 02463b69 d31a642b 07d97e4b 1b6803f4  .F;i..d+..~K.h..
 8043fa4 0033002b 01d10323 64e37a4b 1b6803f4  .3.+...#d.zK.h..
 8043fb4 0033002b ead01ae0 fff71cf8 38610ee0  .3.+........8a..
 8043fc4 fff718f8 02463b69 d31a642b 07d9714b  .....F;i..d+..qK
 8043fd4 1b6803f4 0033002b 01d00323 4ae36d4b  .h...3.+...#J.mK
 8043fe4 1b6803f4 0033002b ead100e0 00bf7b68  .h...3.+......{h
 8043ff4 1b6803f0 0203002b 6cd0bb69 042b05d0  .h.....+l..i.+..
 8044004 bb690c2b 19d17b69 022b16d1 614b1b68  .i.+..{i.+..aK.h
 8044014 03f48063 002b05d0 7b68db68 002b01d1  ...c.+..{h.h.+..
 8044024 012327e3 5b4b5b68 23f0fe42 7b681b69  .#'.[K[h#..B{h.i
 8044034 1b065849 13434b60 4ce07b68 db68002b  ..XI.CK`L.{h.h.+
 8044044 29d0544b 1b68534a 43f48073 1360fef7  ).TK.hSJC..s.`..
 8044054 d1ff3861 0ee0fef7 cdff0246 3b69d31a  ..8a.......F;i..
 8044064 022b07d9 4b4b1b68 03f48063 002b01d1  .+..KK.h...c.+..
 8044074 0323ffe2 474b1b68 03f48063 002bead0  .#..GK.h...c.+..
 8044084 444b5b68 23f0fe42 7b681b69 1b064149  DK[h#..B{h.i..AI
 8044094 13434b60 1ee03f4b 1b683e4a 23f48073  .CK`..?K.h>J#..s
 80440a4 1360fef7 a7ff3861 0ee0fef7 a3ff0246  .`....8a.......F
 80440b4 3b69d31a 022b07d9 364b1b68 03f48063  ;i...+..6K.h...c
 80440c4 002b01d0 0323d5e2 324b1b68 03f48063  .+...#..2K.h...c
 80440d4 002bead1 7b681b68 03f00803 002b62d0  .+..{h.h.....+b.
 80440e4 7b685b69 002b38d0 7b689b69 002b08d1  {h[i.+8.{h.i.+..
 80440f4 284bd3f8 9430274a 23f01003 c2f89430  (K...0'J#......0
 8044104 07e0244b d3f89430 224a43f0 1003c2f8  ..$K...0"JC.....
 8044114 9430204b d3f89430 1e4a43f0 0103c2f8  .0 K...0.JC.....
 8044124 9430fef7 67ff3861 0fe0fef7 63ff0246  .0..g.8a....c..F
 8044134 3b69d31a 072b08d9 164bd3f8 943003f0  ;i...+...K...0..
 8044144 0203002b 01d10323 94e2124b d3f89430  ...+...#...K...0
 8044154 03f00203 002be8d0 25e00e4b d3f89430  .....+..%..K...0
 8044164 0c4a23f0 0103c2f8 9430fef7 43ff3861  .J#......0..C.8a
 8044174 12e0fef7 3fff0246 3b69d31a 072b0bd9  ....?..F;i...+..
 8044184 044bd3f8 943003f0 0203002b 04d00323  .K...0.....+...#
 8044194 70e200bf 00100240 a84bd3f8 943003f0  p......@.K...0..
 80441a4 0203002b e5d17b68 1b6803f0 0403002b  ...+..{h.h.....+
 80441b4 00f02d81 0023fb77 a04b9b6d 03f08053  ..-..#.w.K.m...S
 80441c4 002b0dd1 9d4b9b6d 9c4a43f0 80539365  .+...K.m.JC..S.e
 80441d4 9a4b9b6d 03f08053 bb60bb68 0123fb77  .K.m...S.`.h.#.w
 80441e4 974b1b68 03f48073 002b1ed1 944b1b68  .K.h...s.+...K.h
 80441f4 934a43f4 80731360 fef7fcfe 38610ee0  .JC..s.`....8a..
 8044204 fef7f8fe 02463b69 d31a022b 07d98c4b  .....F;i...+...K
 8044214 1b6803f4 8073002b 01d10323 2ae2884b  .h...s.+...#*..K
 8044224 1b6803f4 8073002b ead07b68 9b6803f0  .h...s.+..{h.h..
 8044234 0103002b 1fd07b68 9b6803f0 0403002b  ...+..{h.h.....+
 8044244 10d07e4b d3f89030 7c4a43f0 0403c2f8  ..~K...0|JC.....
 8044254 90307a4b d3f89030 784a43f0 0103c2f8  .0zK...0xJC.....
 8044264 903018e0 754bd3f8 9030744a 43f00103  .0..uK...0tJC...
 8044274 c2f89030 0fe0714b d3f89030 6f4a23f0  ...0..qK...0oJ#.
 8044284 0103c2f8 90306d4b d3f89030 6b4a23f0  .....0mK...0kJ#.
 8044294 0403c2f8 90307b68 9b68002b 68d0fef7  .....0{h.h.+h...
 80442a4 a9fe3861 11e0fef7 a5fe0246 3b69d31a  ..8a.......F;i..
 80442b4 41f28832 934208d9 604bd3f8 903003f0  A..2.B..`K...0..
 80442c4 0203002b 01d10323 d4e15c4b d3f89030  ...+...#..\K...0
 80442d4 03f00203 002be6d0 7b689b68 03f08003  .....+..{h.h....
 80442e4 002b22d0 554bd3f8 9030544a 43f08003  .+".UK...0TJC...
 80442f4 c2f89030 11e0fef7 7dfe0246 3b69d31a  ...0....}..F;i..
 8044304 41f28832 934208d9 4c4bd3f8 903003f4  A..2.B..LK...0..
 8044314 0063002b 01d10323 ace1484b d3f89030  .c.+...#..HK...0
 8044324 03f40063 002be6d0 68e0444b d3f89030  ...c.+..h.DK...0
 8044334 424a23f0 8003c2f8 903011e0 fef75afe  BJ#......0....Z.
 8044344 02463b69 d31a41f2 88329342 08d93b4b  .F;i..A..2.B..;K
 8044354 d3f89030 03f40063 002b01d0 032389e1  ...0...c.+...#..
 8044364 364bd3f8 903003f4 0063002b e6d145e0  6K...0...c.+..E.
 8044374 fef740fe 386111e0 fef73cfe 02463b69  ..@.8a....<..F;i
 8044384 d31a41f2 88329342 08d92c4b d3f89030  ..A..2.B..,K...0
 8044394 03f00203 002b01d0 03236be1 274bd3f8  .....+...#k.'K..
 80443a4 903003f0 0203002b e6d1244b d3f89030  .0.....+..$K...0
 80443b4 03f08003 002b21d0 204bd3f8 90301f4a  .....+!. K...0.J
 80443c4 23f08003 c2f89030 11e0fef7 13fe0246  #......0.......F
 80443d4 3b69d31a 41f28832 934208d9 174bd3f8  ;i..A..2.B...K..
 80443e4 903003f4 0063002b 01d00323 42e1134b  .0...c.+...#B..K
 80443f4 d3f89030 03f40063 002be6d1 fb7f012b  ...0...c.+.....+
 8044404 05d10e4b 9b6d0d4a 23f08053 93657b68  ...K.m.J#..S.e{h
 8044414 1b6803f0 2003002b 4fd07b68 9b6a002b  .h.. ..+O.{h.j.+
 8044424 28d0064b d3f89830 044a43f0 0103c2f8  (..K...0.JC.....
 8044434 9830fef7 dffd3861 14e000bf 00100240  .0....8a.......@
 8044444 00700040 fef7d6fd 02463b69 d31a022b  .p.@.....F;i...+
 8044454 08d98a4b d3f89830 03f00203 002b01d1  ...K...0.....+..
 8044464 032307e1 854bd3f8 983003f0 0203002b  .#...K...0.....+
 8044474 e8d022e0 814bd3f8 9830804a 23f00103  .."..K...0.J#...
 8044484 c2f89830 fef7b6fd 38610fe0 fef7b2fd  ...0....8a......
 8044494 02463b69 d31a022b 08d9784b d3f89830  .F;i...+..xK...0
 80444a4 03f00203 002b01d0 0323e3e0 734bd3f8  .....+...#..sK..
 80444b4 983003f0 0203002b e8d17b68 db6a002b  .0.....+..{h.j.+
 80444c4 00f0d780 6d4b9b68 03f00c03 0c2b00f0  ....mK.h.....+..
 80444d4 91807b68 db6a022b 66d1684b 1b68674a  ..{h.j.+f.hK.hgJ
 80444e4 23f08073 1360fef7 85fd3861 0ee0fef7  #..s.`....8a....
 80444f4 81fd0246 3b69d31a 022b07d9 5f4b1b68  ...F;i...+.._K.h
 8044504 03f00073 002b01d0 0323b3e0 5b4b1b68  ...s.+...#..[K.h
 8044514 03f00073 002bead1 584bda68 584b1340  ...s.+..XK.hXK.@
 8044524 7a68116b 7a68526b 013a1201 11437a68  zh.kzhRk.:...Czh
 8044534 926b1202 11437a68 126c5208 013a5205  .k...Czh.lR..:R.
 8044544 11437a68 526c5208 013a5206 11437a68  .CzhRlR..:R..Czh
 8044554 d26bd206 0a434949 1343cb60 474b1b68  .k...CII.C.`GK.h
 8044564 464a43f0 80731360 444bdb68 434a43f0  FJC..s.`DK.hCJC.
 8044574 8073d360 fef73efd 38610ee0 fef73afd  .s.`..>.8a....:.
 8044584 02463b69 d31a022b 07d93c4b 1b6803f0  .F;i...+..<K.h..
 8044594 0073002b 01d10323 6ce0384b 1b6803f0  .s.+...#l.8K.h..
 80445a4 0073002b ead064e0 344b1b68 334a23f0  .s.+..d.4K.h3J#.
 80445b4 80731360 fef71efd 38610ee0 fef71afd  .s.`....8a......
 80445c4 02463b69 d31a022b 07d92c4b 1b6803f0  .F;i...+..,K.h..
 80445d4 0073002b 01d00323 4ce0284b 1b6803f0  .s.+...#L.(K.h..
 80445e4 0073002b ead1254b da682449 254b1340  .s.+..%K.h$I%K.@
 80445f4 cb603ee0 7b68db6a 012b01d1 012339e0  .`>.{h.j.+...#9.
 8044604 1e4bdb68 7b617b69 03f00302 7b681b6b  .K.h{a{i....{h.k
 8044614 9a422cd1 7b6903f0 f0027b68 5b6b013b  .B,.{i....{h[k.;
 8044624 1b019a42 23d17b69 03f4fe42 7b689b6b  ...B#.{i...B{h.k
 8044634 1b029a42 1bd17b69 03f07842 7b68db6b  ...B..{i..xB{h.k
 8044644 db069a42 13d17b69 03f4c002 7b681b6c  ...B..{i....{h.l
 8044654 5b08013b 5b059a42 09d17b69 03f0c062  [..;[..B..{i...b
 8044664 7b685b6c 5b08013b 5b069a42 01d00123  {h[l[..;[..B...#
 8044674 00e00023 18462037 bd4680bd 00100240  ...#.F 7.F.....@
 8044684 0c809f01 fcffeefe 80b586b0 00af7860  ..............x`
 8044694 39600023 7b617b68 002b01d1 01231ce1  9`.#{a{h.+...#..
 80446a4 904b1b68 03f00f03 3a689a42 10d98d4b  .K.h....:h.B...K
 80446b4 1b6823f0 0f028b49 3b681343 0b60894b  .h#....I;h.C.`.K
 80446c4 1b6803f0 0f033a68 9a4201d0 012304e1  .h....:h.B...#..
 80446d4 7b681b68 03f00203 002b10d0 7b689a68  {h.h.....+..{h.h
 80446e4 814b9b68 03f0f003 9a4208d9 7e4b9b68  .K.h.....B..~K.h
 80446f4 23f0f002 7b689b68 7b491343 8b607b68  #...{h.h{I.C.`{h
 8044704 1b6803f0 0103002b 00f08580 7b685b68  .h.....+....{h[h
 8044714 032b1fd1 744b1b68 03f00073 002b01d1  .+..tK.h...s.+..
 8044724 0123dae0 00f024fa 38613b69 6f4a9342  .#....$.8a;ioJ.B
 8044734 47d96d4b 9b6803f0 f003002b 41d16a4b  G.mK.h.....+A.jK
 8044744 9b6823f0 f003684a 43f08003 93608023  .h#...hJC....`.#
 8044754 7b6136e0 7b685b68 022b07d1 624b1b68  {a6.{h[h.+..bK.h
 8044764 03f40033 002b15d1 0123b6e0 7b685b68  ...3.+...#..{h[h
 8044774 002b07d1 5c4b1b68 03f00203 002b09d1  .+..\K.h.....+..
 8044784 0123aae0 584b1b68 03f48063 002b01d1  .#..XK.h...c.+..
 8044794 0123a2e0 00f0b0f8 38613b69 534a9342  .#......8a;iSJ.B
 80447a4 0fd9514b 9b6803f0 f003002b 09d14e4b  ..QK.h.....+..NK
 80447b4 9b6823f0 f0034c4a 43f08003 93608023  .h#...LJC....`.#
 80447c4 7b61494b 9b6823f0 03027b68 5b684649  {aIK.h#...{h[hFI
 80447d4 13438b60 fef70efc f86013e0 fef70afc  .C.`.....`......
 80447e4 0246fb68 d31a41f2 88329342 0ad93e4b  .F.h..A..2.B..>K
 80447f4 9b6803f0 0c027b68 5b689b00 9a4201d0  .h....{h[h...B..
 8044804 03236ae0 384b9b68 03f00c02 7b685b68  .#j.8K.h....{h[h
 8044814 9b009a42 e2d17b69 802b05d1 324b9b68  ...B..{i.+..2K.h
 8044824 314a23f0 f0039360 7b681b68 03f00203  1J#....`{h.h....
 8044834 002b10d0 7b689a68 2b4b9b68 03f0f003  .+..{h.h+K.h....
 8044844 9a4208d2 284b9b68 23f0f002 7b689b68  .B..(K.h#...{h.h
 8044854 25491343 8b60234b 1b6803f0 0f033a68  %I.C.`#K.h....:h
 8044864 9a4210d2 1f4b1b68 23f00f02 1d493b68  .B...K.h#....I;h
 8044874 13430b60 1b4b1b68 03f00f03 3a689a42  .C.`.K.h....:h.B
 8044884 01d00123 29e07b68 1b6803f0 0403002b  ...#).{h.h.....+
 8044894 08d0154b 9b6823f4 e0627b68 db681249  ...K.h#..b{h.h.I
 80448a4 13438b60 7b681b68 03f00803 002b09d0  .C.`{h.h.....+..
 80448b4 0d4b9b68 23f46052 7b681b69 db000a49  .K.h#.`R{h.i...I
 80448c4 13438b60 00f0b4f8 0346094a 1360094b  .C.`.....F.J.`.K
 80448d4 1b681846 fef73efb 03461846 1837bd46  .h.F..>..F.F.7.F
 80448e4 80bd00bf 00200240 00100240 00b4c404  ..... .@...@....
 80448f4 20810120 24810120 80b489b0 00af0023   .. $.. .......#
 8044904 fb610023 bb61474b 9b6803f0 0c033b61  .a.#.aGK.h....;a
 8044914 444bdb68 03f00303 fb603b69 002b05d0  DK.h.....`;i.+..
 8044924 3b690c2b 21d1fb68 012b1ed1 3d4b1b68  ;i.+!..h.+..=K.h
 8044934 03f00803 002b07d1 3a4bd3f8 94301b0a  .....+..:K...0..
 8044944 03f00f03 fb6105e0 364b1b68 1b0903f0  .....a..6K.h....
 8044954 0f03fb61 344afb69 52f82330 fb613b69  ...a4J.iR.#0.a;i
 8044964 002b0dd1 fb69bb61 0ae03b69 042b02d1  .+...i.a..;i.+..
 8044974 2e4bbb61 04e03b69 082b01d1 2b4bbb61  .K.a..;i.+..+K.a
 8044984 3b690c2b 46d1274b db6803f0 0303bb60  ;i.+F.'K.h.....`
 8044994 244bdb68 1b0903f0 0f030133 7b60bb68  $K.h.......3{`.h
 80449a4 022b03d0 bb68032b 0dd019e0 1f4a7b68  .+...h.+.....J{h
 80449b4 b2fbf3f3 1b4ad268 120a02f0 7f0202fb  .....J.h........
 80449c4 03f37b61 19e0194a 7b68b2fb f3f3154a  ..{a...J{h.....J
 80449d4 d268120a 02f07f02 02fb03f3 7b610ce0  .h..........{a..
 80449e4 fa697b68 b2fbf3f3 0e4ad268 120a02f0  .i{h.....J.h....
 80449f4 7f0202fb 03f37b61 00bf0a4b db685b0e  ......{a...K.h[.
 8044a04 03f00303 01335b00 3b607a69 3b68b2fb  .....3[.;`zi;h..
 8044a14 f3f3bb61 bb691846 2437bd46 5df8047b  ...a.i.F$7.F]..{
 8044a24 704700bf 00100240 78870408 0024f400  pG.....@x....$..
 8044a34 80b500af fff760ff 0246054b 9b681b09  ......`..F.K.h..
 8044a44 03f00f03 0349cb5c 22fa03f3 184680bd  .....I.\"....F..
 8044a54 00100240 60870408 80b500af fff7e8ff  ...@`...........
 8044a64 0246054b 9b681b0a 03f00703 0349cb5c  .F.K.h.......I.\
 8044a74 22fa03f3 184680bd 00100240 70870408  "....F.....@p...
 8044a84 80b500af fff7d4ff 0246054b 9b68db0a  .........F.K.h..
 8044a94 03f00703 0349cb5c 22fa03f3 184680bd  .....I.\"....F..
 8044aa4 00100240 70870408 80b586b0 00af7860  ...@p.........x`
 8044ab4 00237b61 2c4b9b6d 03f08053 002b03d0  .#{a,K.m...S.+..
 8044ac4 fff76ef8 386114e0 274b9b6d 264a43f0  ..n.8a..'K.m&JC.
 8044ad4 80539365 244b9b6d 03f08053 fb60fb68  .S.e$K.m...S.`.h
 8044ae4 fff75ef8 3861204b 9b6d1f4a 23f08053  ..^.8a K.m.J#..S
 8044af4 93653b69 002b03d0 3b69b3f5 007f0bd1  .e;i.+..;i......
 8044b04 7b68802b 19d97b68 a02b02d9 02237b61  {h.+..{h.+...#{a
 8044b14 13e00123 7b6110e0 7b68802b 02d90323  ...#{a..{h.+...#
 8044b24 7b610ae0 7b68802b 02d10223 7b6104e0  {a..{h.+...#{a..
 8044b34 7b68702b 01d10123 7b610c4b 1b6823f0  {hp+...#{a.K.h#.
 8044b44 0f020a49 7b691343 0b60084b 1b6803f0  ...I{i.C.`.K.h..
 8044b54 0f037a69 9a4201d0 012300e0 00231846  ..zi.B...#...#.F
 8044b64 1837bd46 80bd00bf 00100240 00200240  .7.F.......@. .@
 8044b74 80b487b0 00af314b db6803f0 0303fb60  ......1K.h.....`
 8044b84 2e4bdb68 1b0903f0 0f030133 bb60fb68  .K.h.......3.`.h
 8044b94 032b15d0 fb68032b 39d8fb68 012b1cd0  .+...h.+9..h.+..
 8044ba4 fb68022b 33d1264a bb68b2fb f3f3234a  .h.+3.&J.h....#J
 8044bb4 d268120a 02f07f02 02fb03f3 3b6129e0  .h..........;a).
 8044bc4 1f4abb68 b2fbf3f3 1c4ad268 120a02f0  .J.h.....J.h....
 8044bd4 7f0202fb 03f33b61 1ce0184b 1b6803f0  ......;a...K.h..
 8044be4 0803002b 07d1154b d3f89430 1b0a03f0  ...+...K...0....
 8044bf4 0f037b61 05e0114b 1b681b09 03f00f03  ..{a...K.h......
 8044c04 7b61104a 7b6952f8 23303b61 02e00023  {a.J{iR.#0;a...#
 8044c14 3b6100bf 094bdb68 5b0e03f0 03030133  ;a...K.h[......3
 8044c24 5b007b60 3a697b68 b2fbf3f3 3b603b68  [.{`:i{h....;`;h
 8044c34 18461c37 bd465df8 047b7047 00100240  .F.7.F]..{pG...@
 8044c44 0024f400 78870408 80b588b0 00af7860  .$..x.........x`
 8044c54 0023fb77 0023bb77 7b681b68 03f40063  .#.w.#.w{h.h...c
 8044c64 002b40d0 7b68db6e 802b2ad0 802b25d8  .+@.{h.n.+*..+%.
 8044c74 602b26d0 602b21d8 402b06d0 402b1dd8  `+&.`+!.@+..@+..
 8044c84 002b09d0 202b10d0 18e08f4b db688e4a  .+.. +.....K.h.J
 8044c94 43f48033 d36015e0 7b680433 00211846  C..3.`..{h.3.!.F
 8044ca4 00f056fb 0346fb77 0ce07b68 20330021  ..V..F.w..{h 3.!
 8044cb4 184600f0 33fc0346 fb7703e0 0123fb77  .F..3..F.w...#.w
 8044cc4 00e000bf fb7f002b 0bd17f4b d3f89c30  .......+...K...0
 8044cd4 23f0e002 7b68db6e 7b491343 c1f89c30  #...{h.n{I.C...0
 8044ce4 01e0fb7f bb777b68 1b6803f4 8053002b  .....w{h.h...S.+
 8044cf4 47d07b68 1b6fb3f5 806f30d0 b3f5806f  G.{h.o...o0....o
 8044d04 2ad8b3f5 407f2ad0 b3f5407f 24d8b3f5  *...@.*...@.$...
 8044d14 007f08d0 b3f5007f 1ed8002b 0ad0b3f5  ...........+....
 8044d24 807f10d0 18e0684b db68674a 43f48033  ......hK.hgJC..3
 8044d34 d36015e0 7b680433 00211846 00f008fb  .`..{h.3.!.F....
 8044d44 0346fb77 0ce07b68 20330021 184600f0  .F.w..{h 3.!.F..
 8044d54 e5fb0346 fb7703e0 0123fb77 00e000bf  ...F.w...#.w....
 8044d64 fb7f002b 0bd1584b d3f89c30 23f4e062  ...+..XK...0#..b
 8044d74 7b681b6f 54491343 c1f89c30 01e0fb7f  {h.oTI.C...0....
 8044d84 bb777b68 1b6803f4 0033002b 00f0ab80  .w{h.h...3.+....
 8044d94 0023fb75 4c4b9b6d 03f08053 002b0dd1  .#.uLK.m...S.+..
 8044da4 494b9b6d 484a43f0 80539365 464b9b6d  IK.mHJC..S.eFK.m
 8044db4 03f08053 fb60fb68 0123fb75 434b1b68  ...S.`.h.#.uCK.h
 8044dc4 424a43f4 80731360 fef714f9 38610fe0  BJC..s.`....8a..
 8044dd4 fef710f9 02463b69 d31a022b 08d93b4b  .....F;i...+..;K
 8044de4 1b6803f4 8073002b 09d10323 fb7706e0  .h...s.+...#.w..
 8044df4 364b1b68 03f48073 002be9d0 00e000bf  6K.h...s.+......
 8044e04 fb7f002b 64d1304b d3f89030 03f44073  ...+d.0K...0..@s
 8044e14 bb61bb69 002b1fd0 7b68d3f8 9030ba69  .a.i.+..{h...0.i
 8044e24 9a4219d0 284bd3f8 903023f4 4073bb61  .B..(K...0#.@s.a
 8044e34 254bd3f8 9030244a 43f48033 c2f89030  %K...0$JC..3...0
 8044e44 214bd3f8 9030204a 23f48033 c2f89030  !K...0 J#..3...0
 8044e54 1d4abb69 c2f89030 bb6903f0 0103002b  .J.i...0.i.....+
 8044e64 1fd0fef7 c7f83861 12e0fef7 c3f80246  ......8a.......F
 8044e74 3b69d31a 41f28832 934209d9 124bd3f8  ;i..A..2.B...K..
 8044e84 903003f0 0203002b 0ad10323 fb7707e0  .0.....+...#.w..
 8044e94 0d4bd3f8 903003f0 0203002b e5d000e0  .K...0.....+....
 8044ea4 00bffb7f 002b0cd1 074bd3f8 903023f4  .....+...K...0#.
 8044eb4 40727b68 d3f89030 03491343 c1f89030  @r{h...0.I.C...0
 8044ec4 08e0fb7f bb7705e0 00100240 00700040  .....w.....@.p.@
 8044ed4 fb7fbb77 fb7d012b 05d19c4b 9b6d9b4a  ...w.}.+...K.m.J
 8044ee4 23f08053 93657b68 1b6803f0 0103002b  #..S.e{h.h.....+
 8044ef4 0ad0964b d3f88830 23f00302 7b685b6b  ...K...0#...{h[k
 8044f04 92491343 c1f88830 7b681b68 03f00203  .I.C...0{h.h....
 8044f14 002b0ad0 8d4bd3f8 883023f0 0c027b68  .+...K...0#...{h
 8044f24 9b6b8a49 1343c1f8 88307b68 1b6803f0  .k.I.C...0{h.h..
 8044f34 0403002b 0ad0854b d3f88830 23f03002  ...+...K...0#.0.
 8044f44 7b68db6b 81491343 c1f88830 7b681b68  {h.k.I.C...0{h.h
 8044f54 03f00803 002b0ad0 7c4bd3f8 883023f0  .....+..|K...0#.
 8044f64 c0027b68 1b6c7949 1343c1f8 88307b68  ..{h.lyI.C...0{h
 8044f74 1b6803f0 1003002b 0ad0744b d3f88830  .h.....+..tK...0
 8044f84 23f44072 7b685b6c 70491343 c1f88830  #.@r{h[lpI.C...0
 8044f94 7b681b68 03f02003 002b0ad0 6b4bd3f8  {h.h.. ..+..kK..
 8044fa4 883023f4 40627b68 9b6c6849 1343c1f8  .0#.@b{h.lhI.C..
 8044fb4 88307b68 1b6803f4 0073002b 0ad0634b  .0{h.h...s.+..cK
 8044fc4 d3f88830 23f44022 7b68db6d 5f491343  ...0#.@"{h.m_I.C
 8044fd4 c1f88830 7b681b68 03f48063 002b0ad0  ...0{h.h...c.+..
 8044fe4 5a4bd3f8 883023f4 40127b68 1b6e5749  ZK...0#.@.{h.nWI
 8044ff4 1343c1f8 88307b68 1b6803f4 8003002b  .C...0{h.h.....+
 8045004 0ad0524b d3f88830 23f44002 7b685b6e  ..RK...0#.@.{h[n
 8045014 4e491343 c1f88830 7b681b68 03f00073  NI.C...0{h.h...s
 8045024 002b31d0 7b689b6e b3f1007f 0ed0b3f1  .+1.{h.n........
 8045034 007f14d8 002b15d0 b3f1807f 0fd1434b  .....+........CK
 8045044 db68424a 43f48013 d3600ce0 7b680433  .hBJC....`..{h.3
 8045054 00211846 00f07cf9 0346fb77 03e00123  .!.F..|..F.w...#
 8045064 fb7700e0 00bffb7f 002b0bd1 374bd3f8  .w.......+..7K..
 8045074 883023f0 40727b68 9b6e3449 1343c1f8  .0#.@r{h.n4I.C..
 8045084 883001e0 fb7fbb77 7b681b68 03f04003  .0.....w{h.h..@.
 8045094 002b0ad0 2d4bd3f8 883023f4 40527b68  .+..-K...0#.@R{h
 80450a4 db6c2a49 1343c1f8 88307b68 1b6803f0  .l*I.C...0{h.h..
 80450b4 8003002b 0ad0254b d3f88830 23f44042  ...+..%K...0#.@B
 80450c4 7b681b6d 21491343 c1f88830 7b681b68  {h.m!I.C...0{h.h
 80450d4 03f48073 002b0ad0 1c4bd3f8 883023f4  ...s.+...K...0#.
 80450e4 40327b68 5b6d1949 1343c1f8 88307b68  @2{h[m.I.C...0{h
 80450f4 1b6803f4 8013002b 0ad0144b d3f89c30  .h.....+...K...0
 8045104 23f00302 7b689b6d 10491343 c1f89c30  #...{h.m.I.C...0
 8045114 7b681b68 03f40053 002b2bd0 0b4bd3f8  {h.h...S.++..K..
 8045124 883023f0 40627b68 5b6f0849 1343c1f8  .0#.@b{h[o.I.C..
 8045134 88307b68 5b6fb3f1 006f09d1 034bdb68  .0{h[o...o...K.h
 8045144 024a43f4 8013d360 14e000bf 00100240  .JC....`.......@
 8045154 7b685b6f b3f1806f 0cd17b68 04330121  {h[o...o..{h.3.!
 8045164 184600f0 f5f80346 fb77fb7f 002b01d0  .F.....F.w...+..
 8045174 fb7fbb77 7b681b68 03f40023 002b4ad0  ...w{h.h...#.+J.
 8045184 7b689b6f b3f5804f 08d1704b d3f89c30  {h.o...O..pK...0
 8045194 6e4a43f4 8043c2f8 9c3012e0 6b4bd3f8  nJC..C...0..kK..
 80451a4 883023f0 40627b68 9b6f6849 1343c1f8  .0#.@b{h.ohI.C..
 80451b4 8830664b d3f89c30 644a23f4 8043c2f8  .0fK...0dJ#..C..
 80451c4 9c307b68 9b6fb3f1 806f0dd1 7b680433  .0{h.o...o..{h.3
 80451d4 01211846 00f0bcf8 0346fb77 fb7f002b  .!.F.....F.w...+
 80451e4 19d0fb7f bb7716e0 7b689b6f b3f1006f  .....w..{h.o...o
 80451f4 06d1564b db68554a 43f48013 d3600ae0  ..VK.hUJC....`..
 8045204 7b689b6f b3f5804f 05d1504b db684f4a  {h.o...O..PK.hOJ
 8045214 43f48033 d3607b68 1b6803f4 8023002b  C..3.`{h.h...#.+
 8045224 28d04a4b d3f88830 23f04062 7b68db6f  (.JK...0#.@b{h.o
 8045234 46491343 c1f88830 7b68db6f b3f1006f  FI.C...0{h.o...o
 8045244 06d1424b db68414a 43f48013 d36011e0  ..BK.hAJC....`..
 8045254 7b68db6f b3f1806f 0cd17b68 04330121  {h.o...o..{h.3.!
 8045264 184600f0 75f80346 fb77fb7f 002b01d0  .F..u..F.w...+..
 8045274 fb7fbb77 7b681b68 03f48043 002b1ed0  ...w{h.h...C.+..
 8045284 324bd3f8 883023f0 40527b68 d3f88030  2K...0#.@R{h...0
 8045294 2e491343 c1f88830 7b68d3f8 8030b3f1  .I.C...0{h...0..
 80452a4 805f0cd1 7b680433 02211846 00f050f8  ._..{h.3.!.F..P.
 80452b4 0346fb77 fb7f002b 01d0fb7f bb777b68  .F.w...+.....w{h
 80452c4 1b6803f4 8033002b 0bd0204b d3f89c30  .h...3.+.. K...0
 80452d4 23f00402 7b68d3f8 84301c49 1343c1f8  #...{h...0.I.C..
 80452e4 9c307b68 1b6803f4 0013002b 0bd0174b  .0{h.h.....+...K
 80452f4 d3f89c30 23f01802 7b68d3f8 88301349  ...0#...{h...0.I
 8045304 1343c1f8 9c307b68 1b6803f0 8073002b  .C...0{h.h...s.+
 8045314 17d00e4b d3f89c30 23f44012 7b68d3f8  ...K...0#.@.{h..
 8045324 8c300a49 1343c1f8 9c307b68 d3f88c30  .0.I.C...0{h...0
 8045334 b3f5001f 05d1054b db68044a 43f48013  .......K.h.JC...
 8045344 d360bb7f 18462037 bd4680bd 00100240  .`...F 7.F.....@
 8045354 80b584b0 00af7860 39600023 fb737b68  ......x`9`.#.s{h
 8045364 1b68032b 18d0032b 1fd8012b 02d0022b  .h.+...+...+...+
 8045374 09d01ae0 654b1b68 03f00203 002b17d1  ....eK.h.....+..
 8045384 0123fb73 14e0614b 1b6803f4 8063002b  .#.s..aK.h...c.+
 8045394 10d10123 fb730de0 5c4b1b68 03f4c023  ...#.s..\K.h...#
 80453a4 002b09d1 0123fb73 06e00123 fb7304e0  .+...#.s...#.s..
 80453b4 00bf02e0 00bf00e0 00bffb7b 002b40f0  ...........{.+@.
 80453c4 9f80524b 1b68514a 23f08063 1360fdf7  ..RK.hQJ#..c.`..
 80453d4 11feb860 0fe0fdf7 0dfe0246 bb68d31a  ...`.......F.h..
 80453e4 022b08d9 494b1b68 03f00063 002b09d0  .+..IK.h...c.+..
 80453f4 0323fb73 06e0454b 1b6803f0 0063002b  .#.s..EK.h...c.+
 8045404 e9d100e0 00bffb7b 002b79d1 3b68002b  .......{.+y.;h.+
 8045414 16d13e4b 1a693e4b 13407a68 92681102  ..>K.i>K.@zh.h..
 8045424 7a68d268 d2061143 7a685268 013a1201  zh.h...CzhRh.:..
 8045434 11437a68 12680a43 34491343 0b6133e0  .Czh.h.C4I.C.a3.
 8045444 3b68012b 18d1314b 1a69324b 13407a68  ;h.+..1K.i2K.@zh
 8045454 92681102 7a681269 5208013a 52051143  .h..zh.iR..:R..C
 8045464 7a685268 013a1201 11437a68 12680a43  zhRh.:...Czh.h.C
 8045474 26491343 0b6117e0 244b1a69 264b1340  &I.C.a..$K.i&K.@
 8045484 7a689268 11027a68 52695208 013a5206  zh.h..zhRiR..:R.
 8045494 11437a68 5268013a 12011143 7a681268  .CzhRh.:...Czh.h
 80454a4 0a431a49 13430b61 184b1b68 174a43f0  .C.I.C.a.K.h.JC.
 80454b4 80631360 fdf79efd b8600fe0 fdf79afd  .c.`.....`......
 80454c4 0246bb68 d31a022b 08d9104b 1b6803f0  .F.h...+...K.h..
 80454d4 0063002b 09d10323 fb7306e0 0b4b1b68  .c.+...#.s...K.h
 80454e4 03f00063 002be9d0 00e000bf fb7b002b  ...c.+.......{.+
 80454f4 06d1064b 1a697b68 9b690449 13430b61  ...K.i{h.i.I.C.a
 8045504 fb7b1846 1037bd46 80bd00bf 00100240  .{.F.7.F.......@
 8045514 0c80ff07 0c809fff 0c80fff9 80b584b0  ................
 8045524 00af7860 39600023 fb737b68 1b68032b  ..x`9`.#.s{h.h.+
 8045534 18d0032b 1fd8012b 02d0022b 09d01ae0  ...+...+...+....
 8045544 4a4b1b68 03f00203 002b17d1 0123fb73  JK.h.....+...#.s
 8045554 14e0464b 1b6803f4 8063002b 10d10123  ..FK.h...c.+...#
 8045564 fb730de0 414b1b68 03f4c023 002b09d1  .s..AK.h...#.+..
 8045574 0123fb73 06e00123 fb7304e0 00bf02e0  .#.s...#.s......
 8045584 00bf00e0 00bffb7b 002b69d1 374b1b68  .......{.+i.7K.h
 8045594 364a23f0 80531360 fdf72cfd b8600fe0  6J#..S.`..,..`..
 80455a4 fdf728fd 0246bb68 d31a022b 08d92f4b  ..(..F.h...+../K
 80455b4 1b6803f0 0053002b 09d00323 fb7306e0  .h...S.+...#.s..
 80455c4 2a4b1b68 03f00053 002be9d1 00e000bf  *K.h...S.+......
 80455d4 fb7b002b 44d13b68 002b15d1 234b5a69  .{.+D.;h.+..#KZi
 80455e4 234b1340 7a689268 11027a68 d268d206  #K.@zh.h..zh.h..
 80455f4 11437a68 5268013a 12011143 7a681268  .CzhRh.:...Czh.h
 8045604 0a431a49 13434b61 184b1b68 174a43f0  .C.I.CKa.K.h.JC.
 8045614 80531360 fdf7eefc b8600fe0 fdf7eafc  .S.`.....`......
 8045624 0246bb68 d31a022b 08d9104b 1b6803f0  .F.h...+...K.h..
 8045634 0053002b 09d10323 fb7306e0 0b4b1b68  .S.+...#.s...K.h
 8045644 03f00053 002be9d0 00e000bf fb7b002b  ...S.+.......{.+
 8045654 06d1064b 5a697b68 1b690449 13434b61  ...KZi{h.i.I.CKa
 8045664 fb7b1846 1037bd46 80bd00bf 00100240  .{.F.7.F.......@
 8045674 0c80ff07 80b582b0 00af7860 7b68002b  ..........x`{h.+
 8045684 01d10123 49e07b68 93f83d30 dbb2002b  ...#I.{h..=0...+
 8045694 06d17b68 002283f8 3c207868 fdf786f9  ..{h."..< xh....
 80456a4 7b680222 83f83d20 7b681a68 7b680433  {h."..= {h.h{h.3
 80456b4 19461046 00f046fb 7b680122 83f84820  .F.F..F.{h."..H 
 80456c4 7b680122 83f83e20 7b680122 83f83f20  {h."..> {h."..? 
 80456d4 7b680122 83f84020 7b680122 83f84120  {h."..@ {h."..A 
 80456e4 7b680122 83f84220 7b680122 83f84320  {h."..B {h."..C 
 80456f4 7b680122 83f84420 7b680122 83f84520  {h."..D {h."..E 
 8045704 7b680122 83f84620 7b680122 83f84720  {h."..F {h."..G 
 8045714 7b680122 83f83d20 00231846 0837bd46  {h."..= .#.F.7.F
 8045724 80bd0000 80b485b0 00af7860 7b6893f8  ..........x`{h..
 8045734 3d30dbb2 012b01d0 012347e0 7b680222  =0...+...#G.{h."
 8045744 83f83d20 7b681b68 234a9342 1dd07b68  ..= {h.h#J.B..{h
 8045754 1b68b3f1 804f18d0 7b681b68 1f4a9342  .h...O..{h.h.J.B
 8045764 13d07b68 1b681e4a 93420ed0 7b681b68  ..{h.h.J.B..{h.h
 8045774 1c4a9342 09d07b68 1b681b4a 934204d0  .J.B..{h.h.J.B..
 8045784 7b681b68 194a9342 15d17b68 1b689a68  {h.h.J.B..{h.h.h
 8045794 174b1340 fb60fb68 062b15d0 fb68b3f5  .K.@.`.h.+...h..
 80457a4 803f11d0 7b681b68 1a687b68 1b6842f0  .?..{h.h.h{h.hB.
 80457b4 01021a60 08e07b68 1b681a68 7b681b68  ...`..{h.h.h{h.h
 80457c4 42f00102 1a6000e0 00bf0023 18461437  B....`.....#.F.7
 80457d4 bd465df8 047b7047 002c0140 00040040  .F]..{pG.,.@...@
 80457e4 00080040 000c0040 00340140 00400140  ...@...@.4.@.@.@
 80457f4 07000100 80b483b0 00af7860 7b681b68  ..........x`{h.h
 8045804 1a6a41f2 11131340 002b0fd1 7b681b68  .jA....@.+..{h.h
 8045814 1a6a40f2 44431340 002b07d1 7b681b68  .j@.DC.@.+..{h.h
 8045824 1a687b68 1b6822f0 01021a60 7b680122  .h{h.h"....`{h."
 8045834 83f83d20 00231846 0c37bd46 5df8047b  ..= .#.F.7.F]..{
 8045844 704780b5 82b000af 78607b68 002b01d1  pG......x`{h.+..
 8045854 012349e0 7b6893f8 3d30dbb2 002b06d1  .#I.{h..=0...+..
 8045864 7b680022 83f83c20 786800f0 41f87b68  {h."..< xh..A.{h
 8045874 022283f8 3d207b68 1a687b68 04331946  ."..= {h.h{h.3.F
 8045884 104600f0 5ffa7b68 012283f8 48207b68  .F.._.{h."..H {h
 8045894 012283f8 3e207b68 012283f8 3f207b68  ."..> {h."..? {h
 80458a4 012283f8 40207b68 012283f8 41207b68  ."..@ {h."..A {h
 80458b4 012283f8 42207b68 012283f8 43207b68  ."..B {h."..C {h
 80458c4 012283f8 44207b68 012283f8 45207b68  ."..D {h."..E {h
 80458d4 012283f8 46207b68 012283f8 47207b68  ."..F {h."..G {h
 80458e4 012283f8 3d200023 18460837 bd4680bd  ."..= .#.F.7.F..
 80458f4 80b483b0 00af7860 00bf0c37 bd465df8  ......x`...7.F].
 8045904 047b7047 80b586b0 00aff860 b9607a60  .{pG.......`.`z`
 8045914 0023fb75 fb6893f8 3c30012b 01d10223  .#.u.h..<0.+...#
 8045924 ffe0fb68 012283f8 3c207b68 142b00f2  ...h."..< {h.+..
 8045934 f08001a2 52f823f0 91590408 175b0408  ....R.#..Y...[..
 8045944 175b0408 175b0408 d1590408 175b0408  .[...[...Y...[..
 8045954 175b0408 175b0408 135a0408 175b0408  .[...[...Z...[..
 8045964 175b0408 175b0408 535a0408 175b0408  .[...[..SZ...[..
 8045974 175b0408 175b0408 955a0408 175b0408  .[...[...Z...[..
 8045984 175b0408 175b0408 d55a0408 fb681b68  .[...[...Z...h.h
 8045994 b9681846 00f076fa fb681b68 9a69fb68  .h.F..v..h.h.i.h
 80459a4 1b6842f0 08029a61 fb681b68 9a69fb68  .hB....a.h.h.i.h
 80459b4 1b6822f0 04029a61 fb681b68 9969bb68  .h"....a.h.h.i.h
 80459c4 1a69fb68 1b680a43 9a61a5e0 fb681b68  .i.h.h.C.a...h.h
 80459d4 b9681846 00f0e6fa fb681b68 9a69fb68  .h.F.....h.h.i.h
 80459e4 1b6842f4 00629a61 fb681b68 9a69fb68  .hB..b.a.h.h.i.h
 80459f4 1b6822f4 80629a61 fb681b68 9969bb68  .h"..b.a.h.h.i.h
 8045a04 1b691a02 fb681b68 0a439a61 84e0fb68  .i...h.h.C.a...h
 8045a14 1b68b968 184600f0 4ffbfb68 1b68da69  .h.h.F..O..h.h.i
 8045a24 fb681b68 42f00802 da61fb68 1b68da69  .h.hB....a.h.h.i
 8045a34 fb681b68 22f00402 da61fb68 1b68d969  .h.h"....a.h.h.i
 8045a44 bb681a69 fb681b68 0a43da61 64e0fb68  .h.i.h.h.C.ad..h
 8045a54 1b68b968 184600f0 b7fbfb68 1b68da69  .h.h.F.....h.h.i
 8045a64 fb681b68 42f40062 da61fb68 1b68da69  .h.hB..b.a.h.h.i
 8045a74 fb681b68 22f48062 da61fb68 1b68d969  .h.h"..b.a.h.h.i
 8045a84 bb681b69 1a02fb68 1b680a43 da6143e0  .h.i...h.h.C.aC.
 8045a94 fb681b68 b9681846 00f000fc fb681b68  .h.h.h.F.....h.h
 8045aa4 5a6dfb68 1b6842f0 08025a65 fb681b68  Zm.h.hB...Ze.h.h
 8045ab4 5a6dfb68 1b6822f0 04025a65 fb681b68  Zm.h.h"...Ze.h.h
 8045ac4 596dbb68 1a69fb68 1b680a43 5a6523e0  Ym.h.i.h.h.CZe#.
 8045ad4 fb681b68 b9681846 00f044fc fb681b68  .h.h.h.F..D..h.h
 8045ae4 5a6dfb68 1b6842f4 00625a65 fb681b68  Zm.h.hB..bZe.h.h
 8045af4 5a6dfb68 1b6822f4 80625a65 fb681b68  Zm.h.h"..bZe.h.h
 8045b04 596dbb68 1b691a02 fb681b68 0a435a65  Ym.h.i...h.h.CZe
 8045b14 02e00123 fb7500bf fb680022 83f83c20  ...#.u...h."..< 
 8045b24 fb7d1846 1837bd46 80bd00bf 80b584b0  .}.F.7.F........
 8045b34 00af7860 39600023 fb737b68 93f83c30  ..x`9`.#.s{h..<0
 8045b44 012b01d1 0223b6e0 7b680122 83f83c20  .+...#..{h."..< 
 8045b54 7b680222 83f83d20 7b681b68 9b68bb60  {h."..= {h.h.h.`
 8045b64 bb6823f4 441323f0 7703bb60 bb6823f4  .h#.D.#.w..`.h#.
 8045b74 7f43bb60 7b681b68 ba689a60 3b681b68  .C.`{h.h.h.`;h.h
 8045b84 b3f5005f 3ed0b3f5 005f00f2 8780b3f5  ..._>...._......
 8045b94 805f00f0 8680b3f5 805f7fd8 702b1ad0  ._......._..p+..
 8045ba4 702b7bd8 602b50d0 602b77d8 502b3cd0  p+{.`+P.`+w.P+<.
 8045bb4 502b73d8 402b58d0 402b6fd8 302b64d0  P+s.@+X.@+o.0+d.
 8045bc4 302b6bd8 202b60d0 202b67d8 002b5cd0  0+k. +`. +g..+\.
 8045bd4 102b5ad0 62e07b68 18683b68 99683b68  .+Z.b.{h.h;h.h;h
 8045be4 5a683b68 db6800f0 34fd7b68 1b689b68  Zh;h.h..4.{h.h.h
 8045bf4 bb60bb68 43f07703 bb607b68 1b68ba68  .`.hC.w..`{h.h.h
 8045c04 9a604fe0 7b681868 3b689968 3b685a68  .`O.{h.h;h.h;hZh
 8045c14 3b68db68 00f01dfd 7b681b68 9a687b68  ;h.h....{h.h.h{h
 8045c24 1b6842f4 80429a60 3ce07b68 18683b68  .hB..B.`<.{h.h;h
 8045c34 59683b68 db681a46 00f08ffc 7b681b68  Yh;h.h.F....{h.h
 8045c44 50211846 00f0e8fc 2ce07b68 18683b68  P!.F....,.{h.h;h
 8045c54 59683b68 db681a46 00f0aefc 7b681b68  Yh;h.h.F....{h.h
 8045c64 60211846 00f0d8fc 1ce07b68 18683b68  `!.F......{h.h;h
 8045c74 59683b68 db681a46 00f06ffc 7b681b68  Yh;h.h.F..o.{h.h
 8045c84 40211846 00f0c8fc 0ce07b68 1a683b68  @!.F......{h.h;h
 8045c94 1b681946 104600f0 bffc03e0 0123fb73  .h.F.F.......#.s
 8045ca4 00e000bf 7b680122 83f83d20 7b680022  ....{h."..= {h."
 8045cb4 83f83c20 fb7b1846 1037bd46 80bd80b5  ..< .{.F.7.F....
 8045cc4 82b000af 78603960 7b6893f8 3c30012b  ....x`9`{h..<0.+
 8045cd4 01d10223 31e07b68 012283f8 3c207b68  ...#1.{h."..< {h
 8045ce4 022283f8 3d203968 786800f0 a1fb0346  ."..= 9hxh.....F
 8045cf4 002b09d0 7b680122 83f83d20 7b680022  .+..{h."..= {h."
 8045d04 83f83c20 012318e0 7b681b68 da687b68  ..< .#..{h.h.h{h
 8045d14 1b6822f0 4002da60 7b681b68 da687b68  .h".@..`{h.h.h{h
 8045d24 1b6822f4 8042da60 7b680122 83f83d20  .h"..B.`{h."..= 
 8045d34 7b680022 83f83c20 00231846 0837bd46  {h."..< .#.F.7.F
 8045d44 80bd0000 80b485b0 00af7860 39607b68  ..........x`9`{h
 8045d54 1b68fb60 7b68434a 934213d0 7b68b3f1  .h.`{hCJ.B..{h..
 8045d64 804f0fd0 7b68404a 93420bd0 7b683f4a  .O..{h@J.B..{h?J
 8045d74 934207d0 7b683e4a 934203d0 7b683d4a  .B..{h>J.B..{h=J
 8045d84 934208d1 fb6823f0 7003fb60 3b685b68  .B...h#.p..`;h[h
 8045d94 fa681343 fb607b68 324a9342 1fd07b68  .h.C.`{h2J.B..{h
 8045da4 b3f1804f 1bd07b68 2f4a9342 17d07b68  ...O..{h/J.B..{h
 8045db4 2e4a9342 13d07b68 2d4a9342 0fd07b68  .J.B..{h-J.B..{h
 8045dc4 2c4a9342 0bd07b68 2b4a9342 07d07b68  ,J.B..{h+J.B..{h
 8045dd4 2a4a9342 03d07b68 294a9342 08d1fb68  *J.B..{h)J.B...h
 8045de4 23f44073 fb603b68 db68fa68 1343fb60  #.@s.`;h.h.h.C.`
 8045df4 fb6823f0 80023b68 5b691343 fb603b68  .h#...;h[i.C.`;h
 8045e04 9a687b68 da623b68 1a687b68 9a627b68  .h{h.b;h.h{h.b{h
 8045e14 144a9342 0fd07b68 164a9342 0bd07b68  .J.B..{h.J.B..{h
 8045e24 154a9342 07d07b68 144a9342 03d07b68  .J.B..{h.J.B..{h
 8045e34 134a9342 03d13b68 1a697b68 1a637b68  .J.B..;h.i{h.c{h
 8045e44 1b6843f0 04027b68 1a607b68 01225a61  .hC...{h.`{h."Za
 8045e54 7b68fa68 1a6000bf 1437bd46 5df8047b  {h.h.`...7.F]..{
 8045e64 704700bf 002c0140 00040040 00080040  pG...,.@...@...@
 8045e74 000c0040 00340140 00400140 00440140  ...@.4.@.@.@.D.@
 8045e84 00480140 80b487b0 00af7860 39607b68  .H.@......x`9`{h
 8045e94 1b6a7b61 7b681b6a 23f00102 7b681a62  .j{a{h.j#...{h.b
 8045ea4 7b685b68 3b617b68 9b69fb60 fb6823f4  {h[h;a{h.i.`.h#.
 8045eb4 803323f0 7003fb60 fb6823f0 0303fb60  .3#.p..`.h#....`
 8045ec4 3b681b68 fa681343 fb607b69 23f00203  ;h.h.h.C.`{i#...
 8045ed4 7b613b68 9b687a69 13437b61 7b682c4a  {a;h.hzi.C{a{h,J
 8045ee4 93420fd0 7b682b4a 93420bd0 7b682a4a  .B..{h+J.B..{h*J
 8045ef4 934207d0 7b68294a 934203d0 7b68284a  .B..{h)J.B..{h(J
 8045f04 93420cd1 7b6923f0 08037b61 3b68db68  .B..{i#...{a;h.h
 8045f14 7a691343 7b617b69 23f00403 7b617b68  zi.C{a{i#...{a{h
 8045f24 1b4a9342 0fd07b68 1a4a9342 0bd07b68  .J.B..{h.J.B..{h
 8045f34 194a9342 07d07b68 184a9342 03d07b68  .J.B..{h.J.B..{h
 8045f44 174a9342 11d13b69 23f48073 3b613b69  .J.B..;i#..s;a;i
 8045f54 23f40073 3b613b68 5b693a69 13433b61  #..s;a;h[i:i.C;a
 8045f64 3b689b69 3a691343 3b617b68 3a695a60  ;h.i:i.C;a{h:iZ`
 8045f74 7b68fa68 9a613b68 5a687b68 5a637b68  {h.h.a;hZh{hZc{h
 8045f84 7a691a62 00bf1c37 bd465df8 047b7047  zi.b...7.F]..{pG
 8045f94 002c0140 00340140 00400140 00440140  .,.@.4.@.@.@.D.@
 8045fa4 00480140 80b487b0 00af7860 39607b68  .H.@......x`9`{h
 8045fb4 1b6a7b61 7b681b6a 23f01002 7b681a62  .j{a{h.j#...{h.b
 8045fc4 7b685b68 3b617b68 9b69fb60 fb6823f0  {h[h;a{h.i.`.h#.
 8045fd4 807323f4 e043fb60 fb6823f4 4073fb60  .s#..C.`.h#.@s.`
 8045fe4 3b681b68 1b02fa68 1343fb60 7b6923f0  ;h.h...h.C.`{i#.
 8045ff4 20037b61 3b689b68 1b017a69 13437b61   .{a;h.h..zi.C{a
 8046004 7b68284a 934203d0 7b68274a 93420dd1  {h(J.B..{h'J.B..
 8046014 7b6923f0 80037b61 3b68db68 1b017a69  {i#...{a;h.h..zi
 8046024 13437b61 7b6923f0 40037b61 7b681d4a  .C{a{i#.@.{a{h.J
 8046034 93420fd0 7b681c4a 93420bd0 7b681b4a  .B..{h.J.B..{h.J
 8046044 934207d0 7b681a4a 934203d0 7b68194a  .B..{h.J.B..{h.J
 8046054 934213d1 3b6923f4 80633b61 3b6923f4  .B..;i#..c;a;i#.
 8046064 00633b61 3b685b69 9b003a69 13433b61  .c;a;h[i..:i.C;a
 8046074 3b689b69 9b003a69 13433b61 7b683a69  ;h.i..:i.C;a{h:i
 8046084 5a607b68 fa689a61 3b685a68 7b689a63  Z`{h.h.a;hZh{h.c
 8046094 7b687a69 1a6200bf 1c37bd46 5df8047b  {hzi.b...7.F]..{
 80460a4 704700bf 002c0140 00340140 00400140  pG...,.@.4.@.@.@
 80460b4 00440140 00480140 80b487b0 00af7860  .D.@.H.@......x`
 80460c4 39607b68 1b6a7b61 7b681b6a 23f48072  9`{h.j{a{h.j#..r
 80460d4 7b681a62 7b685b68 3b617b68 db69fb60  {h.b{h[h;a{h.i.`
 80460e4 fb6823f4 803323f0 7003fb60 fb6823f0  .h#..3#.p..`.h#.
 80460f4 0303fb60 3b681b68 fa681343 fb607b69  ...`;h.h.h.C.`{i
 8046104 23f40073 7b613b68 9b681b02 7a691343  #..s{a;h.h..zi.C
 8046114 7b617b68 274a9342 03d07b68 264a9342  {a{h'J.B..{h&J.B
 8046124 0dd17b69 23f40063 7b613b68 db681b02  ..{i#..c{a;h.h..
 8046134 7a691343 7b617b69 23f48063 7b617b68  zi.C{a{i#..c{a{h
 8046144 1c4a9342 0fd07b68 1b4a9342 0bd07b68  .J.B..{h.J.B..{h
 8046154 1a4a9342 07d07b68 194a9342 03d07b68  .J.B..{h.J.B..{h
 8046164 184a9342 13d13b69 23f48053 3b613b69  .J.B..;i#..S;a;i
 8046174 23f40053 3b613b68 5b691b01 3a691343  #..S;a;h[i..:i.C
 8046184 3b613b68 9b691b01 3a691343 3b617b68  ;a;h.i..:i.C;a{h
 8046194 3a695a60 7b68fa68 da613b68 5a687b68  :iZ`{h.h.a;hZh{h
 80461a4 da637b68 7a691a62 00bf1c37 bd465df8  .c{hzi.b...7.F].
 80461b4 047b7047 002c0140 00340140 00400140  .{pG.,.@.4.@.@.@
 80461c4 00440140 00480140 80b487b0 00af7860  .D.@.H.@......x`
 80461d4 39607b68 1b6a3b61 7b681b6a 23f48052  9`{h.j;a{h.j#..R
 80461e4 7b681a62 7b685b68 7b617b68 db69fb60  {h.b{h[h{a{h.i.`
 80461f4 fb6823f0 807323f4 e043fb60 fb6823f4  .h#..s#..C.`.h#.
 8046204 4073fb60 3b681b68 1b02fa68 1343fb60  @s.`;h.h...h.C.`
 8046214 3b6923f4 00533b61 3b689b68 1b033a69  ;i#..S;a;h.h..:i
 8046224 13433b61 7b68184a 93420fd0 7b68174a  .C;a{h.J.B..{h.J
 8046234 93420bd0 7b68164a 934207d0 7b68154a  .B..{h.J.B..{h.J
 8046244 934203d0 7b68144a 934209d1 7b6923f4  .B..{h.J.B..{i#.
 8046254 80437b61 3b685b69 9b017a69 13437b61  .C{a;h[i..zi.C{a
 8046264 7b687a69 5a607b68 fa68da61 3b685a68  {hziZ`{h.h.a;hZh
 8046274 7b681a64 7b683a69 1a6200bf 1c37bd46  {h.d{h:i.b...7.F
 8046284 5df8047b 704700bf 002c0140 00340140  ]..{pG...,.@.4.@
 8046294 00400140 00440140 00480140 80b487b0  .@.@.D.@.H.@....
 80462a4 00af7860 39607b68 1b6a3b61 7b681b6a  ..x`9`{h.j;a{h.j
 80462b4 23f48032 7b681a62 7b685b68 7b617b68  #..2{h.b{h[h{a{h
 80462c4 5b6dfb60 fb6823f4 803323f0 7003fb60  [m.`.h#..3#.p..`
 80462d4 3b681b68 fa681343 fb603b69 23f40033  ;h.h.h.C.`;i#..3
 80462e4 3b613b68 9b681b04 3a691343 3b617b68  ;a;h.h..:i.C;a{h
 80462f4 174a9342 0fd07b68 164a9342 0bd07b68  .J.B..{h.J.B..{h
 8046304 154a9342 07d07b68 144a9342 03d07b68  .J.B..{h.J.B..{h
 8046314 134a9342 09d17b69 23f48033 7b613b68  .J.B..{i#..3{a;h
 8046324 5b691b02 7a691343 7b617b68 7a695a60  [i..zi.C{a{hziZ`
 8046334 7b68fa68 5a653b68 5a687b68 9a657b68  {h.hZe;hZh{h.e{h
 8046344 3a691a62 00bf1c37 bd465df8 047b7047  :i.b...7.F]..{pG
 8046354 002c0140 00340140 00400140 00440140  .,.@.4.@.@.@.D.@
 8046364 00480140 80b487b0 00af7860 39607b68  .H.@......x`9`{h
 8046374 1b6a3b61 7b681b6a 23f48012 7b681a62  .j;a{h.j#...{h.b
 8046384 7b685b68 7b617b68 5b6dfb60 fb6823f0  {h[h{a{h[m.`.h#.
 8046394 807323f4 e043fb60 3b681b68 1b02fa68  .s#..C.`;h.h...h
 80463a4 1343fb60 3b6923f4 00133b61 3b689b68  .C.`;i#...;a;h.h
 80463b4 1b053a69 13433b61 7b68184a 93420fd0  ..:i.C;a{h.J.B..
 80463c4 7b68174a 93420bd0 7b68164a 934207d0  {h.J.B..{h.J.B..
 80463d4 7b68154a 934203d0 7b68144a 934209d1  {h.J.B..{h.J.B..
 80463e4 7b6923f4 80237b61 3b685b69 9b027a69  {i#..#{a;h[i..zi
 80463f4 13437b61 7b687a69 5a607b68 fa685a65  .C{a{hziZ`{h.hZe
 8046404 3b685a68 7b68da65 7b683a69 1a6200bf  ;hZh{h.e{h:i.b..
 8046414 1c37bd46 5df8047b 704700bf 002c0140  .7.F]..{pG...,.@
 8046424 00340140 00400140 00440140 00480140  .4.@.@.@.D.@.H.@
 8046434 80b586b0 00af7860 39600023 fb757b68  ......x`9`.#.u{h
 8046444 1b689b68 3b613b69 23f44013 23f07003  .h.h;a;i#.@.#.p.
 8046454 3b613b68 5b683a69 13433b61 3b6923f4  ;a;h[h:i.C;a;i#.
 8046464 803323f0 07033b61 3b681b68 3a691343  .3#...;a;h.h:i.C
 8046474 3b617b68 1b683a69 9a603b68 5b68702b  ;a{h.h:i.`;h[hp+
 8046484 1ad0702b 60d8602b 54d0602b 5cd8502b  ..p+`.`+T.`+\.P+
 8046494 46d0502b 58d8402b 19d0402b 54d8302b  F.P+X.@+..@+T.0+
 80464a4 55d0302b 50d8202b 51d0202b 4cd8002b  U.0+P. +Q. +L..+
 80464b4 4dd0102b 4bd047e0 7b681868 3b68d968  M..+K.G.{h.h;h.h
 80464c4 3b689a68 3b681b69 00f0c3f8 40e03b68  ;h.h;h.i....@.;h
 80464d4 1b68052b 01d10123 3be07b68 1b681b6a  .h.+...#;.{h.h.j
 80464e4 fb607b68 1b681a6a 7b681b68 22f00102  .`{h.h.j{h.h"...
 80464f4 1a627b68 1b689b69 bb60bb68 23f0f003  .b{h.h.i.`.h#...
 8046504 bb603b68 1b691b01 ba681343 bb607b68  .`;h.i...h.C.`{h
 8046514 1b68ba68 9a617b68 1b68fa68 1a6217e0  .h.h.a{h.h.h.b..
 8046524 7b681868 3b689968 3b681b69 1a4600f0  {h.h;h.h;h.i.F..
 8046534 14f80de0 7b681868 3b689968 3b681b69  ....{h.h;h.h;h.i
 8046544 1a4600f0 39f803e0 0123fb75 00e000bf  .F..9....#.u....
 8046554 fb7d1846 1837bd46 80bd80b4 87b000af  .}.F.7.F........
 8046564 f860b960 7a60fb68 1b6a7b61 fb681b6a  .`.`z`.h.j{a.h.j
 8046574 23f00102 fb681a62 fb689b69 3b613b69  #....h.b.h.i;a;i
 8046584 23f0f003 3b617b68 1b013a69 13433b61  #...;a{h..:i.C;a
 8046594 7b6923f0 0a037b61 7a69bb68 13437b61  {i#...{azi.h.C{a
 80465a4 fb683a69 9a61fb68 7a691a62 00bf1c37  .h:i.a.hzi.b...7
 80465b4 bd465df8 047b7047 80b487b0 00aff860  .F]..{pG.......`
 80465c4 b9607a60 fb681b6a 7b61fb68 1b6a23f0  .`z`.h.j{a.h.j#.
 80465d4 1002fb68 1a62fb68 9b693b61 3b6923f4  ...h.b.h.i;a;i#.
 80465e4 70433b61 7b681b03 3a691343 3b617b69  pC;a{h..:i.C;a{i
 80465f4 23f0a003 7b61bb68 1b017a69 13437b61  #...{a.h..zi.C{a
 8046604 fb683a69 9a61fb68 7a691a62 00bf1c37  .h:i.a.hzi.b...7
 8046614 bd465df8 047b7047 80b485b0 00af7860  .F]..{pG......x`
 8046624 39607b68 9b68fb60 fb6823f4 401323f0  9`{h.h.`.h#.@.#.
 8046634 7003fb60 3a68fb68 134343f0 0703fb60  p..`:h.h.CC....`
 8046644 7b68fa68 9a6000bf 1437bd46 5df8047b  {h.h.`...7.F]..{
 8046654 704780b4 87b000af f860b960 7a603b60  pG.......`.`z`;`
 8046664 fb689b68 7b617b69 23f47f43 7b613b68  .h.h{a{i#..C{a;h
 8046674 1a027b68 1a43bb68 13437a69 13437b61  ..{h.C.h.Czi.C{a
 8046684 fb687a69 9a6000bf 1c37bd46 5df8047b  .hzi.`...7.F]..{
 8046694 70470000 80b485b0 00af7860 39607b68  pG........x`9`{h
 80466a4 93f83c30 012b01d1 022368e0 7b680122  ..<0.+...#h.{h."
 80466b4 83f83c20 7b680222 83f83d20 7b681b68  ..< {h."..= {h.h
 80466c4 5b68fb60 7b681b68 9b68bb60 7b681b68  [h.`{h.h.h.`{h.h
 80466d4 2e4a9342 04d07b68 1b682d4a 934208d1  .J.B..{h.h-J.B..
 80466e4 fb6823f4 7003fb60 3b685b68 fa681343  .h#.p..`;h[h.h.C
 80466f4 fb60fb68 23f07003 fb603b68 1b68fa68  .`.h#.p..`;h.h.h
 8046704 1343fb60 7b681b68 fa685a60 7b681b68  .C.`{h.h.hZ`{h.h
 8046714 1e4a9342 1dd07b68 1b68b3f1 804f18d0  .J.B..{h.h...O..
 8046724 7b681b68 1b4a9342 13d07b68 1b681a4a  {h.h.J.B..{h.h.J
 8046734 93420ed0 7b681b68 184a9342 09d07b68  .B..{h.h.J.B..{h
 8046744 1b68134a 934204d0 7b681b68 144a9342  .h.J.B..{h.h.J.B
 8046754 0cd1bb68 23f08003 bb603b68 9b68ba68  ...h#....`;h.h.h
 8046764 1343bb60 7b681b68 ba689a60 7b680122  .C.`{h.h.h.`{h."
 8046774 83f83d20 7b680022 83f83c20 00231846  ..= {h."..< .#.F
 8046784 1437bd46 5df8047b 704700bf 002c0140  .7.F]..{pG...,.@
 8046794 00340140 00040040 00080040 000c0040  .4.@...@...@...@
 80467a4 00400140 80b485b0 00af7860 39600023  .@.@......x`9`.#
 80467b4 fb607b68 93f83c30 012b01d1 022373e0  .`{h..<0.+...#s.
 80467c4 7b680122 83f83c20 fb6823f0 ff023b68  {h."..< .h#...;h
 80467d4 db681343 fb60fb68 23f44072 3b689b68  .h.C.`.h#.@r;h.h
 80467e4 1343fb60 fb6823f4 80623b68 5b681343  .C.`.h#..b;h[h.C
 80467f4 fb60fb68 23f40062 3b681b68 1343fb60  .`.h#..b;h.h.C.`
 8046804 fb6823f4 80523b68 1b691343 fb60fb68  .h#..R;h.i.C.`.h
 8046814 23f40052 3b685b69 1343fb60 fb6823f4  #..R;h[i.C.`.h#.
 8046824 80423b68 1b6b1343 fb60fb68 23f47022  .B;h.k.C.`.h#.p"
 8046834 3b689b69 1b041343 fb60fb68 23f08052  ;h.i...C.`.h#..R
 8046844 3b68db69 1343fb60 7b681b68 194a9342  ;h.i.C.`{h.h.J.B
 8046854 04d07b68 1b68184a 93421cd1 fb6823f4  ..{h.h.J.B...h#.
 8046864 70023b68 9b6a1b05 1343fb60 fb6823f0  p.;h.j...C.`.h#.
 8046874 80723b68 1b6a1343 fb60fb68 23f00072  .r;h.j.C.`.h#..r
 8046884 3b685b6a 1343fb60 fb6823f0 00523b68  ;h[j.C.`.h#..R;h
 8046894 db6a1343 fb607b68 1b68fa68 5a647b68  .j.C.`{h.h.hZd{h
 80468a4 002283f8 3c200023 18461437 bd465df8  ."..< .#.F.7.F].
 80468b4 047b7047 002c0140 00340140 80b582b0  .{pG.,.@.4.@....
 80468c4 00af7860 7b68002b 01d10123 42e07b68  ..x`{h.+...#B.{h
 80468d4 d3f88830 002b06d1 7b680022 83f88420  ...0.+..{h."... 
 80468e4 7868fcf7 bdfa7b68 2422c3f8 88207b68  xh....{h$"... {h
 80468f4 1b681a68 7b681b68 22f00102 1a607b68  .h.h{h.h"....`{h
 8046904 9b6a002b 02d07868 00f0b6fb 786800f0  .j.+..xh....xh..
 8046914 b3f80346 012b01d1 01231be0 7b681b68  ...F.+...#..{h.h
 8046924 5a687b68 1b6822f4 90425a60 7b681b68  Zh{h.h"..BZ`{h.h
 8046934 9a687b68 1b6822f0 2a029a60 7b681b68  .h{h.h".*..`{h.h
 8046944 1a687b68 1b6842f0 01021a60 786800f0  .h{h.hB....`xh..
 8046954 35fc0346 18460837 bd4680bd 80b58ab0  5..F.F.7.F......
 8046964 02aff860 b9603b60 1346fb80 fb68d3f8  ...`.`;`.F...h..
 8046974 8830202b 7bd1bb68 002b02d0 fb88002b  .0 +{..h.+.....+
 8046984 01d10123 74e0fb68 0022c3f8 9020fb68  ...#t..h."... .h
 8046994 2122c3f8 8820fcf7 2dfb7861 fb68fa88  !"... ..-.xa.h..
 80469a4 a3f85420 fb68fa88 a3f85620 fb689b68  ..T .h....V .h.h
 80469b4 b3f5805f 08d1fb68 1b69002b 04d10023  ..._...h.i.+...#
 80469c4 fb61bb68 bb6103e0 bb68fb61 0023bb61  .a.h.a...h.a.#.a
 80469d4 30e03b68 00937b69 00228021 f86800f0  0.;h..{i.".!.h..
 80469e4 97fc0346 002b05d0 fb682022 c3f88820  ...F.+...h "... 
 80469f4 03233de0 fb69002b 0bd1bb69 1b881a46  .#=..i.+...i...F
 8046a04 fb681b68 c2f30802 9a62bb69 0233bb61  .h.h.....b.i.3.a
 8046a14 07e0fb69 1a78fb68 1b689a62 fb690133  ...i.x.h.h.b.i.3
 8046a24 fb61fb68 b3f85630 9bb2013b 9ab2fb68  .a.h..V0...;...h
 8046a34 a3f85620 fb68b3f8 56309bb2 002bc8d1  ..V .h..V0...+..
 8046a44 3b680093 7b690022 4021f868 00f060fc  ;h..{i."@!.h..`.
 8046a54 0346002b 05d0fb68 2022c3f8 88200323  .F.+...h "... .#
 8046a64 06e0fb68 2022c3f8 88200023 00e00223  ...h "... .#...#
 8046a74 18462037 bd4680bd 2de9b04f 8cb000af  .F 7.F..-..O....
 8046a84 78610023 87f82a30 7b699a68 7b691b69  xa.#..*0{i.h{i.i
 8046a94 1a437b69 5b691a43 7b69db69 1343fb62  .C{i[i.C{i.i.C.b
 8046aa4 7b691b68 1a68aa4b 13407a69 1268f96a  {i.h.h.K.@zi.h.j
 8046ab4 0b431360 7b691b68 5b6823f4 40517b69  .C.`{i.h[h#.@Q{i
 8046ac4 da687b69 1b680a43 5a607b69 9b69fb62  .h{i.h.CZ`{i.i.b
 8046ad4 7b691b68 9f4a9342 04d07b69 1b6afa6a  {i.h.J.B..{i.j.j
 8046ae4 1343fb62 7b691b68 9b6823f0 6e4323f4  .C.b{i.h.h#.nC#.
 8046af4 30637a69 1268f96a 0b439360 7b691b68  0czi.h.j.C.`{i.h
 8046b04 db6a23f0 0f017b69 5a6a7b69 1b680a43  .j#...{iZj{i.h.C
 8046b14 da627b69 1b68904a 934225d1 8f4bd3f8  .b{i.h.J.B%..K..
 8046b24 883003f0 0303032b 1ad801a2 52f823f0  .0.....+....R.#.
 8046b34 456b0408 556b0408 4d6b0408 5d6b0408  Ek..Uk..Mk..]k..
 8046b44 012387f8 2b3016e1 022387f8 2b3012e1  .#..+0...#..+0..
 8046b54 042387f8 2b300ee1 082387f8 2b300ae1  .#..+0...#..+0..
 8046b64 102387f8 2b3006e1 7b691b68 7c4a9342  .#..+0..{i.h|J.B
 8046b74 38d17a4b d3f88830 03f00c03 0c2b2dd8  8.zK...0.....+-.
 8046b84 01a252f8 23f000bf c16b0408 e16b0408  ..R.#....k...k..
 8046b94 e16b0408 e16b0408 d16b0408 e16b0408  .k...k...k...k..
 8046ba4 e16b0408 e16b0408 c96b0408 e16b0408  .k...k...k...k..
 8046bb4 e16b0408 e16b0408 d96b0408 002387f8  .k...k...k...#..
 8046bc4 2b30d8e0 022387f8 2b30d4e0 042387f8  +0...#..+0...#..
 8046bd4 2b30d0e0 082387f8 2b30cce0 102387f8  +0...#..+0...#..
 8046be4 2b30c8e0 7b691b68 5e4a9342 25d15b4b  +0..{i.h^J.B%.[K
 8046bf4 d3f88830 03f03003 302b16d0 302b18d8  ...0..0.0+..0+..
 8046c04 202b0ad0 202b14d8 002b02d0 102b08d0   +.. +...+...+..
 8046c14 0fe00023 87f82b30 ade00223 87f82b30  ...#..+0...#..+0
 8046c24 a9e00423 87f82b30 a5e00823 87f82b30  ...#..+0...#..+0
 8046c34 a1e01023 87f82b30 9de07b69 1b684a4a  ...#..+0..{i.hJJ
 8046c44 934225d1 454bd3f8 883003f0 c003c02b  .B%.EK...0.....+
 8046c54 16d0c02b 18d8802b 0ad0802b 14d8002b  ...+...+...+...+
 8046c64 02d0402b 08d00fe0 002387f8 2b3082e0  ..@+.....#..+0..
 8046c74 022387f8 2b307ee0 042387f8 2b307ae0  .#..+0~..#..+0z.
 8046c84 082387f8 2b3076e0 102387f8 2b3072e0  .#..+0v..#..+0r.
 8046c94 7b691b68 354a9342 2ad1304b d3f88830  {i.h5J.B*.0K...0
 8046ca4 03f44073 b3f5407f 1ad0b3f5 407f1bd8  ..@s..@.....@...
 8046cb4 b3f5007f 0cd0b3f5 007f15d8 002b03d0  .............+..
 8046cc4 b3f5807f 08d00fe0 002387f8 2b3052e0  .........#..+0R.
 8046cd4 022387f8 2b304ee0 042387f8 2b304ae0  .#..+0N..#..+0J.
 8046ce4 082387f8 2b3046e0 102387f8 2b3042e0  .#..+0F..#..+0B.
 8046cf4 7b691b68 174a9342 3ad1184b d3f88830  {i.h.J.B:..K...0
 8046d04 03f44063 b3f5406f 1ad0b3f5 406f1bd8  ..@c..@o....@o..
 8046d14 b3f5006f 0cd0b3f5 006f15d8 002b03d0  ...o.....o...+..
 8046d24 b3f5806f 08d00fe0 002387f8 2b3022e0  ...o.....#..+0".
 8046d34 022387f8 2b301ee0 042387f8 2b301ae0  .#..+0...#..+0..
 8046d44 082387f8 2b3016e0 102387f8 2b3012e0  .#..+0...#..+0..
 8046d54 f369ffcf 00800040 00380140 00100240  .i.....@.8.@...@
 8046d64 00440040 00480040 004c0040 00500040  .D.@.H.@.L.@.P.@
 8046d74 102387f8 2b307b69 1b68b04a 934240f0  .#..+0{i.h.J.B@.
 8046d84 9b8097f8 2b30082b 27d801a2 52f823f0  ....+0.+'...R.#.
 8046d94 b96d0408 c16d0408 c96d0408 df6d0408  .m...m...m...m..
 8046da4 cf6d0408 df6d0408 df6d0408 df6d0408  .m...m...m...m..
 8046db4 d76d0408 fdf750fe 786214e0 fdf760fe  .m....P.xb....`.
 8046dc4 786210e0 9e4b7b62 0de0fdf7 95fd7862  xb...K{b......xb
 8046dd4 09e04ff4 00437b62 05e00023 7b620123  ..O..C{b...#{b.#
 8046de4 87f82a30 00bf7b6a 002b00f0 30817b69  ..*0..{j.+..0.{i
 8046df4 5b6a944a 32f81330 1a467b6a b3fbf2f3  [j.J2..0.F{j....
 8046e04 bb617b69 5a681346 5b001344 ba699a42  .a{iZh.F[..D.i.B
 8046e14 05d37b69 5b681b03 ba699a42 03d90123  ..{i[h...i.B...#
 8046e24 87f82a30 13e17b6a 0022bb60 fa607b69  ..*0..{j.".`.`{i
 8046e34 5b6a844a 32f81330 9bb20022 3b607a60  [j.J2..0...";`z`
 8046e44 d7e90023 d7e90201 f9f7f2f9 02460b46  ...#.........F.F
 8046e54 10461946 4ff00002 4ff00003 0b0243ea  .F.FO...O.....C.
 8046e64 10630202 79694968 49080020 0c460546  .c..yiIhI.. .F.F
 8046e74 12eb0408 43eb0509 7b695b68 00229a46  ....C...{i[h.".F
 8046e84 93465246 5b464046 4946f9f7 d1f90246  .FRF[F@FIF.....F
 8046e94 0b461346 3b623b6a b3f5407f 08d33b6a  .F.F;b;j..@...;j
 8046ea4 b3f5801f 04d27b69 1b683a6a da60cee0  ......{i.h:j.`..
 8046eb4 012387f8 2a30cae0 7b69db69 b3f5004f  .#..*0..{i.i...O
 8046ec4 66d197f8 2b30082b 27d801a2 52f823f0  f...+0.+'...R.#.
 8046ed4 f96e0408 016f0408 096f0408 1f6f0408  .n...o...o...o..
 8046ee4 0f6f0408 1f6f0408 1f6f0408 1f6f0408  .o...o...o...o..
 8046ef4 176f0408 fdf7b0fd 786214e0 fdf7c0fd  .o......xb......
 8046f04 786210e0 4e4b7b62 0de0fdf7 f5fc7862  xb..NK{b......xb
 8046f14 09e04ff4 00437b62 05e00023 7b620123  ..O..C{b...#{b.#
 8046f24 87f82a30 00bf7b6a 002b00f0 90807b69  ..*0..{j.+....{i
 8046f34 5b6a444a 32f81330 1a467b6a b3fbf2f3  [jDJ2..0.F{j....
 8046f44 5a007b69 5b685b08 1a447b69 5b68b2fb  Z.{i[h[..D{i[h..
 8046f54 f3f33b62 3b6a0f2b 16d93b6a b3f5803f  ..;b;j.+..;j...?
 8046f64 12d23b6a 9bb223f0 0f03fb83 3b6a5b08  ..;j..#.....;j[.
 8046f74 9bb203f0 07039ab2 fb8b1343 fb837b69  ...........C..{i
 8046f84 1b68fa8b da6062e0 012387f8 2a305ee0  .h...`b..#..*0^.
 8046f94 97f82b30 082b28d8 01a252f8 23f000bf  ..+0.+(...R.#...
 8046fa4 c96f0408 d16f0408 d96f0408 ef6f0408  .o...o...o...o..
 8046fb4 df6f0408 ef6f0408 ef6f0408 ef6f0408  .o...o...o...o..
 8046fc4 e76f0408 fdf748fd 786214e0 fdf758fd  .o....H.xb....X.
 8046fd4 786210e0 1a4b7b62 0de0fdf7 8dfc7862  xb...K{b......xb
 8046fe4 09e04ff4 00437b62 05e00023 7b620123  ..O..C{b...#{b.#
 8046ff4 87f82a30 00bf7b6a 002b28d0 7b695b6a  ..*0..{j.+(.{i[j
 8047004 104a32f8 13301a46 7b6ab3fb f2f27b69  .J2..0.F{j....{i
 8047014 5b685b08 1a447b69 5b68b2fb f3f33b62  [h[..D{i[h....;b
 8047024 3b6a0f2b 10d93b6a b3f5803f 0cd23b6a  ;j.+..;j...?..;j
 8047034 9ab27b69 1b68da60 09e000bf 00800040  ..{i.h.`.......@
 8047044 0024f400 b8870408 012387f8 2a307b69  .$.......#..*0{i
 8047054 0122a3f8 6a207b69 0122a3f8 68207b69  ."..j {i."..h {i
 8047064 00225a67 7b690022 9a6797f8 2a301846  ."Zg{i.".g..*0.F
 8047074 3037bd46 bde8b08f 80b483b0 00af7860  07.F..........x`
 8047084 7b689b6a 03f00803 002b0ad0 7b681b68  {h.j.....+..{h.h
 8047094 5b6823f4 00417b68 9a6b7b68 1b680a43  [h#..A{h.k{h.h.C
 80470a4 5a607b68 9b6a03f0 0103002b 0ad07b68  Z`{h.j.....+..{h
 80470b4 1b685b68 23f40031 7b68da6a 7b681b68  .h[h#..1{h.j{h.h
 80470c4 0a435a60 7b689b6a 03f00203 002b0ad0  .CZ`{h.j.....+..
 80470d4 7b681b68 5b6823f4 80317b68 1a6b7b68  {h.h[h#..1{h.k{h
 80470e4 1b680a43 5a607b68 9b6a03f0 0403002b  .h.CZ`{h.j.....+
 80470f4 0ad07b68 1b685b68 23f48021 7b685a6b  ..{h.h[h#..!{hZk
 8047104 7b681b68 0a435a60 7b689b6a 03f01003  {h.h.CZ`{h.j....
 8047114 002b0ad0 7b681b68 9b6823f4 80517b68  .+..{h.h.h#..Q{h
 8047124 da6b7b68 1b680a43 9a607b68 9b6a03f0  .k{h.h.C.`{h.j..
 8047134 2003002b 0ad07b68 1b689b68 23f40051   ..+..{h.h.h#..Q
 8047144 7b681a6c 7b681b68 0a439a60 7b689b6a  {h.l{h.h.C.`{h.j
 8047154 03f04003 002b1ad0 7b681b68 5b6823f4  ..@..+..{h.h[h#.
 8047164 80117b68 5a6c7b68 1b680a43 5a607b68  ..{hZl{h.h.CZ`{h
 8047174 5b6cb3f5 801f0ad1 7b681b68 5b6823f4  [l......{h.h[h#.
 8047184 c0017b68 9a6c7b68 1b680a43 5a607b68  ..{h.l{h.h.CZ`{h
 8047194 9b6a03f0 8003002b 0ad07b68 1b685b68  .j.....+..{h.h[h
 80471a4 23f40021 7b68da6c 7b681b68 0a435a60  #..!{h.l{h.h.CZ`
 80471b4 00bf0c37 bd465df8 047b7047 80b598b0  ...7.F]..{pG....
 80471c4 02af7860 7b680022 c3f89020 fbf712ff  ..x`{h."... ....
 80471d4 78657b68 1b681b68 03f00803 082b2fd1  xe{h.h.h.....+/.
 80471e4 6ff07e43 00937b6d 00224ff4 00117868  o.~C..{m."O...xh
 80471f4 00f08ef8 0346002b 22d07b68 1b68bb63  .....F.+".{h.h.c
 8047204 bb6b53e8 003f7b63 7b6b23f0 80033b65  .kS..?{c{k#...;e
 8047214 7b681b68 1a463b6d 7b643a64 396c7a6c  {h.h.F;m{d:d9lzl
 8047224 41e80023 fb63fb6b 002be6d1 7b682022  A..#.c.k.+..{h "
 8047234 c3f88820 7b680022 83f88420 032363e0  ... {h."... .#c.
 8047244 7b681b68 1b6803f0 0403042b 49d16ff0  {h.h.h.....+I.o.
 8047254 7e430093 7b6d0022 4ff48001 786800f0  ~C..{m."O...xh..
 8047264 57f80346 002b3cd0 7b681b68 7b627b6a  W..F.+<.{h.h{b{j
 8047274 53e8003f 3b623b6a 23f49073 fb647b68  S..?;b;j#..s.d{h
 8047284 1b681a46 fb6c3b63 fa62f96a 3a6b41e8  .h.F.l;c.b.j:kA.
 8047294 0023bb62 bb6a002b e6d17b68 1b680833  .#.b.j.+..{h.h.3
 80472a4 3b613b69 53e8003f fb60fb68 23f00103  ;a;iS..?.`.h#...
 80472b4 bb647b68 1b680833 ba6cfa61 bb61b969  .d{h.h.3.l.a.a.i
 80472c4 fa6941e8 00237b61 7b69002b e5d17b68  .iA..#{a{i.+..{h
 80472d4 2022c3f8 8c207b68 002283f8 84200323   "... {h."... .#
 80472e4 12e07b68 2022c3f8 88207b68 2022c3f8  ..{h "... {h "..
 80472f4 8c207b68 0022da66 7b680022 1a677b68  . {h.".f{h.".g{h
 8047304 002283f8 84200023 18465837 bd4680bd  ."... .#.FX7.F..
 8047314 80b584b0 00aff860 b9603b60 1346fb71  .......`.`;`.F.q
 8047324 4fe0bb69 b3f1ff3f 4bd0fbf7 63fe0246  O..i...?K...c..F
 8047334 3b68d31a ba699a42 02d3bb69 002b01d1  ;h...i.B...i.+..
 8047344 03234ee0 fb681b68 1b6803f0 0403002b  .#N..h.h.h.....+
 8047354 37d0bb68 802b34d0 bb68402b 31d0fb68  7..h.+4..h@+1..h
 8047364 1b68db69 03f00803 082b10d1 fb681b68  .h.i.....+...h.h
 8047374 08221a62 f86800f0 38f8fb68 0822c3f8  .".b.h..8..h."..
 8047384 9020fb68 002283f8 84200123 29e0fb68  . .h."... .#)..h
 8047394 1b68db69 03f40063 b3f5006f 11d1fb68  .h.i...c...o...h
 80473a4 1b684ff4 00621a62 f86800f0 1ef8fb68  .hO..b.b.h.....h
 80473b4 2022c3f8 9020fb68 002283f8 84200323   "... .h."... .#
 80473c4 0fe0fb68 1b68da69 bb681340 ba689a42  ...h.h.i.h.@.h.B
 80473d4 0cbf0123 0023dbb2 1a46fb79 9a42a0d0  ...#.#...F.y.B..
 80473e4 00231846 1037bd46 80bd80b4 95b000af  .#.F.7.F........
 80473f4 78607b68 1b687b63 7b6b53e8 003f3b63  x`{h.h{c{kS..?;c
 8047404 3b6b23f4 9073fb64 7b681b68 1a46fb6c  ;k#..s.d{h.h.F.l
 8047414 3b64fa63 f96b3a6c 41e80023 bb63bb6b  ;d.c.k:lA..#.c.k
 8047424 002be6d1 7b681b68 08333b62 3b6a53e8  .+..{h.h.3;b;jS.
 8047434 003ffb61 fb6923f0 805323f0 0103bb64  .?.a.i#..S#....d
 8047444 7b681b68 0833ba6c fa62bb62 b96afa6a  {h.h.3.l.b.b.j.j
 8047454 41e80023 7b627b6a 002be3d1 7b68db6e  A..#{b{j.+..{h.n
 8047464 012b18d1 7b681b68 fb60fb68 53e8003f  .+..{h.h.`.hS..?
 8047474 bb60bb68 23f01003 7b647b68 1b681a46  .`.h#...{d{h.h.F
 8047484 7b6cbb61 7a617969 ba6941e8 00233b61  {l.azayi.iA..#;a
 8047494 3b69002b e6d17b68 2022c3f8 8c207b68  ;i.+..{h "... {h
 80474a4 0022da66 7b680022 5a6700bf 5437bd46  .".f{h."Zg..T7.F
 80474b4 5df8047b 704780b4 85b000af 78607b68  ]..{pG......x`{h
 80474c4 93f88430 012b01d1 022327e0 7b680122  ...0.+...#'.{h."
 80474d4 83f88420 7b682422 c3f88820 7b681b68  ... {h$"... {h.h
 80474e4 1b68fb60 7b681b68 1a687b68 1b6822f0  .h.`{h.h.h{h.h".
 80474f4 01021a60 fb6823f0 0053fb60 7b680022  ...`.h#..S.`{h."
 8047504 5a667b68 1b68fa68 1a607b68 2022c3f8  Zf{h.h.h.`{h "..
 8047514 88207b68 002283f8 84200023 18461437  . {h."... .#.F.7
 8047524 bd465df8 047b7047 80b584b0 00af7860  .F]..{pG......x`
 8047534 39607b68 93f88430 012b01d1 02232de0  9`{h...0.+...#-.
 8047544 7b680122 83f88420 7b682422 c3f88820  {h."... {h$"... 
 8047554 7b681b68 1b68fb60 7b681b68 1a687b68  {h.h.h.`{h.h.h{h
 8047564 1b6822f0 01021a60 7b681b68 9b6823f0  .h"....`{h.h.h#.
 8047574 60417b68 1b683a68 0a439a60 786800f0  `A{h.h:h.C.`xh..
 8047584 4ff87b68 1b68fa68 1a607b68 2022c3f8  O.{h.h.h.`{h "..
 8047594 88207b68 002283f8 84200023 18461037  . {h."... .#.F.7
 80475a4 bd4680bd 80b584b0 00af7860 39607b68  .F........x`9`{h
 80475b4 93f88430 012b01d1 02232de0 7b680122  ...0.+...#-.{h."
 80475c4 83f88420 7b682422 c3f88820 7b681b68  ... {h$"... {h.h
 80475d4 1b68fb60 7b681b68 1a687b68 1b6822f0  .h.`{h.h.h{h.h".
 80475e4 01021a60 7b681b68 9b6823f0 60617b68  ...`{h.h.h#.`a{h
 80475f4 1b683a68 0a439a60 786800f0 11f87b68  .h:h.C.`xh....{h
 8047604 1b68fa68 1a607b68 2022c3f8 88207b68  .h.h.`{h "... {h
 8047614 002283f8 84200023 18461037 bd4680bd  ."... .#.F.7.F..
 8047624 80b485b0 00af7860 7b685b6e 002b08d1  ......x`{h[n.+..
 8047634 7b680122 a3f86a20 7b680122 a3f86820  {h."..j {h."..h 
 8047644 31e00823 fb730823 bb737b68 1b689b68  1..#.s.#.s{h.h.h
 8047654 5b0edbb2 03f00703 7b737b68 1b689b68  [.......{s{h.h.h
 8047664 5b0fdbb2 03f00703 3b73bb7b 3a7b1149  [.......;s.{:{.I
 8047674 8a5c02fb 03f33a7b 0f498a5c 93fbf2f3  .\....:{.I.\....
 8047684 9ab27b68 a3f86a20 fb7b7a7b 09498a5c  ..{h..j .{z{.I.\
 8047694 02fb03f3 7a7b0849 8a5c93fb f2f39ab2  ....z{.I.\......
 80476a4 7b68a3f8 682000bf 1437bd46 5df8047b  {h..h ...7.F]..{
 80476b4 704700bf d0870408 d8870408 dff834d0  pG............4.
 80476c4 faf708ff 002103e0 0b4b5b58 43500431  .....!...K[XCP.1
 80476d4 0a480b4b 42189a42 f6d30a4a 02e00023  .H.KB..B...J...#
 80476e4 42f8043b 084b9a42 f9d3f9f7 b3f8faf7  B..;.K.B........
 80476f4 3dfdfee7 00000320 24880408 00800120  =...... $...... 
 8047704 2c810120 2c810120 90a30120 fee70000  ,.. ,.. ... ....
 8047714 0fb407b5 064904ab 086853f8 042b8168  .....I...hS..+.h
 8047724 019300f0 29f903b0 5df804eb 04b07047  ....)...].....pG
 8047734 0c800120 036a70b5 05460e46 84680bb9  ... .jp..F.F.h..
 8047744 f8f7c0ff 636edb07 05d4a389 980502d4  ....cn..........
 8047754 a06df9f7 a4f8a389 190702d5 2369002b  .m..........#i.+
 8047764 35d12146 284600f0 81f880b3 4ff0ff35  5.!F(F......O..5
 8047774 636eda07 05d4a389 9b0502d4 a06df9f7  cn...........m..
 8047784 8ff82846 70bd002b 04daa269 9a4217dc  ..(Fp..+...i.B..
 8047794 0a2915d0 23685a1c 22601970 a36816f8  .)..#hZ."`.p.h..
 80477a4 011f013b a3600029 edd1002b 11da2246  ...;.`.)...+.."F
 80477b4 0a212846 00f01cf8 0130d7d0 0a25d7e7  .!(F.....0...%..
 80477c4 22462846 00f014f8 0130e7d1 cee7013e  "F(F.....0.....>
 80477d4 e4e72368 5a1c2260 0a221a70 eee70000  ..#hZ."`.".p....
 80477e4 024b0146 1868fff7 a5bf00bf 0c800120  .K.F.h......... 
 80477f4 f8b50e46 14460546 18b1036a 0bb9f8f7  ...F.F.F...j....
 8047804 61ffa369 a360a389 1a0701d5 236943b9  a..i.`......#iC.
 8047814 21462846 00f02af8 18b14ff0 ff373846  !F(F..*...O..78F
 8047824 f8bd2368 f6b22269 3746981a 63698342  ..#h.."i7F..ci.B
 8047834 05dc2146 2846f9f7 b1f90028 edd1a368  ..!F(F.....(...h
 8047844 013ba360 23685a1c 22601e70 431c6269  .;.`#hZ."`.pC.bi
 8047854 9a4204d0 a389db07 e1d50a2e dfd12146  .B............!F
 8047864 2846f9f7 9bf90028 d9d0d6e7 38b5294b  (F.....(....8.)K
 8047874 05460c46 186818b1 036a0bb9 f8f722ff  .F.F.h...j....".
 8047884 b4f90c30 190722d4 da0607d4 09222a60  ...0.."......"*`
 8047894 43f04003 4ff0ff30 a38133e0 580712d5  C.@.O..0..3.X...
 80478a4 616b41b1 04f14403 994202d0 2846f8f7  akA...D..B..(F..
 80478b4 f9ff0023 6363a389 23f02403 a3810023  ...#cc..#.$....#
 80478c4 63602369 2360a389 43f00803 a3812369  c`#i#`..C.....#i
 80478d4 4bb9a389 03f42073 b3f5007f 03d02146  K..... s......!F
 80478e4 284600f0 16fbb4f9 0c3013f0 01020ad0  (F.......0......
 80478f4 0022a260 62695242 a2612269 42b913f0  .".`biRB.a"iB...
 8047904 8000c5d1 38bd9907 58bf6269 a260f4e7  ....8...X.bi.`..
 8047914 0020f7e7 0c800120 014b1868 704700bf  . ..... .K.hpG..
 8047924 0c800120 9368013b 002b10b4 936008da  ... .h.;.+...`..
 8047934 9469a342 01db0a29 03d15df8 044bfff7  .i.B...)..]..K..
 8047944 57bf1368 581c1060 08461970 5df8044b  W..hX..`.F.p]..K
 8047954 7047f8b5 06460f46 1446d518 ac4201d1  pG...F.F.F...B..
 8047964 002007e0 3a4614f8 011b3046 fff7daff  . ..:F....0F....
 8047974 431cf3d1 f8bd0000 2de9f04f 0d469db0  C.......-..O.F..
 8047984 14469846 064618b1 036a0bb9 f8f79afe  .F.F.F...j......
 8047994 6b6ed907 05d4ab89 9a0502d4 a86df8f7  kn...........m..
 80479a4 7effab89 1b0701d5 2b699bb9 29463046  ~.......+i..)F0F
 80479b4 fff75cff 70b16b6e dc0704d5 4ff0ff30  ..\.p.kn....O..0
 80479c4 1db0bde8 f08fab89 9805f7d4 a86df8f7  .............m..
 80479d4 67fff3e7 0023cdf8 0c804ff0 0109dff8  g....#....O.....
 80479e4 b4810993 20238df8 29303023 8df82a30  .... #..)00#..*0
 80479f4 23469a46 13f8012b 0ab1252a f9d1baeb  #F.F...+..%*....
 8047a04 040b0bd0 5b462246 29463046 fff7a1ff  ....[F"F)F0F....
 8047a14 013000f0 a780099a 5a440992 9af80030  .0......ZD.....0
 8047a24 002b00f0 9f800023 4ff0ff32 0af1010a  .+.....#O..2....
 8047a34 04930793 8df85330 1a93cde9 05235446  ......S0.....#TF
 8047a44 05225448 14f8011b 00f0c2fa 049ad8b9  ."TH............
 8047a54 d10644bf 20238df8 53301307 44bf2b23  ..D. #..S0..D.+#
 8047a64 8df85330 9af80030 2a2b15d0 079a5446  ..S0...0*+....TF
 8047a74 00204ff0 0a0c2146 11f8013b 303b092b  . O...!F...;0;.+
 8047a84 4bd9b0b1 079214e0 a0eb0803 a24609fa  K............F..
 8047a94 03f31343 0493d2e7 039b191d 1b68002b  ...C.........h.+
 8047aa4 0391bbbf 5b4242f0 02020793 0793b8bf  ....[BB.........
 8047ab4 04922378 2e2b0ad1 63782a2b 32d1039b  ..#x.+..cx*+2...
 8047ac4 02341a1d 1b6843ea e3730392 0593dff8  .4...hC..s......
 8047ad4 d4a00322 21785046 00f07afa 38b1a0eb  ..."!xPF..z.8...
 8047ae4 0a004022 049b0134 82401343 049314f8  ..@"...4.@.C....
 8047af4 011b0622 28488df8 281000f0 69fa0028  ..."(H..(...i..(
 8047b04 3fd0264b 1bbb039b 073323f0 07030833  ?.&K.....3#....3
 8047b14 0393099b 3b440993 6ae70cfb 02320c46  ....;D..j....2.F
 8047b24 0120a8e7 00230134 4ff00a0c 19460593  . ...#.4O....F..
 8047b34 204610f8 012b303a 092a03d9 002bc6d0   F...+0:.*...+..
 8047b44 0591c4e7 0cfb0121 04460123 f0e703ab  .......!.F.#....
 8047b54 2a4604a9 30460093 114baff3 00800746  *F..0F...K.....F
 8047b64 781cd6d1 6b6ed907 05d4ab89 9a0502d4  x...kn..........
 8047b74 a86df8f7 95feab89 5b063ff5 1faf0998  .m......[.?.....
 8047b84 1ee703ab 2a4604a9 30460093 044b00f0  ....*F..0F...K..
 8047b94 7df8e4e7 e0870408 ea870408 00000000  }...............
 8047ba4 57790408 e6870408 2de9f047 16469846  Wy......-..G.F.F
 8047bb4 8a680746 0b690c46 ddf82090 9342b8bf  .h.F.i.F.. ..B..
 8047bc4 13463360 91f84320 0ab10133 33602368  .F3`..C ...33`#h
 8047bd4 990642bf 33680233 33602568 15f00605  ..B.3h.33`%h....
 8047be4 06d104f1 190ae368 32689b1a ab422bdc  .......h2h...B+.
 8047bf4 94f84330 2268003b 18bf0123 920630d4  ..C0"h.;...#..0.
 8047c04 04f14302 41463846 c8470130 23d02368  ..C.AF8F.G.0#.#h
 8047c14 1a3454f8 0a2c03f0 0603042b 0abf54f8  .4T..,.....+..T.
 8047c24 0e5c0025 33684ff0 000608bf ed1a54f8  .\.%3hO.......T.
 8047c34 123c08bf 25eae575 9342c4bf 9b1aed18  .<..%..u.B......
 8047c44 b5421ad1 002008e0 01235246 41463846  .B... ...#RFAF8F
 8047c54 c8470130 03d14ff0 ff30bde8 f0870135  .G.0..O..0.....5
 8047c64 c1e7e118 5a1c3020 02332244 81f84300  ....Z.0 .3"D..C.
 8047c74 94f84510 82f84310 c2e70123 22464146  ..E...C....#"FAF
 8047c84 3846c847 0130e6d0 0136d9e7 2de9ff47  8F.G.0...6..-..G
 8047c94 0f7e9146 80460c46 782f9a46 0c9e01f1  .~.F.F.Fx/.F....
 8047ca4 430207d8 622f0ad8 002f00f0 d180582f  C...b/.../....X/
 8047cb4 00f0b880 04f14206 84f84270 3ae0a7f1  ......B...Bp:...
 8047cc4 6303152b f6d801a1 51f823f0 297d0408  c..+....Q.#.)}..
 8047cd4 3d7d0408 b97c0408 b97c0408 b97c0408  =}...|...|...|..
 8047ce4 b97c0408 3d7d0408 b97c0408 b97c0408  .|..=}...|...|..
 8047cf4 b97c0408 b97c0408 3b7e0408 677d0408  .|...|..;~..g}..
 8047d04 f57d0408 b97c0408 b97c0408 5d7e0408  .}...|...|..]~..
 8047d14 b97c0408 677d0408 b97c0408 b97c0408  .|..g}...|...|..
 8047d24 fd7d0408 33681a1d 1b683260 04f14206  .}..3h...h2`..B.
 8047d34 84f84230 01239ce0 33682068 191d3160  ..B0.#..3h h..1`
 8047d44 060601d5 1d6803e0 4506fbd5 b3f90050  .....h..E......P
 8047d54 002d03da 2d236d42 84f84330 58480a23  .-..-#mB..C0XH.#
 8047d64 11e02168 33680806 53f8045b 02d44906  ..!h3h..S..[..I.
 8047d74 48bfadb2 6f2f3360 514814bf 0a230823  H...o/3`QH...#.#
 8047d84 002184f8 43106668 002ea660 05db2168  .!..C.fh...`..!h
 8047d94 2e4321f0 04012160 4bd01646 b5fbf3f1  .C!...!`K..F....
 8047da4 03fb1157 c75d06f8 017d2f46 0d46bb42  ...W.]...}/F.F.B
 8047db4 f4d9082b 0bd12368 df0708d5 23696168  ...+..#h....#iah
 8047dc4 9942debf 302306f8 013c06f1 ff36921b  .B..0#...<...6..
 8047dd4 22614b46 03aa2146 4046cdf8 00a0fff7  "aKF..!F@F......
 8047de4 e3fe0130 4ad14ff0 ff3004b0 bde8f087  ...0J.O..0......
 8047df4 236843f0 20032360 78273248 236884f8  #hC. .#`x'2H#h..
 8047e04 45701f06 316851f8 045b02d4 5f0648bf  Ep..1hQ..[.._.H.
 8047e14 adb23160 d90744bf 43f02003 23601db1  ..1`..D.C. .#`..
 8047e24 1023ade7 2648e9e7 236823f0 20032360  .#..&H..#h#. .#`
 8047e34 f6e71646 bde73368 2568181d 61693060  ...F..3h%h..ai0`
 8047e44 2e061b68 01d51960 02e06806 fbd51980  ...h...`..h.....
 8047e54 00231646 2361bce7 33680021 1a1d3260  .#.F#a..3h.!..2`
 8047e64 1e686268 304600f0 b3f808b1 801b6060  .hbh0F........``
 8047e74 63682361 002384f8 4330aae7 23693246  ch#a.#..C0..#i2F
 8047e84 49464046 d0470130 add02368 9b0713d4  IF@F.G.0..#h....
 8047e94 e068039b 9842b8bf 1846a6e7 01233246  .h...B...F...#2F
 8047ea4 49464046 d0470130 9dd00135 e3680399  IF@F.G.0...5.h..
 8047eb4 5b1aab42 f2dcebe7 002504f1 1906f5e7  [..B.....%......
 8047ec4 f1870408 02880408 70b50c46 b1f90e10  ........p..F....
 8047ed4 96b01546 00291e46 0cdaa389 002113f0  ...F.).F.....!..
 8047ee4 800f14bf 40234ff4 80630020 31602b60  ....@#O..c. 1`+`
 8047ef4 16b070bd 6a4600f0 49f80028 eddb0199  ..p.jF..I..(....
 8047f04 01f47041 a1f50053 59425941 4ff48063  ..pA...SYBYAO..c
 8047f14 ebe78b89 f7b59d07 06460c46 07d504f1  .........F.F....
 8047f24 47032360 23610123 636103b0 f0bd01ab  G.#`#a.#ca......
 8047f34 6a46fff7 c9ff009f 05463046 3946f8f7  jF.......F0F9F..
 8047f44 1dfd48b9 b4f90c30 9a05eed4 23f00303  ..H....0....#...
 8047f54 43f00203 a381e2e7 a3892060 43f08003  C......... `C...
 8047f64 a381019b c4e90407 5bb1b4f9 0e103046  ........[.....0F
 8047f74 00f01ef8 28b1a389 23f00303 43f00103  ....(...#...C...
 8047f84 a381a389 1d43a581 cfe70000 38b50023  .....C......8..#
 8047f94 064d0446 08461146 2b60faf7 3cfa431c  .M.F.F.F+`..<.C.
 8047fa4 02d12b68 03b12360 38bd00bf 84820120  ..+h..#`8...... 
 8047fb4 38b50023 054d0446 08462b60 faf73bfa  8..#.M.F.F+`..;.
 8047fc4 431c02d1 2b6803b1 236038bd 84820120  C...+h..#`8.... 
 8047fd4 c9b20346 024410b5 93421846 01d10020  ...F.D...B.F... 
 8047fe4 03e00478 01338c42 f6d110bd f8b500bf  ...x.3.B........
 8047ff4 f8bc08bc 9e467047 f8b500bf f8bc08bc  .....FpG........
 8048004 9e467047                             .FpG            
Contents of section .rodata:
 8048008 54696d65 20746f20 6c647220 66726f6d  Time to ldr from
 8048018 20612041 50422054 696d6572 203a2025   a APB Timer : %
 8048028 642c2028 25642c25 64290a00 54696d65  d, (%d,%d)..Time
 8048038 20746f20 6c647220 66726f6d 20535241   to ldr from SRA
 8048048 4d203a20 25642028 25642c25 64290a00  M : %d (%d,%d)..
 8048058 25642025 64202564 0a000000 1d0f0408  %d %d %d........
 8048068 fb0f0408 db100408 bd110408 a1120408  ................
 8048078 73130408 47140408 1d150408 f5150408  s...G...........
 8048088 25642025 640a0000 636f6c6c 69646500  %d %d...collide.
 8048098 636f6c6c 6964655f 6e65775f 6e6f7000  collide_new_nop.
 80480a8 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 80480b8 6e5f706f 696e745f 31000000 6d656173  n_point_1...meas
 80480c8 7572655f 636f6c6c 6973696f 6e5f706f  ure_collision_po
 80480d8 696e745f 32000000 6d656173 7572655f  int_2...measure_
 80480e8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80480f8 33000000 6d656173 7572655f 636f6c6c  3...measure_coll
 8048108 6973696f 6e5f706f 696e745f 34000000  ision_point_4...
 8048118 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 8048128 6e5f706f 696e745f 35000000 6d656173  n_point_5...meas
 8048138 7572655f 636f6c6c 6973696f 6e5f706f  ure_collision_po
 8048148 696e745f 36000000 6d656173 7572655f  int_6...measure_
 8048158 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048168 37000000 6d656173 7572655f 636f6c6c  7...measure_coll
 8048178 6973696f 6e5f706f 696e745f 38000000  ision_point_8...
 8048188 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 8048198 6e5f706f 696e745f 39000000 6d656173  n_point_9...meas
 80481a8 7572655f 636f6c6c 6973696f 6e5f706f  ure_collision_po
 80481b8 696e745f 31300000 6d656173 7572655f  int_10..measure_
 80481c8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80481d8 31305f31 00000000 6d656173 7572655f  10_1....measure_
 80481e8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80481f8 31305f32 00000000 6d656173 7572655f  10_2....measure_
 8048208 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048218 31305f33 00000000 6d656173 7572655f  10_3....measure_
 8048228 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048238 31305f34 00000000 6d656173 7572655f  10_4....measure_
 8048248 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048258 31305f35 00000000 6d656173 7572655f  10_5....measure_
 8048268 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048278 31305f36 00000000 6d656173 7572655f  10_6....measure_
 8048288 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048298 31305f37 00000000 6d656173 7572655f  10_7....measure_
 80482a8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80482b8 31305f38 00000000 6d656173 7572655f  10_8....measure_
 80482c8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80482d8 31305f39 00000000 6d656173 7572655f  10_9....measure_
 80482e8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80482f8 31305f31 30000000 6d656173 7572655f  10_10...measure_
 8048308 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048318 31305f31 31000000 6d656173 7572655f  10_11...measure_
 8048328 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048338 31305f31 32000000 6d656173 7572655f  10_12...measure_
 8048348 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048358 31305f31 33000000 6d656173 7572655f  10_13...measure_
 8048368 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048378 31305f31 34000000 6d656173 7572655f  10_14...measure_
 8048388 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048398 31305f31 35000000 6d656173 7572655f  10_15...measure_
 80483a8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80483b8 31305f31 36000000 6d656173 7572655f  10_16...measure_
 80483c8 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 80483d8 31310000 6d656173 7572655f 636f6c6c  11..measure_coll
 80483e8 6973696f 6e5f706f 696e745f 31320000  ision_point_12..
 80483f8 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 8048408 6e5f706f 696e745f 31330000 6d656173  n_point_13..meas
 8048418 7572655f 636f6c6c 6973696f 6e5f706f  ure_collision_po
 8048428 696e745f 31340000 6d656173 7572655f  int_14..measure_
 8048438 636f6c6c 6973696f 6e5f706f 696e745f  collision_point_
 8048448 31350000 6d656173 7572655f 636f6c6c  15..measure_coll
 8048458 6973696f 6e5f706f 696e745f 31360000  ision_point_16..
 8048468 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 8048478 6e5f706f 696e745f 31370000 6d656173  n_point_17..meas
 8048488 7572655f 636f6c6c 6973696f 6e5f395f  ure_collision_9_
 8048498 4e4f5053 00000000 6d656173 7572655f  NOPS....measure_
 80484a8 636f6c6c 6973696f 6e5f385f 4e4f5053  collision_8_NOPS
 80484b8 00000000 6d656173 7572655f 636f6c6c  ....measure_coll
 80484c8 6973696f 6e5f375f 4e4f5053 00000000  ision_7_NOPS....
 80484d8 6d656173 7572655f 636f6c6c 6973696f  measure_collisio
 80484e8 6e5f365f 4e4f5053 00000000 6d656173  n_6_NOPS....meas
 80484f8 7572655f 636f6c6c 6973696f 6e5f355f  ure_collision_5_
 8048508 4e4f5053 00000000 6d656173 7572655f  NOPS....measure_
 8048518 636f6c6c 6973696f 6e5f345f 4e4f5053  collision_4_NOPS
 8048528 00000000 6d656173 7572655f 636f6c6c  ....measure_coll
 8048538 6973696f 6e5f706f 696e745f 365f5354  ision_point_6_ST
 8048548 52000000 6d656173 7572655f 636f6c6c  R...measure_coll
 8048558 6973696f 6e5f706f 696e745f 375f5354  ision_point_7_ST
 8048568 52000000 6d656173 7572655f 636f6c6c  R...measure_coll
 8048578 6973696f 6e5f706f 696e745f 385f5354  ision_point_8_ST
 8048588 52000000 6d656173 7572655f 636f6c6c  R...measure_coll
 8048598 6973696f 6e5f706f 696e745f 395f5354  ision_point_9_ST
 80485a8 52000000 444d4109 7c000000 25336409  R...DMA.|...%3d.
 80485b8 7c000000 53482564 097c0000 25336309  |...SH%d.|..%3c.
 80485c8 7c000000 20313020 2d3e2025 647c0000  |... 10 -> %d|..
 80485d8 20313120 2d3e2025 64202564 7c000000   11 -> %d %d|...
 80485e8 20313220 2d3e2025 647c0000 494e5309   12 -> %d|..INS.
 80485f8 7c000000 204d4f56 097c0000 204c4452  |... MOV.|.. LDR
 8048608 097c0000 204e4f50 097c0000 50555348  .|.. NOP.|..PUSH
 8048618 097c0000 20535542 097c0000 20414444  .|.. SUB.|.. ADD
 8048628 097c0000 4d4f5653 097c0000 20434d50  .|..MOVS.|.. CMP
 8048638 097c0000 1b5b313b 33316d00 20424c45  .|...[1;31m. BLE
 8048648 097c0000 1b5b306d 00000000 20202042  .|...[0m....   B
 8048658 097c0000 41444453 097c0000 4c445257  .|..ADDS.|..LDRW
 8048668 097c0000 20204258 097c0000 20424c58  .|..  BX.|.. BLX
 8048678 097c0000 4d4f5657 097c0000 20535452  .|..MOVW.|.. STR
 8048688 097c0000 204c534c 097c0000 414e4453  .|.. LSL.|..ANDS
 8048698 097c0000 20424e45 097c0000 55585442  .|.. BNE.|..UXTB
 80486a8 097c0000 53545242 097c0000 20424551  .|..STRB.|.. BEQ
 80486b8 097c0000 4c445f50 43097c00 2020424c  .|..LD_PC.|.  BL
 80486c8 097c0000 20525342 097c0000 0d000000  .|.. RSB.|......
 80486d8 434c4b09 7c000000 434f4c09 7c000000  CLK.|...COL.|...
 80486e8 46494d00 20253364 097c0000 0d0a0900  FIM. %3d.|......
 80486f8 54726163 65204946 20545255 4520284e  Trace IF TRUE (N
 8048708 53292020 0d000000 54726163 65204946  S)  ....Trace IF
 8048718 2046414c 53452028 4e532920 200d0000   FALSE (NS)  ...
 8048728 436f6c6c 6973696f 6e202564 207c204c  Collision %d | L
 8048738 6174656e 6379203d 2025640a 00000000  atency = %d.....
 8048748 54696d65 203d2025 640d0a00 48454c4c  Time = %d...HELL
 8048758 4f205354 4d0d0000 00000000 00000000  O STM...........
 8048768 01020304 06070809 00000000 01020304  ................
 8048778 a0860100 400d0300 801a0600 00350c00  ....@........5..
 8048788 40420f00 80841e00 00093d00 00127a00  @B........=...z.
 8048798 0024f400 00366e01 0048e801 006cdc02  .$...6n..H...l..
 80487a8 00000000 00000000 00000000 00000000  ................
 80487b8 01000200 04000600 08000a00 0c001000  ................
 80487c8 20004000 80000001 01010103 07010000   .@.............
 80487d8 08040204 08010101 232d302b 2000686c  ........#-0+ .hl
 80487e8 4c006566 67454647 00303132 33343536  L.efgEFG.0123456
 80487f8 37383941 42434445 46003031 32333435  789ABCDEF.012345
 8048808 36373839 61626364 65660000           6789abcdef..    
Contents of section .ARM:
 8048814 507aff7f 01000000                    Pz......        
Contents of section .init_array:
 804881c 19020408                             ....            
Contents of section .fini_array:
 8048820 f5010408                             ....            
Contents of section .data:
 20018000 00000000 03000000 48810120 10800120  ........H.. ... 
 20018010 00000000 48810120 b0810120 18820120  ....H.. ... ... 
 20018020 00000000 00000000 00000000 00000000  ................
 20018030 00000000 00000000 00000000 00000000  ................
 20018040 00000000 00000000 00000000 00000000  ................
 20018050 00000000 00000000 00000000 24140040  ............$..@
 20018060 02000000 0f000000 0f000000 0f000000  ................
 20018070 0f000000 05000000 06000000 07000000  ................
 20018080 08000000 11000000 02000000 09000000  ................
 20018090 14000000 08000000 11000000 0b000000  ................
 200180a0 0b000000 0c000000 01000000 02000000  ................
 200180b0 0e000000 0e000000 0e000000 04000000  ................
 200180c0 02000000 0f000000 0f000000 0f000000  ................
 200180d0 0f000000 05000000 06000000 07000000  ................
 200180e0 08000000 11000000 02000000 09000000  ................
 200180f0 14000000 14000000 14000000 08000000  ................
 20018100 11000000 0c000000 01000000 02000000  ................
 20018110 0e000000 0e000000 0e000000 04000000  ................
 20018120 00093d00 08000000 01000000           ..=.........    
Contents of section .ARM.attributes:
 0000 41350000 00616561 62690001 2b000000  A5...aeabi..+...
 0010 05382d4d 2e4d4149 4e000611 074d0903  .8-M.MAIN....M..
 0020 0a081204 14011501 17031801 1a011b01  ................
 0030 1c012201 2e01                        .."...          
Contents of section .debug_frame:
 0000 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0010 1c000000 00000000 b0050408 6c000000  ............l...
 0020 420e0884 028e0166 0acec40e 00420b00  B......f.....B..
 0030 0c000000 00000000 1c060408 18000000  ................
 0040 1c000000 00000000 34060408 40000000  ........4...@...
 0050 440e0884 028e0152 0acec40e 00420b00  D......R.....B..
 0060 14000000 00000000 00000000 18000000  ................
 0070 410e0883 028e0100 14000000 00000000  A...............
 0080 00000000 18000000 410e0883 028e0100  ........A.......
 0090 18000000 00000000 74060408 3c000000  ........t...<...
 00a0 410e0884 028e0155 cec40e00 0c000000  A......U........
 00b0 00000000 b0060408 0c000000 0c000000  ................
 00c0 00000000 bc060408 0c000000 1c000000  ................
 00d0 00000000 00000000 a4000000 410e1883  ............A...
 00e0 06840585 04860387 028e0100 1c000000  ................
 00f0 00000000 c8060408 30000000 410e0884  ........0...A...
 0100 028e0147 0acec40e 00420b00 18000000  ...G.....B......
 0110 00000000 00000000 1c000000 410e0883  ............A...
 0120 028e0147 cec30e00 18000000 00000000  ...G............
 0130 00000000 1c000000 410e0883 028e0147  ........A......G
 0140 cec30e00 0c000000 ffffffff 0100027c  ...............|
 0150 0e0c0d00 20000000 44010000 f8060408  .... ...D.......
 0160 3c000000 420e2083 08840785 06860587  <...B. .........
 0170 04880389 028e0100 0c000000 ffffffff  ................
 0180 0100027c 0e0c0d00 14000000 78010000  ...|........x...
 0190 34070408 22000000 410e0884 028e0100  4..."...A.......
 01a0 0c000000 78010000 00000000 04000000  ....x...........
 01b0 24000000 78010000 56070408 38000000  $...x...V...8...
 01c0 420e1884 06850586 04870388 028e0158  B..............X
 01d0 cec8c7c6 c5c40e00 14000000 78010000  ............x...
 01e0 8e070408 24000000 410e0884 028e0100  ....$...A.......
 01f0 0c000000 78010000 b2070408 08000000  ....x...........
 0200 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0210 0c000000 00020000 ba070408 10000000  ................
 0220 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0230 18000000 20020000 cc070408 20000000  .... ....... ...
 0240 410e1083 04840385 028e0100 0c000000  A...............
 0250 ffffffff 0100027c 0e0c0d00 24000000  .......|....$...
 0260 4c020000 00000000 bc000000 440e1084  L...........D...
 0270 04850386 028e0102 550acec6 c5c40e00  ........U.......
 0280 410b0000 0c000000 ffffffff 0100027c  A..............|
 0290 0e0c0d00 18000000 84020000 ec070408  ................
 02a0 24000000 410e1083 04840385 028e0100  $...A...........
 02b0 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 02c0 18000000 b0020000 10080408 24000000  ............$...
 02d0 410e1083 04840385 028e0100 0c000000  A...............
 02e0 ffffffff 0100027c 0e0c0d00 18000000  .......|........
 02f0 dc020000 34080408 24000000 410e1083  ....4...$...A...
 0300 04840385 028e0100 0c000000 ffffffff  ................
 0310 0100027c 0e0c0d00 18000000 08030000  ...|............
 0320 58080408 48000000 410e1084 04850386  X...H...A.......
 0330 028e0100 0c000000 ffffffff 0100027c  ...............|
 0340 0e0c0d00 0c000000 34030000 00000000  ........4.......
 0350 02000000 0c000000 34030000 a0080408  ........4.......
 0360 02000000 0c000000 34030000 00000000  ........4.......
 0370 02000000 0c000000 34030000 00000000  ........4.......
 0380 02000000 0c000000 34030000 00000000  ........4.......
 0390 02000000 0c000000 34030000 a2080408  ........4.......
 03a0 02000000 0c000000 34030000 00000000  ........4.......
 03b0 04000000 0c000000 34030000 00000000  ........4.......
 03c0 04000000 0c000000 34030000 00000000  ........4.......
 03d0 02000000 0c000000 34030000 a4080408  ........4.......
 03e0 02000000 0c000000 ffffffff 0100027c  ...............|
 03f0 0e0c0d00 24000000 e4030000 a8080408  ....$...........
 0400 94000000 410e1083 04840385 028e0153  ....A..........S
 0410 0acec5c4 c30e0042 0b000000 0c000000  .......B........
 0420 ffffffff 0100027c 0e0c0d00 18000000  .......|........
 0430 1c040000 3c090408 44000000 410e1084  ....<...D...A...
 0440 04850386 028e0100 20000000 1c040000  ........ .......
 0450 80090408 00010000 420e2083 08840785  ........B. .....
 0460 06860587 04880389 028e0100 0c000000  ................
 0470 ffffffff 0100027c 0e0c0d00 0c000000  .......|........
 0480 6c040000 800a0408 0c000000 0c000000  l...............
 0490 6c040000 8c0a0408 0c000000 0c000000  l...............
 04a0 ffffffff 0100027c 0e0c0d00 1c000000  .......|........
 04b0 9c040000 980a0408 08010000 440e1884  ............D...
 04c0 06850586 04870388 028e0100 18000000  ................
 04d0 9c040000 a00b0408 50000000 410e1083  ........P...A...
 04e0 04840385 028e0100 0c000000 9c040000  ................
 04f0 00000000 28000000 0c000000 ffffffff  ....(...........
 0500 0100027c 0e0c0d00 18000000 f8040000  ...|............
 0510 f00b0408 20000000 410e1083 04840385  .... ...A.......
 0520 028e0100 0c000000 ffffffff 0100027c  ...............|
 0530 0e0c0d00 18000000 24050000 34020408  ........$...4...
 0540 30000000 500e108e 0347ce0e 10000000  0...P....G......
 0550 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0560 24000000 50050000 64020408 46030000  $...P...d...F...
 0570 420e2484 09850886 07870688 0589048a  B.$.............
 0580 038b028e 01000000 0c000000 ffffffff  ................
 0590 0100027c 0e0c0d00 28000000 88050000  ...|....(.......
 05a0 00000000 1c000000 410e0c81 03820283  ........A.......
 05b0 01410e18 8e04480e 1042ce0e 0c41c3c2  .A....H..B...A..
 05c0 c10e0000 2c000000 88050000 14770408  ....,........w..
 05d0 24000000 410e1080 04810382 02830141  $...A..........A
 05e0 0e208e05 4a0e1442 ce0e1041 c3c2c1c0  . ..J..B...A....
 05f0 0e000000 0c000000 ffffffff 0100027c  ...............|
 0600 0e0c0d00 18000000 f4050000 38770408  ............8w..
 0610 aa000000 420e1084 04850386 028e0100  ....B...........
 0620 0c000000 f4050000 e4770408 10000000  .........w......
 0630 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0640 1c000000 30060000 f4770408 7c000000  ....0....w..|...
 0650 410e1883 06840585 04860387 028e0100  A...............
 0660 0c000000 30060000 00000000 10000000  ....0...........
 0670 0c000000 ffffffff 0100027c 0e0c0d00  ...........|....
 0680 18000000 70060000 70780408 ac000000  ....p...px......
 0690 410e1083 04840385 028e0100 0c000000  A...............
 06a0 ffffffff 0100027c 0e0c0d00 0c000000  .......|........
 06b0 9c060000 1c790408 0c000000 0c000000  .....y..........
 06c0 ffffffff 0100027c 0e0c0d00 1c000000  .......|........
 06d0 bc060000 28790408 2e000000 440e0484  ....(y......D...
 06e0 01490ac4 0e00420b 47c40e00 1c000000  .I....B.G.......
 06f0 bc060000 56790408 24000000 410e1883  ....Vy..$...A...
 0700 06840585 04860387 028e0100 14000000  ................
 0710 bc060000 00000000 1a000000 420e0884  ............B...
 0720 028e0100 2c000000 bc060000 7c790408  ....,.......|y..
 0730 30020000 420e2484 09850886 07870688  0...B.$.........
 0740 0589048a 038b028e 01420e98 01610a0e  .........B...a..
 0750 24420b00 0c000000 bc060000 00000000  $B..............
 0760 14000000 0c000000 ffffffff 0100027c  ...............|
 0770 0e0c0d00 20000000 64070000 ac7b0408  .... ...d....{..
 0780 e4000000 420e2084 08850786 06870588  ....B. .........
 0790 0489038a 028e0100 28000000 64070000  ........(...d...
 07a0 907c0408 3c020000 420e3084 08850786  .|..<...B.0.....
 07b0 06870588 0489038a 028e0102 ae0a0e20  ............... 
 07c0 420b0000 0c000000 ffffffff 0100027c  B..............|
 07d0 0e0c0d00 20000000 c4070000 cc7e0408  .... ........~..
 07e0 4a000000 410e1084 04850386 028e0144  J...A..........D
 07f0 0e68500a 0e10410b 20000000 c4070000  .hP...A. .......
 0800 167f0408 78000000 420e2084 05850486  ....x...B. .....
 0810 0387028e 014b0a0e 14410b00 0c000000  .....K...A......
 0820 ffffffff 0100027c 0e0c0d00 18000000  .......|........
 0830 1c080000 907f0408 24000000 410e1083  ........$...A...
 0840 04840385 028e0100 0c000000 ffffffff  ................
 0850 0100027c 0e0c0d00 18000000 48080000  ...|........H...
 0860 b47f0408 20000000 410e1083 04840385  .... ...A.......
 0870 028e0100 0c000000 ffffffff 0100027c  ...............|
 0880 0e0c0d00 14000000 74080000 d47f0408  ........t.......
 0890 1c000000 440e0884 028e0100           ....D.......    
Contents of section .comment:
 0000 4743433a 2028474e 5520546f 6f6c7320  GCC: (GNU Tools 
 0010 666f7220 53544d33 32203133 2e332e72  for STM32 13.3.r
 0020 656c312e 32303234 30393236 2d313731  el1.20240926-171
 0030 35292031 332e332e 31203230 32343036  5) 13.3.1 202406
 0040 313400                               14.             

Disassembly of section .text:

080401f4 <__do_global_dtors_aux>:
 80401f4:	b510      	push	{r4, lr}
 80401f6:	4c05      	ldr	r4, [pc, #20]	@ (804020c <__do_global_dtors_aux+0x18>)
 80401f8:	7823      	ldrb	r3, [r4, #0]
 80401fa:	b933      	cbnz	r3, 804020a <__do_global_dtors_aux+0x16>
 80401fc:	4b04      	ldr	r3, [pc, #16]	@ (8040210 <__do_global_dtors_aux+0x1c>)
 80401fe:	b113      	cbz	r3, 8040206 <__do_global_dtors_aux+0x12>
 8040200:	4804      	ldr	r0, [pc, #16]	@ (8040214 <__do_global_dtors_aux+0x20>)
 8040202:	f3af 8000 	nop.w
 8040206:	2301      	movs	r3, #1
 8040208:	7023      	strb	r3, [r4, #0]
 804020a:	bd10      	pop	{r4, pc}
 804020c:	2001812c 	.word	0x2001812c
 8040210:	00000000 	.word	0x00000000
 8040214:	08047ff0 	.word	0x08047ff0

08040218 <frame_dummy>:
 8040218:	b508      	push	{r3, lr}
 804021a:	4b03      	ldr	r3, [pc, #12]	@ (8040228 <frame_dummy+0x10>)
 804021c:	b11b      	cbz	r3, 8040226 <frame_dummy+0xe>
 804021e:	4903      	ldr	r1, [pc, #12]	@ (804022c <frame_dummy+0x14>)
 8040220:	4803      	ldr	r0, [pc, #12]	@ (8040230 <frame_dummy+0x18>)
 8040222:	f3af 8000 	nop.w
 8040226:	bd08      	pop	{r3, pc}
 8040228:	00000000 	.word	0x00000000
 804022c:	20018130 	.word	0x20018130
 8040230:	08047ff0 	.word	0x08047ff0

08040234 <__aeabi_uldivmod>:
 8040234:	b953      	cbnz	r3, 804024c <__aeabi_uldivmod+0x18>
 8040236:	b94a      	cbnz	r2, 804024c <__aeabi_uldivmod+0x18>
 8040238:	2900      	cmp	r1, #0
 804023a:	bf08      	it	eq
 804023c:	2800      	cmpeq	r0, #0
 804023e:	bf1c      	itt	ne
 8040240:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
 8040244:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
 8040248:	f000 b9b0 	b.w	80405ac <__aeabi_idiv0>
 804024c:	f1ad 0c08 	sub.w	ip, sp, #8
 8040250:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8040254:	f000 f806 	bl	8040264 <__udivmoddi4>
 8040258:	f8dd e004 	ldr.w	lr, [sp, #4]
 804025c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8040260:	b004      	add	sp, #16
 8040262:	4770      	bx	lr

08040264 <__udivmoddi4>:
 8040264:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8040268:	9d09      	ldr	r5, [sp, #36]	@ 0x24
 804026a:	4688      	mov	r8, r1
 804026c:	4604      	mov	r4, r0
 804026e:	468e      	mov	lr, r1
 8040270:	2b00      	cmp	r3, #0
 8040272:	d14a      	bne.n	804030a <__udivmoddi4+0xa6>
 8040274:	428a      	cmp	r2, r1
 8040276:	4617      	mov	r7, r2
 8040278:	d95f      	bls.n	804033a <__udivmoddi4+0xd6>
 804027a:	fab2 f682 	clz	r6, r2
 804027e:	b14e      	cbz	r6, 8040294 <__udivmoddi4+0x30>
 8040280:	f1c6 0320 	rsb	r3, r6, #32
 8040284:	fa01 fe06 	lsl.w	lr, r1, r6
 8040288:	40b7      	lsls	r7, r6
 804028a:	40b4      	lsls	r4, r6
 804028c:	fa20 f303 	lsr.w	r3, r0, r3
 8040290:	ea43 0e0e 	orr.w	lr, r3, lr
 8040294:	ea4f 4817 	mov.w	r8, r7, lsr #16
 8040298:	fa1f fc87 	uxth.w	ip, r7
 804029c:	0c23      	lsrs	r3, r4, #16
 804029e:	fbbe f1f8 	udiv	r1, lr, r8
 80402a2:	fb08 ee11 	mls	lr, r8, r1, lr
 80402a6:	fb01 f20c 	mul.w	r2, r1, ip
 80402aa:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
 80402ae:	429a      	cmp	r2, r3
 80402b0:	d907      	bls.n	80402c2 <__udivmoddi4+0x5e>
 80402b2:	18fb      	adds	r3, r7, r3
 80402b4:	f101 30ff 	add.w	r0, r1, #4294967295	@ 0xffffffff
 80402b8:	d202      	bcs.n	80402c0 <__udivmoddi4+0x5c>
 80402ba:	429a      	cmp	r2, r3
 80402bc:	f200 8154 	bhi.w	8040568 <__udivmoddi4+0x304>
 80402c0:	4601      	mov	r1, r0
 80402c2:	1a9b      	subs	r3, r3, r2
 80402c4:	b2a2      	uxth	r2, r4
 80402c6:	fbb3 f0f8 	udiv	r0, r3, r8
 80402ca:	fb08 3310 	mls	r3, r8, r0, r3
 80402ce:	fb00 fc0c 	mul.w	ip, r0, ip
 80402d2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80402d6:	4594      	cmp	ip, r2
 80402d8:	d90b      	bls.n	80402f2 <__udivmoddi4+0x8e>
 80402da:	18ba      	adds	r2, r7, r2
 80402dc:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
 80402e0:	bf2c      	ite	cs
 80402e2:	2401      	movcs	r4, #1
 80402e4:	2400      	movcc	r4, #0
 80402e6:	4594      	cmp	ip, r2
 80402e8:	d902      	bls.n	80402f0 <__udivmoddi4+0x8c>
 80402ea:	2c00      	cmp	r4, #0
 80402ec:	f000 813f 	beq.w	804056e <__udivmoddi4+0x30a>
 80402f0:	4618      	mov	r0, r3
 80402f2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 80402f6:	eba2 020c 	sub.w	r2, r2, ip
 80402fa:	2100      	movs	r1, #0
 80402fc:	b11d      	cbz	r5, 8040306 <__udivmoddi4+0xa2>
 80402fe:	40f2      	lsrs	r2, r6
 8040300:	2300      	movs	r3, #0
 8040302:	e9c5 2300 	strd	r2, r3, [r5]
 8040306:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 804030a:	428b      	cmp	r3, r1
 804030c:	d905      	bls.n	804031a <__udivmoddi4+0xb6>
 804030e:	b10d      	cbz	r5, 8040314 <__udivmoddi4+0xb0>
 8040310:	e9c5 0100 	strd	r0, r1, [r5]
 8040314:	2100      	movs	r1, #0
 8040316:	4608      	mov	r0, r1
 8040318:	e7f5      	b.n	8040306 <__udivmoddi4+0xa2>
 804031a:	fab3 f183 	clz	r1, r3
 804031e:	2900      	cmp	r1, #0
 8040320:	d14e      	bne.n	80403c0 <__udivmoddi4+0x15c>
 8040322:	4543      	cmp	r3, r8
 8040324:	f0c0 8112 	bcc.w	804054c <__udivmoddi4+0x2e8>
 8040328:	4282      	cmp	r2, r0
 804032a:	f240 810f 	bls.w	804054c <__udivmoddi4+0x2e8>
 804032e:	4608      	mov	r0, r1
 8040330:	2d00      	cmp	r5, #0
 8040332:	d0e8      	beq.n	8040306 <__udivmoddi4+0xa2>
 8040334:	e9c5 4e00 	strd	r4, lr, [r5]
 8040338:	e7e5      	b.n	8040306 <__udivmoddi4+0xa2>
 804033a:	2a00      	cmp	r2, #0
 804033c:	f000 80ac 	beq.w	8040498 <__udivmoddi4+0x234>
 8040340:	fab2 f682 	clz	r6, r2
 8040344:	2e00      	cmp	r6, #0
 8040346:	f040 80bb 	bne.w	80404c0 <__udivmoddi4+0x25c>
 804034a:	1a8b      	subs	r3, r1, r2
 804034c:	ea4f 4e12 	mov.w	lr, r2, lsr #16
 8040350:	b2bc      	uxth	r4, r7
 8040352:	2101      	movs	r1, #1
 8040354:	0c02      	lsrs	r2, r0, #16
 8040356:	b280      	uxth	r0, r0
 8040358:	fbb3 fcfe 	udiv	ip, r3, lr
 804035c:	fb0e 331c 	mls	r3, lr, ip, r3
 8040360:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
 8040364:	fb04 f20c 	mul.w	r2, r4, ip
 8040368:	429a      	cmp	r2, r3
 804036a:	d90e      	bls.n	804038a <__udivmoddi4+0x126>
 804036c:	18fb      	adds	r3, r7, r3
 804036e:	f10c 38ff 	add.w	r8, ip, #4294967295	@ 0xffffffff
 8040372:	bf2c      	ite	cs
 8040374:	f04f 0901 	movcs.w	r9, #1
 8040378:	f04f 0900 	movcc.w	r9, #0
 804037c:	429a      	cmp	r2, r3
 804037e:	d903      	bls.n	8040388 <__udivmoddi4+0x124>
 8040380:	f1b9 0f00 	cmp.w	r9, #0
 8040384:	f000 80ec 	beq.w	8040560 <__udivmoddi4+0x2fc>
 8040388:	46c4      	mov	ip, r8
 804038a:	1a9b      	subs	r3, r3, r2
 804038c:	fbb3 f8fe 	udiv	r8, r3, lr
 8040390:	fb0e 3318 	mls	r3, lr, r8, r3
 8040394:	fb04 f408 	mul.w	r4, r4, r8
 8040398:	ea40 4203 	orr.w	r2, r0, r3, lsl #16
 804039c:	4294      	cmp	r4, r2
 804039e:	d90b      	bls.n	80403b8 <__udivmoddi4+0x154>
 80403a0:	18ba      	adds	r2, r7, r2
 80403a2:	f108 33ff 	add.w	r3, r8, #4294967295	@ 0xffffffff
 80403a6:	bf2c      	ite	cs
 80403a8:	2001      	movcs	r0, #1
 80403aa:	2000      	movcc	r0, #0
 80403ac:	4294      	cmp	r4, r2
 80403ae:	d902      	bls.n	80403b6 <__udivmoddi4+0x152>
 80403b0:	2800      	cmp	r0, #0
 80403b2:	f000 80d1 	beq.w	8040558 <__udivmoddi4+0x2f4>
 80403b6:	4698      	mov	r8, r3
 80403b8:	1b12      	subs	r2, r2, r4
 80403ba:	ea48 400c 	orr.w	r0, r8, ip, lsl #16
 80403be:	e79d      	b.n	80402fc <__udivmoddi4+0x98>
 80403c0:	f1c1 0620 	rsb	r6, r1, #32
 80403c4:	408b      	lsls	r3, r1
 80403c6:	fa08 f401 	lsl.w	r4, r8, r1
 80403ca:	fa00 f901 	lsl.w	r9, r0, r1
 80403ce:	fa22 f706 	lsr.w	r7, r2, r6
 80403d2:	fa28 f806 	lsr.w	r8, r8, r6
 80403d6:	408a      	lsls	r2, r1
 80403d8:	431f      	orrs	r7, r3
 80403da:	fa20 f306 	lsr.w	r3, r0, r6
 80403de:	0c38      	lsrs	r0, r7, #16
 80403e0:	4323      	orrs	r3, r4
 80403e2:	fa1f fc87 	uxth.w	ip, r7
 80403e6:	0c1c      	lsrs	r4, r3, #16
 80403e8:	fbb8 fef0 	udiv	lr, r8, r0
 80403ec:	fb00 881e 	mls	r8, r0, lr, r8
 80403f0:	ea44 4408 	orr.w	r4, r4, r8, lsl #16
 80403f4:	fb0e f80c 	mul.w	r8, lr, ip
 80403f8:	45a0      	cmp	r8, r4
 80403fa:	d90e      	bls.n	804041a <__udivmoddi4+0x1b6>
 80403fc:	193c      	adds	r4, r7, r4
 80403fe:	f10e 3aff 	add.w	sl, lr, #4294967295	@ 0xffffffff
 8040402:	bf2c      	ite	cs
 8040404:	f04f 0b01 	movcs.w	fp, #1
 8040408:	f04f 0b00 	movcc.w	fp, #0
 804040c:	45a0      	cmp	r8, r4
 804040e:	d903      	bls.n	8040418 <__udivmoddi4+0x1b4>
 8040410:	f1bb 0f00 	cmp.w	fp, #0
 8040414:	f000 80b8 	beq.w	8040588 <__udivmoddi4+0x324>
 8040418:	46d6      	mov	lr, sl
 804041a:	eba4 0408 	sub.w	r4, r4, r8
 804041e:	fa1f f883 	uxth.w	r8, r3
 8040422:	fbb4 f3f0 	udiv	r3, r4, r0
 8040426:	fb00 4413 	mls	r4, r0, r3, r4
 804042a:	fb03 fc0c 	mul.w	ip, r3, ip
 804042e:	ea48 4404 	orr.w	r4, r8, r4, lsl #16
 8040432:	45a4      	cmp	ip, r4
 8040434:	d90e      	bls.n	8040454 <__udivmoddi4+0x1f0>
 8040436:	193c      	adds	r4, r7, r4
 8040438:	f103 30ff 	add.w	r0, r3, #4294967295	@ 0xffffffff
 804043c:	bf2c      	ite	cs
 804043e:	f04f 0801 	movcs.w	r8, #1
 8040442:	f04f 0800 	movcc.w	r8, #0
 8040446:	45a4      	cmp	ip, r4
 8040448:	d903      	bls.n	8040452 <__udivmoddi4+0x1ee>
 804044a:	f1b8 0f00 	cmp.w	r8, #0
 804044e:	f000 809f 	beq.w	8040590 <__udivmoddi4+0x32c>
 8040452:	4603      	mov	r3, r0
 8040454:	ea43 400e 	orr.w	r0, r3, lr, lsl #16
 8040458:	eba4 040c 	sub.w	r4, r4, ip
 804045c:	fba0 ec02 	umull	lr, ip, r0, r2
 8040460:	4564      	cmp	r4, ip
 8040462:	4673      	mov	r3, lr
 8040464:	46e0      	mov	r8, ip
 8040466:	d302      	bcc.n	804046e <__udivmoddi4+0x20a>
 8040468:	d107      	bne.n	804047a <__udivmoddi4+0x216>
 804046a:	45f1      	cmp	r9, lr
 804046c:	d205      	bcs.n	804047a <__udivmoddi4+0x216>
 804046e:	ebbe 0302 	subs.w	r3, lr, r2
 8040472:	eb6c 0c07 	sbc.w	ip, ip, r7
 8040476:	3801      	subs	r0, #1
 8040478:	46e0      	mov	r8, ip
 804047a:	b15d      	cbz	r5, 8040494 <__udivmoddi4+0x230>
 804047c:	ebb9 0203 	subs.w	r2, r9, r3
 8040480:	eb64 0408 	sbc.w	r4, r4, r8
 8040484:	fa04 f606 	lsl.w	r6, r4, r6
 8040488:	fa22 f301 	lsr.w	r3, r2, r1
 804048c:	40cc      	lsrs	r4, r1
 804048e:	431e      	orrs	r6, r3
 8040490:	e9c5 6400 	strd	r6, r4, [r5]
 8040494:	2100      	movs	r1, #0
 8040496:	e736      	b.n	8040306 <__udivmoddi4+0xa2>
 8040498:	fbb1 fcf2 	udiv	ip, r1, r2
 804049c:	0c01      	lsrs	r1, r0, #16
 804049e:	4614      	mov	r4, r2
 80404a0:	b280      	uxth	r0, r0
 80404a2:	4696      	mov	lr, r2
 80404a4:	ea41 4108 	orr.w	r1, r1, r8, lsl #16
 80404a8:	2620      	movs	r6, #32
 80404aa:	4690      	mov	r8, r2
 80404ac:	ea40 4301 	orr.w	r3, r0, r1, lsl #16
 80404b0:	4610      	mov	r0, r2
 80404b2:	fbb1 f1f2 	udiv	r1, r1, r2
 80404b6:	eba3 0308 	sub.w	r3, r3, r8
 80404ba:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
 80404be:	e74b      	b.n	8040358 <__udivmoddi4+0xf4>
 80404c0:	40b7      	lsls	r7, r6
 80404c2:	f1c6 0320 	rsb	r3, r6, #32
 80404c6:	fa01 f206 	lsl.w	r2, r1, r6
 80404ca:	fa21 f803 	lsr.w	r8, r1, r3
 80404ce:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 80404d2:	fa20 f303 	lsr.w	r3, r0, r3
 80404d6:	b2bc      	uxth	r4, r7
 80404d8:	40b0      	lsls	r0, r6
 80404da:	4313      	orrs	r3, r2
 80404dc:	0c02      	lsrs	r2, r0, #16
 80404de:	0c19      	lsrs	r1, r3, #16
 80404e0:	b280      	uxth	r0, r0
 80404e2:	fbb8 f9fe 	udiv	r9, r8, lr
 80404e6:	fb0e 8819 	mls	r8, lr, r9, r8
 80404ea:	ea41 4108 	orr.w	r1, r1, r8, lsl #16
 80404ee:	fb09 f804 	mul.w	r8, r9, r4
 80404f2:	4588      	cmp	r8, r1
 80404f4:	d951      	bls.n	804059a <__udivmoddi4+0x336>
 80404f6:	1879      	adds	r1, r7, r1
 80404f8:	f109 3cff 	add.w	ip, r9, #4294967295	@ 0xffffffff
 80404fc:	bf2c      	ite	cs
 80404fe:	f04f 0a01 	movcs.w	sl, #1
 8040502:	f04f 0a00 	movcc.w	sl, #0
 8040506:	4588      	cmp	r8, r1
 8040508:	d902      	bls.n	8040510 <__udivmoddi4+0x2ac>
 804050a:	f1ba 0f00 	cmp.w	sl, #0
 804050e:	d031      	beq.n	8040574 <__udivmoddi4+0x310>
 8040510:	eba1 0108 	sub.w	r1, r1, r8
 8040514:	fbb1 f9fe 	udiv	r9, r1, lr
 8040518:	fb09 f804 	mul.w	r8, r9, r4
 804051c:	fb0e 1119 	mls	r1, lr, r9, r1
 8040520:	b29b      	uxth	r3, r3
 8040522:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8040526:	4543      	cmp	r3, r8
 8040528:	d235      	bcs.n	8040596 <__udivmoddi4+0x332>
 804052a:	18fb      	adds	r3, r7, r3
 804052c:	f109 31ff 	add.w	r1, r9, #4294967295	@ 0xffffffff
 8040530:	bf2c      	ite	cs
 8040532:	f04f 0a01 	movcs.w	sl, #1
 8040536:	f04f 0a00 	movcc.w	sl, #0
 804053a:	4543      	cmp	r3, r8
 804053c:	d2bb      	bcs.n	80404b6 <__udivmoddi4+0x252>
 804053e:	f1ba 0f00 	cmp.w	sl, #0
 8040542:	d1b8      	bne.n	80404b6 <__udivmoddi4+0x252>
 8040544:	f1a9 0102 	sub.w	r1, r9, #2
 8040548:	443b      	add	r3, r7
 804054a:	e7b4      	b.n	80404b6 <__udivmoddi4+0x252>
 804054c:	1a84      	subs	r4, r0, r2
 804054e:	eb68 0203 	sbc.w	r2, r8, r3
 8040552:	2001      	movs	r0, #1
 8040554:	4696      	mov	lr, r2
 8040556:	e6eb      	b.n	8040330 <__udivmoddi4+0xcc>
 8040558:	443a      	add	r2, r7
 804055a:	f1a8 0802 	sub.w	r8, r8, #2
 804055e:	e72b      	b.n	80403b8 <__udivmoddi4+0x154>
 8040560:	f1ac 0c02 	sub.w	ip, ip, #2
 8040564:	443b      	add	r3, r7
 8040566:	e710      	b.n	804038a <__udivmoddi4+0x126>
 8040568:	3902      	subs	r1, #2
 804056a:	443b      	add	r3, r7
 804056c:	e6a9      	b.n	80402c2 <__udivmoddi4+0x5e>
 804056e:	443a      	add	r2, r7
 8040570:	3802      	subs	r0, #2
 8040572:	e6be      	b.n	80402f2 <__udivmoddi4+0x8e>
 8040574:	eba7 0808 	sub.w	r8, r7, r8
 8040578:	f1a9 0c02 	sub.w	ip, r9, #2
 804057c:	4441      	add	r1, r8
 804057e:	fbb1 f9fe 	udiv	r9, r1, lr
 8040582:	fb09 f804 	mul.w	r8, r9, r4
 8040586:	e7c9      	b.n	804051c <__udivmoddi4+0x2b8>
 8040588:	f1ae 0e02 	sub.w	lr, lr, #2
 804058c:	443c      	add	r4, r7
 804058e:	e744      	b.n	804041a <__udivmoddi4+0x1b6>
 8040590:	3b02      	subs	r3, #2
 8040592:	443c      	add	r4, r7
 8040594:	e75e      	b.n	8040454 <__udivmoddi4+0x1f0>
 8040596:	4649      	mov	r1, r9
 8040598:	e78d      	b.n	80404b6 <__udivmoddi4+0x252>
 804059a:	eba1 0108 	sub.w	r1, r1, r8
 804059e:	46cc      	mov	ip, r9
 80405a0:	fbb1 f9fe 	udiv	r9, r1, lr
 80405a4:	fb09 f804 	mul.w	r8, r9, r4
 80405a8:	e7b8      	b.n	804051c <__udivmoddi4+0x2b8>
 80405aa:	bf00      	nop

080405ac <__aeabi_idiv0>:
 80405ac:	4770      	bx	lr
 80405ae:	bf00      	nop

080405b0 <std>:
 80405b0:	2300      	movs	r3, #0
 80405b2:	b510      	push	{r4, lr}
 80405b4:	4604      	mov	r4, r0
 80405b6:	6083      	str	r3, [r0, #8]
 80405b8:	8181      	strh	r1, [r0, #12]
 80405ba:	4619      	mov	r1, r3
 80405bc:	6643      	str	r3, [r0, #100]	@ 0x64
 80405be:	81c2      	strh	r2, [r0, #14]
 80405c0:	2208      	movs	r2, #8
 80405c2:	6183      	str	r3, [r0, #24]
 80405c4:	e9c0 3300 	strd	r3, r3, [r0]
 80405c8:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80405cc:	305c      	adds	r0, #92	@ 0x5c
 80405ce:	f000 f8f4 	bl	80407ba <memset>
 80405d2:	4b0d      	ldr	r3, [pc, #52]	@ (8040608 <std+0x58>)
 80405d4:	6224      	str	r4, [r4, #32]
 80405d6:	6263      	str	r3, [r4, #36]	@ 0x24
 80405d8:	4b0c      	ldr	r3, [pc, #48]	@ (804060c <std+0x5c>)
 80405da:	62a3      	str	r3, [r4, #40]	@ 0x28
 80405dc:	4b0c      	ldr	r3, [pc, #48]	@ (8040610 <std+0x60>)
 80405de:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80405e0:	4b0c      	ldr	r3, [pc, #48]	@ (8040614 <std+0x64>)
 80405e2:	6323      	str	r3, [r4, #48]	@ 0x30
 80405e4:	4b0c      	ldr	r3, [pc, #48]	@ (8040618 <std+0x68>)
 80405e6:	429c      	cmp	r4, r3
 80405e8:	d006      	beq.n	80405f8 <std+0x48>
 80405ea:	f103 0268 	add.w	r2, r3, #104	@ 0x68
 80405ee:	4294      	cmp	r4, r2
 80405f0:	d002      	beq.n	80405f8 <std+0x48>
 80405f2:	33d0      	adds	r3, #208	@ 0xd0
 80405f4:	429c      	cmp	r4, r3
 80405f6:	d105      	bne.n	8040604 <std+0x54>
 80405f8:	f104 0058 	add.w	r0, r4, #88	@ 0x58
 80405fc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8040600:	f000 b94e 	b.w	80408a0 <__retarget_lock_init_recursive>
 8040604:	bd10      	pop	{r4, pc}
 8040606:	bf00      	nop
 8040608:	08040735 	.word	0x08040735
 804060c:	08040757 	.word	0x08040757
 8040610:	0804078f 	.word	0x0804078f
 8040614:	080407b3 	.word	0x080407b3
 8040618:	20018148 	.word	0x20018148

0804061c <stdio_exit_handler>:
 804061c:	4a02      	ldr	r2, [pc, #8]	@ (8040628 <stdio_exit_handler+0xc>)
 804061e:	4903      	ldr	r1, [pc, #12]	@ (804062c <stdio_exit_handler+0x10>)
 8040620:	4803      	ldr	r0, [pc, #12]	@ (8040630 <stdio_exit_handler+0x14>)
 8040622:	f000 b869 	b.w	80406f8 <_fwalk_sglue>
 8040626:	bf00      	nop
 8040628:	20018000 	.word	0x20018000
 804062c:	08040ba1 	.word	0x08040ba1
 8040630:	20018010 	.word	0x20018010

08040634 <cleanup_stdio>:
 8040634:	6841      	ldr	r1, [r0, #4]
 8040636:	4b0c      	ldr	r3, [pc, #48]	@ (8040668 <cleanup_stdio+0x34>)
 8040638:	4299      	cmp	r1, r3
 804063a:	b510      	push	{r4, lr}
 804063c:	4604      	mov	r4, r0
 804063e:	d001      	beq.n	8040644 <cleanup_stdio+0x10>
 8040640:	f000 faae 	bl	8040ba0 <_fflush_r>
 8040644:	68a1      	ldr	r1, [r4, #8]
 8040646:	4b09      	ldr	r3, [pc, #36]	@ (804066c <cleanup_stdio+0x38>)
 8040648:	4299      	cmp	r1, r3
 804064a:	d002      	beq.n	8040652 <cleanup_stdio+0x1e>
 804064c:	4620      	mov	r0, r4
 804064e:	f000 faa7 	bl	8040ba0 <_fflush_r>
 8040652:	68e1      	ldr	r1, [r4, #12]
 8040654:	4b06      	ldr	r3, [pc, #24]	@ (8040670 <cleanup_stdio+0x3c>)
 8040656:	4299      	cmp	r1, r3
 8040658:	d004      	beq.n	8040664 <cleanup_stdio+0x30>
 804065a:	4620      	mov	r0, r4
 804065c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8040660:	f000 ba9e 	b.w	8040ba0 <_fflush_r>
 8040664:	bd10      	pop	{r4, pc}
 8040666:	bf00      	nop
 8040668:	20018148 	.word	0x20018148
 804066c:	200181b0 	.word	0x200181b0
 8040670:	20018218 	.word	0x20018218

08040674 <global_stdio_init.part.0>:
 8040674:	b510      	push	{r4, lr}
 8040676:	4b0b      	ldr	r3, [pc, #44]	@ (80406a4 <global_stdio_init.part.0+0x30>)
 8040678:	2104      	movs	r1, #4
 804067a:	4c0b      	ldr	r4, [pc, #44]	@ (80406a8 <global_stdio_init.part.0+0x34>)
 804067c:	4a0b      	ldr	r2, [pc, #44]	@ (80406ac <global_stdio_init.part.0+0x38>)
 804067e:	4620      	mov	r0, r4
 8040680:	601a      	str	r2, [r3, #0]
 8040682:	2200      	movs	r2, #0
 8040684:	f7ff ff94 	bl	80405b0 <std>
 8040688:	f104 0068 	add.w	r0, r4, #104	@ 0x68
 804068c:	2201      	movs	r2, #1
 804068e:	2109      	movs	r1, #9
 8040690:	f7ff ff8e 	bl	80405b0 <std>
 8040694:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
 8040698:	2202      	movs	r2, #2
 804069a:	2112      	movs	r1, #18
 804069c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80406a0:	f7ff bf86 	b.w	80405b0 <std>
 80406a4:	20018280 	.word	0x20018280
 80406a8:	20018148 	.word	0x20018148
 80406ac:	0804061d 	.word	0x0804061d

080406b0 <__sfp_lock_acquire>:
 80406b0:	4801      	ldr	r0, [pc, #4]	@ (80406b8 <__sfp_lock_acquire+0x8>)
 80406b2:	f000 b8f6 	b.w	80408a2 <__retarget_lock_acquire_recursive>
 80406b6:	bf00      	nop
 80406b8:	20018289 	.word	0x20018289

080406bc <__sfp_lock_release>:
 80406bc:	4801      	ldr	r0, [pc, #4]	@ (80406c4 <__sfp_lock_release+0x8>)
 80406be:	f000 b8f1 	b.w	80408a4 <__retarget_lock_release_recursive>
 80406c2:	bf00      	nop
 80406c4:	20018289 	.word	0x20018289

080406c8 <__sinit>:
 80406c8:	b510      	push	{r4, lr}
 80406ca:	4604      	mov	r4, r0
 80406cc:	f7ff fff0 	bl	80406b0 <__sfp_lock_acquire>
 80406d0:	6a23      	ldr	r3, [r4, #32]
 80406d2:	b11b      	cbz	r3, 80406dc <__sinit+0x14>
 80406d4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80406d8:	f7ff bff0 	b.w	80406bc <__sfp_lock_release>
 80406dc:	4b04      	ldr	r3, [pc, #16]	@ (80406f0 <__sinit+0x28>)
 80406de:	6223      	str	r3, [r4, #32]
 80406e0:	4b04      	ldr	r3, [pc, #16]	@ (80406f4 <__sinit+0x2c>)
 80406e2:	681b      	ldr	r3, [r3, #0]
 80406e4:	2b00      	cmp	r3, #0
 80406e6:	d1f5      	bne.n	80406d4 <__sinit+0xc>
 80406e8:	f7ff ffc4 	bl	8040674 <global_stdio_init.part.0>
 80406ec:	e7f2      	b.n	80406d4 <__sinit+0xc>
 80406ee:	bf00      	nop
 80406f0:	08040635 	.word	0x08040635
 80406f4:	20018280 	.word	0x20018280

080406f8 <_fwalk_sglue>:
 80406f8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80406fc:	4607      	mov	r7, r0
 80406fe:	4688      	mov	r8, r1
 8040700:	4614      	mov	r4, r2
 8040702:	2600      	movs	r6, #0
 8040704:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
 8040708:	f1b9 0901 	subs.w	r9, r9, #1
 804070c:	d505      	bpl.n	804071a <_fwalk_sglue+0x22>
 804070e:	6824      	ldr	r4, [r4, #0]
 8040710:	2c00      	cmp	r4, #0
 8040712:	d1f7      	bne.n	8040704 <_fwalk_sglue+0xc>
 8040714:	4630      	mov	r0, r6
 8040716:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 804071a:	89ab      	ldrh	r3, [r5, #12]
 804071c:	2b01      	cmp	r3, #1
 804071e:	d907      	bls.n	8040730 <_fwalk_sglue+0x38>
 8040720:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 8040724:	3301      	adds	r3, #1
 8040726:	d003      	beq.n	8040730 <_fwalk_sglue+0x38>
 8040728:	4629      	mov	r1, r5
 804072a:	4638      	mov	r0, r7
 804072c:	47c0      	blx	r8
 804072e:	4306      	orrs	r6, r0
 8040730:	3568      	adds	r5, #104	@ 0x68
 8040732:	e7e9      	b.n	8040708 <_fwalk_sglue+0x10>

08040734 <__sread>:
 8040734:	b510      	push	{r4, lr}
 8040736:	460c      	mov	r4, r1
 8040738:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 804073c:	f000 f868 	bl	8040810 <_read_r>
 8040740:	2800      	cmp	r0, #0
 8040742:	bfab      	itete	ge
 8040744:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
 8040746:	89a3      	ldrhlt	r3, [r4, #12]
 8040748:	181b      	addge	r3, r3, r0
 804074a:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
 804074e:	bfac      	ite	ge
 8040750:	6563      	strge	r3, [r4, #84]	@ 0x54
 8040752:	81a3      	strhlt	r3, [r4, #12]
 8040754:	bd10      	pop	{r4, pc}

08040756 <__swrite>:
 8040756:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 804075a:	461f      	mov	r7, r3
 804075c:	898b      	ldrh	r3, [r1, #12]
 804075e:	4605      	mov	r5, r0
 8040760:	460c      	mov	r4, r1
 8040762:	05db      	lsls	r3, r3, #23
 8040764:	4616      	mov	r6, r2
 8040766:	d505      	bpl.n	8040774 <__swrite+0x1e>
 8040768:	2302      	movs	r3, #2
 804076a:	2200      	movs	r2, #0
 804076c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8040770:	f000 f83c 	bl	80407ec <_lseek_r>
 8040774:	89a3      	ldrh	r3, [r4, #12]
 8040776:	4632      	mov	r2, r6
 8040778:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 804077c:	4628      	mov	r0, r5
 804077e:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 8040782:	81a3      	strh	r3, [r4, #12]
 8040784:	463b      	mov	r3, r7
 8040786:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 804078a:	f000 b853 	b.w	8040834 <_write_r>

0804078e <__sseek>:
 804078e:	b510      	push	{r4, lr}
 8040790:	460c      	mov	r4, r1
 8040792:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8040796:	f000 f829 	bl	80407ec <_lseek_r>
 804079a:	1c43      	adds	r3, r0, #1
 804079c:	89a3      	ldrh	r3, [r4, #12]
 804079e:	bf15      	itete	ne
 80407a0:	6560      	strne	r0, [r4, #84]	@ 0x54
 80407a2:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 80407a6:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 80407aa:	81a3      	strheq	r3, [r4, #12]
 80407ac:	bf18      	it	ne
 80407ae:	81a3      	strhne	r3, [r4, #12]
 80407b0:	bd10      	pop	{r4, pc}

080407b2 <__sclose>:
 80407b2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80407b6:	f000 b809 	b.w	80407cc <_close_r>

080407ba <memset>:
 80407ba:	4402      	add	r2, r0
 80407bc:	4603      	mov	r3, r0
 80407be:	4293      	cmp	r3, r2
 80407c0:	d100      	bne.n	80407c4 <memset+0xa>
 80407c2:	4770      	bx	lr
 80407c4:	f803 1b01 	strb.w	r1, [r3], #1
 80407c8:	e7f9      	b.n	80407be <memset+0x4>
	...

080407cc <_close_r>:
 80407cc:	b538      	push	{r3, r4, r5, lr}
 80407ce:	2300      	movs	r3, #0
 80407d0:	4d05      	ldr	r5, [pc, #20]	@ (80407e8 <_close_r+0x1c>)
 80407d2:	4604      	mov	r4, r0
 80407d4:	4608      	mov	r0, r1
 80407d6:	602b      	str	r3, [r5, #0]
 80407d8:	f001 fe13 	bl	8042402 <_close>
 80407dc:	1c43      	adds	r3, r0, #1
 80407de:	d102      	bne.n	80407e6 <_close_r+0x1a>
 80407e0:	682b      	ldr	r3, [r5, #0]
 80407e2:	b103      	cbz	r3, 80407e6 <_close_r+0x1a>
 80407e4:	6023      	str	r3, [r4, #0]
 80407e6:	bd38      	pop	{r3, r4, r5, pc}
 80407e8:	20018284 	.word	0x20018284

080407ec <_lseek_r>:
 80407ec:	b538      	push	{r3, r4, r5, lr}
 80407ee:	4604      	mov	r4, r0
 80407f0:	4d06      	ldr	r5, [pc, #24]	@ (804080c <_lseek_r+0x20>)
 80407f2:	4608      	mov	r0, r1
 80407f4:	4611      	mov	r1, r2
 80407f6:	2200      	movs	r2, #0
 80407f8:	602a      	str	r2, [r5, #0]
 80407fa:	461a      	mov	r2, r3
 80407fc:	f001 fe28 	bl	8042450 <_lseek>
 8040800:	1c43      	adds	r3, r0, #1
 8040802:	d102      	bne.n	804080a <_lseek_r+0x1e>
 8040804:	682b      	ldr	r3, [r5, #0]
 8040806:	b103      	cbz	r3, 804080a <_lseek_r+0x1e>
 8040808:	6023      	str	r3, [r4, #0]
 804080a:	bd38      	pop	{r3, r4, r5, pc}
 804080c:	20018284 	.word	0x20018284

08040810 <_read_r>:
 8040810:	b538      	push	{r3, r4, r5, lr}
 8040812:	4604      	mov	r4, r0
 8040814:	4d06      	ldr	r5, [pc, #24]	@ (8040830 <_read_r+0x20>)
 8040816:	4608      	mov	r0, r1
 8040818:	4611      	mov	r1, r2
 804081a:	2200      	movs	r2, #0
 804081c:	602a      	str	r2, [r5, #0]
 804081e:	461a      	mov	r2, r3
 8040820:	f001 fdb6 	bl	8042390 <_read>
 8040824:	1c43      	adds	r3, r0, #1
 8040826:	d102      	bne.n	804082e <_read_r+0x1e>
 8040828:	682b      	ldr	r3, [r5, #0]
 804082a:	b103      	cbz	r3, 804082e <_read_r+0x1e>
 804082c:	6023      	str	r3, [r4, #0]
 804082e:	bd38      	pop	{r3, r4, r5, pc}
 8040830:	20018284 	.word	0x20018284

08040834 <_write_r>:
 8040834:	b538      	push	{r3, r4, r5, lr}
 8040836:	4604      	mov	r4, r0
 8040838:	4d06      	ldr	r5, [pc, #24]	@ (8040854 <_write_r+0x20>)
 804083a:	4608      	mov	r0, r1
 804083c:	4611      	mov	r1, r2
 804083e:	2200      	movs	r2, #0
 8040840:	602a      	str	r2, [r5, #0]
 8040842:	461a      	mov	r2, r3
 8040844:	f001 fdc1 	bl	80423ca <_write>
 8040848:	1c43      	adds	r3, r0, #1
 804084a:	d102      	bne.n	8040852 <_write_r+0x1e>
 804084c:	682b      	ldr	r3, [r5, #0]
 804084e:	b103      	cbz	r3, 8040852 <_write_r+0x1e>
 8040850:	6023      	str	r3, [r4, #0]
 8040852:	bd38      	pop	{r3, r4, r5, pc}
 8040854:	20018284 	.word	0x20018284

08040858 <__libc_init_array>:
 8040858:	b570      	push	{r4, r5, r6, lr}
 804085a:	4d0d      	ldr	r5, [pc, #52]	@ (8040890 <__libc_init_array+0x38>)
 804085c:	2600      	movs	r6, #0
 804085e:	4c0d      	ldr	r4, [pc, #52]	@ (8040894 <__libc_init_array+0x3c>)
 8040860:	1b64      	subs	r4, r4, r5
 8040862:	10a4      	asrs	r4, r4, #2
 8040864:	42a6      	cmp	r6, r4
 8040866:	d109      	bne.n	804087c <__libc_init_array+0x24>
 8040868:	4d0b      	ldr	r5, [pc, #44]	@ (8040898 <__libc_init_array+0x40>)
 804086a:	2600      	movs	r6, #0
 804086c:	4c0b      	ldr	r4, [pc, #44]	@ (804089c <__libc_init_array+0x44>)
 804086e:	f007 fbbf 	bl	8047ff0 <_init>
 8040872:	1b64      	subs	r4, r4, r5
 8040874:	10a4      	asrs	r4, r4, #2
 8040876:	42a6      	cmp	r6, r4
 8040878:	d105      	bne.n	8040886 <__libc_init_array+0x2e>
 804087a:	bd70      	pop	{r4, r5, r6, pc}
 804087c:	f855 3b04 	ldr.w	r3, [r5], #4
 8040880:	3601      	adds	r6, #1
 8040882:	4798      	blx	r3
 8040884:	e7ee      	b.n	8040864 <__libc_init_array+0xc>
 8040886:	f855 3b04 	ldr.w	r3, [r5], #4
 804088a:	3601      	adds	r6, #1
 804088c:	4798      	blx	r3
 804088e:	e7f2      	b.n	8040876 <__libc_init_array+0x1e>
 8040890:	0804881c 	.word	0x0804881c
 8040894:	0804881c 	.word	0x0804881c
 8040898:	0804881c 	.word	0x0804881c
 804089c:	08048820 	.word	0x08048820

080408a0 <__retarget_lock_init_recursive>:
 80408a0:	4770      	bx	lr

080408a2 <__retarget_lock_acquire_recursive>:
 80408a2:	4770      	bx	lr

080408a4 <__retarget_lock_release_recursive>:
 80408a4:	4770      	bx	lr
	...

080408a8 <_free_r>:
 80408a8:	b538      	push	{r3, r4, r5, lr}
 80408aa:	4605      	mov	r5, r0
 80408ac:	2900      	cmp	r1, #0
 80408ae:	d041      	beq.n	8040934 <_free_r+0x8c>
 80408b0:	f851 3c04 	ldr.w	r3, [r1, #-4]
 80408b4:	1f0c      	subs	r4, r1, #4
 80408b6:	2b00      	cmp	r3, #0
 80408b8:	bfb8      	it	lt
 80408ba:	18e4      	addlt	r4, r4, r3
 80408bc:	f000 f8e0 	bl	8040a80 <__malloc_lock>
 80408c0:	4a1d      	ldr	r2, [pc, #116]	@ (8040938 <_free_r+0x90>)
 80408c2:	6813      	ldr	r3, [r2, #0]
 80408c4:	b933      	cbnz	r3, 80408d4 <_free_r+0x2c>
 80408c6:	6063      	str	r3, [r4, #4]
 80408c8:	6014      	str	r4, [r2, #0]
 80408ca:	4628      	mov	r0, r5
 80408cc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80408d0:	f000 b8dc 	b.w	8040a8c <__malloc_unlock>
 80408d4:	42a3      	cmp	r3, r4
 80408d6:	d908      	bls.n	80408ea <_free_r+0x42>
 80408d8:	6820      	ldr	r0, [r4, #0]
 80408da:	1821      	adds	r1, r4, r0
 80408dc:	428b      	cmp	r3, r1
 80408de:	bf01      	itttt	eq
 80408e0:	6819      	ldreq	r1, [r3, #0]
 80408e2:	685b      	ldreq	r3, [r3, #4]
 80408e4:	1809      	addeq	r1, r1, r0
 80408e6:	6021      	streq	r1, [r4, #0]
 80408e8:	e7ed      	b.n	80408c6 <_free_r+0x1e>
 80408ea:	461a      	mov	r2, r3
 80408ec:	685b      	ldr	r3, [r3, #4]
 80408ee:	b10b      	cbz	r3, 80408f4 <_free_r+0x4c>
 80408f0:	42a3      	cmp	r3, r4
 80408f2:	d9fa      	bls.n	80408ea <_free_r+0x42>
 80408f4:	6811      	ldr	r1, [r2, #0]
 80408f6:	1850      	adds	r0, r2, r1
 80408f8:	42a0      	cmp	r0, r4
 80408fa:	d10b      	bne.n	8040914 <_free_r+0x6c>
 80408fc:	6820      	ldr	r0, [r4, #0]
 80408fe:	4401      	add	r1, r0
 8040900:	1850      	adds	r0, r2, r1
 8040902:	6011      	str	r1, [r2, #0]
 8040904:	4283      	cmp	r3, r0
 8040906:	d1e0      	bne.n	80408ca <_free_r+0x22>
 8040908:	6818      	ldr	r0, [r3, #0]
 804090a:	685b      	ldr	r3, [r3, #4]
 804090c:	4408      	add	r0, r1
 804090e:	6053      	str	r3, [r2, #4]
 8040910:	6010      	str	r0, [r2, #0]
 8040912:	e7da      	b.n	80408ca <_free_r+0x22>
 8040914:	d902      	bls.n	804091c <_free_r+0x74>
 8040916:	230c      	movs	r3, #12
 8040918:	602b      	str	r3, [r5, #0]
 804091a:	e7d6      	b.n	80408ca <_free_r+0x22>
 804091c:	6820      	ldr	r0, [r4, #0]
 804091e:	1821      	adds	r1, r4, r0
 8040920:	428b      	cmp	r3, r1
 8040922:	bf02      	ittt	eq
 8040924:	6819      	ldreq	r1, [r3, #0]
 8040926:	685b      	ldreq	r3, [r3, #4]
 8040928:	1809      	addeq	r1, r1, r0
 804092a:	6063      	str	r3, [r4, #4]
 804092c:	bf08      	it	eq
 804092e:	6021      	streq	r1, [r4, #0]
 8040930:	6054      	str	r4, [r2, #4]
 8040932:	e7ca      	b.n	80408ca <_free_r+0x22>
 8040934:	bd38      	pop	{r3, r4, r5, pc}
 8040936:	bf00      	nop
 8040938:	20018290 	.word	0x20018290

0804093c <sbrk_aligned>:
 804093c:	b570      	push	{r4, r5, r6, lr}
 804093e:	4e0f      	ldr	r6, [pc, #60]	@ (804097c <sbrk_aligned+0x40>)
 8040940:	460c      	mov	r4, r1
 8040942:	4605      	mov	r5, r0
 8040944:	6831      	ldr	r1, [r6, #0]
 8040946:	b911      	cbnz	r1, 804094e <sbrk_aligned+0x12>
 8040948:	f000 f952 	bl	8040bf0 <_sbrk_r>
 804094c:	6030      	str	r0, [r6, #0]
 804094e:	4621      	mov	r1, r4
 8040950:	4628      	mov	r0, r5
 8040952:	f000 f94d 	bl	8040bf0 <_sbrk_r>
 8040956:	1c43      	adds	r3, r0, #1
 8040958:	d103      	bne.n	8040962 <sbrk_aligned+0x26>
 804095a:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
 804095e:	4620      	mov	r0, r4
 8040960:	bd70      	pop	{r4, r5, r6, pc}
 8040962:	1cc4      	adds	r4, r0, #3
 8040964:	f024 0403 	bic.w	r4, r4, #3
 8040968:	42a0      	cmp	r0, r4
 804096a:	d0f8      	beq.n	804095e <sbrk_aligned+0x22>
 804096c:	1a21      	subs	r1, r4, r0
 804096e:	4628      	mov	r0, r5
 8040970:	f000 f93e 	bl	8040bf0 <_sbrk_r>
 8040974:	3001      	adds	r0, #1
 8040976:	d1f2      	bne.n	804095e <sbrk_aligned+0x22>
 8040978:	e7ef      	b.n	804095a <sbrk_aligned+0x1e>
 804097a:	bf00      	nop
 804097c:	2001828c 	.word	0x2001828c

08040980 <_malloc_r>:
 8040980:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8040984:	1ccd      	adds	r5, r1, #3
 8040986:	4606      	mov	r6, r0
 8040988:	f025 0503 	bic.w	r5, r5, #3
 804098c:	3508      	adds	r5, #8
 804098e:	2d0c      	cmp	r5, #12
 8040990:	bf38      	it	cc
 8040992:	250c      	movcc	r5, #12
 8040994:	2d00      	cmp	r5, #0
 8040996:	db01      	blt.n	804099c <_malloc_r+0x1c>
 8040998:	42a9      	cmp	r1, r5
 804099a:	d904      	bls.n	80409a6 <_malloc_r+0x26>
 804099c:	230c      	movs	r3, #12
 804099e:	6033      	str	r3, [r6, #0]
 80409a0:	2000      	movs	r0, #0
 80409a2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80409a6:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 8040a7c <_malloc_r+0xfc>
 80409aa:	f000 f869 	bl	8040a80 <__malloc_lock>
 80409ae:	f8d8 3000 	ldr.w	r3, [r8]
 80409b2:	461c      	mov	r4, r3
 80409b4:	bb44      	cbnz	r4, 8040a08 <_malloc_r+0x88>
 80409b6:	4629      	mov	r1, r5
 80409b8:	4630      	mov	r0, r6
 80409ba:	f7ff ffbf 	bl	804093c <sbrk_aligned>
 80409be:	1c43      	adds	r3, r0, #1
 80409c0:	4604      	mov	r4, r0
 80409c2:	d158      	bne.n	8040a76 <_malloc_r+0xf6>
 80409c4:	f8d8 4000 	ldr.w	r4, [r8]
 80409c8:	4627      	mov	r7, r4
 80409ca:	2f00      	cmp	r7, #0
 80409cc:	d143      	bne.n	8040a56 <_malloc_r+0xd6>
 80409ce:	2c00      	cmp	r4, #0
 80409d0:	d04b      	beq.n	8040a6a <_malloc_r+0xea>
 80409d2:	6823      	ldr	r3, [r4, #0]
 80409d4:	4639      	mov	r1, r7
 80409d6:	4630      	mov	r0, r6
 80409d8:	eb04 0903 	add.w	r9, r4, r3
 80409dc:	f000 f908 	bl	8040bf0 <_sbrk_r>
 80409e0:	4581      	cmp	r9, r0
 80409e2:	d142      	bne.n	8040a6a <_malloc_r+0xea>
 80409e4:	6821      	ldr	r1, [r4, #0]
 80409e6:	4630      	mov	r0, r6
 80409e8:	1a6d      	subs	r5, r5, r1
 80409ea:	4629      	mov	r1, r5
 80409ec:	f7ff ffa6 	bl	804093c <sbrk_aligned>
 80409f0:	3001      	adds	r0, #1
 80409f2:	d03a      	beq.n	8040a6a <_malloc_r+0xea>
 80409f4:	6823      	ldr	r3, [r4, #0]
 80409f6:	442b      	add	r3, r5
 80409f8:	6023      	str	r3, [r4, #0]
 80409fa:	f8d8 3000 	ldr.w	r3, [r8]
 80409fe:	685a      	ldr	r2, [r3, #4]
 8040a00:	bb62      	cbnz	r2, 8040a5c <_malloc_r+0xdc>
 8040a02:	f8c8 7000 	str.w	r7, [r8]
 8040a06:	e00f      	b.n	8040a28 <_malloc_r+0xa8>
 8040a08:	6822      	ldr	r2, [r4, #0]
 8040a0a:	1b52      	subs	r2, r2, r5
 8040a0c:	d420      	bmi.n	8040a50 <_malloc_r+0xd0>
 8040a0e:	2a0b      	cmp	r2, #11
 8040a10:	d917      	bls.n	8040a42 <_malloc_r+0xc2>
 8040a12:	1961      	adds	r1, r4, r5
 8040a14:	42a3      	cmp	r3, r4
 8040a16:	6025      	str	r5, [r4, #0]
 8040a18:	bf18      	it	ne
 8040a1a:	6059      	strne	r1, [r3, #4]
 8040a1c:	6863      	ldr	r3, [r4, #4]
 8040a1e:	bf08      	it	eq
 8040a20:	f8c8 1000 	streq.w	r1, [r8]
 8040a24:	5162      	str	r2, [r4, r5]
 8040a26:	604b      	str	r3, [r1, #4]
 8040a28:	4630      	mov	r0, r6
 8040a2a:	f000 f82f 	bl	8040a8c <__malloc_unlock>
 8040a2e:	f104 000b 	add.w	r0, r4, #11
 8040a32:	1d23      	adds	r3, r4, #4
 8040a34:	f020 0007 	bic.w	r0, r0, #7
 8040a38:	1ac2      	subs	r2, r0, r3
 8040a3a:	bf1c      	itt	ne
 8040a3c:	1a1b      	subne	r3, r3, r0
 8040a3e:	50a3      	strne	r3, [r4, r2]
 8040a40:	e7af      	b.n	80409a2 <_malloc_r+0x22>
 8040a42:	6862      	ldr	r2, [r4, #4]
 8040a44:	42a3      	cmp	r3, r4
 8040a46:	bf0c      	ite	eq
 8040a48:	f8c8 2000 	streq.w	r2, [r8]
 8040a4c:	605a      	strne	r2, [r3, #4]
 8040a4e:	e7eb      	b.n	8040a28 <_malloc_r+0xa8>
 8040a50:	4623      	mov	r3, r4
 8040a52:	6864      	ldr	r4, [r4, #4]
 8040a54:	e7ae      	b.n	80409b4 <_malloc_r+0x34>
 8040a56:	463c      	mov	r4, r7
 8040a58:	687f      	ldr	r7, [r7, #4]
 8040a5a:	e7b6      	b.n	80409ca <_malloc_r+0x4a>
 8040a5c:	461a      	mov	r2, r3
 8040a5e:	685b      	ldr	r3, [r3, #4]
 8040a60:	42a3      	cmp	r3, r4
 8040a62:	d1fb      	bne.n	8040a5c <_malloc_r+0xdc>
 8040a64:	2300      	movs	r3, #0
 8040a66:	6053      	str	r3, [r2, #4]
 8040a68:	e7de      	b.n	8040a28 <_malloc_r+0xa8>
 8040a6a:	230c      	movs	r3, #12
 8040a6c:	4630      	mov	r0, r6
 8040a6e:	6033      	str	r3, [r6, #0]
 8040a70:	f000 f80c 	bl	8040a8c <__malloc_unlock>
 8040a74:	e794      	b.n	80409a0 <_malloc_r+0x20>
 8040a76:	6005      	str	r5, [r0, #0]
 8040a78:	e7d6      	b.n	8040a28 <_malloc_r+0xa8>
 8040a7a:	bf00      	nop
 8040a7c:	20018290 	.word	0x20018290

08040a80 <__malloc_lock>:
 8040a80:	4801      	ldr	r0, [pc, #4]	@ (8040a88 <__malloc_lock+0x8>)
 8040a82:	f7ff bf0e 	b.w	80408a2 <__retarget_lock_acquire_recursive>
 8040a86:	bf00      	nop
 8040a88:	20018288 	.word	0x20018288

08040a8c <__malloc_unlock>:
 8040a8c:	4801      	ldr	r0, [pc, #4]	@ (8040a94 <__malloc_unlock+0x8>)
 8040a8e:	f7ff bf09 	b.w	80408a4 <__retarget_lock_release_recursive>
 8040a92:	bf00      	nop
 8040a94:	20018288 	.word	0x20018288

08040a98 <__sflush_r>:
 8040a98:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8040a9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8040aa0:	0716      	lsls	r6, r2, #28
 8040aa2:	4605      	mov	r5, r0
 8040aa4:	460c      	mov	r4, r1
 8040aa6:	d454      	bmi.n	8040b52 <__sflush_r+0xba>
 8040aa8:	684b      	ldr	r3, [r1, #4]
 8040aaa:	2b00      	cmp	r3, #0
 8040aac:	dc02      	bgt.n	8040ab4 <__sflush_r+0x1c>
 8040aae:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 8040ab0:	2b00      	cmp	r3, #0
 8040ab2:	dd48      	ble.n	8040b46 <__sflush_r+0xae>
 8040ab4:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8040ab6:	2e00      	cmp	r6, #0
 8040ab8:	d045      	beq.n	8040b46 <__sflush_r+0xae>
 8040aba:	2300      	movs	r3, #0
 8040abc:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
 8040ac0:	682f      	ldr	r7, [r5, #0]
 8040ac2:	6a21      	ldr	r1, [r4, #32]
 8040ac4:	602b      	str	r3, [r5, #0]
 8040ac6:	d030      	beq.n	8040b2a <__sflush_r+0x92>
 8040ac8:	6d62      	ldr	r2, [r4, #84]	@ 0x54
 8040aca:	89a3      	ldrh	r3, [r4, #12]
 8040acc:	0759      	lsls	r1, r3, #29
 8040ace:	d505      	bpl.n	8040adc <__sflush_r+0x44>
 8040ad0:	6863      	ldr	r3, [r4, #4]
 8040ad2:	1ad2      	subs	r2, r2, r3
 8040ad4:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 8040ad6:	b10b      	cbz	r3, 8040adc <__sflush_r+0x44>
 8040ad8:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 8040ada:	1ad2      	subs	r2, r2, r3
 8040adc:	2300      	movs	r3, #0
 8040ade:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8040ae0:	6a21      	ldr	r1, [r4, #32]
 8040ae2:	4628      	mov	r0, r5
 8040ae4:	47b0      	blx	r6
 8040ae6:	1c43      	adds	r3, r0, #1
 8040ae8:	89a3      	ldrh	r3, [r4, #12]
 8040aea:	d106      	bne.n	8040afa <__sflush_r+0x62>
 8040aec:	6829      	ldr	r1, [r5, #0]
 8040aee:	291d      	cmp	r1, #29
 8040af0:	d82b      	bhi.n	8040b4a <__sflush_r+0xb2>
 8040af2:	4a2a      	ldr	r2, [pc, #168]	@ (8040b9c <__sflush_r+0x104>)
 8040af4:	40ca      	lsrs	r2, r1
 8040af6:	07d6      	lsls	r6, r2, #31
 8040af8:	d527      	bpl.n	8040b4a <__sflush_r+0xb2>
 8040afa:	2200      	movs	r2, #0
 8040afc:	04d9      	lsls	r1, r3, #19
 8040afe:	6062      	str	r2, [r4, #4]
 8040b00:	6922      	ldr	r2, [r4, #16]
 8040b02:	6022      	str	r2, [r4, #0]
 8040b04:	d504      	bpl.n	8040b10 <__sflush_r+0x78>
 8040b06:	1c42      	adds	r2, r0, #1
 8040b08:	d101      	bne.n	8040b0e <__sflush_r+0x76>
 8040b0a:	682b      	ldr	r3, [r5, #0]
 8040b0c:	b903      	cbnz	r3, 8040b10 <__sflush_r+0x78>
 8040b0e:	6560      	str	r0, [r4, #84]	@ 0x54
 8040b10:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 8040b12:	602f      	str	r7, [r5, #0]
 8040b14:	b1b9      	cbz	r1, 8040b46 <__sflush_r+0xae>
 8040b16:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8040b1a:	4299      	cmp	r1, r3
 8040b1c:	d002      	beq.n	8040b24 <__sflush_r+0x8c>
 8040b1e:	4628      	mov	r0, r5
 8040b20:	f7ff fec2 	bl	80408a8 <_free_r>
 8040b24:	2300      	movs	r3, #0
 8040b26:	6363      	str	r3, [r4, #52]	@ 0x34
 8040b28:	e00d      	b.n	8040b46 <__sflush_r+0xae>
 8040b2a:	2301      	movs	r3, #1
 8040b2c:	4628      	mov	r0, r5
 8040b2e:	47b0      	blx	r6
 8040b30:	4602      	mov	r2, r0
 8040b32:	1c50      	adds	r0, r2, #1
 8040b34:	d1c9      	bne.n	8040aca <__sflush_r+0x32>
 8040b36:	682b      	ldr	r3, [r5, #0]
 8040b38:	2b00      	cmp	r3, #0
 8040b3a:	d0c6      	beq.n	8040aca <__sflush_r+0x32>
 8040b3c:	2b1d      	cmp	r3, #29
 8040b3e:	d001      	beq.n	8040b44 <__sflush_r+0xac>
 8040b40:	2b16      	cmp	r3, #22
 8040b42:	d11d      	bne.n	8040b80 <__sflush_r+0xe8>
 8040b44:	602f      	str	r7, [r5, #0]
 8040b46:	2000      	movs	r0, #0
 8040b48:	e021      	b.n	8040b8e <__sflush_r+0xf6>
 8040b4a:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8040b4e:	b21b      	sxth	r3, r3
 8040b50:	e01a      	b.n	8040b88 <__sflush_r+0xf0>
 8040b52:	690f      	ldr	r7, [r1, #16]
 8040b54:	2f00      	cmp	r7, #0
 8040b56:	d0f6      	beq.n	8040b46 <__sflush_r+0xae>
 8040b58:	0793      	lsls	r3, r2, #30
 8040b5a:	680e      	ldr	r6, [r1, #0]
 8040b5c:	600f      	str	r7, [r1, #0]
 8040b5e:	bf0c      	ite	eq
 8040b60:	694b      	ldreq	r3, [r1, #20]
 8040b62:	2300      	movne	r3, #0
 8040b64:	eba6 0807 	sub.w	r8, r6, r7
 8040b68:	608b      	str	r3, [r1, #8]
 8040b6a:	f1b8 0f00 	cmp.w	r8, #0
 8040b6e:	ddea      	ble.n	8040b46 <__sflush_r+0xae>
 8040b70:	4643      	mov	r3, r8
 8040b72:	463a      	mov	r2, r7
 8040b74:	6a21      	ldr	r1, [r4, #32]
 8040b76:	4628      	mov	r0, r5
 8040b78:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
 8040b7a:	47b0      	blx	r6
 8040b7c:	2800      	cmp	r0, #0
 8040b7e:	dc08      	bgt.n	8040b92 <__sflush_r+0xfa>
 8040b80:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8040b84:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8040b88:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8040b8c:	81a3      	strh	r3, [r4, #12]
 8040b8e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8040b92:	4407      	add	r7, r0
 8040b94:	eba8 0800 	sub.w	r8, r8, r0
 8040b98:	e7e7      	b.n	8040b6a <__sflush_r+0xd2>
 8040b9a:	bf00      	nop
 8040b9c:	20400001 	.word	0x20400001

08040ba0 <_fflush_r>:
 8040ba0:	b538      	push	{r3, r4, r5, lr}
 8040ba2:	690b      	ldr	r3, [r1, #16]
 8040ba4:	4605      	mov	r5, r0
 8040ba6:	460c      	mov	r4, r1
 8040ba8:	b913      	cbnz	r3, 8040bb0 <_fflush_r+0x10>
 8040baa:	2500      	movs	r5, #0
 8040bac:	4628      	mov	r0, r5
 8040bae:	bd38      	pop	{r3, r4, r5, pc}
 8040bb0:	b118      	cbz	r0, 8040bba <_fflush_r+0x1a>
 8040bb2:	6a03      	ldr	r3, [r0, #32]
 8040bb4:	b90b      	cbnz	r3, 8040bba <_fflush_r+0x1a>
 8040bb6:	f7ff fd87 	bl	80406c8 <__sinit>
 8040bba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8040bbe:	2b00      	cmp	r3, #0
 8040bc0:	d0f3      	beq.n	8040baa <_fflush_r+0xa>
 8040bc2:	6e62      	ldr	r2, [r4, #100]	@ 0x64
 8040bc4:	07d0      	lsls	r0, r2, #31
 8040bc6:	d404      	bmi.n	8040bd2 <_fflush_r+0x32>
 8040bc8:	0599      	lsls	r1, r3, #22
 8040bca:	d402      	bmi.n	8040bd2 <_fflush_r+0x32>
 8040bcc:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8040bce:	f7ff fe68 	bl	80408a2 <__retarget_lock_acquire_recursive>
 8040bd2:	4628      	mov	r0, r5
 8040bd4:	4621      	mov	r1, r4
 8040bd6:	f7ff ff5f 	bl	8040a98 <__sflush_r>
 8040bda:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8040bdc:	4605      	mov	r5, r0
 8040bde:	07da      	lsls	r2, r3, #31
 8040be0:	d4e4      	bmi.n	8040bac <_fflush_r+0xc>
 8040be2:	89a3      	ldrh	r3, [r4, #12]
 8040be4:	059b      	lsls	r3, r3, #22
 8040be6:	d4e1      	bmi.n	8040bac <_fflush_r+0xc>
 8040be8:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8040bea:	f7ff fe5b 	bl	80408a4 <__retarget_lock_release_recursive>
 8040bee:	e7dd      	b.n	8040bac <_fflush_r+0xc>

08040bf0 <_sbrk_r>:
 8040bf0:	b538      	push	{r3, r4, r5, lr}
 8040bf2:	2300      	movs	r3, #0
 8040bf4:	4d05      	ldr	r5, [pc, #20]	@ (8040c0c <_sbrk_r+0x1c>)
 8040bf6:	4604      	mov	r4, r0
 8040bf8:	4608      	mov	r0, r1
 8040bfa:	602b      	str	r3, [r5, #0]
 8040bfc:	f001 fc36 	bl	804246c <_sbrk>
 8040c00:	1c43      	adds	r3, r0, #1
 8040c02:	d102      	bne.n	8040c0a <_sbrk_r+0x1a>
 8040c04:	682b      	ldr	r3, [r5, #0]
 8040c06:	b103      	cbz	r3, 8040c0a <_sbrk_r+0x1a>
 8040c08:	6023      	str	r3, [r4, #0]
 8040c0a:	bd38      	pop	{r3, r4, r5, pc}
 8040c0c:	20018284 	.word	0x20018284

08040c10 <MX_DMA_Init>:
 8040c10:	b580      	push	{r7, lr}
 8040c12:	b082      	sub	sp, #8
 8040c14:	af00      	add	r7, sp, #0
 8040c16:	4b5d      	ldr	r3, [pc, #372]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c18:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040c1a:	4a5c      	ldr	r2, [pc, #368]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c1c:	f043 0304 	orr.w	r3, r3, #4
 8040c20:	6493      	str	r3, [r2, #72]	@ 0x48
 8040c22:	4b5a      	ldr	r3, [pc, #360]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c24:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040c26:	f003 0304 	and.w	r3, r3, #4
 8040c2a:	607b      	str	r3, [r7, #4]
 8040c2c:	687b      	ldr	r3, [r7, #4]
 8040c2e:	4b57      	ldr	r3, [pc, #348]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c30:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040c32:	4a56      	ldr	r2, [pc, #344]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c34:	f043 0301 	orr.w	r3, r3, #1
 8040c38:	6493      	str	r3, [r2, #72]	@ 0x48
 8040c3a:	4b54      	ldr	r3, [pc, #336]	@ (8040d8c <MX_DMA_Init+0x17c>)
 8040c3c:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040c3e:	f003 0301 	and.w	r3, r3, #1
 8040c42:	603b      	str	r3, [r7, #0]
 8040c44:	683b      	ldr	r3, [r7, #0]
 8040c46:	4b52      	ldr	r3, [pc, #328]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c48:	4a52      	ldr	r2, [pc, #328]	@ (8040d94 <MX_DMA_Init+0x184>)
 8040c4a:	601a      	str	r2, [r3, #0]
 8040c4c:	4b50      	ldr	r3, [pc, #320]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c4e:	2200      	movs	r2, #0
 8040c50:	605a      	str	r2, [r3, #4]
 8040c52:	4b4f      	ldr	r3, [pc, #316]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c54:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8040c58:	609a      	str	r2, [r3, #8]
 8040c5a:	4b4d      	ldr	r3, [pc, #308]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c5c:	2200      	movs	r2, #0
 8040c5e:	60da      	str	r2, [r3, #12]
 8040c60:	4b4b      	ldr	r3, [pc, #300]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c62:	2280      	movs	r2, #128	@ 0x80
 8040c64:	611a      	str	r2, [r3, #16]
 8040c66:	4b4a      	ldr	r3, [pc, #296]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c68:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8040c6c:	615a      	str	r2, [r3, #20]
 8040c6e:	4b48      	ldr	r3, [pc, #288]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c70:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8040c74:	619a      	str	r2, [r3, #24]
 8040c76:	4b46      	ldr	r3, [pc, #280]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c78:	2200      	movs	r2, #0
 8040c7a:	61da      	str	r2, [r3, #28]
 8040c7c:	4b44      	ldr	r3, [pc, #272]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c7e:	2200      	movs	r2, #0
 8040c80:	621a      	str	r2, [r3, #32]
 8040c82:	4843      	ldr	r0, [pc, #268]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c84:	f002 fad4 	bl	8043230 <HAL_DMA_Init>
 8040c88:	4603      	mov	r3, r0
 8040c8a:	2b00      	cmp	r3, #0
 8040c8c:	d001      	beq.n	8040c92 <MX_DMA_Init+0x82>
 8040c8e:	f001 fae1 	bl	8042254 <Error_Handler>
 8040c92:	2110      	movs	r1, #16
 8040c94:	483e      	ldr	r0, [pc, #248]	@ (8040d90 <MX_DMA_Init+0x180>)
 8040c96:	f002 fd12 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8040c9a:	4603      	mov	r3, r0
 8040c9c:	2b00      	cmp	r3, #0
 8040c9e:	d001      	beq.n	8040ca4 <MX_DMA_Init+0x94>
 8040ca0:	f001 fad8 	bl	8042254 <Error_Handler>
 8040ca4:	4b3c      	ldr	r3, [pc, #240]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040ca6:	4a3d      	ldr	r2, [pc, #244]	@ (8040d9c <MX_DMA_Init+0x18c>)
 8040ca8:	601a      	str	r2, [r3, #0]
 8040caa:	4b3b      	ldr	r3, [pc, #236]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cac:	2200      	movs	r2, #0
 8040cae:	605a      	str	r2, [r3, #4]
 8040cb0:	4b39      	ldr	r3, [pc, #228]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cb2:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8040cb6:	609a      	str	r2, [r3, #8]
 8040cb8:	4b37      	ldr	r3, [pc, #220]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cba:	2200      	movs	r2, #0
 8040cbc:	60da      	str	r2, [r3, #12]
 8040cbe:	4b36      	ldr	r3, [pc, #216]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cc0:	2280      	movs	r2, #128	@ 0x80
 8040cc2:	611a      	str	r2, [r3, #16]
 8040cc4:	4b34      	ldr	r3, [pc, #208]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cc6:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8040cca:	615a      	str	r2, [r3, #20]
 8040ccc:	4b32      	ldr	r3, [pc, #200]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cce:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8040cd2:	619a      	str	r2, [r3, #24]
 8040cd4:	4b30      	ldr	r3, [pc, #192]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cd6:	2200      	movs	r2, #0
 8040cd8:	61da      	str	r2, [r3, #28]
 8040cda:	4b2f      	ldr	r3, [pc, #188]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cdc:	2200      	movs	r2, #0
 8040cde:	621a      	str	r2, [r3, #32]
 8040ce0:	482d      	ldr	r0, [pc, #180]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040ce2:	f002 faa5 	bl	8043230 <HAL_DMA_Init>
 8040ce6:	4603      	mov	r3, r0
 8040ce8:	2b00      	cmp	r3, #0
 8040cea:	d001      	beq.n	8040cf0 <MX_DMA_Init+0xe0>
 8040cec:	f001 fab2 	bl	8042254 <Error_Handler>
 8040cf0:	2110      	movs	r1, #16
 8040cf2:	4829      	ldr	r0, [pc, #164]	@ (8040d98 <MX_DMA_Init+0x188>)
 8040cf4:	f002 fce3 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8040cf8:	4603      	mov	r3, r0
 8040cfa:	2b00      	cmp	r3, #0
 8040cfc:	d001      	beq.n	8040d02 <MX_DMA_Init+0xf2>
 8040cfe:	f001 faa9 	bl	8042254 <Error_Handler>
 8040d02:	2200      	movs	r2, #0
 8040d04:	2100      	movs	r1, #0
 8040d06:	201d      	movs	r0, #29
 8040d08:	f002 fa5d 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d0c:	201d      	movs	r0, #29
 8040d0e:	f002 fa74 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d12:	2200      	movs	r2, #0
 8040d14:	2100      	movs	r1, #0
 8040d16:	201e      	movs	r0, #30
 8040d18:	f002 fa55 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d1c:	201e      	movs	r0, #30
 8040d1e:	f002 fa6c 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d22:	2200      	movs	r2, #0
 8040d24:	2100      	movs	r1, #0
 8040d26:	201f      	movs	r0, #31
 8040d28:	f002 fa4d 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d2c:	201f      	movs	r0, #31
 8040d2e:	f002 fa64 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d32:	2200      	movs	r2, #0
 8040d34:	2100      	movs	r1, #0
 8040d36:	2020      	movs	r0, #32
 8040d38:	f002 fa45 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d3c:	2020      	movs	r0, #32
 8040d3e:	f002 fa5c 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d42:	2200      	movs	r2, #0
 8040d44:	2100      	movs	r1, #0
 8040d46:	2021      	movs	r0, #33	@ 0x21
 8040d48:	f002 fa3d 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d4c:	2021      	movs	r0, #33	@ 0x21
 8040d4e:	f002 fa54 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d52:	2200      	movs	r2, #0
 8040d54:	2100      	movs	r1, #0
 8040d56:	2022      	movs	r0, #34	@ 0x22
 8040d58:	f002 fa35 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d5c:	2022      	movs	r0, #34	@ 0x22
 8040d5e:	f002 fa4c 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d62:	2200      	movs	r2, #0
 8040d64:	2100      	movs	r1, #0
 8040d66:	2023      	movs	r0, #35	@ 0x23
 8040d68:	f002 fa2d 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d6c:	2023      	movs	r0, #35	@ 0x23
 8040d6e:	f002 fa44 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d72:	2200      	movs	r2, #0
 8040d74:	2100      	movs	r1, #0
 8040d76:	2024      	movs	r0, #36	@ 0x24
 8040d78:	f002 fa25 	bl	80431c6 <HAL_NVIC_SetPriority>
 8040d7c:	2024      	movs	r0, #36	@ 0x24
 8040d7e:	f002 fa3c 	bl	80431fa <HAL_NVIC_EnableIRQ>
 8040d82:	bf00      	nop
 8040d84:	3708      	adds	r7, #8
 8040d86:	46bd      	mov	sp, r7
 8040d88:	bd80      	pop	{r7, pc}
 8040d8a:	bf00      	nop
 8040d8c:	40021000 	.word	0x40021000
 8040d90:	20018294 	.word	0x20018294
 8040d94:	40020008 	.word	0x40020008
 8040d98:	200182fc 	.word	0x200182fc
 8040d9c:	4002001c 	.word	0x4002001c

08040da0 <MX_GPIO_Init>:
 8040da0:	b580      	push	{r7, lr}
 8040da2:	b08a      	sub	sp, #40	@ 0x28
 8040da4:	af00      	add	r7, sp, #0
 8040da6:	f107 0314 	add.w	r3, r7, #20
 8040daa:	2200      	movs	r2, #0
 8040dac:	601a      	str	r2, [r3, #0]
 8040dae:	605a      	str	r2, [r3, #4]
 8040db0:	609a      	str	r2, [r3, #8]
 8040db2:	60da      	str	r2, [r3, #12]
 8040db4:	611a      	str	r2, [r3, #16]
 8040db6:	4b46      	ldr	r3, [pc, #280]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040db8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040dba:	4a45      	ldr	r2, [pc, #276]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040dbc:	f043 0304 	orr.w	r3, r3, #4
 8040dc0:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8040dc2:	4b43      	ldr	r3, [pc, #268]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040dc4:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040dc6:	f003 0304 	and.w	r3, r3, #4
 8040dca:	613b      	str	r3, [r7, #16]
 8040dcc:	693b      	ldr	r3, [r7, #16]
 8040dce:	4b40      	ldr	r3, [pc, #256]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040dd0:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040dd2:	4a3f      	ldr	r2, [pc, #252]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040dd4:	f043 0301 	orr.w	r3, r3, #1
 8040dd8:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8040dda:	4b3d      	ldr	r3, [pc, #244]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040ddc:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040dde:	f003 0301 	and.w	r3, r3, #1
 8040de2:	60fb      	str	r3, [r7, #12]
 8040de4:	68fb      	ldr	r3, [r7, #12]
 8040de6:	4b3a      	ldr	r3, [pc, #232]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040de8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040dea:	4a39      	ldr	r2, [pc, #228]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040dec:	f043 0302 	orr.w	r3, r3, #2
 8040df0:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8040df2:	4b37      	ldr	r3, [pc, #220]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040df4:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040df6:	f003 0302 	and.w	r3, r3, #2
 8040dfa:	60bb      	str	r3, [r7, #8]
 8040dfc:	68bb      	ldr	r3, [r7, #8]
 8040dfe:	4b34      	ldr	r3, [pc, #208]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e00:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040e02:	4a33      	ldr	r2, [pc, #204]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e04:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8040e08:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8040e0a:	4b31      	ldr	r3, [pc, #196]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e0c:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040e0e:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8040e12:	607b      	str	r3, [r7, #4]
 8040e14:	687b      	ldr	r3, [r7, #4]
 8040e16:	f002 ff2f 	bl	8043c78 <HAL_PWREx_EnableVddIO2>
 8040e1a:	4b2d      	ldr	r3, [pc, #180]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e1c:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040e1e:	4a2c      	ldr	r2, [pc, #176]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e20:	f043 0308 	orr.w	r3, r3, #8
 8040e24:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8040e26:	4b2a      	ldr	r3, [pc, #168]	@ (8040ed0 <MX_GPIO_Init+0x130>)
 8040e28:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8040e2a:	f003 0308 	and.w	r3, r3, #8
 8040e2e:	603b      	str	r3, [r7, #0]
 8040e30:	683b      	ldr	r3, [r7, #0]
 8040e32:	2201      	movs	r2, #1
 8040e34:	2113      	movs	r1, #19
 8040e36:	4827      	ldr	r0, [pc, #156]	@ (8040ed4 <MX_GPIO_Init+0x134>)
 8040e38:	f002 fe9c 	bl	8043b74 <HAL_GPIO_WritePin>
 8040e3c:	2201      	movs	r2, #1
 8040e3e:	2101      	movs	r1, #1
 8040e40:	4825      	ldr	r0, [pc, #148]	@ (8040ed8 <MX_GPIO_Init+0x138>)
 8040e42:	f002 fe97 	bl	8043b74 <HAL_GPIO_WritePin>
 8040e46:	2303      	movs	r3, #3
 8040e48:	617b      	str	r3, [r7, #20]
 8040e4a:	2300      	movs	r3, #0
 8040e4c:	61bb      	str	r3, [r7, #24]
 8040e4e:	2301      	movs	r3, #1
 8040e50:	61fb      	str	r3, [r7, #28]
 8040e52:	f107 0314 	add.w	r3, r7, #20
 8040e56:	4619      	mov	r1, r3
 8040e58:	4820      	ldr	r0, [pc, #128]	@ (8040edc <MX_GPIO_Init+0x13c>)
 8040e5a:	f002 fd01 	bl	8043860 <HAL_GPIO_Init>
 8040e5e:	2313      	movs	r3, #19
 8040e60:	617b      	str	r3, [r7, #20]
 8040e62:	2301      	movs	r3, #1
 8040e64:	61bb      	str	r3, [r7, #24]
 8040e66:	2301      	movs	r3, #1
 8040e68:	61fb      	str	r3, [r7, #28]
 8040e6a:	2300      	movs	r3, #0
 8040e6c:	623b      	str	r3, [r7, #32]
 8040e6e:	f107 0314 	add.w	r3, r7, #20
 8040e72:	4619      	mov	r1, r3
 8040e74:	4817      	ldr	r0, [pc, #92]	@ (8040ed4 <MX_GPIO_Init+0x134>)
 8040e76:	f002 fcf3 	bl	8043860 <HAL_GPIO_Init>
 8040e7a:	2301      	movs	r3, #1
 8040e7c:	617b      	str	r3, [r7, #20]
 8040e7e:	2301      	movs	r3, #1
 8040e80:	61bb      	str	r3, [r7, #24]
 8040e82:	2301      	movs	r3, #1
 8040e84:	61fb      	str	r3, [r7, #28]
 8040e86:	2300      	movs	r3, #0
 8040e88:	623b      	str	r3, [r7, #32]
 8040e8a:	f107 0314 	add.w	r3, r7, #20
 8040e8e:	4619      	mov	r1, r3
 8040e90:	4811      	ldr	r0, [pc, #68]	@ (8040ed8 <MX_GPIO_Init+0x138>)
 8040e92:	f002 fce5 	bl	8043860 <HAL_GPIO_Init>
 8040e96:	2304      	movs	r3, #4
 8040e98:	617b      	str	r3, [r7, #20]
 8040e9a:	2300      	movs	r3, #0
 8040e9c:	61bb      	str	r3, [r7, #24]
 8040e9e:	2301      	movs	r3, #1
 8040ea0:	61fb      	str	r3, [r7, #28]
 8040ea2:	f107 0314 	add.w	r3, r7, #20
 8040ea6:	4619      	mov	r1, r3
 8040ea8:	480d      	ldr	r0, [pc, #52]	@ (8040ee0 <MX_GPIO_Init+0x140>)
 8040eaa:	f002 fcd9 	bl	8043860 <HAL_GPIO_Init>
 8040eae:	2308      	movs	r3, #8
 8040eb0:	617b      	str	r3, [r7, #20]
 8040eb2:	2300      	movs	r3, #0
 8040eb4:	61bb      	str	r3, [r7, #24]
 8040eb6:	2301      	movs	r3, #1
 8040eb8:	61fb      	str	r3, [r7, #28]
 8040eba:	f107 0314 	add.w	r3, r7, #20
 8040ebe:	4619      	mov	r1, r3
 8040ec0:	4808      	ldr	r0, [pc, #32]	@ (8040ee4 <MX_GPIO_Init+0x144>)
 8040ec2:	f002 fccd 	bl	8043860 <HAL_GPIO_Init>
 8040ec6:	bf00      	nop
 8040ec8:	3728      	adds	r7, #40	@ 0x28
 8040eca:	46bd      	mov	sp, r7
 8040ecc:	bd80      	pop	{r7, pc}
 8040ece:	bf00      	nop
 8040ed0:	40021000 	.word	0x40021000
 8040ed4:	42020000 	.word	0x42020000
 8040ed8:	42020400 	.word	0x42020400
 8040edc:	42020800 	.word	0x42020800
 8040ee0:	42021800 	.word	0x42021800
 8040ee4:	42020c00 	.word	0x42020c00

08040ee8 <MX_ICACHE_Init>:
 8040ee8:	b480      	push	{r7}
 8040eea:	af00      	add	r7, sp, #0
 8040eec:	bf00      	nop
 8040eee:	46bd      	mov	sp, r7
 8040ef0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040ef4:	4770      	bx	lr
	...

08040ef8 <__io_putchar>:
 8040ef8:	b580      	push	{r7, lr}
 8040efa:	b082      	sub	sp, #8
 8040efc:	af00      	add	r7, sp, #0
 8040efe:	6078      	str	r0, [r7, #4]
 8040f00:	1d39      	adds	r1, r7, #4
 8040f02:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8040f06:	2201      	movs	r2, #1
 8040f08:	4803      	ldr	r0, [pc, #12]	@ (8040f18 <__io_putchar+0x20>)
 8040f0a:	f005 fd29 	bl	8046960 <HAL_UART_Transmit>
 8040f0e:	687b      	ldr	r3, [r7, #4]
 8040f10:	4618      	mov	r0, r3
 8040f12:	3708      	adds	r7, #8
 8040f14:	46bd      	mov	sp, r7
 8040f16:	bd80      	pop	{r7, pc}
 8040f18:	2001a2f8 	.word	0x2001a2f8

08040f1c <func0>:
 8040f1c:	b480      	push	{r7}
 8040f1e:	af00      	add	r7, sp, #0
 8040f20:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8040f24:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 8040f28:	6801      	ldr	r1, [r0, #0]
 8040f2a:	6801      	ldr	r1, [r0, #0]
 8040f2c:	6801      	ldr	r1, [r0, #0]
 8040f2e:	6801      	ldr	r1, [r0, #0]
 8040f30:	6801      	ldr	r1, [r0, #0]
 8040f32:	6801      	ldr	r1, [r0, #0]
 8040f34:	6801      	ldr	r1, [r0, #0]
 8040f36:	6801      	ldr	r1, [r0, #0]
 8040f38:	6801      	ldr	r1, [r0, #0]
 8040f3a:	6801      	ldr	r1, [r0, #0]
 8040f3c:	6801      	ldr	r1, [r0, #0]
 8040f3e:	6801      	ldr	r1, [r0, #0]
 8040f40:	6801      	ldr	r1, [r0, #0]
 8040f42:	6801      	ldr	r1, [r0, #0]
 8040f44:	6801      	ldr	r1, [r0, #0]
 8040f46:	6801      	ldr	r1, [r0, #0]
 8040f48:	6801      	ldr	r1, [r0, #0]
 8040f4a:	6801      	ldr	r1, [r0, #0]
 8040f4c:	6801      	ldr	r1, [r0, #0]
 8040f4e:	6801      	ldr	r1, [r0, #0]
 8040f50:	6801      	ldr	r1, [r0, #0]
 8040f52:	6801      	ldr	r1, [r0, #0]
 8040f54:	6801      	ldr	r1, [r0, #0]
 8040f56:	6801      	ldr	r1, [r0, #0]
 8040f58:	6801      	ldr	r1, [r0, #0]
 8040f5a:	6801      	ldr	r1, [r0, #0]
 8040f5c:	6801      	ldr	r1, [r0, #0]
 8040f5e:	6801      	ldr	r1, [r0, #0]
 8040f60:	6801      	ldr	r1, [r0, #0]
 8040f62:	6801      	ldr	r1, [r0, #0]
 8040f64:	6801      	ldr	r1, [r0, #0]
 8040f66:	6801      	ldr	r1, [r0, #0]
 8040f68:	6801      	ldr	r1, [r0, #0]
 8040f6a:	6801      	ldr	r1, [r0, #0]
 8040f6c:	6801      	ldr	r1, [r0, #0]
 8040f6e:	6801      	ldr	r1, [r0, #0]
 8040f70:	6801      	ldr	r1, [r0, #0]
 8040f72:	6801      	ldr	r1, [r0, #0]
 8040f74:	6801      	ldr	r1, [r0, #0]
 8040f76:	6801      	ldr	r1, [r0, #0]
 8040f78:	6801      	ldr	r1, [r0, #0]
 8040f7a:	6801      	ldr	r1, [r0, #0]
 8040f7c:	6801      	ldr	r1, [r0, #0]
 8040f7e:	6801      	ldr	r1, [r0, #0]
 8040f80:	6801      	ldr	r1, [r0, #0]
 8040f82:	6801      	ldr	r1, [r0, #0]
 8040f84:	6801      	ldr	r1, [r0, #0]
 8040f86:	6801      	ldr	r1, [r0, #0]
 8040f88:	6801      	ldr	r1, [r0, #0]
 8040f8a:	6801      	ldr	r1, [r0, #0]
 8040f8c:	6801      	ldr	r1, [r0, #0]
 8040f8e:	6801      	ldr	r1, [r0, #0]
 8040f90:	6801      	ldr	r1, [r0, #0]
 8040f92:	6801      	ldr	r1, [r0, #0]
 8040f94:	6801      	ldr	r1, [r0, #0]
 8040f96:	6801      	ldr	r1, [r0, #0]
 8040f98:	6801      	ldr	r1, [r0, #0]
 8040f9a:	6801      	ldr	r1, [r0, #0]
 8040f9c:	6801      	ldr	r1, [r0, #0]
 8040f9e:	6801      	ldr	r1, [r0, #0]
 8040fa0:	6801      	ldr	r1, [r0, #0]
 8040fa2:	6801      	ldr	r1, [r0, #0]
 8040fa4:	6801      	ldr	r1, [r0, #0]
 8040fa6:	6801      	ldr	r1, [r0, #0]
 8040fa8:	6801      	ldr	r1, [r0, #0]
 8040faa:	6801      	ldr	r1, [r0, #0]
 8040fac:	6801      	ldr	r1, [r0, #0]
 8040fae:	6801      	ldr	r1, [r0, #0]
 8040fb0:	6801      	ldr	r1, [r0, #0]
 8040fb2:	6801      	ldr	r1, [r0, #0]
 8040fb4:	6801      	ldr	r1, [r0, #0]
 8040fb6:	6801      	ldr	r1, [r0, #0]
 8040fb8:	6801      	ldr	r1, [r0, #0]
 8040fba:	6801      	ldr	r1, [r0, #0]
 8040fbc:	6801      	ldr	r1, [r0, #0]
 8040fbe:	6801      	ldr	r1, [r0, #0]
 8040fc0:	6801      	ldr	r1, [r0, #0]
 8040fc2:	6801      	ldr	r1, [r0, #0]
 8040fc4:	6801      	ldr	r1, [r0, #0]
 8040fc6:	6801      	ldr	r1, [r0, #0]
 8040fc8:	6801      	ldr	r1, [r0, #0]
 8040fca:	6801      	ldr	r1, [r0, #0]
 8040fcc:	6801      	ldr	r1, [r0, #0]
 8040fce:	6801      	ldr	r1, [r0, #0]
 8040fd0:	6801      	ldr	r1, [r0, #0]
 8040fd2:	6801      	ldr	r1, [r0, #0]
 8040fd4:	6801      	ldr	r1, [r0, #0]
 8040fd6:	6801      	ldr	r1, [r0, #0]
 8040fd8:	6801      	ldr	r1, [r0, #0]
 8040fda:	6801      	ldr	r1, [r0, #0]
 8040fdc:	6801      	ldr	r1, [r0, #0]
 8040fde:	6801      	ldr	r1, [r0, #0]
 8040fe0:	6801      	ldr	r1, [r0, #0]
 8040fe2:	6801      	ldr	r1, [r0, #0]
 8040fe4:	6801      	ldr	r1, [r0, #0]
 8040fe6:	6801      	ldr	r1, [r0, #0]
 8040fe8:	6801      	ldr	r1, [r0, #0]
 8040fea:	6801      	ldr	r1, [r0, #0]
 8040fec:	6801      	ldr	r1, [r0, #0]
 8040fee:	6801      	ldr	r1, [r0, #0]
 8040ff0:	bf00      	nop
 8040ff2:	46bd      	mov	sp, r7
 8040ff4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040ff8:	4770      	bx	lr

08040ffa <func1>:
 8040ffa:	b480      	push	{r7}
 8040ffc:	af00      	add	r7, sp, #0
 8040ffe:	46c0      	nop			@ (mov r8, r8)
 8041000:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8041004:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 8041008:	6801      	ldr	r1, [r0, #0]
 804100a:	6801      	ldr	r1, [r0, #0]
 804100c:	6801      	ldr	r1, [r0, #0]
 804100e:	6801      	ldr	r1, [r0, #0]
 8041010:	6801      	ldr	r1, [r0, #0]
 8041012:	6801      	ldr	r1, [r0, #0]
 8041014:	6801      	ldr	r1, [r0, #0]
 8041016:	6801      	ldr	r1, [r0, #0]
 8041018:	6801      	ldr	r1, [r0, #0]
 804101a:	6801      	ldr	r1, [r0, #0]
 804101c:	6801      	ldr	r1, [r0, #0]
 804101e:	6801      	ldr	r1, [r0, #0]
 8041020:	6801      	ldr	r1, [r0, #0]
 8041022:	6801      	ldr	r1, [r0, #0]
 8041024:	6801      	ldr	r1, [r0, #0]
 8041026:	6801      	ldr	r1, [r0, #0]
 8041028:	6801      	ldr	r1, [r0, #0]
 804102a:	6801      	ldr	r1, [r0, #0]
 804102c:	6801      	ldr	r1, [r0, #0]
 804102e:	6801      	ldr	r1, [r0, #0]
 8041030:	6801      	ldr	r1, [r0, #0]
 8041032:	6801      	ldr	r1, [r0, #0]
 8041034:	6801      	ldr	r1, [r0, #0]
 8041036:	6801      	ldr	r1, [r0, #0]
 8041038:	6801      	ldr	r1, [r0, #0]
 804103a:	6801      	ldr	r1, [r0, #0]
 804103c:	6801      	ldr	r1, [r0, #0]
 804103e:	6801      	ldr	r1, [r0, #0]
 8041040:	6801      	ldr	r1, [r0, #0]
 8041042:	6801      	ldr	r1, [r0, #0]
 8041044:	6801      	ldr	r1, [r0, #0]
 8041046:	6801      	ldr	r1, [r0, #0]
 8041048:	6801      	ldr	r1, [r0, #0]
 804104a:	6801      	ldr	r1, [r0, #0]
 804104c:	6801      	ldr	r1, [r0, #0]
 804104e:	6801      	ldr	r1, [r0, #0]
 8041050:	6801      	ldr	r1, [r0, #0]
 8041052:	6801      	ldr	r1, [r0, #0]
 8041054:	6801      	ldr	r1, [r0, #0]
 8041056:	6801      	ldr	r1, [r0, #0]
 8041058:	6801      	ldr	r1, [r0, #0]
 804105a:	6801      	ldr	r1, [r0, #0]
 804105c:	6801      	ldr	r1, [r0, #0]
 804105e:	6801      	ldr	r1, [r0, #0]
 8041060:	6801      	ldr	r1, [r0, #0]
 8041062:	6801      	ldr	r1, [r0, #0]
 8041064:	6801      	ldr	r1, [r0, #0]
 8041066:	6801      	ldr	r1, [r0, #0]
 8041068:	6801      	ldr	r1, [r0, #0]
 804106a:	6801      	ldr	r1, [r0, #0]
 804106c:	6801      	ldr	r1, [r0, #0]
 804106e:	6801      	ldr	r1, [r0, #0]
 8041070:	6801      	ldr	r1, [r0, #0]
 8041072:	6801      	ldr	r1, [r0, #0]
 8041074:	6801      	ldr	r1, [r0, #0]
 8041076:	6801      	ldr	r1, [r0, #0]
 8041078:	6801      	ldr	r1, [r0, #0]
 804107a:	6801      	ldr	r1, [r0, #0]
 804107c:	6801      	ldr	r1, [r0, #0]
 804107e:	6801      	ldr	r1, [r0, #0]
 8041080:	6801      	ldr	r1, [r0, #0]
 8041082:	6801      	ldr	r1, [r0, #0]
 8041084:	6801      	ldr	r1, [r0, #0]
 8041086:	6801      	ldr	r1, [r0, #0]
 8041088:	6801      	ldr	r1, [r0, #0]
 804108a:	6801      	ldr	r1, [r0, #0]
 804108c:	6801      	ldr	r1, [r0, #0]
 804108e:	6801      	ldr	r1, [r0, #0]
 8041090:	6801      	ldr	r1, [r0, #0]
 8041092:	6801      	ldr	r1, [r0, #0]
 8041094:	6801      	ldr	r1, [r0, #0]
 8041096:	6801      	ldr	r1, [r0, #0]
 8041098:	6801      	ldr	r1, [r0, #0]
 804109a:	6801      	ldr	r1, [r0, #0]
 804109c:	6801      	ldr	r1, [r0, #0]
 804109e:	6801      	ldr	r1, [r0, #0]
 80410a0:	6801      	ldr	r1, [r0, #0]
 80410a2:	6801      	ldr	r1, [r0, #0]
 80410a4:	6801      	ldr	r1, [r0, #0]
 80410a6:	6801      	ldr	r1, [r0, #0]
 80410a8:	6801      	ldr	r1, [r0, #0]
 80410aa:	6801      	ldr	r1, [r0, #0]
 80410ac:	6801      	ldr	r1, [r0, #0]
 80410ae:	6801      	ldr	r1, [r0, #0]
 80410b0:	6801      	ldr	r1, [r0, #0]
 80410b2:	6801      	ldr	r1, [r0, #0]
 80410b4:	6801      	ldr	r1, [r0, #0]
 80410b6:	6801      	ldr	r1, [r0, #0]
 80410b8:	6801      	ldr	r1, [r0, #0]
 80410ba:	6801      	ldr	r1, [r0, #0]
 80410bc:	6801      	ldr	r1, [r0, #0]
 80410be:	6801      	ldr	r1, [r0, #0]
 80410c0:	6801      	ldr	r1, [r0, #0]
 80410c2:	6801      	ldr	r1, [r0, #0]
 80410c4:	6801      	ldr	r1, [r0, #0]
 80410c6:	6801      	ldr	r1, [r0, #0]
 80410c8:	6801      	ldr	r1, [r0, #0]
 80410ca:	6801      	ldr	r1, [r0, #0]
 80410cc:	6801      	ldr	r1, [r0, #0]
 80410ce:	6801      	ldr	r1, [r0, #0]
 80410d0:	bf00      	nop
 80410d2:	46bd      	mov	sp, r7
 80410d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80410d8:	4770      	bx	lr

080410da <func2>:
 80410da:	b480      	push	{r7}
 80410dc:	af00      	add	r7, sp, #0
 80410de:	46c0      	nop			@ (mov r8, r8)
 80410e0:	46c0      	nop			@ (mov r8, r8)
 80410e2:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 80410e6:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 80410ea:	6801      	ldr	r1, [r0, #0]
 80410ec:	6801      	ldr	r1, [r0, #0]
 80410ee:	6801      	ldr	r1, [r0, #0]
 80410f0:	6801      	ldr	r1, [r0, #0]
 80410f2:	6801      	ldr	r1, [r0, #0]
 80410f4:	6801      	ldr	r1, [r0, #0]
 80410f6:	6801      	ldr	r1, [r0, #0]
 80410f8:	6801      	ldr	r1, [r0, #0]
 80410fa:	6801      	ldr	r1, [r0, #0]
 80410fc:	6801      	ldr	r1, [r0, #0]
 80410fe:	6801      	ldr	r1, [r0, #0]
 8041100:	6801      	ldr	r1, [r0, #0]
 8041102:	6801      	ldr	r1, [r0, #0]
 8041104:	6801      	ldr	r1, [r0, #0]
 8041106:	6801      	ldr	r1, [r0, #0]
 8041108:	6801      	ldr	r1, [r0, #0]
 804110a:	6801      	ldr	r1, [r0, #0]
 804110c:	6801      	ldr	r1, [r0, #0]
 804110e:	6801      	ldr	r1, [r0, #0]
 8041110:	6801      	ldr	r1, [r0, #0]
 8041112:	6801      	ldr	r1, [r0, #0]
 8041114:	6801      	ldr	r1, [r0, #0]
 8041116:	6801      	ldr	r1, [r0, #0]
 8041118:	6801      	ldr	r1, [r0, #0]
 804111a:	6801      	ldr	r1, [r0, #0]
 804111c:	6801      	ldr	r1, [r0, #0]
 804111e:	6801      	ldr	r1, [r0, #0]
 8041120:	6801      	ldr	r1, [r0, #0]
 8041122:	6801      	ldr	r1, [r0, #0]
 8041124:	6801      	ldr	r1, [r0, #0]
 8041126:	6801      	ldr	r1, [r0, #0]
 8041128:	6801      	ldr	r1, [r0, #0]
 804112a:	6801      	ldr	r1, [r0, #0]
 804112c:	6801      	ldr	r1, [r0, #0]
 804112e:	6801      	ldr	r1, [r0, #0]
 8041130:	6801      	ldr	r1, [r0, #0]
 8041132:	6801      	ldr	r1, [r0, #0]
 8041134:	6801      	ldr	r1, [r0, #0]
 8041136:	6801      	ldr	r1, [r0, #0]
 8041138:	6801      	ldr	r1, [r0, #0]
 804113a:	6801      	ldr	r1, [r0, #0]
 804113c:	6801      	ldr	r1, [r0, #0]
 804113e:	6801      	ldr	r1, [r0, #0]
 8041140:	6801      	ldr	r1, [r0, #0]
 8041142:	6801      	ldr	r1, [r0, #0]
 8041144:	6801      	ldr	r1, [r0, #0]
 8041146:	6801      	ldr	r1, [r0, #0]
 8041148:	6801      	ldr	r1, [r0, #0]
 804114a:	6801      	ldr	r1, [r0, #0]
 804114c:	6801      	ldr	r1, [r0, #0]
 804114e:	6801      	ldr	r1, [r0, #0]
 8041150:	6801      	ldr	r1, [r0, #0]
 8041152:	6801      	ldr	r1, [r0, #0]
 8041154:	6801      	ldr	r1, [r0, #0]
 8041156:	6801      	ldr	r1, [r0, #0]
 8041158:	6801      	ldr	r1, [r0, #0]
 804115a:	6801      	ldr	r1, [r0, #0]
 804115c:	6801      	ldr	r1, [r0, #0]
 804115e:	6801      	ldr	r1, [r0, #0]
 8041160:	6801      	ldr	r1, [r0, #0]
 8041162:	6801      	ldr	r1, [r0, #0]
 8041164:	6801      	ldr	r1, [r0, #0]
 8041166:	6801      	ldr	r1, [r0, #0]
 8041168:	6801      	ldr	r1, [r0, #0]
 804116a:	6801      	ldr	r1, [r0, #0]
 804116c:	6801      	ldr	r1, [r0, #0]
 804116e:	6801      	ldr	r1, [r0, #0]
 8041170:	6801      	ldr	r1, [r0, #0]
 8041172:	6801      	ldr	r1, [r0, #0]
 8041174:	6801      	ldr	r1, [r0, #0]
 8041176:	6801      	ldr	r1, [r0, #0]
 8041178:	6801      	ldr	r1, [r0, #0]
 804117a:	6801      	ldr	r1, [r0, #0]
 804117c:	6801      	ldr	r1, [r0, #0]
 804117e:	6801      	ldr	r1, [r0, #0]
 8041180:	6801      	ldr	r1, [r0, #0]
 8041182:	6801      	ldr	r1, [r0, #0]
 8041184:	6801      	ldr	r1, [r0, #0]
 8041186:	6801      	ldr	r1, [r0, #0]
 8041188:	6801      	ldr	r1, [r0, #0]
 804118a:	6801      	ldr	r1, [r0, #0]
 804118c:	6801      	ldr	r1, [r0, #0]
 804118e:	6801      	ldr	r1, [r0, #0]
 8041190:	6801      	ldr	r1, [r0, #0]
 8041192:	6801      	ldr	r1, [r0, #0]
 8041194:	6801      	ldr	r1, [r0, #0]
 8041196:	6801      	ldr	r1, [r0, #0]
 8041198:	6801      	ldr	r1, [r0, #0]
 804119a:	6801      	ldr	r1, [r0, #0]
 804119c:	6801      	ldr	r1, [r0, #0]
 804119e:	6801      	ldr	r1, [r0, #0]
 80411a0:	6801      	ldr	r1, [r0, #0]
 80411a2:	6801      	ldr	r1, [r0, #0]
 80411a4:	6801      	ldr	r1, [r0, #0]
 80411a6:	6801      	ldr	r1, [r0, #0]
 80411a8:	6801      	ldr	r1, [r0, #0]
 80411aa:	6801      	ldr	r1, [r0, #0]
 80411ac:	6801      	ldr	r1, [r0, #0]
 80411ae:	6801      	ldr	r1, [r0, #0]
 80411b0:	6801      	ldr	r1, [r0, #0]
 80411b2:	bf00      	nop
 80411b4:	46bd      	mov	sp, r7
 80411b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80411ba:	4770      	bx	lr

080411bc <func3>:
 80411bc:	b480      	push	{r7}
 80411be:	af00      	add	r7, sp, #0
 80411c0:	46c0      	nop			@ (mov r8, r8)
 80411c2:	46c0      	nop			@ (mov r8, r8)
 80411c4:	46c0      	nop			@ (mov r8, r8)
 80411c6:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 80411ca:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 80411ce:	6801      	ldr	r1, [r0, #0]
 80411d0:	6801      	ldr	r1, [r0, #0]
 80411d2:	6801      	ldr	r1, [r0, #0]
 80411d4:	6801      	ldr	r1, [r0, #0]
 80411d6:	6801      	ldr	r1, [r0, #0]
 80411d8:	6801      	ldr	r1, [r0, #0]
 80411da:	6801      	ldr	r1, [r0, #0]
 80411dc:	6801      	ldr	r1, [r0, #0]
 80411de:	6801      	ldr	r1, [r0, #0]
 80411e0:	6801      	ldr	r1, [r0, #0]
 80411e2:	6801      	ldr	r1, [r0, #0]
 80411e4:	6801      	ldr	r1, [r0, #0]
 80411e6:	6801      	ldr	r1, [r0, #0]
 80411e8:	6801      	ldr	r1, [r0, #0]
 80411ea:	6801      	ldr	r1, [r0, #0]
 80411ec:	6801      	ldr	r1, [r0, #0]
 80411ee:	6801      	ldr	r1, [r0, #0]
 80411f0:	6801      	ldr	r1, [r0, #0]
 80411f2:	6801      	ldr	r1, [r0, #0]
 80411f4:	6801      	ldr	r1, [r0, #0]
 80411f6:	6801      	ldr	r1, [r0, #0]
 80411f8:	6801      	ldr	r1, [r0, #0]
 80411fa:	6801      	ldr	r1, [r0, #0]
 80411fc:	6801      	ldr	r1, [r0, #0]
 80411fe:	6801      	ldr	r1, [r0, #0]
 8041200:	6801      	ldr	r1, [r0, #0]
 8041202:	6801      	ldr	r1, [r0, #0]
 8041204:	6801      	ldr	r1, [r0, #0]
 8041206:	6801      	ldr	r1, [r0, #0]
 8041208:	6801      	ldr	r1, [r0, #0]
 804120a:	6801      	ldr	r1, [r0, #0]
 804120c:	6801      	ldr	r1, [r0, #0]
 804120e:	6801      	ldr	r1, [r0, #0]
 8041210:	6801      	ldr	r1, [r0, #0]
 8041212:	6801      	ldr	r1, [r0, #0]
 8041214:	6801      	ldr	r1, [r0, #0]
 8041216:	6801      	ldr	r1, [r0, #0]
 8041218:	6801      	ldr	r1, [r0, #0]
 804121a:	6801      	ldr	r1, [r0, #0]
 804121c:	6801      	ldr	r1, [r0, #0]
 804121e:	6801      	ldr	r1, [r0, #0]
 8041220:	6801      	ldr	r1, [r0, #0]
 8041222:	6801      	ldr	r1, [r0, #0]
 8041224:	6801      	ldr	r1, [r0, #0]
 8041226:	6801      	ldr	r1, [r0, #0]
 8041228:	6801      	ldr	r1, [r0, #0]
 804122a:	6801      	ldr	r1, [r0, #0]
 804122c:	6801      	ldr	r1, [r0, #0]
 804122e:	6801      	ldr	r1, [r0, #0]
 8041230:	6801      	ldr	r1, [r0, #0]
 8041232:	6801      	ldr	r1, [r0, #0]
 8041234:	6801      	ldr	r1, [r0, #0]
 8041236:	6801      	ldr	r1, [r0, #0]
 8041238:	6801      	ldr	r1, [r0, #0]
 804123a:	6801      	ldr	r1, [r0, #0]
 804123c:	6801      	ldr	r1, [r0, #0]
 804123e:	6801      	ldr	r1, [r0, #0]
 8041240:	6801      	ldr	r1, [r0, #0]
 8041242:	6801      	ldr	r1, [r0, #0]
 8041244:	6801      	ldr	r1, [r0, #0]
 8041246:	6801      	ldr	r1, [r0, #0]
 8041248:	6801      	ldr	r1, [r0, #0]
 804124a:	6801      	ldr	r1, [r0, #0]
 804124c:	6801      	ldr	r1, [r0, #0]
 804124e:	6801      	ldr	r1, [r0, #0]
 8041250:	6801      	ldr	r1, [r0, #0]
 8041252:	6801      	ldr	r1, [r0, #0]
 8041254:	6801      	ldr	r1, [r0, #0]
 8041256:	6801      	ldr	r1, [r0, #0]
 8041258:	6801      	ldr	r1, [r0, #0]
 804125a:	6801      	ldr	r1, [r0, #0]
 804125c:	6801      	ldr	r1, [r0, #0]
 804125e:	6801      	ldr	r1, [r0, #0]
 8041260:	6801      	ldr	r1, [r0, #0]
 8041262:	6801      	ldr	r1, [r0, #0]
 8041264:	6801      	ldr	r1, [r0, #0]
 8041266:	6801      	ldr	r1, [r0, #0]
 8041268:	6801      	ldr	r1, [r0, #0]
 804126a:	6801      	ldr	r1, [r0, #0]
 804126c:	6801      	ldr	r1, [r0, #0]
 804126e:	6801      	ldr	r1, [r0, #0]
 8041270:	6801      	ldr	r1, [r0, #0]
 8041272:	6801      	ldr	r1, [r0, #0]
 8041274:	6801      	ldr	r1, [r0, #0]
 8041276:	6801      	ldr	r1, [r0, #0]
 8041278:	6801      	ldr	r1, [r0, #0]
 804127a:	6801      	ldr	r1, [r0, #0]
 804127c:	6801      	ldr	r1, [r0, #0]
 804127e:	6801      	ldr	r1, [r0, #0]
 8041280:	6801      	ldr	r1, [r0, #0]
 8041282:	6801      	ldr	r1, [r0, #0]
 8041284:	6801      	ldr	r1, [r0, #0]
 8041286:	6801      	ldr	r1, [r0, #0]
 8041288:	6801      	ldr	r1, [r0, #0]
 804128a:	6801      	ldr	r1, [r0, #0]
 804128c:	6801      	ldr	r1, [r0, #0]
 804128e:	6801      	ldr	r1, [r0, #0]
 8041290:	6801      	ldr	r1, [r0, #0]
 8041292:	6801      	ldr	r1, [r0, #0]
 8041294:	6801      	ldr	r1, [r0, #0]
 8041296:	bf00      	nop
 8041298:	46bd      	mov	sp, r7
 804129a:	f85d 7b04 	ldr.w	r7, [sp], #4
 804129e:	4770      	bx	lr

080412a0 <func4>:
 80412a0:	b480      	push	{r7}
 80412a2:	af00      	add	r7, sp, #0
 80412a4:	46c0      	nop			@ (mov r8, r8)
 80412a6:	46c0      	nop			@ (mov r8, r8)
 80412a8:	46c0      	nop			@ (mov r8, r8)
 80412aa:	46c0      	nop			@ (mov r8, r8)
 80412ac:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 80412b0:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 80412b4:	6801      	ldr	r1, [r0, #0]
 80412b6:	6801      	ldr	r1, [r0, #0]
 80412b8:	6801      	ldr	r1, [r0, #0]
 80412ba:	6801      	ldr	r1, [r0, #0]
 80412bc:	6801      	ldr	r1, [r0, #0]
 80412be:	6801      	ldr	r1, [r0, #0]
 80412c0:	6801      	ldr	r1, [r0, #0]
 80412c2:	6801      	ldr	r1, [r0, #0]
 80412c4:	6801      	ldr	r1, [r0, #0]
 80412c6:	6801      	ldr	r1, [r0, #0]
 80412c8:	6801      	ldr	r1, [r0, #0]
 80412ca:	6801      	ldr	r1, [r0, #0]
 80412cc:	6801      	ldr	r1, [r0, #0]
 80412ce:	6801      	ldr	r1, [r0, #0]
 80412d0:	6801      	ldr	r1, [r0, #0]
 80412d2:	6801      	ldr	r1, [r0, #0]
 80412d4:	6801      	ldr	r1, [r0, #0]
 80412d6:	6801      	ldr	r1, [r0, #0]
 80412d8:	6801      	ldr	r1, [r0, #0]
 80412da:	6801      	ldr	r1, [r0, #0]
 80412dc:	6801      	ldr	r1, [r0, #0]
 80412de:	6801      	ldr	r1, [r0, #0]
 80412e0:	6801      	ldr	r1, [r0, #0]
 80412e2:	6801      	ldr	r1, [r0, #0]
 80412e4:	6801      	ldr	r1, [r0, #0]
 80412e6:	6801      	ldr	r1, [r0, #0]
 80412e8:	6801      	ldr	r1, [r0, #0]
 80412ea:	6801      	ldr	r1, [r0, #0]
 80412ec:	6801      	ldr	r1, [r0, #0]
 80412ee:	6801      	ldr	r1, [r0, #0]
 80412f0:	6801      	ldr	r1, [r0, #0]
 80412f2:	6801      	ldr	r1, [r0, #0]
 80412f4:	6801      	ldr	r1, [r0, #0]
 80412f6:	6801      	ldr	r1, [r0, #0]
 80412f8:	6801      	ldr	r1, [r0, #0]
 80412fa:	6801      	ldr	r1, [r0, #0]
 80412fc:	6801      	ldr	r1, [r0, #0]
 80412fe:	6801      	ldr	r1, [r0, #0]
 8041300:	6801      	ldr	r1, [r0, #0]
 8041302:	6801      	ldr	r1, [r0, #0]
 8041304:	6801      	ldr	r1, [r0, #0]
 8041306:	6801      	ldr	r1, [r0, #0]
 8041308:	6801      	ldr	r1, [r0, #0]
 804130a:	6801      	ldr	r1, [r0, #0]
 804130c:	6801      	ldr	r1, [r0, #0]
 804130e:	6801      	ldr	r1, [r0, #0]
 8041310:	6801      	ldr	r1, [r0, #0]
 8041312:	6801      	ldr	r1, [r0, #0]
 8041314:	6801      	ldr	r1, [r0, #0]
 8041316:	6801      	ldr	r1, [r0, #0]
 8041318:	6801      	ldr	r1, [r0, #0]
 804131a:	6801      	ldr	r1, [r0, #0]
 804131c:	6801      	ldr	r1, [r0, #0]
 804131e:	6801      	ldr	r1, [r0, #0]
 8041320:	6801      	ldr	r1, [r0, #0]
 8041322:	6801      	ldr	r1, [r0, #0]
 8041324:	6801      	ldr	r1, [r0, #0]
 8041326:	6801      	ldr	r1, [r0, #0]
 8041328:	6801      	ldr	r1, [r0, #0]
 804132a:	6801      	ldr	r1, [r0, #0]
 804132c:	6801      	ldr	r1, [r0, #0]
 804132e:	6801      	ldr	r1, [r0, #0]
 8041330:	6801      	ldr	r1, [r0, #0]
 8041332:	6801      	ldr	r1, [r0, #0]
 8041334:	6801      	ldr	r1, [r0, #0]
 8041336:	6801      	ldr	r1, [r0, #0]
 8041338:	6801      	ldr	r1, [r0, #0]
 804133a:	6801      	ldr	r1, [r0, #0]
 804133c:	6801      	ldr	r1, [r0, #0]
 804133e:	6801      	ldr	r1, [r0, #0]
 8041340:	6801      	ldr	r1, [r0, #0]
 8041342:	6801      	ldr	r1, [r0, #0]
 8041344:	6801      	ldr	r1, [r0, #0]
 8041346:	6801      	ldr	r1, [r0, #0]
 8041348:	6801      	ldr	r1, [r0, #0]
 804134a:	6801      	ldr	r1, [r0, #0]
 804134c:	6801      	ldr	r1, [r0, #0]
 804134e:	6801      	ldr	r1, [r0, #0]
 8041350:	6801      	ldr	r1, [r0, #0]
 8041352:	6801      	ldr	r1, [r0, #0]
 8041354:	6801      	ldr	r1, [r0, #0]
 8041356:	6801      	ldr	r1, [r0, #0]
 8041358:	6801      	ldr	r1, [r0, #0]
 804135a:	6801      	ldr	r1, [r0, #0]
 804135c:	6801      	ldr	r1, [r0, #0]
 804135e:	6801      	ldr	r1, [r0, #0]
 8041360:	6801      	ldr	r1, [r0, #0]
 8041362:	6801      	ldr	r1, [r0, #0]
 8041364:	6801      	ldr	r1, [r0, #0]
 8041366:	6801      	ldr	r1, [r0, #0]
 8041368:	bf00      	nop
 804136a:	46bd      	mov	sp, r7
 804136c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041370:	4770      	bx	lr

08041372 <func5>:
 8041372:	b480      	push	{r7}
 8041374:	af00      	add	r7, sp, #0
 8041376:	46c0      	nop			@ (mov r8, r8)
 8041378:	46c0      	nop			@ (mov r8, r8)
 804137a:	46c0      	nop			@ (mov r8, r8)
 804137c:	46c0      	nop			@ (mov r8, r8)
 804137e:	46c0      	nop			@ (mov r8, r8)
 8041380:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8041384:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 8041388:	6801      	ldr	r1, [r0, #0]
 804138a:	6801      	ldr	r1, [r0, #0]
 804138c:	6801      	ldr	r1, [r0, #0]
 804138e:	6801      	ldr	r1, [r0, #0]
 8041390:	6801      	ldr	r1, [r0, #0]
 8041392:	6801      	ldr	r1, [r0, #0]
 8041394:	6801      	ldr	r1, [r0, #0]
 8041396:	6801      	ldr	r1, [r0, #0]
 8041398:	6801      	ldr	r1, [r0, #0]
 804139a:	6801      	ldr	r1, [r0, #0]
 804139c:	6801      	ldr	r1, [r0, #0]
 804139e:	6801      	ldr	r1, [r0, #0]
 80413a0:	6801      	ldr	r1, [r0, #0]
 80413a2:	6801      	ldr	r1, [r0, #0]
 80413a4:	6801      	ldr	r1, [r0, #0]
 80413a6:	6801      	ldr	r1, [r0, #0]
 80413a8:	6801      	ldr	r1, [r0, #0]
 80413aa:	6801      	ldr	r1, [r0, #0]
 80413ac:	6801      	ldr	r1, [r0, #0]
 80413ae:	6801      	ldr	r1, [r0, #0]
 80413b0:	6801      	ldr	r1, [r0, #0]
 80413b2:	6801      	ldr	r1, [r0, #0]
 80413b4:	6801      	ldr	r1, [r0, #0]
 80413b6:	6801      	ldr	r1, [r0, #0]
 80413b8:	6801      	ldr	r1, [r0, #0]
 80413ba:	6801      	ldr	r1, [r0, #0]
 80413bc:	6801      	ldr	r1, [r0, #0]
 80413be:	6801      	ldr	r1, [r0, #0]
 80413c0:	6801      	ldr	r1, [r0, #0]
 80413c2:	6801      	ldr	r1, [r0, #0]
 80413c4:	6801      	ldr	r1, [r0, #0]
 80413c6:	6801      	ldr	r1, [r0, #0]
 80413c8:	6801      	ldr	r1, [r0, #0]
 80413ca:	6801      	ldr	r1, [r0, #0]
 80413cc:	6801      	ldr	r1, [r0, #0]
 80413ce:	6801      	ldr	r1, [r0, #0]
 80413d0:	6801      	ldr	r1, [r0, #0]
 80413d2:	6801      	ldr	r1, [r0, #0]
 80413d4:	6801      	ldr	r1, [r0, #0]
 80413d6:	6801      	ldr	r1, [r0, #0]
 80413d8:	6801      	ldr	r1, [r0, #0]
 80413da:	6801      	ldr	r1, [r0, #0]
 80413dc:	6801      	ldr	r1, [r0, #0]
 80413de:	6801      	ldr	r1, [r0, #0]
 80413e0:	6801      	ldr	r1, [r0, #0]
 80413e2:	6801      	ldr	r1, [r0, #0]
 80413e4:	6801      	ldr	r1, [r0, #0]
 80413e6:	6801      	ldr	r1, [r0, #0]
 80413e8:	6801      	ldr	r1, [r0, #0]
 80413ea:	6801      	ldr	r1, [r0, #0]
 80413ec:	6801      	ldr	r1, [r0, #0]
 80413ee:	6801      	ldr	r1, [r0, #0]
 80413f0:	6801      	ldr	r1, [r0, #0]
 80413f2:	6801      	ldr	r1, [r0, #0]
 80413f4:	6801      	ldr	r1, [r0, #0]
 80413f6:	6801      	ldr	r1, [r0, #0]
 80413f8:	6801      	ldr	r1, [r0, #0]
 80413fa:	6801      	ldr	r1, [r0, #0]
 80413fc:	6801      	ldr	r1, [r0, #0]
 80413fe:	6801      	ldr	r1, [r0, #0]
 8041400:	6801      	ldr	r1, [r0, #0]
 8041402:	6801      	ldr	r1, [r0, #0]
 8041404:	6801      	ldr	r1, [r0, #0]
 8041406:	6801      	ldr	r1, [r0, #0]
 8041408:	6801      	ldr	r1, [r0, #0]
 804140a:	6801      	ldr	r1, [r0, #0]
 804140c:	6801      	ldr	r1, [r0, #0]
 804140e:	6801      	ldr	r1, [r0, #0]
 8041410:	6801      	ldr	r1, [r0, #0]
 8041412:	6801      	ldr	r1, [r0, #0]
 8041414:	6801      	ldr	r1, [r0, #0]
 8041416:	6801      	ldr	r1, [r0, #0]
 8041418:	6801      	ldr	r1, [r0, #0]
 804141a:	6801      	ldr	r1, [r0, #0]
 804141c:	6801      	ldr	r1, [r0, #0]
 804141e:	6801      	ldr	r1, [r0, #0]
 8041420:	6801      	ldr	r1, [r0, #0]
 8041422:	6801      	ldr	r1, [r0, #0]
 8041424:	6801      	ldr	r1, [r0, #0]
 8041426:	6801      	ldr	r1, [r0, #0]
 8041428:	6801      	ldr	r1, [r0, #0]
 804142a:	6801      	ldr	r1, [r0, #0]
 804142c:	6801      	ldr	r1, [r0, #0]
 804142e:	6801      	ldr	r1, [r0, #0]
 8041430:	6801      	ldr	r1, [r0, #0]
 8041432:	6801      	ldr	r1, [r0, #0]
 8041434:	6801      	ldr	r1, [r0, #0]
 8041436:	6801      	ldr	r1, [r0, #0]
 8041438:	6801      	ldr	r1, [r0, #0]
 804143a:	6801      	ldr	r1, [r0, #0]
 804143c:	bf00      	nop
 804143e:	46bd      	mov	sp, r7
 8041440:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041444:	4770      	bx	lr

08041446 <func6>:
 8041446:	b480      	push	{r7}
 8041448:	af00      	add	r7, sp, #0
 804144a:	46c0      	nop			@ (mov r8, r8)
 804144c:	46c0      	nop			@ (mov r8, r8)
 804144e:	46c0      	nop			@ (mov r8, r8)
 8041450:	46c0      	nop			@ (mov r8, r8)
 8041452:	46c0      	nop			@ (mov r8, r8)
 8041454:	46c0      	nop			@ (mov r8, r8)
 8041456:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 804145a:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 804145e:	6801      	ldr	r1, [r0, #0]
 8041460:	6801      	ldr	r1, [r0, #0]
 8041462:	6801      	ldr	r1, [r0, #0]
 8041464:	6801      	ldr	r1, [r0, #0]
 8041466:	6801      	ldr	r1, [r0, #0]
 8041468:	6801      	ldr	r1, [r0, #0]
 804146a:	6801      	ldr	r1, [r0, #0]
 804146c:	6801      	ldr	r1, [r0, #0]
 804146e:	6801      	ldr	r1, [r0, #0]
 8041470:	6801      	ldr	r1, [r0, #0]
 8041472:	6801      	ldr	r1, [r0, #0]
 8041474:	6801      	ldr	r1, [r0, #0]
 8041476:	6801      	ldr	r1, [r0, #0]
 8041478:	6801      	ldr	r1, [r0, #0]
 804147a:	6801      	ldr	r1, [r0, #0]
 804147c:	6801      	ldr	r1, [r0, #0]
 804147e:	6801      	ldr	r1, [r0, #0]
 8041480:	6801      	ldr	r1, [r0, #0]
 8041482:	6801      	ldr	r1, [r0, #0]
 8041484:	6801      	ldr	r1, [r0, #0]
 8041486:	6801      	ldr	r1, [r0, #0]
 8041488:	6801      	ldr	r1, [r0, #0]
 804148a:	6801      	ldr	r1, [r0, #0]
 804148c:	6801      	ldr	r1, [r0, #0]
 804148e:	6801      	ldr	r1, [r0, #0]
 8041490:	6801      	ldr	r1, [r0, #0]
 8041492:	6801      	ldr	r1, [r0, #0]
 8041494:	6801      	ldr	r1, [r0, #0]
 8041496:	6801      	ldr	r1, [r0, #0]
 8041498:	6801      	ldr	r1, [r0, #0]
 804149a:	6801      	ldr	r1, [r0, #0]
 804149c:	6801      	ldr	r1, [r0, #0]
 804149e:	6801      	ldr	r1, [r0, #0]
 80414a0:	6801      	ldr	r1, [r0, #0]
 80414a2:	6801      	ldr	r1, [r0, #0]
 80414a4:	6801      	ldr	r1, [r0, #0]
 80414a6:	6801      	ldr	r1, [r0, #0]
 80414a8:	6801      	ldr	r1, [r0, #0]
 80414aa:	6801      	ldr	r1, [r0, #0]
 80414ac:	6801      	ldr	r1, [r0, #0]
 80414ae:	6801      	ldr	r1, [r0, #0]
 80414b0:	6801      	ldr	r1, [r0, #0]
 80414b2:	6801      	ldr	r1, [r0, #0]
 80414b4:	6801      	ldr	r1, [r0, #0]
 80414b6:	6801      	ldr	r1, [r0, #0]
 80414b8:	6801      	ldr	r1, [r0, #0]
 80414ba:	6801      	ldr	r1, [r0, #0]
 80414bc:	6801      	ldr	r1, [r0, #0]
 80414be:	6801      	ldr	r1, [r0, #0]
 80414c0:	6801      	ldr	r1, [r0, #0]
 80414c2:	6801      	ldr	r1, [r0, #0]
 80414c4:	6801      	ldr	r1, [r0, #0]
 80414c6:	6801      	ldr	r1, [r0, #0]
 80414c8:	6801      	ldr	r1, [r0, #0]
 80414ca:	6801      	ldr	r1, [r0, #0]
 80414cc:	6801      	ldr	r1, [r0, #0]
 80414ce:	6801      	ldr	r1, [r0, #0]
 80414d0:	6801      	ldr	r1, [r0, #0]
 80414d2:	6801      	ldr	r1, [r0, #0]
 80414d4:	6801      	ldr	r1, [r0, #0]
 80414d6:	6801      	ldr	r1, [r0, #0]
 80414d8:	6801      	ldr	r1, [r0, #0]
 80414da:	6801      	ldr	r1, [r0, #0]
 80414dc:	6801      	ldr	r1, [r0, #0]
 80414de:	6801      	ldr	r1, [r0, #0]
 80414e0:	6801      	ldr	r1, [r0, #0]
 80414e2:	6801      	ldr	r1, [r0, #0]
 80414e4:	6801      	ldr	r1, [r0, #0]
 80414e6:	6801      	ldr	r1, [r0, #0]
 80414e8:	6801      	ldr	r1, [r0, #0]
 80414ea:	6801      	ldr	r1, [r0, #0]
 80414ec:	6801      	ldr	r1, [r0, #0]
 80414ee:	6801      	ldr	r1, [r0, #0]
 80414f0:	6801      	ldr	r1, [r0, #0]
 80414f2:	6801      	ldr	r1, [r0, #0]
 80414f4:	6801      	ldr	r1, [r0, #0]
 80414f6:	6801      	ldr	r1, [r0, #0]
 80414f8:	6801      	ldr	r1, [r0, #0]
 80414fa:	6801      	ldr	r1, [r0, #0]
 80414fc:	6801      	ldr	r1, [r0, #0]
 80414fe:	6801      	ldr	r1, [r0, #0]
 8041500:	6801      	ldr	r1, [r0, #0]
 8041502:	6801      	ldr	r1, [r0, #0]
 8041504:	6801      	ldr	r1, [r0, #0]
 8041506:	6801      	ldr	r1, [r0, #0]
 8041508:	6801      	ldr	r1, [r0, #0]
 804150a:	6801      	ldr	r1, [r0, #0]
 804150c:	6801      	ldr	r1, [r0, #0]
 804150e:	6801      	ldr	r1, [r0, #0]
 8041510:	6801      	ldr	r1, [r0, #0]
 8041512:	bf00      	nop
 8041514:	46bd      	mov	sp, r7
 8041516:	f85d 7b04 	ldr.w	r7, [sp], #4
 804151a:	4770      	bx	lr

0804151c <func7>:
 804151c:	b480      	push	{r7}
 804151e:	af00      	add	r7, sp, #0
 8041520:	46c0      	nop			@ (mov r8, r8)
 8041522:	46c0      	nop			@ (mov r8, r8)
 8041524:	46c0      	nop			@ (mov r8, r8)
 8041526:	46c0      	nop			@ (mov r8, r8)
 8041528:	46c0      	nop			@ (mov r8, r8)
 804152a:	46c0      	nop			@ (mov r8, r8)
 804152c:	46c0      	nop			@ (mov r8, r8)
 804152e:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8041532:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 8041536:	6801      	ldr	r1, [r0, #0]
 8041538:	6801      	ldr	r1, [r0, #0]
 804153a:	6801      	ldr	r1, [r0, #0]
 804153c:	6801      	ldr	r1, [r0, #0]
 804153e:	6801      	ldr	r1, [r0, #0]
 8041540:	6801      	ldr	r1, [r0, #0]
 8041542:	6801      	ldr	r1, [r0, #0]
 8041544:	6801      	ldr	r1, [r0, #0]
 8041546:	6801      	ldr	r1, [r0, #0]
 8041548:	6801      	ldr	r1, [r0, #0]
 804154a:	6801      	ldr	r1, [r0, #0]
 804154c:	6801      	ldr	r1, [r0, #0]
 804154e:	6801      	ldr	r1, [r0, #0]
 8041550:	6801      	ldr	r1, [r0, #0]
 8041552:	6801      	ldr	r1, [r0, #0]
 8041554:	6801      	ldr	r1, [r0, #0]
 8041556:	6801      	ldr	r1, [r0, #0]
 8041558:	6801      	ldr	r1, [r0, #0]
 804155a:	6801      	ldr	r1, [r0, #0]
 804155c:	6801      	ldr	r1, [r0, #0]
 804155e:	6801      	ldr	r1, [r0, #0]
 8041560:	6801      	ldr	r1, [r0, #0]
 8041562:	6801      	ldr	r1, [r0, #0]
 8041564:	6801      	ldr	r1, [r0, #0]
 8041566:	6801      	ldr	r1, [r0, #0]
 8041568:	6801      	ldr	r1, [r0, #0]
 804156a:	6801      	ldr	r1, [r0, #0]
 804156c:	6801      	ldr	r1, [r0, #0]
 804156e:	6801      	ldr	r1, [r0, #0]
 8041570:	6801      	ldr	r1, [r0, #0]
 8041572:	6801      	ldr	r1, [r0, #0]
 8041574:	6801      	ldr	r1, [r0, #0]
 8041576:	6801      	ldr	r1, [r0, #0]
 8041578:	6801      	ldr	r1, [r0, #0]
 804157a:	6801      	ldr	r1, [r0, #0]
 804157c:	6801      	ldr	r1, [r0, #0]
 804157e:	6801      	ldr	r1, [r0, #0]
 8041580:	6801      	ldr	r1, [r0, #0]
 8041582:	6801      	ldr	r1, [r0, #0]
 8041584:	6801      	ldr	r1, [r0, #0]
 8041586:	6801      	ldr	r1, [r0, #0]
 8041588:	6801      	ldr	r1, [r0, #0]
 804158a:	6801      	ldr	r1, [r0, #0]
 804158c:	6801      	ldr	r1, [r0, #0]
 804158e:	6801      	ldr	r1, [r0, #0]
 8041590:	6801      	ldr	r1, [r0, #0]
 8041592:	6801      	ldr	r1, [r0, #0]
 8041594:	6801      	ldr	r1, [r0, #0]
 8041596:	6801      	ldr	r1, [r0, #0]
 8041598:	6801      	ldr	r1, [r0, #0]
 804159a:	6801      	ldr	r1, [r0, #0]
 804159c:	6801      	ldr	r1, [r0, #0]
 804159e:	6801      	ldr	r1, [r0, #0]
 80415a0:	6801      	ldr	r1, [r0, #0]
 80415a2:	6801      	ldr	r1, [r0, #0]
 80415a4:	6801      	ldr	r1, [r0, #0]
 80415a6:	6801      	ldr	r1, [r0, #0]
 80415a8:	6801      	ldr	r1, [r0, #0]
 80415aa:	6801      	ldr	r1, [r0, #0]
 80415ac:	6801      	ldr	r1, [r0, #0]
 80415ae:	6801      	ldr	r1, [r0, #0]
 80415b0:	6801      	ldr	r1, [r0, #0]
 80415b2:	6801      	ldr	r1, [r0, #0]
 80415b4:	6801      	ldr	r1, [r0, #0]
 80415b6:	6801      	ldr	r1, [r0, #0]
 80415b8:	6801      	ldr	r1, [r0, #0]
 80415ba:	6801      	ldr	r1, [r0, #0]
 80415bc:	6801      	ldr	r1, [r0, #0]
 80415be:	6801      	ldr	r1, [r0, #0]
 80415c0:	6801      	ldr	r1, [r0, #0]
 80415c2:	6801      	ldr	r1, [r0, #0]
 80415c4:	6801      	ldr	r1, [r0, #0]
 80415c6:	6801      	ldr	r1, [r0, #0]
 80415c8:	6801      	ldr	r1, [r0, #0]
 80415ca:	6801      	ldr	r1, [r0, #0]
 80415cc:	6801      	ldr	r1, [r0, #0]
 80415ce:	6801      	ldr	r1, [r0, #0]
 80415d0:	6801      	ldr	r1, [r0, #0]
 80415d2:	6801      	ldr	r1, [r0, #0]
 80415d4:	6801      	ldr	r1, [r0, #0]
 80415d6:	6801      	ldr	r1, [r0, #0]
 80415d8:	6801      	ldr	r1, [r0, #0]
 80415da:	6801      	ldr	r1, [r0, #0]
 80415dc:	6801      	ldr	r1, [r0, #0]
 80415de:	6801      	ldr	r1, [r0, #0]
 80415e0:	6801      	ldr	r1, [r0, #0]
 80415e2:	6801      	ldr	r1, [r0, #0]
 80415e4:	6801      	ldr	r1, [r0, #0]
 80415e6:	6801      	ldr	r1, [r0, #0]
 80415e8:	6801      	ldr	r1, [r0, #0]
 80415ea:	bf00      	nop
 80415ec:	46bd      	mov	sp, r7
 80415ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80415f2:	4770      	bx	lr

080415f4 <func8>:
 80415f4:	b480      	push	{r7}
 80415f6:	af00      	add	r7, sp, #0
 80415f8:	46c0      	nop			@ (mov r8, r8)
 80415fa:	46c0      	nop			@ (mov r8, r8)
 80415fc:	46c0      	nop			@ (mov r8, r8)
 80415fe:	46c0      	nop			@ (mov r8, r8)
 8041600:	46c0      	nop			@ (mov r8, r8)
 8041602:	46c0      	nop			@ (mov r8, r8)
 8041604:	46c0      	nop			@ (mov r8, r8)
 8041606:	46c0      	nop			@ (mov r8, r8)
 8041608:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 804160c:	f2c2 0001 	movt	r0, #8193	@ 0x2001
 8041610:	6801      	ldr	r1, [r0, #0]
 8041612:	6801      	ldr	r1, [r0, #0]
 8041614:	6801      	ldr	r1, [r0, #0]
 8041616:	6801      	ldr	r1, [r0, #0]
 8041618:	6801      	ldr	r1, [r0, #0]
 804161a:	6801      	ldr	r1, [r0, #0]
 804161c:	6801      	ldr	r1, [r0, #0]
 804161e:	6801      	ldr	r1, [r0, #0]
 8041620:	6801      	ldr	r1, [r0, #0]
 8041622:	6801      	ldr	r1, [r0, #0]
 8041624:	6801      	ldr	r1, [r0, #0]
 8041626:	6801      	ldr	r1, [r0, #0]
 8041628:	6801      	ldr	r1, [r0, #0]
 804162a:	6801      	ldr	r1, [r0, #0]
 804162c:	6801      	ldr	r1, [r0, #0]
 804162e:	6801      	ldr	r1, [r0, #0]
 8041630:	6801      	ldr	r1, [r0, #0]
 8041632:	6801      	ldr	r1, [r0, #0]
 8041634:	6801      	ldr	r1, [r0, #0]
 8041636:	6801      	ldr	r1, [r0, #0]
 8041638:	6801      	ldr	r1, [r0, #0]
 804163a:	6801      	ldr	r1, [r0, #0]
 804163c:	6801      	ldr	r1, [r0, #0]
 804163e:	6801      	ldr	r1, [r0, #0]
 8041640:	6801      	ldr	r1, [r0, #0]
 8041642:	6801      	ldr	r1, [r0, #0]
 8041644:	6801      	ldr	r1, [r0, #0]
 8041646:	6801      	ldr	r1, [r0, #0]
 8041648:	6801      	ldr	r1, [r0, #0]
 804164a:	6801      	ldr	r1, [r0, #0]
 804164c:	6801      	ldr	r1, [r0, #0]
 804164e:	6801      	ldr	r1, [r0, #0]
 8041650:	6801      	ldr	r1, [r0, #0]
 8041652:	6801      	ldr	r1, [r0, #0]
 8041654:	6801      	ldr	r1, [r0, #0]
 8041656:	6801      	ldr	r1, [r0, #0]
 8041658:	6801      	ldr	r1, [r0, #0]
 804165a:	6801      	ldr	r1, [r0, #0]
 804165c:	6801      	ldr	r1, [r0, #0]
 804165e:	6801      	ldr	r1, [r0, #0]
 8041660:	6801      	ldr	r1, [r0, #0]
 8041662:	6801      	ldr	r1, [r0, #0]
 8041664:	6801      	ldr	r1, [r0, #0]
 8041666:	6801      	ldr	r1, [r0, #0]
 8041668:	6801      	ldr	r1, [r0, #0]
 804166a:	6801      	ldr	r1, [r0, #0]
 804166c:	6801      	ldr	r1, [r0, #0]
 804166e:	6801      	ldr	r1, [r0, #0]
 8041670:	6801      	ldr	r1, [r0, #0]
 8041672:	6801      	ldr	r1, [r0, #0]
 8041674:	6801      	ldr	r1, [r0, #0]
 8041676:	6801      	ldr	r1, [r0, #0]
 8041678:	6801      	ldr	r1, [r0, #0]
 804167a:	6801      	ldr	r1, [r0, #0]
 804167c:	6801      	ldr	r1, [r0, #0]
 804167e:	6801      	ldr	r1, [r0, #0]
 8041680:	6801      	ldr	r1, [r0, #0]
 8041682:	6801      	ldr	r1, [r0, #0]
 8041684:	6801      	ldr	r1, [r0, #0]
 8041686:	6801      	ldr	r1, [r0, #0]
 8041688:	6801      	ldr	r1, [r0, #0]
 804168a:	6801      	ldr	r1, [r0, #0]
 804168c:	6801      	ldr	r1, [r0, #0]
 804168e:	6801      	ldr	r1, [r0, #0]
 8041690:	6801      	ldr	r1, [r0, #0]
 8041692:	6801      	ldr	r1, [r0, #0]
 8041694:	6801      	ldr	r1, [r0, #0]
 8041696:	6801      	ldr	r1, [r0, #0]
 8041698:	6801      	ldr	r1, [r0, #0]
 804169a:	6801      	ldr	r1, [r0, #0]
 804169c:	6801      	ldr	r1, [r0, #0]
 804169e:	6801      	ldr	r1, [r0, #0]
 80416a0:	6801      	ldr	r1, [r0, #0]
 80416a2:	6801      	ldr	r1, [r0, #0]
 80416a4:	6801      	ldr	r1, [r0, #0]
 80416a6:	6801      	ldr	r1, [r0, #0]
 80416a8:	6801      	ldr	r1, [r0, #0]
 80416aa:	6801      	ldr	r1, [r0, #0]
 80416ac:	6801      	ldr	r1, [r0, #0]
 80416ae:	6801      	ldr	r1, [r0, #0]
 80416b0:	6801      	ldr	r1, [r0, #0]
 80416b2:	6801      	ldr	r1, [r0, #0]
 80416b4:	6801      	ldr	r1, [r0, #0]
 80416b6:	6801      	ldr	r1, [r0, #0]
 80416b8:	6801      	ldr	r1, [r0, #0]
 80416ba:	6801      	ldr	r1, [r0, #0]
 80416bc:	6801      	ldr	r1, [r0, #0]
 80416be:	6801      	ldr	r1, [r0, #0]
 80416c0:	6801      	ldr	r1, [r0, #0]
 80416c2:	6801      	ldr	r1, [r0, #0]
 80416c4:	bf00      	nop
 80416c6:	46bd      	mov	sp, r7
 80416c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80416cc:	4770      	bx	lr
	...

080416d0 <print_instructions>:
 80416d0:	b580      	push	{r7, lr}
 80416d2:	b084      	sub	sp, #16
 80416d4:	af00      	add	r7, sp, #0
 80416d6:	6078      	str	r0, [r7, #4]
 80416d8:	2300      	movs	r3, #0
 80416da:	60fb      	str	r3, [r7, #12]
 80416dc:	4896      	ldr	r0, [pc, #600]	@ (8041938 <print_instructions+0x268>)
 80416de:	f006 f819 	bl	8047714 <iprintf>
 80416e2:	e11a      	b.n	804191a <print_instructions+0x24a>
 80416e4:	68fb      	ldr	r3, [r7, #12]
 80416e6:	009b      	lsls	r3, r3, #2
 80416e8:	687a      	ldr	r2, [r7, #4]
 80416ea:	4413      	add	r3, r2
 80416ec:	681b      	ldr	r3, [r3, #0]
 80416ee:	2b01      	cmp	r3, #1
 80416f0:	d102      	bne.n	80416f8 <print_instructions+0x28>
 80416f2:	4892      	ldr	r0, [pc, #584]	@ (804193c <print_instructions+0x26c>)
 80416f4:	f006 f80e 	bl	8047714 <iprintf>
 80416f8:	68fb      	ldr	r3, [r7, #12]
 80416fa:	009b      	lsls	r3, r3, #2
 80416fc:	687a      	ldr	r2, [r7, #4]
 80416fe:	4413      	add	r3, r2
 8041700:	681b      	ldr	r3, [r3, #0]
 8041702:	2b02      	cmp	r3, #2
 8041704:	d102      	bne.n	804170c <print_instructions+0x3c>
 8041706:	488e      	ldr	r0, [pc, #568]	@ (8041940 <print_instructions+0x270>)
 8041708:	f006 f804 	bl	8047714 <iprintf>
 804170c:	68fb      	ldr	r3, [r7, #12]
 804170e:	009b      	lsls	r3, r3, #2
 8041710:	687a      	ldr	r2, [r7, #4]
 8041712:	4413      	add	r3, r2
 8041714:	681b      	ldr	r3, [r3, #0]
 8041716:	2b03      	cmp	r3, #3
 8041718:	d102      	bne.n	8041720 <print_instructions+0x50>
 804171a:	488a      	ldr	r0, [pc, #552]	@ (8041944 <print_instructions+0x274>)
 804171c:	f005 fffa 	bl	8047714 <iprintf>
 8041720:	68fb      	ldr	r3, [r7, #12]
 8041722:	009b      	lsls	r3, r3, #2
 8041724:	687a      	ldr	r2, [r7, #4]
 8041726:	4413      	add	r3, r2
 8041728:	681b      	ldr	r3, [r3, #0]
 804172a:	2b05      	cmp	r3, #5
 804172c:	d102      	bne.n	8041734 <print_instructions+0x64>
 804172e:	4886      	ldr	r0, [pc, #536]	@ (8041948 <print_instructions+0x278>)
 8041730:	f005 fff0 	bl	8047714 <iprintf>
 8041734:	68fb      	ldr	r3, [r7, #12]
 8041736:	009b      	lsls	r3, r3, #2
 8041738:	687a      	ldr	r2, [r7, #4]
 804173a:	4413      	add	r3, r2
 804173c:	681b      	ldr	r3, [r3, #0]
 804173e:	2b06      	cmp	r3, #6
 8041740:	d102      	bne.n	8041748 <print_instructions+0x78>
 8041742:	4882      	ldr	r0, [pc, #520]	@ (804194c <print_instructions+0x27c>)
 8041744:	f005 ffe6 	bl	8047714 <iprintf>
 8041748:	68fb      	ldr	r3, [r7, #12]
 804174a:	009b      	lsls	r3, r3, #2
 804174c:	687a      	ldr	r2, [r7, #4]
 804174e:	4413      	add	r3, r2
 8041750:	681b      	ldr	r3, [r3, #0]
 8041752:	2b07      	cmp	r3, #7
 8041754:	d102      	bne.n	804175c <print_instructions+0x8c>
 8041756:	487e      	ldr	r0, [pc, #504]	@ (8041950 <print_instructions+0x280>)
 8041758:	f005 ffdc 	bl	8047714 <iprintf>
 804175c:	68fb      	ldr	r3, [r7, #12]
 804175e:	009b      	lsls	r3, r3, #2
 8041760:	687a      	ldr	r2, [r7, #4]
 8041762:	4413      	add	r3, r2
 8041764:	681b      	ldr	r3, [r3, #0]
 8041766:	2b08      	cmp	r3, #8
 8041768:	d102      	bne.n	8041770 <print_instructions+0xa0>
 804176a:	487a      	ldr	r0, [pc, #488]	@ (8041954 <print_instructions+0x284>)
 804176c:	f005 ffd2 	bl	8047714 <iprintf>
 8041770:	68fb      	ldr	r3, [r7, #12]
 8041772:	009b      	lsls	r3, r3, #2
 8041774:	687a      	ldr	r2, [r7, #4]
 8041776:	4413      	add	r3, r2
 8041778:	681b      	ldr	r3, [r3, #0]
 804177a:	2b09      	cmp	r3, #9
 804177c:	d102      	bne.n	8041784 <print_instructions+0xb4>
 804177e:	4876      	ldr	r0, [pc, #472]	@ (8041958 <print_instructions+0x288>)
 8041780:	f005 ffc8 	bl	8047714 <iprintf>
 8041784:	68fb      	ldr	r3, [r7, #12]
 8041786:	009b      	lsls	r3, r3, #2
 8041788:	687a      	ldr	r2, [r7, #4]
 804178a:	4413      	add	r3, r2
 804178c:	681b      	ldr	r3, [r3, #0]
 804178e:	2b0a      	cmp	r3, #10
 8041790:	d108      	bne.n	80417a4 <print_instructions+0xd4>
 8041792:	4872      	ldr	r0, [pc, #456]	@ (804195c <print_instructions+0x28c>)
 8041794:	f005 ffbe 	bl	8047714 <iprintf>
 8041798:	4871      	ldr	r0, [pc, #452]	@ (8041960 <print_instructions+0x290>)
 804179a:	f005 ffbb 	bl	8047714 <iprintf>
 804179e:	4871      	ldr	r0, [pc, #452]	@ (8041964 <print_instructions+0x294>)
 80417a0:	f005 ffb8 	bl	8047714 <iprintf>
 80417a4:	68fb      	ldr	r3, [r7, #12]
 80417a6:	009b      	lsls	r3, r3, #2
 80417a8:	687a      	ldr	r2, [r7, #4]
 80417aa:	4413      	add	r3, r2
 80417ac:	681b      	ldr	r3, [r3, #0]
 80417ae:	2b0b      	cmp	r3, #11
 80417b0:	d108      	bne.n	80417c4 <print_instructions+0xf4>
 80417b2:	486a      	ldr	r0, [pc, #424]	@ (804195c <print_instructions+0x28c>)
 80417b4:	f005 ffae 	bl	8047714 <iprintf>
 80417b8:	486b      	ldr	r0, [pc, #428]	@ (8041968 <print_instructions+0x298>)
 80417ba:	f005 ffab 	bl	8047714 <iprintf>
 80417be:	4869      	ldr	r0, [pc, #420]	@ (8041964 <print_instructions+0x294>)
 80417c0:	f005 ffa8 	bl	8047714 <iprintf>
 80417c4:	68fb      	ldr	r3, [r7, #12]
 80417c6:	009b      	lsls	r3, r3, #2
 80417c8:	687a      	ldr	r2, [r7, #4]
 80417ca:	4413      	add	r3, r2
 80417cc:	681b      	ldr	r3, [r3, #0]
 80417ce:	2b0c      	cmp	r3, #12
 80417d0:	d102      	bne.n	80417d8 <print_instructions+0x108>
 80417d2:	4866      	ldr	r0, [pc, #408]	@ (804196c <print_instructions+0x29c>)
 80417d4:	f005 ff9e 	bl	8047714 <iprintf>
 80417d8:	68fb      	ldr	r3, [r7, #12]
 80417da:	009b      	lsls	r3, r3, #2
 80417dc:	687a      	ldr	r2, [r7, #4]
 80417de:	4413      	add	r3, r2
 80417e0:	681b      	ldr	r3, [r3, #0]
 80417e2:	2b0d      	cmp	r3, #13
 80417e4:	d102      	bne.n	80417ec <print_instructions+0x11c>
 80417e6:	4862      	ldr	r0, [pc, #392]	@ (8041970 <print_instructions+0x2a0>)
 80417e8:	f005 ff94 	bl	8047714 <iprintf>
 80417ec:	68fb      	ldr	r3, [r7, #12]
 80417ee:	009b      	lsls	r3, r3, #2
 80417f0:	687a      	ldr	r2, [r7, #4]
 80417f2:	4413      	add	r3, r2
 80417f4:	681b      	ldr	r3, [r3, #0]
 80417f6:	2b0e      	cmp	r3, #14
 80417f8:	d102      	bne.n	8041800 <print_instructions+0x130>
 80417fa:	485e      	ldr	r0, [pc, #376]	@ (8041974 <print_instructions+0x2a4>)
 80417fc:	f005 ff8a 	bl	8047714 <iprintf>
 8041800:	68fb      	ldr	r3, [r7, #12]
 8041802:	009b      	lsls	r3, r3, #2
 8041804:	687a      	ldr	r2, [r7, #4]
 8041806:	4413      	add	r3, r2
 8041808:	681b      	ldr	r3, [r3, #0]
 804180a:	2b0f      	cmp	r3, #15
 804180c:	d102      	bne.n	8041814 <print_instructions+0x144>
 804180e:	485a      	ldr	r0, [pc, #360]	@ (8041978 <print_instructions+0x2a8>)
 8041810:	f005 ff80 	bl	8047714 <iprintf>
 8041814:	68fb      	ldr	r3, [r7, #12]
 8041816:	009b      	lsls	r3, r3, #2
 8041818:	687a      	ldr	r2, [r7, #4]
 804181a:	4413      	add	r3, r2
 804181c:	681b      	ldr	r3, [r3, #0]
 804181e:	2b10      	cmp	r3, #16
 8041820:	d102      	bne.n	8041828 <print_instructions+0x158>
 8041822:	4856      	ldr	r0, [pc, #344]	@ (804197c <print_instructions+0x2ac>)
 8041824:	f005 ff76 	bl	8047714 <iprintf>
 8041828:	68fb      	ldr	r3, [r7, #12]
 804182a:	009b      	lsls	r3, r3, #2
 804182c:	687a      	ldr	r2, [r7, #4]
 804182e:	4413      	add	r3, r2
 8041830:	681b      	ldr	r3, [r3, #0]
 8041832:	2b11      	cmp	r3, #17
 8041834:	d102      	bne.n	804183c <print_instructions+0x16c>
 8041836:	4852      	ldr	r0, [pc, #328]	@ (8041980 <print_instructions+0x2b0>)
 8041838:	f005 ff6c 	bl	8047714 <iprintf>
 804183c:	68fb      	ldr	r3, [r7, #12]
 804183e:	009b      	lsls	r3, r3, #2
 8041840:	687a      	ldr	r2, [r7, #4]
 8041842:	4413      	add	r3, r2
 8041844:	681b      	ldr	r3, [r3, #0]
 8041846:	2b12      	cmp	r3, #18
 8041848:	d102      	bne.n	8041850 <print_instructions+0x180>
 804184a:	484e      	ldr	r0, [pc, #312]	@ (8041984 <print_instructions+0x2b4>)
 804184c:	f005 ff62 	bl	8047714 <iprintf>
 8041850:	68fb      	ldr	r3, [r7, #12]
 8041852:	009b      	lsls	r3, r3, #2
 8041854:	687a      	ldr	r2, [r7, #4]
 8041856:	4413      	add	r3, r2
 8041858:	681b      	ldr	r3, [r3, #0]
 804185a:	2b13      	cmp	r3, #19
 804185c:	d102      	bne.n	8041864 <print_instructions+0x194>
 804185e:	484a      	ldr	r0, [pc, #296]	@ (8041988 <print_instructions+0x2b8>)
 8041860:	f005 ff58 	bl	8047714 <iprintf>
 8041864:	68fb      	ldr	r3, [r7, #12]
 8041866:	009b      	lsls	r3, r3, #2
 8041868:	687a      	ldr	r2, [r7, #4]
 804186a:	4413      	add	r3, r2
 804186c:	681b      	ldr	r3, [r3, #0]
 804186e:	2b14      	cmp	r3, #20
 8041870:	d108      	bne.n	8041884 <print_instructions+0x1b4>
 8041872:	483a      	ldr	r0, [pc, #232]	@ (804195c <print_instructions+0x28c>)
 8041874:	f005 ff4e 	bl	8047714 <iprintf>
 8041878:	4844      	ldr	r0, [pc, #272]	@ (804198c <print_instructions+0x2bc>)
 804187a:	f005 ff4b 	bl	8047714 <iprintf>
 804187e:	4839      	ldr	r0, [pc, #228]	@ (8041964 <print_instructions+0x294>)
 8041880:	f005 ff48 	bl	8047714 <iprintf>
 8041884:	68fb      	ldr	r3, [r7, #12]
 8041886:	009b      	lsls	r3, r3, #2
 8041888:	687a      	ldr	r2, [r7, #4]
 804188a:	4413      	add	r3, r2
 804188c:	681b      	ldr	r3, [r3, #0]
 804188e:	2b15      	cmp	r3, #21
 8041890:	d102      	bne.n	8041898 <print_instructions+0x1c8>
 8041892:	483f      	ldr	r0, [pc, #252]	@ (8041990 <print_instructions+0x2c0>)
 8041894:	f005 ff3e 	bl	8047714 <iprintf>
 8041898:	68fb      	ldr	r3, [r7, #12]
 804189a:	009b      	lsls	r3, r3, #2
 804189c:	687a      	ldr	r2, [r7, #4]
 804189e:	4413      	add	r3, r2
 80418a0:	681b      	ldr	r3, [r3, #0]
 80418a2:	2b16      	cmp	r3, #22
 80418a4:	d102      	bne.n	80418ac <print_instructions+0x1dc>
 80418a6:	483b      	ldr	r0, [pc, #236]	@ (8041994 <print_instructions+0x2c4>)
 80418a8:	f005 ff34 	bl	8047714 <iprintf>
 80418ac:	68fb      	ldr	r3, [r7, #12]
 80418ae:	009b      	lsls	r3, r3, #2
 80418b0:	687a      	ldr	r2, [r7, #4]
 80418b2:	4413      	add	r3, r2
 80418b4:	681b      	ldr	r3, [r3, #0]
 80418b6:	2b17      	cmp	r3, #23
 80418b8:	d108      	bne.n	80418cc <print_instructions+0x1fc>
 80418ba:	4828      	ldr	r0, [pc, #160]	@ (804195c <print_instructions+0x28c>)
 80418bc:	f005 ff2a 	bl	8047714 <iprintf>
 80418c0:	4835      	ldr	r0, [pc, #212]	@ (8041998 <print_instructions+0x2c8>)
 80418c2:	f005 ff27 	bl	8047714 <iprintf>
 80418c6:	4827      	ldr	r0, [pc, #156]	@ (8041964 <print_instructions+0x294>)
 80418c8:	f005 ff24 	bl	8047714 <iprintf>
 80418cc:	68fb      	ldr	r3, [r7, #12]
 80418ce:	009b      	lsls	r3, r3, #2
 80418d0:	687a      	ldr	r2, [r7, #4]
 80418d2:	4413      	add	r3, r2
 80418d4:	681b      	ldr	r3, [r3, #0]
 80418d6:	2b18      	cmp	r3, #24
 80418d8:	d102      	bne.n	80418e0 <print_instructions+0x210>
 80418da:	4830      	ldr	r0, [pc, #192]	@ (804199c <print_instructions+0x2cc>)
 80418dc:	f005 ff1a 	bl	8047714 <iprintf>
 80418e0:	68fb      	ldr	r3, [r7, #12]
 80418e2:	009b      	lsls	r3, r3, #2
 80418e4:	687a      	ldr	r2, [r7, #4]
 80418e6:	4413      	add	r3, r2
 80418e8:	681b      	ldr	r3, [r3, #0]
 80418ea:	2b19      	cmp	r3, #25
 80418ec:	d108      	bne.n	8041900 <print_instructions+0x230>
 80418ee:	481b      	ldr	r0, [pc, #108]	@ (804195c <print_instructions+0x28c>)
 80418f0:	f005 ff10 	bl	8047714 <iprintf>
 80418f4:	482a      	ldr	r0, [pc, #168]	@ (80419a0 <print_instructions+0x2d0>)
 80418f6:	f005 ff0d 	bl	8047714 <iprintf>
 80418fa:	481a      	ldr	r0, [pc, #104]	@ (8041964 <print_instructions+0x294>)
 80418fc:	f005 ff0a 	bl	8047714 <iprintf>
 8041900:	68fb      	ldr	r3, [r7, #12]
 8041902:	009b      	lsls	r3, r3, #2
 8041904:	687a      	ldr	r2, [r7, #4]
 8041906:	4413      	add	r3, r2
 8041908:	681b      	ldr	r3, [r3, #0]
 804190a:	2b1a      	cmp	r3, #26
 804190c:	d102      	bne.n	8041914 <print_instructions+0x244>
 804190e:	4825      	ldr	r0, [pc, #148]	@ (80419a4 <print_instructions+0x2d4>)
 8041910:	f005 ff00 	bl	8047714 <iprintf>
 8041914:	68fb      	ldr	r3, [r7, #12]
 8041916:	3301      	adds	r3, #1
 8041918:	60fb      	str	r3, [r7, #12]
 804191a:	68fb      	ldr	r3, [r7, #12]
 804191c:	009b      	lsls	r3, r3, #2
 804191e:	687a      	ldr	r2, [r7, #4]
 8041920:	4413      	add	r3, r2
 8041922:	681b      	ldr	r3, [r3, #0]
 8041924:	2b04      	cmp	r3, #4
 8041926:	f47f aedd 	bne.w	80416e4 <print_instructions+0x14>
 804192a:	481f      	ldr	r0, [pc, #124]	@ (80419a8 <print_instructions+0x2d8>)
 804192c:	f005 ff5a 	bl	80477e4 <puts>
 8041930:	bf00      	nop
 8041932:	3710      	adds	r7, #16
 8041934:	46bd      	mov	sp, r7
 8041936:	bd80      	pop	{r7, pc}
 8041938:	080485f4 	.word	0x080485f4
 804193c:	080485fc 	.word	0x080485fc
 8041940:	08048604 	.word	0x08048604
 8041944:	0804860c 	.word	0x0804860c
 8041948:	08048614 	.word	0x08048614
 804194c:	0804861c 	.word	0x0804861c
 8041950:	08048624 	.word	0x08048624
 8041954:	0804862c 	.word	0x0804862c
 8041958:	08048634 	.word	0x08048634
 804195c:	0804863c 	.word	0x0804863c
 8041960:	08048644 	.word	0x08048644
 8041964:	0804864c 	.word	0x0804864c
 8041968:	08048654 	.word	0x08048654
 804196c:	0804865c 	.word	0x0804865c
 8041970:	08048664 	.word	0x08048664
 8041974:	0804866c 	.word	0x0804866c
 8041978:	08048674 	.word	0x08048674
 804197c:	0804867c 	.word	0x0804867c
 8041980:	08048684 	.word	0x08048684
 8041984:	0804868c 	.word	0x0804868c
 8041988:	08048694 	.word	0x08048694
 804198c:	0804869c 	.word	0x0804869c
 8041990:	080486a4 	.word	0x080486a4
 8041994:	080486ac 	.word	0x080486ac
 8041998:	080486b4 	.word	0x080486b4
 804199c:	080486bc 	.word	0x080486bc
 80419a0:	080486c4 	.word	0x080486c4
 80419a4:	080486cc 	.word	0x080486cc
 80419a8:	080486d4 	.word	0x080486d4

080419ac <simple_if_else_true>:
 80419ac:	b480      	push	{r7}
 80419ae:	b083      	sub	sp, #12
 80419b0:	af00      	add	r7, sp, #0
 80419b2:	2300      	movs	r3, #0
 80419b4:	607b      	str	r3, [r7, #4]
 80419b6:	687b      	ldr	r3, [r7, #4]
 80419b8:	2b00      	cmp	r3, #0
 80419ba:	d102      	bne.n	80419c2 <simple_if_else_true+0x16>
 80419bc:	2301      	movs	r3, #1
 80419be:	603b      	str	r3, [r7, #0]
 80419c0:	e001      	b.n	80419c6 <simple_if_else_true+0x1a>
 80419c2:	2300      	movs	r3, #0
 80419c4:	603b      	str	r3, [r7, #0]
 80419c6:	bf00      	nop
 80419c8:	370c      	adds	r7, #12
 80419ca:	46bd      	mov	sp, r7
 80419cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80419d0:	4770      	bx	lr

080419d2 <simple_if_else_false>:
 80419d2:	b480      	push	{r7}
 80419d4:	b083      	sub	sp, #12
 80419d6:	af00      	add	r7, sp, #0
 80419d8:	2301      	movs	r3, #1
 80419da:	607b      	str	r3, [r7, #4]
 80419dc:	687b      	ldr	r3, [r7, #4]
 80419de:	2b00      	cmp	r3, #0
 80419e0:	d102      	bne.n	80419e8 <simple_if_else_false+0x16>
 80419e2:	2301      	movs	r3, #1
 80419e4:	603b      	str	r3, [r7, #0]
 80419e6:	e001      	b.n	80419ec <simple_if_else_false+0x1a>
 80419e8:	2300      	movs	r3, #0
 80419ea:	603b      	str	r3, [r7, #0]
 80419ec:	bf00      	nop
 80419ee:	370c      	adds	r7, #12
 80419f0:	46bd      	mov	sp, r7
 80419f2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80419f6:	4770      	bx	lr

080419f8 <print_clock>:
 80419f8:	b580      	push	{r7, lr}
 80419fa:	b084      	sub	sp, #16
 80419fc:	af00      	add	r7, sp, #0
 80419fe:	6078      	str	r0, [r7, #4]
 8041a00:	2300      	movs	r3, #0
 8041a02:	60fb      	str	r3, [r7, #12]
 8041a04:	2300      	movs	r3, #0
 8041a06:	60bb      	str	r3, [r7, #8]
 8041a08:	480d      	ldr	r0, [pc, #52]	@ (8041a40 <print_clock+0x48>)
 8041a0a:	f005 fe83 	bl	8047714 <iprintf>
 8041a0e:	e006      	b.n	8041a1e <print_clock+0x26>
 8041a10:	68fb      	ldr	r3, [r7, #12]
 8041a12:	1c5a      	adds	r2, r3, #1
 8041a14:	60fa      	str	r2, [r7, #12]
 8041a16:	4619      	mov	r1, r3
 8041a18:	480a      	ldr	r0, [pc, #40]	@ (8041a44 <print_clock+0x4c>)
 8041a1a:	f005 fe7b 	bl	8047714 <iprintf>
 8041a1e:	68bb      	ldr	r3, [r7, #8]
 8041a20:	1c5a      	adds	r2, r3, #1
 8041a22:	60ba      	str	r2, [r7, #8]
 8041a24:	009b      	lsls	r3, r3, #2
 8041a26:	687a      	ldr	r2, [r7, #4]
 8041a28:	4413      	add	r3, r2
 8041a2a:	681b      	ldr	r3, [r3, #0]
 8041a2c:	2b04      	cmp	r3, #4
 8041a2e:	d1ef      	bne.n	8041a10 <print_clock+0x18>
 8041a30:	4805      	ldr	r0, [pc, #20]	@ (8041a48 <print_clock+0x50>)
 8041a32:	f005 fed7 	bl	80477e4 <puts>
 8041a36:	bf00      	nop
 8041a38:	3710      	adds	r7, #16
 8041a3a:	46bd      	mov	sp, r7
 8041a3c:	bd80      	pop	{r7, pc}
 8041a3e:	bf00      	nop
 8041a40:	080486d8 	.word	0x080486d8
 8041a44:	080485b4 	.word	0x080485b4
 8041a48:	080486d4 	.word	0x080486d4

08041a4c <process_accurate_collision>:
 8041a4c:	b480      	push	{r7}
 8041a4e:	b083      	sub	sp, #12
 8041a50:	af00      	add	r7, sp, #0
 8041a52:	6078      	str	r0, [r7, #4]
 8041a54:	4b09      	ldr	r3, [pc, #36]	@ (8041a7c <process_accurate_collision+0x30>)
 8041a56:	685b      	ldr	r3, [r3, #4]
 8041a58:	b2da      	uxtb	r2, r3
 8041a5a:	4b08      	ldr	r3, [pc, #32]	@ (8041a7c <process_accurate_collision+0x30>)
 8041a5c:	681b      	ldr	r3, [r3, #0]
 8041a5e:	b2db      	uxtb	r3, r3
 8041a60:	1ad3      	subs	r3, r2, r3
 8041a62:	b2d9      	uxtb	r1, r3
 8041a64:	4a06      	ldr	r2, [pc, #24]	@ (8041a80 <process_accurate_collision+0x34>)
 8041a66:	687b      	ldr	r3, [r7, #4]
 8041a68:	4413      	add	r3, r2
 8041a6a:	460a      	mov	r2, r1
 8041a6c:	701a      	strb	r2, [r3, #0]
 8041a6e:	bf00      	nop
 8041a70:	370c      	adds	r7, #12
 8041a72:	46bd      	mov	sp, r7
 8041a74:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041a78:	4770      	bx	lr
 8041a7a:	bf00      	nop
 8041a7c:	20018364 	.word	0x20018364
 8041a80:	20019304 	.word	0x20019304

08041a84 <print_accurate_collision_w_instruction>:
 8041a84:	b580      	push	{r7, lr}
 8041a86:	b084      	sub	sp, #16
 8041a88:	af00      	add	r7, sp, #0
 8041a8a:	6078      	str	r0, [r7, #4]
 8041a8c:	2300      	movs	r3, #0
 8041a8e:	60fb      	str	r3, [r7, #12]
 8041a90:	2300      	movs	r3, #0
 8041a92:	60bb      	str	r3, [r7, #8]
 8041a94:	480f      	ldr	r0, [pc, #60]	@ (8041ad4 <print_accurate_collision_w_instruction+0x50>)
 8041a96:	f005 fe3d 	bl	8047714 <iprintf>
 8041a9a:	e00d      	b.n	8041ab8 <print_accurate_collision_w_instruction+0x34>
 8041a9c:	4a0e      	ldr	r2, [pc, #56]	@ (8041ad8 <print_accurate_collision_w_instruction+0x54>)
 8041a9e:	68fb      	ldr	r3, [r7, #12]
 8041aa0:	4413      	add	r3, r2
 8041aa2:	781b      	ldrb	r3, [r3, #0]
 8041aa4:	4619      	mov	r1, r3
 8041aa6:	480d      	ldr	r0, [pc, #52]	@ (8041adc <print_accurate_collision_w_instruction+0x58>)
 8041aa8:	f005 fe34 	bl	8047714 <iprintf>
 8041aac:	68bb      	ldr	r3, [r7, #8]
 8041aae:	3301      	adds	r3, #1
 8041ab0:	60bb      	str	r3, [r7, #8]
 8041ab2:	68fb      	ldr	r3, [r7, #12]
 8041ab4:	3301      	adds	r3, #1
 8041ab6:	60fb      	str	r3, [r7, #12]
 8041ab8:	68bb      	ldr	r3, [r7, #8]
 8041aba:	009b      	lsls	r3, r3, #2
 8041abc:	687a      	ldr	r2, [r7, #4]
 8041abe:	4413      	add	r3, r2
 8041ac0:	681b      	ldr	r3, [r3, #0]
 8041ac2:	2b04      	cmp	r3, #4
 8041ac4:	d1ea      	bne.n	8041a9c <print_accurate_collision_w_instruction+0x18>
 8041ac6:	4806      	ldr	r0, [pc, #24]	@ (8041ae0 <print_accurate_collision_w_instruction+0x5c>)
 8041ac8:	f005 fe8c 	bl	80477e4 <puts>
 8041acc:	bf00      	nop
 8041ace:	3710      	adds	r7, #16
 8041ad0:	46bd      	mov	sp, r7
 8041ad2:	bd80      	pop	{r7, pc}
 8041ad4:	080486e0 	.word	0x080486e0
 8041ad8:	20019304 	.word	0x20019304
 8041adc:	080486ec 	.word	0x080486ec
 8041ae0:	080486d4 	.word	0x080486d4

08041ae4 <get_accurate_trace>:
 8041ae4:	b580      	push	{r7, lr}
 8041ae6:	b084      	sub	sp, #16
 8041ae8:	af00      	add	r7, sp, #0
 8041aea:	60f8      	str	r0, [r7, #12]
 8041aec:	60b9      	str	r1, [r7, #8]
 8041aee:	607a      	str	r2, [r7, #4]
 8041af0:	603b      	str	r3, [r7, #0]
 8041af2:	4a83      	ldr	r2, [pc, #524]	@ (8041d00 <get_accurate_trace+0x21c>)
 8041af4:	68fb      	ldr	r3, [r7, #12]
 8041af6:	62d3      	str	r3, [r2, #44]	@ 0x2c
 8041af8:	68fb      	ldr	r3, [r7, #12]
 8041afa:	1e5a      	subs	r2, r3, #1
 8041afc:	68bb      	ldr	r3, [r7, #8]
 8041afe:	1ad2      	subs	r2, r2, r3
 8041b00:	4b7f      	ldr	r3, [pc, #508]	@ (8041d00 <get_accurate_trace+0x21c>)
 8041b02:	625a      	str	r2, [r3, #36]	@ 0x24
 8041b04:	4b7e      	ldr	r3, [pc, #504]	@ (8041d00 <get_accurate_trace+0x21c>)
 8041b06:	2200      	movs	r2, #0
 8041b08:	611a      	str	r2, [r3, #16]
 8041b0a:	4b7d      	ldr	r3, [pc, #500]	@ (8041d00 <get_accurate_trace+0x21c>)
 8041b0c:	2200      	movs	r2, #0
 8041b0e:	60da      	str	r2, [r3, #12]
 8041b10:	487c      	ldr	r0, [pc, #496]	@ (8041d04 <get_accurate_trace+0x220>)
 8041b12:	f003 fe09 	bl	8045728 <HAL_TIM_Base_Start>
 8041b16:	4b7c      	ldr	r3, [pc, #496]	@ (8041d08 <get_accurate_trace+0x224>)
 8041b18:	681b      	ldr	r3, [r3, #0]
 8041b1a:	4619      	mov	r1, r3
 8041b1c:	4a7b      	ldr	r2, [pc, #492]	@ (8041d0c <get_accurate_trace+0x228>)
 8041b1e:	687b      	ldr	r3, [r7, #4]
 8041b20:	487b      	ldr	r0, [pc, #492]	@ (8041d10 <get_accurate_trace+0x22c>)
 8041b22:	f001 fc2d 	bl	8043380 <HAL_DMA_Start>
 8041b26:	4b7a      	ldr	r3, [pc, #488]	@ (8041d10 <get_accurate_trace+0x22c>)
 8041b28:	681b      	ldr	r3, [r3, #0]
 8041b2a:	681a      	ldr	r2, [r3, #0]
 8041b2c:	4b78      	ldr	r3, [pc, #480]	@ (8041d10 <get_accurate_trace+0x22c>)
 8041b2e:	681b      	ldr	r3, [r3, #0]
 8041b30:	f042 0201 	orr.w	r2, r2, #1
 8041b34:	601a      	str	r2, [r3, #0]
 8041b36:	4b72      	ldr	r3, [pc, #456]	@ (8041d00 <get_accurate_trace+0x21c>)
 8041b38:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8041b3c:	60da      	str	r2, [r3, #12]
 8041b3e:	4b75      	ldr	r3, [pc, #468]	@ (8041d14 <get_accurate_trace+0x230>)
 8041b40:	681b      	ldr	r3, [r3, #0]
 8041b42:	681a      	ldr	r2, [r3, #0]
 8041b44:	4b73      	ldr	r3, [pc, #460]	@ (8041d14 <get_accurate_trace+0x230>)
 8041b46:	681b      	ldr	r3, [r3, #0]
 8041b48:	f042 0201 	orr.w	r2, r2, #1
 8041b4c:	601a      	str	r2, [r3, #0]
 8041b4e:	46c0      	nop			@ (mov r8, r8)
 8041b50:	46c0      	nop			@ (mov r8, r8)
 8041b52:	46c0      	nop			@ (mov r8, r8)
 8041b54:	46c0      	nop			@ (mov r8, r8)
 8041b56:	46c0      	nop			@ (mov r8, r8)
 8041b58:	46c0      	nop			@ (mov r8, r8)
 8041b5a:	46c0      	nop			@ (mov r8, r8)
 8041b5c:	46c0      	nop			@ (mov r8, r8)
 8041b5e:	46c0      	nop			@ (mov r8, r8)
 8041b60:	46c0      	nop			@ (mov r8, r8)
 8041b62:	46c0      	nop			@ (mov r8, r8)
 8041b64:	683b      	ldr	r3, [r7, #0]
 8041b66:	4798      	blx	r3
 8041b68:	46c0      	nop			@ (mov r8, r8)
 8041b6a:	46c0      	nop			@ (mov r8, r8)
 8041b6c:	46c0      	nop			@ (mov r8, r8)
 8041b6e:	46c0      	nop			@ (mov r8, r8)
 8041b70:	46c0      	nop			@ (mov r8, r8)
 8041b72:	46c0      	nop			@ (mov r8, r8)
 8041b74:	46c0      	nop			@ (mov r8, r8)
 8041b76:	46c0      	nop			@ (mov r8, r8)
 8041b78:	46c0      	nop			@ (mov r8, r8)
 8041b7a:	46c0      	nop			@ (mov r8, r8)
 8041b7c:	46c0      	nop			@ (mov r8, r8)
 8041b7e:	46c0      	nop			@ (mov r8, r8)
 8041b80:	46c0      	nop			@ (mov r8, r8)
 8041b82:	46c0      	nop			@ (mov r8, r8)
 8041b84:	46c0      	nop			@ (mov r8, r8)
 8041b86:	46c0      	nop			@ (mov r8, r8)
 8041b88:	46c0      	nop			@ (mov r8, r8)
 8041b8a:	46c0      	nop			@ (mov r8, r8)
 8041b8c:	46c0      	nop			@ (mov r8, r8)
 8041b8e:	46c0      	nop			@ (mov r8, r8)
 8041b90:	46c0      	nop			@ (mov r8, r8)
 8041b92:	46c0      	nop			@ (mov r8, r8)
 8041b94:	46c0      	nop			@ (mov r8, r8)
 8041b96:	46c0      	nop			@ (mov r8, r8)
 8041b98:	46c0      	nop			@ (mov r8, r8)
 8041b9a:	46c0      	nop			@ (mov r8, r8)
 8041b9c:	46c0      	nop			@ (mov r8, r8)
 8041b9e:	46c0      	nop			@ (mov r8, r8)
 8041ba0:	46c0      	nop			@ (mov r8, r8)
 8041ba2:	46c0      	nop			@ (mov r8, r8)
 8041ba4:	46c0      	nop			@ (mov r8, r8)
 8041ba6:	46c0      	nop			@ (mov r8, r8)
 8041ba8:	46c0      	nop			@ (mov r8, r8)
 8041baa:	46c0      	nop			@ (mov r8, r8)
 8041bac:	46c0      	nop			@ (mov r8, r8)
 8041bae:	46c0      	nop			@ (mov r8, r8)
 8041bb0:	46c0      	nop			@ (mov r8, r8)
 8041bb2:	46c0      	nop			@ (mov r8, r8)
 8041bb4:	46c0      	nop			@ (mov r8, r8)
 8041bb6:	46c0      	nop			@ (mov r8, r8)
 8041bb8:	46c0      	nop			@ (mov r8, r8)
 8041bba:	46c0      	nop			@ (mov r8, r8)
 8041bbc:	46c0      	nop			@ (mov r8, r8)
 8041bbe:	46c0      	nop			@ (mov r8, r8)
 8041bc0:	46c0      	nop			@ (mov r8, r8)
 8041bc2:	46c0      	nop			@ (mov r8, r8)
 8041bc4:	46c0      	nop			@ (mov r8, r8)
 8041bc6:	46c0      	nop			@ (mov r8, r8)
 8041bc8:	46c0      	nop			@ (mov r8, r8)
 8041bca:	46c0      	nop			@ (mov r8, r8)
 8041bcc:	46c0      	nop			@ (mov r8, r8)
 8041bce:	46c0      	nop			@ (mov r8, r8)
 8041bd0:	46c0      	nop			@ (mov r8, r8)
 8041bd2:	46c0      	nop			@ (mov r8, r8)
 8041bd4:	46c0      	nop			@ (mov r8, r8)
 8041bd6:	46c0      	nop			@ (mov r8, r8)
 8041bd8:	46c0      	nop			@ (mov r8, r8)
 8041bda:	46c0      	nop			@ (mov r8, r8)
 8041bdc:	46c0      	nop			@ (mov r8, r8)
 8041bde:	46c0      	nop			@ (mov r8, r8)
 8041be0:	46c0      	nop			@ (mov r8, r8)
 8041be2:	46c0      	nop			@ (mov r8, r8)
 8041be4:	46c0      	nop			@ (mov r8, r8)
 8041be6:	46c0      	nop			@ (mov r8, r8)
 8041be8:	46c0      	nop			@ (mov r8, r8)
 8041bea:	46c0      	nop			@ (mov r8, r8)
 8041bec:	46c0      	nop			@ (mov r8, r8)
 8041bee:	46c0      	nop			@ (mov r8, r8)
 8041bf0:	46c0      	nop			@ (mov r8, r8)
 8041bf2:	46c0      	nop			@ (mov r8, r8)
 8041bf4:	46c0      	nop			@ (mov r8, r8)
 8041bf6:	46c0      	nop			@ (mov r8, r8)
 8041bf8:	46c0      	nop			@ (mov r8, r8)
 8041bfa:	46c0      	nop			@ (mov r8, r8)
 8041bfc:	46c0      	nop			@ (mov r8, r8)
 8041bfe:	46c0      	nop			@ (mov r8, r8)
 8041c00:	46c0      	nop			@ (mov r8, r8)
 8041c02:	46c0      	nop			@ (mov r8, r8)
 8041c04:	46c0      	nop			@ (mov r8, r8)
 8041c06:	46c0      	nop			@ (mov r8, r8)
 8041c08:	46c0      	nop			@ (mov r8, r8)
 8041c0a:	46c0      	nop			@ (mov r8, r8)
 8041c0c:	46c0      	nop			@ (mov r8, r8)
 8041c0e:	46c0      	nop			@ (mov r8, r8)
 8041c10:	46c0      	nop			@ (mov r8, r8)
 8041c12:	46c0      	nop			@ (mov r8, r8)
 8041c14:	46c0      	nop			@ (mov r8, r8)
 8041c16:	46c0      	nop			@ (mov r8, r8)
 8041c18:	46c0      	nop			@ (mov r8, r8)
 8041c1a:	46c0      	nop			@ (mov r8, r8)
 8041c1c:	46c0      	nop			@ (mov r8, r8)
 8041c1e:	46c0      	nop			@ (mov r8, r8)
 8041c20:	46c0      	nop			@ (mov r8, r8)
 8041c22:	46c0      	nop			@ (mov r8, r8)
 8041c24:	46c0      	nop			@ (mov r8, r8)
 8041c26:	46c0      	nop			@ (mov r8, r8)
 8041c28:	46c0      	nop			@ (mov r8, r8)
 8041c2a:	46c0      	nop			@ (mov r8, r8)
 8041c2c:	46c0      	nop			@ (mov r8, r8)
 8041c2e:	46c0      	nop			@ (mov r8, r8)
 8041c30:	46c0      	nop			@ (mov r8, r8)
 8041c32:	46c0      	nop			@ (mov r8, r8)
 8041c34:	46c0      	nop			@ (mov r8, r8)
 8041c36:	46c0      	nop			@ (mov r8, r8)
 8041c38:	46c0      	nop			@ (mov r8, r8)
 8041c3a:	46c0      	nop			@ (mov r8, r8)
 8041c3c:	46c0      	nop			@ (mov r8, r8)
 8041c3e:	46c0      	nop			@ (mov r8, r8)
 8041c40:	46c0      	nop			@ (mov r8, r8)
 8041c42:	46c0      	nop			@ (mov r8, r8)
 8041c44:	46c0      	nop			@ (mov r8, r8)
 8041c46:	46c0      	nop			@ (mov r8, r8)
 8041c48:	46c0      	nop			@ (mov r8, r8)
 8041c4a:	46c0      	nop			@ (mov r8, r8)
 8041c4c:	46c0      	nop			@ (mov r8, r8)
 8041c4e:	46c0      	nop			@ (mov r8, r8)
 8041c50:	46c0      	nop			@ (mov r8, r8)
 8041c52:	46c0      	nop			@ (mov r8, r8)
 8041c54:	46c0      	nop			@ (mov r8, r8)
 8041c56:	46c0      	nop			@ (mov r8, r8)
 8041c58:	46c0      	nop			@ (mov r8, r8)
 8041c5a:	46c0      	nop			@ (mov r8, r8)
 8041c5c:	46c0      	nop			@ (mov r8, r8)
 8041c5e:	46c0      	nop			@ (mov r8, r8)
 8041c60:	46c0      	nop			@ (mov r8, r8)
 8041c62:	46c0      	nop			@ (mov r8, r8)
 8041c64:	46c0      	nop			@ (mov r8, r8)
 8041c66:	46c0      	nop			@ (mov r8, r8)
 8041c68:	46c0      	nop			@ (mov r8, r8)
 8041c6a:	46c0      	nop			@ (mov r8, r8)
 8041c6c:	46c0      	nop			@ (mov r8, r8)
 8041c6e:	46c0      	nop			@ (mov r8, r8)
 8041c70:	46c0      	nop			@ (mov r8, r8)
 8041c72:	46c0      	nop			@ (mov r8, r8)
 8041c74:	46c0      	nop			@ (mov r8, r8)
 8041c76:	46c0      	nop			@ (mov r8, r8)
 8041c78:	46c0      	nop			@ (mov r8, r8)
 8041c7a:	46c0      	nop			@ (mov r8, r8)
 8041c7c:	46c0      	nop			@ (mov r8, r8)
 8041c7e:	46c0      	nop			@ (mov r8, r8)
 8041c80:	46c0      	nop			@ (mov r8, r8)
 8041c82:	46c0      	nop			@ (mov r8, r8)
 8041c84:	46c0      	nop			@ (mov r8, r8)
 8041c86:	46c0      	nop			@ (mov r8, r8)
 8041c88:	46c0      	nop			@ (mov r8, r8)
 8041c8a:	46c0      	nop			@ (mov r8, r8)
 8041c8c:	46c0      	nop			@ (mov r8, r8)
 8041c8e:	46c0      	nop			@ (mov r8, r8)
 8041c90:	46c0      	nop			@ (mov r8, r8)
 8041c92:	46c0      	nop			@ (mov r8, r8)
 8041c94:	46c0      	nop			@ (mov r8, r8)
 8041c96:	46c0      	nop			@ (mov r8, r8)
 8041c98:	46c0      	nop			@ (mov r8, r8)
 8041c9a:	46c0      	nop			@ (mov r8, r8)
 8041c9c:	46c0      	nop			@ (mov r8, r8)
 8041c9e:	46c0      	nop			@ (mov r8, r8)
 8041ca0:	46c0      	nop			@ (mov r8, r8)
 8041ca2:	46c0      	nop			@ (mov r8, r8)
 8041ca4:	46c0      	nop			@ (mov r8, r8)
 8041ca6:	46c0      	nop			@ (mov r8, r8)
 8041ca8:	46c0      	nop			@ (mov r8, r8)
 8041caa:	46c0      	nop			@ (mov r8, r8)
 8041cac:	46c0      	nop			@ (mov r8, r8)
 8041cae:	46c0      	nop			@ (mov r8, r8)
 8041cb0:	46c0      	nop			@ (mov r8, r8)
 8041cb2:	46c0      	nop			@ (mov r8, r8)
 8041cb4:	46c0      	nop			@ (mov r8, r8)
 8041cb6:	46c0      	nop			@ (mov r8, r8)
 8041cb8:	46c0      	nop			@ (mov r8, r8)
 8041cba:	46c0      	nop			@ (mov r8, r8)
 8041cbc:	46c0      	nop			@ (mov r8, r8)
 8041cbe:	46c0      	nop			@ (mov r8, r8)
 8041cc0:	46c0      	nop			@ (mov r8, r8)
 8041cc2:	46c0      	nop			@ (mov r8, r8)
 8041cc4:	46c0      	nop			@ (mov r8, r8)
 8041cc6:	46c0      	nop			@ (mov r8, r8)
 8041cc8:	46c0      	nop			@ (mov r8, r8)
 8041cca:	46c0      	nop			@ (mov r8, r8)
 8041ccc:	46c0      	nop			@ (mov r8, r8)
 8041cce:	46c0      	nop			@ (mov r8, r8)
 8041cd0:	46c0      	nop			@ (mov r8, r8)
 8041cd2:	46c0      	nop			@ (mov r8, r8)
 8041cd4:	46c0      	nop			@ (mov r8, r8)
 8041cd6:	46c0      	nop			@ (mov r8, r8)
 8041cd8:	46c0      	nop			@ (mov r8, r8)
 8041cda:	46c0      	nop			@ (mov r8, r8)
 8041cdc:	46c0      	nop			@ (mov r8, r8)
 8041cde:	46c0      	nop			@ (mov r8, r8)
 8041ce0:	46c0      	nop			@ (mov r8, r8)
 8041ce2:	46c0      	nop			@ (mov r8, r8)
 8041ce4:	46c0      	nop			@ (mov r8, r8)
 8041ce6:	46c0      	nop			@ (mov r8, r8)
 8041ce8:	46c0      	nop			@ (mov r8, r8)
 8041cea:	46c0      	nop			@ (mov r8, r8)
 8041cec:	46c0      	nop			@ (mov r8, r8)
 8041cee:	46c0      	nop			@ (mov r8, r8)
 8041cf0:	46c0      	nop			@ (mov r8, r8)
 8041cf2:	46c0      	nop			@ (mov r8, r8)
 8041cf4:	46c0      	nop			@ (mov r8, r8)
 8041cf6:	46c0      	nop			@ (mov r8, r8)
 8041cf8:	46c0      	nop			@ (mov r8, r8)
 8041cfa:	46c0      	nop			@ (mov r8, r8)
 8041cfc:	e00c      	b.n	8041d18 <get_accurate_trace+0x234>
 8041cfe:	bf00      	nop
 8041d00:	40000400 	.word	0x40000400
 8041d04:	20019ff0 	.word	0x20019ff0
 8041d08:	2001805c 	.word	0x2001805c
 8041d0c:	20018364 	.word	0x20018364
 8041d10:	2001a0f0 	.word	0x2001a0f0
 8041d14:	20019f0c 	.word	0x20019f0c
 8041d18:	46c0      	nop			@ (mov r8, r8)
 8041d1a:	46c0      	nop			@ (mov r8, r8)
 8041d1c:	46c0      	nop			@ (mov r8, r8)
 8041d1e:	46c0      	nop			@ (mov r8, r8)
 8041d20:	46c0      	nop			@ (mov r8, r8)
 8041d22:	46c0      	nop			@ (mov r8, r8)
 8041d24:	46c0      	nop			@ (mov r8, r8)
 8041d26:	46c0      	nop			@ (mov r8, r8)
 8041d28:	46c0      	nop			@ (mov r8, r8)
 8041d2a:	46c0      	nop			@ (mov r8, r8)
 8041d2c:	46c0      	nop			@ (mov r8, r8)
 8041d2e:	46c0      	nop			@ (mov r8, r8)
 8041d30:	46c0      	nop			@ (mov r8, r8)
 8041d32:	46c0      	nop			@ (mov r8, r8)
 8041d34:	46c0      	nop			@ (mov r8, r8)
 8041d36:	46c0      	nop			@ (mov r8, r8)
 8041d38:	46c0      	nop			@ (mov r8, r8)
 8041d3a:	46c0      	nop			@ (mov r8, r8)
 8041d3c:	46c0      	nop			@ (mov r8, r8)
 8041d3e:	46c0      	nop			@ (mov r8, r8)
 8041d40:	46c0      	nop			@ (mov r8, r8)
 8041d42:	46c0      	nop			@ (mov r8, r8)
 8041d44:	46c0      	nop			@ (mov r8, r8)
 8041d46:	46c0      	nop			@ (mov r8, r8)
 8041d48:	46c0      	nop			@ (mov r8, r8)
 8041d4a:	46c0      	nop			@ (mov r8, r8)
 8041d4c:	46c0      	nop			@ (mov r8, r8)
 8041d4e:	46c0      	nop			@ (mov r8, r8)
 8041d50:	46c0      	nop			@ (mov r8, r8)
 8041d52:	46c0      	nop			@ (mov r8, r8)
 8041d54:	46c0      	nop			@ (mov r8, r8)
 8041d56:	46c0      	nop			@ (mov r8, r8)
 8041d58:	46c0      	nop			@ (mov r8, r8)
 8041d5a:	46c0      	nop			@ (mov r8, r8)
 8041d5c:	46c0      	nop			@ (mov r8, r8)
 8041d5e:	46c0      	nop			@ (mov r8, r8)
 8041d60:	46c0      	nop			@ (mov r8, r8)
 8041d62:	46c0      	nop			@ (mov r8, r8)
 8041d64:	46c0      	nop			@ (mov r8, r8)
 8041d66:	46c0      	nop			@ (mov r8, r8)
 8041d68:	46c0      	nop			@ (mov r8, r8)
 8041d6a:	46c0      	nop			@ (mov r8, r8)
 8041d6c:	46c0      	nop			@ (mov r8, r8)
 8041d6e:	46c0      	nop			@ (mov r8, r8)
 8041d70:	46c0      	nop			@ (mov r8, r8)
 8041d72:	46c0      	nop			@ (mov r8, r8)
 8041d74:	46c0      	nop			@ (mov r8, r8)
 8041d76:	46c0      	nop			@ (mov r8, r8)
 8041d78:	46c0      	nop			@ (mov r8, r8)
 8041d7a:	46c0      	nop			@ (mov r8, r8)
 8041d7c:	46c0      	nop			@ (mov r8, r8)
 8041d7e:	46c0      	nop			@ (mov r8, r8)
 8041d80:	46c0      	nop			@ (mov r8, r8)
 8041d82:	46c0      	nop			@ (mov r8, r8)
 8041d84:	46c0      	nop			@ (mov r8, r8)
 8041d86:	46c0      	nop			@ (mov r8, r8)
 8041d88:	46c0      	nop			@ (mov r8, r8)
 8041d8a:	46c0      	nop			@ (mov r8, r8)
 8041d8c:	46c0      	nop			@ (mov r8, r8)
 8041d8e:	46c0      	nop			@ (mov r8, r8)
 8041d90:	46c0      	nop			@ (mov r8, r8)
 8041d92:	46c0      	nop			@ (mov r8, r8)
 8041d94:	46c0      	nop			@ (mov r8, r8)
 8041d96:	46c0      	nop			@ (mov r8, r8)
 8041d98:	46c0      	nop			@ (mov r8, r8)
 8041d9a:	46c0      	nop			@ (mov r8, r8)
 8041d9c:	46c0      	nop			@ (mov r8, r8)
 8041d9e:	46c0      	nop			@ (mov r8, r8)
 8041da0:	46c0      	nop			@ (mov r8, r8)
 8041da2:	46c0      	nop			@ (mov r8, r8)
 8041da4:	46c0      	nop			@ (mov r8, r8)
 8041da6:	46c0      	nop			@ (mov r8, r8)
 8041da8:	46c0      	nop			@ (mov r8, r8)
 8041daa:	46c0      	nop			@ (mov r8, r8)
 8041dac:	46c0      	nop			@ (mov r8, r8)
 8041dae:	46c0      	nop			@ (mov r8, r8)
 8041db0:	46c0      	nop			@ (mov r8, r8)
 8041db2:	46c0      	nop			@ (mov r8, r8)
 8041db4:	46c0      	nop			@ (mov r8, r8)
 8041db6:	46c0      	nop			@ (mov r8, r8)
 8041db8:	46c0      	nop			@ (mov r8, r8)
 8041dba:	46c0      	nop			@ (mov r8, r8)
 8041dbc:	46c0      	nop			@ (mov r8, r8)
 8041dbe:	46c0      	nop			@ (mov r8, r8)
 8041dc0:	46c0      	nop			@ (mov r8, r8)
 8041dc2:	46c0      	nop			@ (mov r8, r8)
 8041dc4:	46c0      	nop			@ (mov r8, r8)
 8041dc6:	46c0      	nop			@ (mov r8, r8)
 8041dc8:	46c0      	nop			@ (mov r8, r8)
 8041dca:	46c0      	nop			@ (mov r8, r8)
 8041dcc:	46c0      	nop			@ (mov r8, r8)
 8041dce:	46c0      	nop			@ (mov r8, r8)
 8041dd0:	46c0      	nop			@ (mov r8, r8)
 8041dd2:	46c0      	nop			@ (mov r8, r8)
 8041dd4:	46c0      	nop			@ (mov r8, r8)
 8041dd6:	46c0      	nop			@ (mov r8, r8)
 8041dd8:	46c0      	nop			@ (mov r8, r8)
 8041dda:	46c0      	nop			@ (mov r8, r8)
 8041ddc:	46c0      	nop			@ (mov r8, r8)
 8041dde:	46c0      	nop			@ (mov r8, r8)
 8041de0:	46c0      	nop			@ (mov r8, r8)
 8041de2:	46c0      	nop			@ (mov r8, r8)
 8041de4:	46c0      	nop			@ (mov r8, r8)
 8041de6:	46c0      	nop			@ (mov r8, r8)
 8041de8:	46c0      	nop			@ (mov r8, r8)
 8041dea:	46c0      	nop			@ (mov r8, r8)
 8041dec:	46c0      	nop			@ (mov r8, r8)
 8041dee:	46c0      	nop			@ (mov r8, r8)
 8041df0:	46c0      	nop			@ (mov r8, r8)
 8041df2:	46c0      	nop			@ (mov r8, r8)
 8041df4:	46c0      	nop			@ (mov r8, r8)
 8041df6:	46c0      	nop			@ (mov r8, r8)
 8041df8:	46c0      	nop			@ (mov r8, r8)
 8041dfa:	46c0      	nop			@ (mov r8, r8)
 8041dfc:	46c0      	nop			@ (mov r8, r8)
 8041dfe:	46c0      	nop			@ (mov r8, r8)
 8041e00:	46c0      	nop			@ (mov r8, r8)
 8041e02:	46c0      	nop			@ (mov r8, r8)
 8041e04:	46c0      	nop			@ (mov r8, r8)
 8041e06:	46c0      	nop			@ (mov r8, r8)
 8041e08:	46c0      	nop			@ (mov r8, r8)
 8041e0a:	46c0      	nop			@ (mov r8, r8)
 8041e0c:	46c0      	nop			@ (mov r8, r8)
 8041e0e:	46c0      	nop			@ (mov r8, r8)
 8041e10:	46c0      	nop			@ (mov r8, r8)
 8041e12:	46c0      	nop			@ (mov r8, r8)
 8041e14:	46c0      	nop			@ (mov r8, r8)
 8041e16:	46c0      	nop			@ (mov r8, r8)
 8041e18:	46c0      	nop			@ (mov r8, r8)
 8041e1a:	46c0      	nop			@ (mov r8, r8)
 8041e1c:	46c0      	nop			@ (mov r8, r8)
 8041e1e:	46c0      	nop			@ (mov r8, r8)
 8041e20:	46c0      	nop			@ (mov r8, r8)
 8041e22:	46c0      	nop			@ (mov r8, r8)
 8041e24:	46c0      	nop			@ (mov r8, r8)
 8041e26:	46c0      	nop			@ (mov r8, r8)
 8041e28:	46c0      	nop			@ (mov r8, r8)
 8041e2a:	46c0      	nop			@ (mov r8, r8)
 8041e2c:	46c0      	nop			@ (mov r8, r8)
 8041e2e:	46c0      	nop			@ (mov r8, r8)
 8041e30:	46c0      	nop			@ (mov r8, r8)
 8041e32:	46c0      	nop			@ (mov r8, r8)
 8041e34:	46c0      	nop			@ (mov r8, r8)
 8041e36:	46c0      	nop			@ (mov r8, r8)
 8041e38:	46c0      	nop			@ (mov r8, r8)
 8041e3a:	46c0      	nop			@ (mov r8, r8)
 8041e3c:	46c0      	nop			@ (mov r8, r8)
 8041e3e:	46c0      	nop			@ (mov r8, r8)
 8041e40:	46c0      	nop			@ (mov r8, r8)
 8041e42:	46c0      	nop			@ (mov r8, r8)
 8041e44:	46c0      	nop			@ (mov r8, r8)
 8041e46:	46c0      	nop			@ (mov r8, r8)
 8041e48:	46c0      	nop			@ (mov r8, r8)
 8041e4a:	46c0      	nop			@ (mov r8, r8)
 8041e4c:	46c0      	nop			@ (mov r8, r8)
 8041e4e:	46c0      	nop			@ (mov r8, r8)
 8041e50:	46c0      	nop			@ (mov r8, r8)
 8041e52:	46c0      	nop			@ (mov r8, r8)
 8041e54:	46c0      	nop			@ (mov r8, r8)
 8041e56:	46c0      	nop			@ (mov r8, r8)
 8041e58:	46c0      	nop			@ (mov r8, r8)
 8041e5a:	46c0      	nop			@ (mov r8, r8)
 8041e5c:	46c0      	nop			@ (mov r8, r8)
 8041e5e:	46c0      	nop			@ (mov r8, r8)
 8041e60:	46c0      	nop			@ (mov r8, r8)
 8041e62:	46c0      	nop			@ (mov r8, r8)
 8041e64:	46c0      	nop			@ (mov r8, r8)
 8041e66:	46c0      	nop			@ (mov r8, r8)
 8041e68:	46c0      	nop			@ (mov r8, r8)
 8041e6a:	46c0      	nop			@ (mov r8, r8)
 8041e6c:	46c0      	nop			@ (mov r8, r8)
 8041e6e:	46c0      	nop			@ (mov r8, r8)
 8041e70:	46c0      	nop			@ (mov r8, r8)
 8041e72:	46c0      	nop			@ (mov r8, r8)
 8041e74:	46c0      	nop			@ (mov r8, r8)
 8041e76:	46c0      	nop			@ (mov r8, r8)
 8041e78:	46c0      	nop			@ (mov r8, r8)
 8041e7a:	46c0      	nop			@ (mov r8, r8)
 8041e7c:	46c0      	nop			@ (mov r8, r8)
 8041e7e:	46c0      	nop			@ (mov r8, r8)
 8041e80:	46c0      	nop			@ (mov r8, r8)
 8041e82:	46c0      	nop			@ (mov r8, r8)
 8041e84:	46c0      	nop			@ (mov r8, r8)
 8041e86:	46c0      	nop			@ (mov r8, r8)
 8041e88:	46c0      	nop			@ (mov r8, r8)
 8041e8a:	46c0      	nop			@ (mov r8, r8)
 8041e8c:	46c0      	nop			@ (mov r8, r8)
 8041e8e:	46c0      	nop			@ (mov r8, r8)
 8041e90:	46c0      	nop			@ (mov r8, r8)
 8041e92:	46c0      	nop			@ (mov r8, r8)
 8041e94:	46c0      	nop			@ (mov r8, r8)
 8041e96:	46c0      	nop			@ (mov r8, r8)
 8041e98:	46c0      	nop			@ (mov r8, r8)
 8041e9a:	46c0      	nop			@ (mov r8, r8)
 8041e9c:	46c0      	nop			@ (mov r8, r8)
 8041e9e:	46c0      	nop			@ (mov r8, r8)
 8041ea0:	46c0      	nop			@ (mov r8, r8)
 8041ea2:	46c0      	nop			@ (mov r8, r8)
 8041ea4:	46c0      	nop			@ (mov r8, r8)
 8041ea6:	46c0      	nop			@ (mov r8, r8)
 8041ea8:	46c0      	nop			@ (mov r8, r8)
 8041eaa:	46c0      	nop			@ (mov r8, r8)
 8041eac:	46c0      	nop			@ (mov r8, r8)
 8041eae:	46c0      	nop			@ (mov r8, r8)
 8041eb0:	46c0      	nop			@ (mov r8, r8)
 8041eb2:	46c0      	nop			@ (mov r8, r8)
 8041eb4:	46c0      	nop			@ (mov r8, r8)
 8041eb6:	46c0      	nop			@ (mov r8, r8)
 8041eb8:	46c0      	nop			@ (mov r8, r8)
 8041eba:	46c0      	nop			@ (mov r8, r8)
 8041ebc:	46c0      	nop			@ (mov r8, r8)
 8041ebe:	46c0      	nop			@ (mov r8, r8)
 8041ec0:	46c0      	nop			@ (mov r8, r8)
 8041ec2:	46c0      	nop			@ (mov r8, r8)
 8041ec4:	46c0      	nop			@ (mov r8, r8)
 8041ec6:	46c0      	nop			@ (mov r8, r8)
 8041ec8:	46c0      	nop			@ (mov r8, r8)
 8041eca:	46c0      	nop			@ (mov r8, r8)
 8041ecc:	46c0      	nop			@ (mov r8, r8)
 8041ece:	46c0      	nop			@ (mov r8, r8)
 8041ed0:	46c0      	nop			@ (mov r8, r8)
 8041ed2:	46c0      	nop			@ (mov r8, r8)
 8041ed4:	46c0      	nop			@ (mov r8, r8)
 8041ed6:	46c0      	nop			@ (mov r8, r8)
 8041ed8:	46c0      	nop			@ (mov r8, r8)
 8041eda:	46c0      	nop			@ (mov r8, r8)
 8041edc:	46c0      	nop			@ (mov r8, r8)
 8041ede:	46c0      	nop			@ (mov r8, r8)
 8041ee0:	46c0      	nop			@ (mov r8, r8)
 8041ee2:	46c0      	nop			@ (mov r8, r8)
 8041ee4:	46c0      	nop			@ (mov r8, r8)
 8041ee6:	46c0      	nop			@ (mov r8, r8)
 8041ee8:	46c0      	nop			@ (mov r8, r8)
 8041eea:	46c0      	nop			@ (mov r8, r8)
 8041eec:	46c0      	nop			@ (mov r8, r8)
 8041eee:	46c0      	nop			@ (mov r8, r8)
 8041ef0:	46c0      	nop			@ (mov r8, r8)
 8041ef2:	46c0      	nop			@ (mov r8, r8)
 8041ef4:	46c0      	nop			@ (mov r8, r8)
 8041ef6:	46c0      	nop			@ (mov r8, r8)
 8041ef8:	46c0      	nop			@ (mov r8, r8)
 8041efa:	46c0      	nop			@ (mov r8, r8)
 8041efc:	46c0      	nop			@ (mov r8, r8)
 8041efe:	46c0      	nop			@ (mov r8, r8)
 8041f00:	46c0      	nop			@ (mov r8, r8)
 8041f02:	46c0      	nop			@ (mov r8, r8)
 8041f04:	46c0      	nop			@ (mov r8, r8)
 8041f06:	46c0      	nop			@ (mov r8, r8)
 8041f08:	46c0      	nop			@ (mov r8, r8)
 8041f0a:	46c0      	nop			@ (mov r8, r8)
 8041f0c:	46c0      	nop			@ (mov r8, r8)
 8041f0e:	46c0      	nop			@ (mov r8, r8)
 8041f10:	46c0      	nop			@ (mov r8, r8)
 8041f12:	46c0      	nop			@ (mov r8, r8)
 8041f14:	46c0      	nop			@ (mov r8, r8)
 8041f16:	46c0      	nop			@ (mov r8, r8)
 8041f18:	46c0      	nop			@ (mov r8, r8)
 8041f1a:	46c0      	nop			@ (mov r8, r8)
 8041f1c:	46c0      	nop			@ (mov r8, r8)
 8041f1e:	46c0      	nop			@ (mov r8, r8)
 8041f20:	46c0      	nop			@ (mov r8, r8)
 8041f22:	46c0      	nop			@ (mov r8, r8)
 8041f24:	46c0      	nop			@ (mov r8, r8)
 8041f26:	46c0      	nop			@ (mov r8, r8)
 8041f28:	46c0      	nop			@ (mov r8, r8)
 8041f2a:	46c0      	nop			@ (mov r8, r8)
 8041f2c:	46c0      	nop			@ (mov r8, r8)
 8041f2e:	46c0      	nop			@ (mov r8, r8)
 8041f30:	46c0      	nop			@ (mov r8, r8)
 8041f32:	46c0      	nop			@ (mov r8, r8)
 8041f34:	46c0      	nop			@ (mov r8, r8)
 8041f36:	46c0      	nop			@ (mov r8, r8)
 8041f38:	46c0      	nop			@ (mov r8, r8)
 8041f3a:	46c0      	nop			@ (mov r8, r8)
 8041f3c:	46c0      	nop			@ (mov r8, r8)
 8041f3e:	46c0      	nop			@ (mov r8, r8)
 8041f40:	46c0      	nop			@ (mov r8, r8)
 8041f42:	46c0      	nop			@ (mov r8, r8)
 8041f44:	46c0      	nop			@ (mov r8, r8)
 8041f46:	46c0      	nop			@ (mov r8, r8)
 8041f48:	46c0      	nop			@ (mov r8, r8)
 8041f4a:	46c0      	nop			@ (mov r8, r8)
 8041f4c:	46c0      	nop			@ (mov r8, r8)
 8041f4e:	46c0      	nop			@ (mov r8, r8)
 8041f50:	46c0      	nop			@ (mov r8, r8)
 8041f52:	46c0      	nop			@ (mov r8, r8)
 8041f54:	46c0      	nop			@ (mov r8, r8)
 8041f56:	46c0      	nop			@ (mov r8, r8)
 8041f58:	46c0      	nop			@ (mov r8, r8)
 8041f5a:	46c0      	nop			@ (mov r8, r8)
 8041f5c:	46c0      	nop			@ (mov r8, r8)
 8041f5e:	46c0      	nop			@ (mov r8, r8)
 8041f60:	46c0      	nop			@ (mov r8, r8)
 8041f62:	46c0      	nop			@ (mov r8, r8)
 8041f64:	46c0      	nop			@ (mov r8, r8)
 8041f66:	46c0      	nop			@ (mov r8, r8)
 8041f68:	46c0      	nop			@ (mov r8, r8)
 8041f6a:	46c0      	nop			@ (mov r8, r8)
 8041f6c:	46c0      	nop			@ (mov r8, r8)
 8041f6e:	46c0      	nop			@ (mov r8, r8)
 8041f70:	46c0      	nop			@ (mov r8, r8)
 8041f72:	46c0      	nop			@ (mov r8, r8)
 8041f74:	46c0      	nop			@ (mov r8, r8)
 8041f76:	46c0      	nop			@ (mov r8, r8)
 8041f78:	46c0      	nop			@ (mov r8, r8)
 8041f7a:	46c0      	nop			@ (mov r8, r8)
 8041f7c:	46c0      	nop			@ (mov r8, r8)
 8041f7e:	46c0      	nop			@ (mov r8, r8)
 8041f80:	46c0      	nop			@ (mov r8, r8)
 8041f82:	46c0      	nop			@ (mov r8, r8)
 8041f84:	46c0      	nop			@ (mov r8, r8)
 8041f86:	46c0      	nop			@ (mov r8, r8)
 8041f88:	46c0      	nop			@ (mov r8, r8)
 8041f8a:	46c0      	nop			@ (mov r8, r8)
 8041f8c:	46c0      	nop			@ (mov r8, r8)
 8041f8e:	46c0      	nop			@ (mov r8, r8)
 8041f90:	46c0      	nop			@ (mov r8, r8)
 8041f92:	46c0      	nop			@ (mov r8, r8)
 8041f94:	46c0      	nop			@ (mov r8, r8)
 8041f96:	46c0      	nop			@ (mov r8, r8)
 8041f98:	46c0      	nop			@ (mov r8, r8)
 8041f9a:	46c0      	nop			@ (mov r8, r8)
 8041f9c:	46c0      	nop			@ (mov r8, r8)
 8041f9e:	46c0      	nop			@ (mov r8, r8)
 8041fa0:	46c0      	nop			@ (mov r8, r8)
 8041fa2:	46c0      	nop			@ (mov r8, r8)
 8041fa4:	46c0      	nop			@ (mov r8, r8)
 8041fa6:	46c0      	nop			@ (mov r8, r8)
 8041fa8:	46c0      	nop			@ (mov r8, r8)
 8041faa:	46c0      	nop			@ (mov r8, r8)
 8041fac:	46c0      	nop			@ (mov r8, r8)
 8041fae:	46c0      	nop			@ (mov r8, r8)
 8041fb0:	46c0      	nop			@ (mov r8, r8)
 8041fb2:	46c0      	nop			@ (mov r8, r8)
 8041fb4:	46c0      	nop			@ (mov r8, r8)
 8041fb6:	46c0      	nop			@ (mov r8, r8)
 8041fb8:	46c0      	nop			@ (mov r8, r8)
 8041fba:	46c0      	nop			@ (mov r8, r8)
 8041fbc:	46c0      	nop			@ (mov r8, r8)
 8041fbe:	46c0      	nop			@ (mov r8, r8)
 8041fc0:	46c0      	nop			@ (mov r8, r8)
 8041fc2:	46c0      	nop			@ (mov r8, r8)
 8041fc4:	46c0      	nop			@ (mov r8, r8)
 8041fc6:	46c0      	nop			@ (mov r8, r8)
 8041fc8:	46c0      	nop			@ (mov r8, r8)
 8041fca:	46c0      	nop			@ (mov r8, r8)
 8041fcc:	46c0      	nop			@ (mov r8, r8)
 8041fce:	46c0      	nop			@ (mov r8, r8)
 8041fd0:	46c0      	nop			@ (mov r8, r8)
 8041fd2:	46c0      	nop			@ (mov r8, r8)
 8041fd4:	46c0      	nop			@ (mov r8, r8)
 8041fd6:	46c0      	nop			@ (mov r8, r8)
 8041fd8:	46c0      	nop			@ (mov r8, r8)
 8041fda:	46c0      	nop			@ (mov r8, r8)
 8041fdc:	46c0      	nop			@ (mov r8, r8)
 8041fde:	46c0      	nop			@ (mov r8, r8)
 8041fe0:	46c0      	nop			@ (mov r8, r8)
 8041fe2:	46c0      	nop			@ (mov r8, r8)
 8041fe4:	46c0      	nop			@ (mov r8, r8)
 8041fe6:	46c0      	nop			@ (mov r8, r8)
 8041fe8:	46c0      	nop			@ (mov r8, r8)
 8041fea:	46c0      	nop			@ (mov r8, r8)
 8041fec:	46c0      	nop			@ (mov r8, r8)
 8041fee:	46c0      	nop			@ (mov r8, r8)
 8041ff0:	46c0      	nop			@ (mov r8, r8)
 8041ff2:	46c0      	nop			@ (mov r8, r8)
 8041ff4:	46c0      	nop			@ (mov r8, r8)
 8041ff6:	46c0      	nop			@ (mov r8, r8)
 8041ff8:	46c0      	nop			@ (mov r8, r8)
 8041ffa:	46c0      	nop			@ (mov r8, r8)
 8041ffc:	46c0      	nop			@ (mov r8, r8)
 8041ffe:	46c0      	nop			@ (mov r8, r8)
 8042000:	46c0      	nop			@ (mov r8, r8)
 8042002:	46c0      	nop			@ (mov r8, r8)
 8042004:	46c0      	nop			@ (mov r8, r8)
 8042006:	46c0      	nop			@ (mov r8, r8)
 8042008:	46c0      	nop			@ (mov r8, r8)
 804200a:	46c0      	nop			@ (mov r8, r8)
 804200c:	46c0      	nop			@ (mov r8, r8)
 804200e:	46c0      	nop			@ (mov r8, r8)
 8042010:	46c0      	nop			@ (mov r8, r8)
 8042012:	46c0      	nop			@ (mov r8, r8)
 8042014:	46c0      	nop			@ (mov r8, r8)
 8042016:	46c0      	nop			@ (mov r8, r8)
 8042018:	46c0      	nop			@ (mov r8, r8)
 804201a:	46c0      	nop			@ (mov r8, r8)
 804201c:	46c0      	nop			@ (mov r8, r8)
 804201e:	46c0      	nop			@ (mov r8, r8)
 8042020:	46c0      	nop			@ (mov r8, r8)
 8042022:	46c0      	nop			@ (mov r8, r8)
 8042024:	46c0      	nop			@ (mov r8, r8)
 8042026:	46c0      	nop			@ (mov r8, r8)
 8042028:	46c0      	nop			@ (mov r8, r8)
 804202a:	46c0      	nop			@ (mov r8, r8)
 804202c:	46c0      	nop			@ (mov r8, r8)
 804202e:	46c0      	nop			@ (mov r8, r8)
 8042030:	46c0      	nop			@ (mov r8, r8)
 8042032:	46c0      	nop			@ (mov r8, r8)
 8042034:	4b12      	ldr	r3, [pc, #72]	@ (8042080 <get_accurate_trace+0x59c>)
 8042036:	681b      	ldr	r3, [r3, #0]
 8042038:	6a1a      	ldr	r2, [r3, #32]
 804203a:	f241 1311 	movw	r3, #4369	@ 0x1111
 804203e:	4013      	ands	r3, r2
 8042040:	2b00      	cmp	r3, #0
 8042042:	d10f      	bne.n	8042064 <get_accurate_trace+0x580>
 8042044:	4b0e      	ldr	r3, [pc, #56]	@ (8042080 <get_accurate_trace+0x59c>)
 8042046:	681b      	ldr	r3, [r3, #0]
 8042048:	6a1a      	ldr	r2, [r3, #32]
 804204a:	f240 4344 	movw	r3, #1092	@ 0x444
 804204e:	4013      	ands	r3, r2
 8042050:	2b00      	cmp	r3, #0
 8042052:	d107      	bne.n	8042064 <get_accurate_trace+0x580>
 8042054:	4b0a      	ldr	r3, [pc, #40]	@ (8042080 <get_accurate_trace+0x59c>)
 8042056:	681b      	ldr	r3, [r3, #0]
 8042058:	681a      	ldr	r2, [r3, #0]
 804205a:	4b09      	ldr	r3, [pc, #36]	@ (8042080 <get_accurate_trace+0x59c>)
 804205c:	681b      	ldr	r3, [r3, #0]
 804205e:	f022 0201 	bic.w	r2, r2, #1
 8042062:	601a      	str	r2, [r3, #0]
 8042064:	4807      	ldr	r0, [pc, #28]	@ (8042084 <get_accurate_trace+0x5a0>)
 8042066:	f001 f9ce 	bl	8043406 <HAL_DMA_Abort>
 804206a:	4807      	ldr	r0, [pc, #28]	@ (8042088 <get_accurate_trace+0x5a4>)
 804206c:	f003 fbc4 	bl	80457f8 <HAL_TIM_Base_Stop>
 8042070:	4b06      	ldr	r3, [pc, #24]	@ (804208c <get_accurate_trace+0x5a8>)
 8042072:	681b      	ldr	r3, [r3, #0]
 8042074:	2200      	movs	r2, #0
 8042076:	601a      	str	r2, [r3, #0]
 8042078:	bf00      	nop
 804207a:	3710      	adds	r7, #16
 804207c:	46bd      	mov	sp, r7
 804207e:	bd80      	pop	{r7, pc}
 8042080:	20019f0c 	.word	0x20019f0c
 8042084:	2001a0f0 	.word	0x2001a0f0
 8042088:	20019ff0 	.word	0x20019ff0
 804208c:	2001805c 	.word	0x2001805c

08042090 <accurate_trace>:
 8042090:	b580      	push	{r7, lr}
 8042092:	b084      	sub	sp, #16
 8042094:	af00      	add	r7, sp, #0
 8042096:	2301      	movs	r3, #1
 8042098:	607b      	str	r3, [r7, #4]
 804209a:	2302      	movs	r3, #2
 804209c:	603b      	str	r3, [r7, #0]
 804209e:	2300      	movs	r3, #0
 80420a0:	60fb      	str	r3, [r7, #12]
 80420a2:	2300      	movs	r3, #0
 80420a4:	60bb      	str	r3, [r7, #8]
 80420a6:	2300      	movs	r3, #0
 80420a8:	60fb      	str	r3, [r7, #12]
 80420aa:	2300      	movs	r3, #0
 80420ac:	60bb      	str	r3, [r7, #8]
 80420ae:	e00b      	b.n	80420c8 <accurate_trace+0x38>
 80420b0:	4b28      	ldr	r3, [pc, #160]	@ (8042154 <accurate_trace+0xc4>)
 80420b2:	683a      	ldr	r2, [r7, #0]
 80420b4:	68f9      	ldr	r1, [r7, #12]
 80420b6:	6878      	ldr	r0, [r7, #4]
 80420b8:	f7ff fd14 	bl	8041ae4 <get_accurate_trace>
 80420bc:	68fb      	ldr	r3, [r7, #12]
 80420be:	1c5a      	adds	r2, r3, #1
 80420c0:	60fa      	str	r2, [r7, #12]
 80420c2:	4618      	mov	r0, r3
 80420c4:	f7ff fcc2 	bl	8041a4c <process_accurate_collision>
 80420c8:	68bb      	ldr	r3, [r7, #8]
 80420ca:	1c5a      	adds	r2, r3, #1
 80420cc:	60ba      	str	r2, [r7, #8]
 80420ce:	4a22      	ldr	r2, [pc, #136]	@ (8042158 <accurate_trace+0xc8>)
 80420d0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80420d4:	2b04      	cmp	r3, #4
 80420d6:	d1eb      	bne.n	80420b0 <accurate_trace+0x20>
 80420d8:	4820      	ldr	r0, [pc, #128]	@ (804215c <accurate_trace+0xcc>)
 80420da:	f005 fb83 	bl	80477e4 <puts>
 80420de:	4820      	ldr	r0, [pc, #128]	@ (8042160 <accurate_trace+0xd0>)
 80420e0:	f005 fb80 	bl	80477e4 <puts>
 80420e4:	481c      	ldr	r0, [pc, #112]	@ (8042158 <accurate_trace+0xc8>)
 80420e6:	f7ff fc87 	bl	80419f8 <print_clock>
 80420ea:	481b      	ldr	r0, [pc, #108]	@ (8042158 <accurate_trace+0xc8>)
 80420ec:	f7ff faf0 	bl	80416d0 <print_instructions>
 80420f0:	4819      	ldr	r0, [pc, #100]	@ (8042158 <accurate_trace+0xc8>)
 80420f2:	f7ff fcc7 	bl	8041a84 <print_accurate_collision_w_instruction>
 80420f6:	4819      	ldr	r0, [pc, #100]	@ (804215c <accurate_trace+0xcc>)
 80420f8:	f005 fb74 	bl	80477e4 <puts>
 80420fc:	2300      	movs	r3, #0
 80420fe:	60fb      	str	r3, [r7, #12]
 8042100:	2300      	movs	r3, #0
 8042102:	60bb      	str	r3, [r7, #8]
 8042104:	e00b      	b.n	804211e <accurate_trace+0x8e>
 8042106:	4b17      	ldr	r3, [pc, #92]	@ (8042164 <accurate_trace+0xd4>)
 8042108:	683a      	ldr	r2, [r7, #0]
 804210a:	68f9      	ldr	r1, [r7, #12]
 804210c:	6878      	ldr	r0, [r7, #4]
 804210e:	f7ff fce9 	bl	8041ae4 <get_accurate_trace>
 8042112:	68fb      	ldr	r3, [r7, #12]
 8042114:	1c5a      	adds	r2, r3, #1
 8042116:	60fa      	str	r2, [r7, #12]
 8042118:	4618      	mov	r0, r3
 804211a:	f7ff fc97 	bl	8041a4c <process_accurate_collision>
 804211e:	68bb      	ldr	r3, [r7, #8]
 8042120:	1c5a      	adds	r2, r3, #1
 8042122:	60ba      	str	r2, [r7, #8]
 8042124:	4a10      	ldr	r2, [pc, #64]	@ (8042168 <accurate_trace+0xd8>)
 8042126:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 804212a:	2b04      	cmp	r3, #4
 804212c:	d1eb      	bne.n	8042106 <accurate_trace+0x76>
 804212e:	480b      	ldr	r0, [pc, #44]	@ (804215c <accurate_trace+0xcc>)
 8042130:	f005 fb58 	bl	80477e4 <puts>
 8042134:	480d      	ldr	r0, [pc, #52]	@ (804216c <accurate_trace+0xdc>)
 8042136:	f005 fb55 	bl	80477e4 <puts>
 804213a:	480b      	ldr	r0, [pc, #44]	@ (8042168 <accurate_trace+0xd8>)
 804213c:	f7ff fc5c 	bl	80419f8 <print_clock>
 8042140:	4809      	ldr	r0, [pc, #36]	@ (8042168 <accurate_trace+0xd8>)
 8042142:	f7ff fac5 	bl	80416d0 <print_instructions>
 8042146:	4808      	ldr	r0, [pc, #32]	@ (8042168 <accurate_trace+0xd8>)
 8042148:	f7ff fc9c 	bl	8041a84 <print_accurate_collision_w_instruction>
 804214c:	bf00      	nop
 804214e:	3710      	adds	r7, #16
 8042150:	46bd      	mov	sp, r7
 8042152:	bd80      	pop	{r7, pc}
 8042154:	080419ad 	.word	0x080419ad
 8042158:	20018060 	.word	0x20018060
 804215c:	080486d4 	.word	0x080486d4
 8042160:	080486f8 	.word	0x080486f8
 8042164:	080419d3 	.word	0x080419d3
 8042168:	200180c0 	.word	0x200180c0
 804216c:	08048710 	.word	0x08048710

08042170 <main>:
 8042170:	b580      	push	{r7, lr}
 8042172:	b082      	sub	sp, #8
 8042174:	af00      	add	r7, sp, #0
 8042176:	2300      	movs	r3, #0
 8042178:	607b      	str	r3, [r7, #4]
 804217a:	f000 fed3 	bl	8042f24 <HAL_Init>
 804217e:	4b10      	ldr	r3, [pc, #64]	@ (80421c0 <main+0x50>)
 8042180:	2200      	movs	r2, #0
 8042182:	601a      	str	r2, [r3, #0]
 8042184:	f000 f820 	bl	80421c8 <SystemClock_Config>
 8042188:	f7fe fd42 	bl	8040c10 <MX_DMA_Init>
 804218c:	f7fe feac 	bl	8040ee8 <MX_ICACHE_Init>
 8042190:	f7fe fe06 	bl	8040da0 <MX_GPIO_Init>
 8042194:	f000 fe1a 	bl	8042dcc <MX_LPUART1_UART_Init>
 8042198:	f000 fb00 	bl	804279c <MX_TIM7_Init>
 804219c:	f000 f9b0 	bl	8042500 <MX_TIM2_Init>
 80421a0:	f000 fb32 	bl	8042808 <MX_TIM8_Init>
 80421a4:	f000 fa96 	bl	80426d4 <MX_TIM5_Init>
 80421a8:	f000 fa44 	bl	8042634 <MX_TIM4_Init>
 80421ac:	f000 f9f4 	bl	8042598 <MX_TIM3_Init>
 80421b0:	4804      	ldr	r0, [pc, #16]	@ (80421c4 <main+0x54>)
 80421b2:	f005 fb17 	bl	80477e4 <puts>
 80421b6:	f7ff ff6b 	bl	8042090 <accurate_trace>
 80421ba:	bf00      	nop
 80421bc:	e7fd      	b.n	80421ba <main+0x4a>
 80421be:	bf00      	nop
 80421c0:	e000e010 	.word	0xe000e010
 80421c4:	08048754 	.word	0x08048754

080421c8 <SystemClock_Config>:
 80421c8:	b580      	push	{r7, lr}
 80421ca:	b098      	sub	sp, #96	@ 0x60
 80421cc:	af00      	add	r7, sp, #0
 80421ce:	f107 0318 	add.w	r3, r7, #24
 80421d2:	2248      	movs	r2, #72	@ 0x48
 80421d4:	2100      	movs	r1, #0
 80421d6:	4618      	mov	r0, r3
 80421d8:	f7fe faef 	bl	80407ba <memset>
 80421dc:	1d3b      	adds	r3, r7, #4
 80421de:	2200      	movs	r2, #0
 80421e0:	601a      	str	r2, [r3, #0]
 80421e2:	605a      	str	r2, [r3, #4]
 80421e4:	609a      	str	r2, [r3, #8]
 80421e6:	60da      	str	r2, [r3, #12]
 80421e8:	611a      	str	r2, [r3, #16]
 80421ea:	f44f 6080 	mov.w	r0, #1024	@ 0x400
 80421ee:	f001 fce7 	bl	8043bc0 <HAL_PWREx_ControlVoltageScaling>
 80421f2:	4603      	mov	r3, r0
 80421f4:	2b00      	cmp	r3, #0
 80421f6:	d001      	beq.n	80421fc <SystemClock_Config+0x34>
 80421f8:	f000 f82c 	bl	8042254 <Error_Handler>
 80421fc:	2310      	movs	r3, #16
 80421fe:	61bb      	str	r3, [r7, #24]
 8042200:	2301      	movs	r3, #1
 8042202:	637b      	str	r3, [r7, #52]	@ 0x34
 8042204:	2300      	movs	r3, #0
 8042206:	63bb      	str	r3, [r7, #56]	@ 0x38
 8042208:	2360      	movs	r3, #96	@ 0x60
 804220a:	63fb      	str	r3, [r7, #60]	@ 0x3c
 804220c:	2300      	movs	r3, #0
 804220e:	647b      	str	r3, [r7, #68]	@ 0x44
 8042210:	f107 0318 	add.w	r3, r7, #24
 8042214:	4618      	mov	r0, r3
 8042216:	f001 fd63 	bl	8043ce0 <HAL_RCC_OscConfig>
 804221a:	4603      	mov	r3, r0
 804221c:	2b00      	cmp	r3, #0
 804221e:	d001      	beq.n	8042224 <SystemClock_Config+0x5c>
 8042220:	f000 f818 	bl	8042254 <Error_Handler>
 8042224:	230f      	movs	r3, #15
 8042226:	607b      	str	r3, [r7, #4]
 8042228:	2300      	movs	r3, #0
 804222a:	60bb      	str	r3, [r7, #8]
 804222c:	2300      	movs	r3, #0
 804222e:	60fb      	str	r3, [r7, #12]
 8042230:	2300      	movs	r3, #0
 8042232:	613b      	str	r3, [r7, #16]
 8042234:	2300      	movs	r3, #0
 8042236:	617b      	str	r3, [r7, #20]
 8042238:	1d3b      	adds	r3, r7, #4
 804223a:	2100      	movs	r1, #0
 804223c:	4618      	mov	r0, r3
 804223e:	f002 fa25 	bl	804468c <HAL_RCC_ClockConfig>
 8042242:	4603      	mov	r3, r0
 8042244:	2b00      	cmp	r3, #0
 8042246:	d001      	beq.n	804224c <SystemClock_Config+0x84>
 8042248:	f000 f804 	bl	8042254 <Error_Handler>
 804224c:	bf00      	nop
 804224e:	3760      	adds	r7, #96	@ 0x60
 8042250:	46bd      	mov	sp, r7
 8042252:	bd80      	pop	{r7, pc}

08042254 <Error_Handler>:
 8042254:	b480      	push	{r7}
 8042256:	af00      	add	r7, sp, #0
 8042258:	b672      	cpsid	i
 804225a:	bf00      	nop
 804225c:	bf00      	nop
 804225e:	e7fd      	b.n	804225c <Error_Handler+0x8>

08042260 <SECURE_SystemCoreClockUpdate>:
 8042260:	b480      	push	{r7}
 8042262:	af00      	add	r7, sp, #0
 8042264:	bf00      	nop
 8042266:	4618      	mov	r0, r3
 8042268:	46bd      	mov	sp, r7
 804226a:	f85d 7b04 	ldr.w	r7, [sp], #4
 804226e:	4770      	bx	lr

08042270 <HAL_MspInit>:
 8042270:	b480      	push	{r7}
 8042272:	b083      	sub	sp, #12
 8042274:	af00      	add	r7, sp, #0
 8042276:	4b0f      	ldr	r3, [pc, #60]	@ (80422b4 <HAL_MspInit+0x44>)
 8042278:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 804227a:	4a0e      	ldr	r2, [pc, #56]	@ (80422b4 <HAL_MspInit+0x44>)
 804227c:	f043 0301 	orr.w	r3, r3, #1
 8042280:	6613      	str	r3, [r2, #96]	@ 0x60
 8042282:	4b0c      	ldr	r3, [pc, #48]	@ (80422b4 <HAL_MspInit+0x44>)
 8042284:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8042286:	f003 0301 	and.w	r3, r3, #1
 804228a:	607b      	str	r3, [r7, #4]
 804228c:	687b      	ldr	r3, [r7, #4]
 804228e:	4b09      	ldr	r3, [pc, #36]	@ (80422b4 <HAL_MspInit+0x44>)
 8042290:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042292:	4a08      	ldr	r2, [pc, #32]	@ (80422b4 <HAL_MspInit+0x44>)
 8042294:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8042298:	6593      	str	r3, [r2, #88]	@ 0x58
 804229a:	4b06      	ldr	r3, [pc, #24]	@ (80422b4 <HAL_MspInit+0x44>)
 804229c:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 804229e:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80422a2:	603b      	str	r3, [r7, #0]
 80422a4:	683b      	ldr	r3, [r7, #0]
 80422a6:	bf00      	nop
 80422a8:	370c      	adds	r7, #12
 80422aa:	46bd      	mov	sp, r7
 80422ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80422b0:	4770      	bx	lr
 80422b2:	bf00      	nop
 80422b4:	40021000 	.word	0x40021000

080422b8 <MemManage_Handler>:
 80422b8:	b480      	push	{r7}
 80422ba:	af00      	add	r7, sp, #0
 80422bc:	bf00      	nop
 80422be:	e7fd      	b.n	80422bc <MemManage_Handler+0x4>

080422c0 <UsageFault_Handler>:
 80422c0:	b480      	push	{r7}
 80422c2:	af00      	add	r7, sp, #0
 80422c4:	bf00      	nop
 80422c6:	e7fd      	b.n	80422c4 <UsageFault_Handler+0x4>

080422c8 <SVC_Handler>:
 80422c8:	b480      	push	{r7}
 80422ca:	af00      	add	r7, sp, #0
 80422cc:	bf00      	nop
 80422ce:	46bd      	mov	sp, r7
 80422d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80422d4:	4770      	bx	lr

080422d6 <PendSV_Handler>:
 80422d6:	b480      	push	{r7}
 80422d8:	af00      	add	r7, sp, #0
 80422da:	bf00      	nop
 80422dc:	46bd      	mov	sp, r7
 80422de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80422e2:	4770      	bx	lr

080422e4 <SysTick_Handler>:
 80422e4:	b580      	push	{r7, lr}
 80422e6:	af00      	add	r7, sp, #0
 80422e8:	f000 fe72 	bl	8042fd0 <HAL_IncTick>
 80422ec:	bf00      	nop
 80422ee:	bd80      	pop	{r7, pc}

080422f0 <DMA1_Channel1_IRQHandler>:
 80422f0:	b580      	push	{r7, lr}
 80422f2:	af00      	add	r7, sp, #0
 80422f4:	4802      	ldr	r0, [pc, #8]	@ (8042300 <DMA1_Channel1_IRQHandler+0x10>)
 80422f6:	f001 f8e2 	bl	80434be <HAL_DMA_IRQHandler>
 80422fa:	bf00      	nop
 80422fc:	bd80      	pop	{r7, pc}
 80422fe:	bf00      	nop
 8042300:	20018294 	.word	0x20018294

08042304 <DMA1_Channel2_IRQHandler>:
 8042304:	b580      	push	{r7, lr}
 8042306:	af00      	add	r7, sp, #0
 8042308:	4802      	ldr	r0, [pc, #8]	@ (8042314 <DMA1_Channel2_IRQHandler+0x10>)
 804230a:	f001 f8d8 	bl	80434be <HAL_DMA_IRQHandler>
 804230e:	bf00      	nop
 8042310:	bd80      	pop	{r7, pc}
 8042312:	bf00      	nop
 8042314:	200182fc 	.word	0x200182fc

08042318 <DMA1_Channel3_IRQHandler>:
 8042318:	b580      	push	{r7, lr}
 804231a:	af00      	add	r7, sp, #0
 804231c:	4802      	ldr	r0, [pc, #8]	@ (8042328 <DMA1_Channel3_IRQHandler+0x10>)
 804231e:	f001 f8ce 	bl	80434be <HAL_DMA_IRQHandler>
 8042322:	bf00      	nop
 8042324:	bd80      	pop	{r7, pc}
 8042326:	bf00      	nop
 8042328:	2001a088 	.word	0x2001a088

0804232c <DMA1_Channel4_IRQHandler>:
 804232c:	b580      	push	{r7, lr}
 804232e:	af00      	add	r7, sp, #0
 8042330:	4802      	ldr	r0, [pc, #8]	@ (804233c <DMA1_Channel4_IRQHandler+0x10>)
 8042332:	f001 f8c4 	bl	80434be <HAL_DMA_IRQHandler>
 8042336:	bf00      	nop
 8042338:	bd80      	pop	{r7, pc}
 804233a:	bf00      	nop
 804233c:	2001a0f0 	.word	0x2001a0f0

08042340 <DMA1_Channel5_IRQHandler>:
 8042340:	b580      	push	{r7, lr}
 8042342:	af00      	add	r7, sp, #0
 8042344:	4802      	ldr	r0, [pc, #8]	@ (8042350 <DMA1_Channel5_IRQHandler+0x10>)
 8042346:	f001 f8ba 	bl	80434be <HAL_DMA_IRQHandler>
 804234a:	bf00      	nop
 804234c:	bd80      	pop	{r7, pc}
 804234e:	bf00      	nop
 8042350:	2001a1c0 	.word	0x2001a1c0

08042354 <DMA1_Channel6_IRQHandler>:
 8042354:	b580      	push	{r7, lr}
 8042356:	af00      	add	r7, sp, #0
 8042358:	4802      	ldr	r0, [pc, #8]	@ (8042364 <DMA1_Channel6_IRQHandler+0x10>)
 804235a:	f001 f8b0 	bl	80434be <HAL_DMA_IRQHandler>
 804235e:	bf00      	nop
 8042360:	bd80      	pop	{r7, pc}
 8042362:	bf00      	nop
 8042364:	2001a228 	.word	0x2001a228

08042368 <DMA1_Channel7_IRQHandler>:
 8042368:	b580      	push	{r7, lr}
 804236a:	af00      	add	r7, sp, #0
 804236c:	4802      	ldr	r0, [pc, #8]	@ (8042378 <DMA1_Channel7_IRQHandler+0x10>)
 804236e:	f001 f8a6 	bl	80434be <HAL_DMA_IRQHandler>
 8042372:	bf00      	nop
 8042374:	bd80      	pop	{r7, pc}
 8042376:	bf00      	nop
 8042378:	2001a290 	.word	0x2001a290

0804237c <DMA1_Channel8_IRQHandler>:
 804237c:	b580      	push	{r7, lr}
 804237e:	af00      	add	r7, sp, #0
 8042380:	4802      	ldr	r0, [pc, #8]	@ (804238c <DMA1_Channel8_IRQHandler+0x10>)
 8042382:	f001 f89c 	bl	80434be <HAL_DMA_IRQHandler>
 8042386:	bf00      	nop
 8042388:	bd80      	pop	{r7, pc}
 804238a:	bf00      	nop
 804238c:	2001a158 	.word	0x2001a158

08042390 <_read>:
 8042390:	b580      	push	{r7, lr}
 8042392:	b086      	sub	sp, #24
 8042394:	af00      	add	r7, sp, #0
 8042396:	60f8      	str	r0, [r7, #12]
 8042398:	60b9      	str	r1, [r7, #8]
 804239a:	607a      	str	r2, [r7, #4]
 804239c:	2300      	movs	r3, #0
 804239e:	617b      	str	r3, [r7, #20]
 80423a0:	e00a      	b.n	80423b8 <_read+0x28>
 80423a2:	f3af 8000 	nop.w
 80423a6:	4601      	mov	r1, r0
 80423a8:	68bb      	ldr	r3, [r7, #8]
 80423aa:	1c5a      	adds	r2, r3, #1
 80423ac:	60ba      	str	r2, [r7, #8]
 80423ae:	b2ca      	uxtb	r2, r1
 80423b0:	701a      	strb	r2, [r3, #0]
 80423b2:	697b      	ldr	r3, [r7, #20]
 80423b4:	3301      	adds	r3, #1
 80423b6:	617b      	str	r3, [r7, #20]
 80423b8:	697a      	ldr	r2, [r7, #20]
 80423ba:	687b      	ldr	r3, [r7, #4]
 80423bc:	429a      	cmp	r2, r3
 80423be:	dbf0      	blt.n	80423a2 <_read+0x12>
 80423c0:	687b      	ldr	r3, [r7, #4]
 80423c2:	4618      	mov	r0, r3
 80423c4:	3718      	adds	r7, #24
 80423c6:	46bd      	mov	sp, r7
 80423c8:	bd80      	pop	{r7, pc}

080423ca <_write>:
 80423ca:	b580      	push	{r7, lr}
 80423cc:	b086      	sub	sp, #24
 80423ce:	af00      	add	r7, sp, #0
 80423d0:	60f8      	str	r0, [r7, #12]
 80423d2:	60b9      	str	r1, [r7, #8]
 80423d4:	607a      	str	r2, [r7, #4]
 80423d6:	2300      	movs	r3, #0
 80423d8:	617b      	str	r3, [r7, #20]
 80423da:	e009      	b.n	80423f0 <_write+0x26>
 80423dc:	68bb      	ldr	r3, [r7, #8]
 80423de:	1c5a      	adds	r2, r3, #1
 80423e0:	60ba      	str	r2, [r7, #8]
 80423e2:	781b      	ldrb	r3, [r3, #0]
 80423e4:	4618      	mov	r0, r3
 80423e6:	f7fe fd87 	bl	8040ef8 <__io_putchar>
 80423ea:	697b      	ldr	r3, [r7, #20]
 80423ec:	3301      	adds	r3, #1
 80423ee:	617b      	str	r3, [r7, #20]
 80423f0:	697a      	ldr	r2, [r7, #20]
 80423f2:	687b      	ldr	r3, [r7, #4]
 80423f4:	429a      	cmp	r2, r3
 80423f6:	dbf1      	blt.n	80423dc <_write+0x12>
 80423f8:	687b      	ldr	r3, [r7, #4]
 80423fa:	4618      	mov	r0, r3
 80423fc:	3718      	adds	r7, #24
 80423fe:	46bd      	mov	sp, r7
 8042400:	bd80      	pop	{r7, pc}

08042402 <_close>:
 8042402:	b480      	push	{r7}
 8042404:	b083      	sub	sp, #12
 8042406:	af00      	add	r7, sp, #0
 8042408:	6078      	str	r0, [r7, #4]
 804240a:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 804240e:	4618      	mov	r0, r3
 8042410:	370c      	adds	r7, #12
 8042412:	46bd      	mov	sp, r7
 8042414:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042418:	4770      	bx	lr

0804241a <_fstat>:
 804241a:	b480      	push	{r7}
 804241c:	b083      	sub	sp, #12
 804241e:	af00      	add	r7, sp, #0
 8042420:	6078      	str	r0, [r7, #4]
 8042422:	6039      	str	r1, [r7, #0]
 8042424:	683b      	ldr	r3, [r7, #0]
 8042426:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 804242a:	605a      	str	r2, [r3, #4]
 804242c:	2300      	movs	r3, #0
 804242e:	4618      	mov	r0, r3
 8042430:	370c      	adds	r7, #12
 8042432:	46bd      	mov	sp, r7
 8042434:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042438:	4770      	bx	lr

0804243a <_isatty>:
 804243a:	b480      	push	{r7}
 804243c:	b083      	sub	sp, #12
 804243e:	af00      	add	r7, sp, #0
 8042440:	6078      	str	r0, [r7, #4]
 8042442:	2301      	movs	r3, #1
 8042444:	4618      	mov	r0, r3
 8042446:	370c      	adds	r7, #12
 8042448:	46bd      	mov	sp, r7
 804244a:	f85d 7b04 	ldr.w	r7, [sp], #4
 804244e:	4770      	bx	lr

08042450 <_lseek>:
 8042450:	b480      	push	{r7}
 8042452:	b085      	sub	sp, #20
 8042454:	af00      	add	r7, sp, #0
 8042456:	60f8      	str	r0, [r7, #12]
 8042458:	60b9      	str	r1, [r7, #8]
 804245a:	607a      	str	r2, [r7, #4]
 804245c:	2300      	movs	r3, #0
 804245e:	4618      	mov	r0, r3
 8042460:	3714      	adds	r7, #20
 8042462:	46bd      	mov	sp, r7
 8042464:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042468:	4770      	bx	lr
	...

0804246c <_sbrk>:
 804246c:	b580      	push	{r7, lr}
 804246e:	b086      	sub	sp, #24
 8042470:	af00      	add	r7, sp, #0
 8042472:	6078      	str	r0, [r7, #4]
 8042474:	4a14      	ldr	r2, [pc, #80]	@ (80424c8 <_sbrk+0x5c>)
 8042476:	4b15      	ldr	r3, [pc, #84]	@ (80424cc <_sbrk+0x60>)
 8042478:	1ad3      	subs	r3, r2, r3
 804247a:	617b      	str	r3, [r7, #20]
 804247c:	697b      	ldr	r3, [r7, #20]
 804247e:	613b      	str	r3, [r7, #16]
 8042480:	4b13      	ldr	r3, [pc, #76]	@ (80424d0 <_sbrk+0x64>)
 8042482:	681b      	ldr	r3, [r3, #0]
 8042484:	2b00      	cmp	r3, #0
 8042486:	d102      	bne.n	804248e <_sbrk+0x22>
 8042488:	4b11      	ldr	r3, [pc, #68]	@ (80424d0 <_sbrk+0x64>)
 804248a:	4a12      	ldr	r2, [pc, #72]	@ (80424d4 <_sbrk+0x68>)
 804248c:	601a      	str	r2, [r3, #0]
 804248e:	4b10      	ldr	r3, [pc, #64]	@ (80424d0 <_sbrk+0x64>)
 8042490:	681a      	ldr	r2, [r3, #0]
 8042492:	687b      	ldr	r3, [r7, #4]
 8042494:	4413      	add	r3, r2
 8042496:	693a      	ldr	r2, [r7, #16]
 8042498:	429a      	cmp	r2, r3
 804249a:	d207      	bcs.n	80424ac <_sbrk+0x40>
 804249c:	f005 fa3e 	bl	804791c <__errno>
 80424a0:	4603      	mov	r3, r0
 80424a2:	220c      	movs	r2, #12
 80424a4:	601a      	str	r2, [r3, #0]
 80424a6:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80424aa:	e009      	b.n	80424c0 <_sbrk+0x54>
 80424ac:	4b08      	ldr	r3, [pc, #32]	@ (80424d0 <_sbrk+0x64>)
 80424ae:	681b      	ldr	r3, [r3, #0]
 80424b0:	60fb      	str	r3, [r7, #12]
 80424b2:	4b07      	ldr	r3, [pc, #28]	@ (80424d0 <_sbrk+0x64>)
 80424b4:	681a      	ldr	r2, [r3, #0]
 80424b6:	687b      	ldr	r3, [r7, #4]
 80424b8:	4413      	add	r3, r2
 80424ba:	4a05      	ldr	r2, [pc, #20]	@ (80424d0 <_sbrk+0x64>)
 80424bc:	6013      	str	r3, [r2, #0]
 80424be:	68fb      	ldr	r3, [r7, #12]
 80424c0:	4618      	mov	r0, r3
 80424c2:	3718      	adds	r7, #24
 80424c4:	46bd      	mov	sp, r7
 80424c6:	bd80      	pop	{r7, pc}
 80424c8:	20030000 	.word	0x20030000
 80424cc:	00000400 	.word	0x00000400
 80424d0:	20019ebc 	.word	0x20019ebc
 80424d4:	2001a390 	.word	0x2001a390

080424d8 <SystemInit>:
 80424d8:	b480      	push	{r7}
 80424da:	af00      	add	r7, sp, #0
 80424dc:	bf00      	nop
 80424de:	46bd      	mov	sp, r7
 80424e0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80424e4:	4770      	bx	lr
	...

080424e8 <SystemCoreClockUpdate>:
 80424e8:	b580      	push	{r7, lr}
 80424ea:	af00      	add	r7, sp, #0
 80424ec:	f7ff feb8 	bl	8042260 <SECURE_SystemCoreClockUpdate>
 80424f0:	4603      	mov	r3, r0
 80424f2:	4a02      	ldr	r2, [pc, #8]	@ (80424fc <SystemCoreClockUpdate+0x14>)
 80424f4:	6013      	str	r3, [r2, #0]
 80424f6:	bf00      	nop
 80424f8:	bd80      	pop	{r7, pc}
 80424fa:	bf00      	nop
 80424fc:	20018120 	.word	0x20018120

08042500 <MX_TIM2_Init>:
 8042500:	b580      	push	{r7, lr}
 8042502:	b088      	sub	sp, #32
 8042504:	af00      	add	r7, sp, #0
 8042506:	f107 0310 	add.w	r3, r7, #16
 804250a:	2200      	movs	r2, #0
 804250c:	601a      	str	r2, [r3, #0]
 804250e:	605a      	str	r2, [r3, #4]
 8042510:	609a      	str	r2, [r3, #8]
 8042512:	60da      	str	r2, [r3, #12]
 8042514:	1d3b      	adds	r3, r7, #4
 8042516:	2200      	movs	r2, #0
 8042518:	601a      	str	r2, [r3, #0]
 804251a:	605a      	str	r2, [r3, #4]
 804251c:	609a      	str	r2, [r3, #8]
 804251e:	4b1d      	ldr	r3, [pc, #116]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042520:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 8042524:	601a      	str	r2, [r3, #0]
 8042526:	4b1b      	ldr	r3, [pc, #108]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042528:	2200      	movs	r2, #0
 804252a:	605a      	str	r2, [r3, #4]
 804252c:	4b19      	ldr	r3, [pc, #100]	@ (8042594 <MX_TIM2_Init+0x94>)
 804252e:	2200      	movs	r2, #0
 8042530:	609a      	str	r2, [r3, #8]
 8042532:	4b18      	ldr	r3, [pc, #96]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042534:	2201      	movs	r2, #1
 8042536:	60da      	str	r2, [r3, #12]
 8042538:	4b16      	ldr	r3, [pc, #88]	@ (8042594 <MX_TIM2_Init+0x94>)
 804253a:	2200      	movs	r2, #0
 804253c:	611a      	str	r2, [r3, #16]
 804253e:	4b15      	ldr	r3, [pc, #84]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042540:	2280      	movs	r2, #128	@ 0x80
 8042542:	619a      	str	r2, [r3, #24]
 8042544:	4813      	ldr	r0, [pc, #76]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042546:	f003 f897 	bl	8045678 <HAL_TIM_Base_Init>
 804254a:	4603      	mov	r3, r0
 804254c:	2b00      	cmp	r3, #0
 804254e:	d001      	beq.n	8042554 <MX_TIM2_Init+0x54>
 8042550:	f7ff fe80 	bl	8042254 <Error_Handler>
 8042554:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8042558:	613b      	str	r3, [r7, #16]
 804255a:	f107 0310 	add.w	r3, r7, #16
 804255e:	4619      	mov	r1, r3
 8042560:	480c      	ldr	r0, [pc, #48]	@ (8042594 <MX_TIM2_Init+0x94>)
 8042562:	f003 fae5 	bl	8045b30 <HAL_TIM_ConfigClockSource>
 8042566:	4603      	mov	r3, r0
 8042568:	2b00      	cmp	r3, #0
 804256a:	d001      	beq.n	8042570 <MX_TIM2_Init+0x70>
 804256c:	f7ff fe72 	bl	8042254 <Error_Handler>
 8042570:	2320      	movs	r3, #32
 8042572:	607b      	str	r3, [r7, #4]
 8042574:	2300      	movs	r3, #0
 8042576:	60fb      	str	r3, [r7, #12]
 8042578:	1d3b      	adds	r3, r7, #4
 804257a:	4619      	mov	r1, r3
 804257c:	4805      	ldr	r0, [pc, #20]	@ (8042594 <MX_TIM2_Init+0x94>)
 804257e:	f004 f88b 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 8042582:	4603      	mov	r3, r0
 8042584:	2b00      	cmp	r3, #0
 8042586:	d001      	beq.n	804258c <MX_TIM2_Init+0x8c>
 8042588:	f7ff fe64 	bl	8042254 <Error_Handler>
 804258c:	bf00      	nop
 804258e:	3720      	adds	r7, #32
 8042590:	46bd      	mov	sp, r7
 8042592:	bd80      	pop	{r7, pc}
 8042594:	20019ec0 	.word	0x20019ec0

08042598 <MX_TIM3_Init>:
 8042598:	b580      	push	{r7, lr}
 804259a:	b088      	sub	sp, #32
 804259c:	af00      	add	r7, sp, #0
 804259e:	f107 0310 	add.w	r3, r7, #16
 80425a2:	2200      	movs	r2, #0
 80425a4:	601a      	str	r2, [r3, #0]
 80425a6:	605a      	str	r2, [r3, #4]
 80425a8:	609a      	str	r2, [r3, #8]
 80425aa:	60da      	str	r2, [r3, #12]
 80425ac:	1d3b      	adds	r3, r7, #4
 80425ae:	2200      	movs	r2, #0
 80425b0:	601a      	str	r2, [r3, #0]
 80425b2:	605a      	str	r2, [r3, #4]
 80425b4:	609a      	str	r2, [r3, #8]
 80425b6:	4b1d      	ldr	r3, [pc, #116]	@ (804262c <MX_TIM3_Init+0x94>)
 80425b8:	4a1d      	ldr	r2, [pc, #116]	@ (8042630 <MX_TIM3_Init+0x98>)
 80425ba:	601a      	str	r2, [r3, #0]
 80425bc:	4b1b      	ldr	r3, [pc, #108]	@ (804262c <MX_TIM3_Init+0x94>)
 80425be:	2200      	movs	r2, #0
 80425c0:	605a      	str	r2, [r3, #4]
 80425c2:	4b1a      	ldr	r3, [pc, #104]	@ (804262c <MX_TIM3_Init+0x94>)
 80425c4:	2200      	movs	r2, #0
 80425c6:	609a      	str	r2, [r3, #8]
 80425c8:	4b18      	ldr	r3, [pc, #96]	@ (804262c <MX_TIM3_Init+0x94>)
 80425ca:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 80425ce:	60da      	str	r2, [r3, #12]
 80425d0:	4b16      	ldr	r3, [pc, #88]	@ (804262c <MX_TIM3_Init+0x94>)
 80425d2:	2200      	movs	r2, #0
 80425d4:	611a      	str	r2, [r3, #16]
 80425d6:	4b15      	ldr	r3, [pc, #84]	@ (804262c <MX_TIM3_Init+0x94>)
 80425d8:	2280      	movs	r2, #128	@ 0x80
 80425da:	619a      	str	r2, [r3, #24]
 80425dc:	4813      	ldr	r0, [pc, #76]	@ (804262c <MX_TIM3_Init+0x94>)
 80425de:	f003 f84b 	bl	8045678 <HAL_TIM_Base_Init>
 80425e2:	4603      	mov	r3, r0
 80425e4:	2b00      	cmp	r3, #0
 80425e6:	d001      	beq.n	80425ec <MX_TIM3_Init+0x54>
 80425e8:	f7ff fe34 	bl	8042254 <Error_Handler>
 80425ec:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 80425f0:	613b      	str	r3, [r7, #16]
 80425f2:	f107 0310 	add.w	r3, r7, #16
 80425f6:	4619      	mov	r1, r3
 80425f8:	480c      	ldr	r0, [pc, #48]	@ (804262c <MX_TIM3_Init+0x94>)
 80425fa:	f003 fa99 	bl	8045b30 <HAL_TIM_ConfigClockSource>
 80425fe:	4603      	mov	r3, r0
 8042600:	2b00      	cmp	r3, #0
 8042602:	d001      	beq.n	8042608 <MX_TIM3_Init+0x70>
 8042604:	f7ff fe26 	bl	8042254 <Error_Handler>
 8042608:	2300      	movs	r3, #0
 804260a:	607b      	str	r3, [r7, #4]
 804260c:	2300      	movs	r3, #0
 804260e:	60fb      	str	r3, [r7, #12]
 8042610:	1d3b      	adds	r3, r7, #4
 8042612:	4619      	mov	r1, r3
 8042614:	4805      	ldr	r0, [pc, #20]	@ (804262c <MX_TIM3_Init+0x94>)
 8042616:	f004 f83f 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 804261a:	4603      	mov	r3, r0
 804261c:	2b00      	cmp	r3, #0
 804261e:	d001      	beq.n	8042624 <MX_TIM3_Init+0x8c>
 8042620:	f7ff fe18 	bl	8042254 <Error_Handler>
 8042624:	bf00      	nop
 8042626:	3720      	adds	r7, #32
 8042628:	46bd      	mov	sp, r7
 804262a:	bd80      	pop	{r7, pc}
 804262c:	20019f0c 	.word	0x20019f0c
 8042630:	40000400 	.word	0x40000400

08042634 <MX_TIM4_Init>:
 8042634:	b580      	push	{r7, lr}
 8042636:	b088      	sub	sp, #32
 8042638:	af00      	add	r7, sp, #0
 804263a:	f107 030c 	add.w	r3, r7, #12
 804263e:	2200      	movs	r2, #0
 8042640:	601a      	str	r2, [r3, #0]
 8042642:	605a      	str	r2, [r3, #4]
 8042644:	609a      	str	r2, [r3, #8]
 8042646:	60da      	str	r2, [r3, #12]
 8042648:	611a      	str	r2, [r3, #16]
 804264a:	463b      	mov	r3, r7
 804264c:	2200      	movs	r2, #0
 804264e:	601a      	str	r2, [r3, #0]
 8042650:	605a      	str	r2, [r3, #4]
 8042652:	609a      	str	r2, [r3, #8]
 8042654:	4b1d      	ldr	r3, [pc, #116]	@ (80426cc <MX_TIM4_Init+0x98>)
 8042656:	4a1e      	ldr	r2, [pc, #120]	@ (80426d0 <MX_TIM4_Init+0x9c>)
 8042658:	601a      	str	r2, [r3, #0]
 804265a:	4b1c      	ldr	r3, [pc, #112]	@ (80426cc <MX_TIM4_Init+0x98>)
 804265c:	2200      	movs	r2, #0
 804265e:	605a      	str	r2, [r3, #4]
 8042660:	4b1a      	ldr	r3, [pc, #104]	@ (80426cc <MX_TIM4_Init+0x98>)
 8042662:	2200      	movs	r2, #0
 8042664:	609a      	str	r2, [r3, #8]
 8042666:	4b19      	ldr	r3, [pc, #100]	@ (80426cc <MX_TIM4_Init+0x98>)
 8042668:	220f      	movs	r2, #15
 804266a:	60da      	str	r2, [r3, #12]
 804266c:	4b17      	ldr	r3, [pc, #92]	@ (80426cc <MX_TIM4_Init+0x98>)
 804266e:	2200      	movs	r2, #0
 8042670:	611a      	str	r2, [r3, #16]
 8042672:	4b16      	ldr	r3, [pc, #88]	@ (80426cc <MX_TIM4_Init+0x98>)
 8042674:	2280      	movs	r2, #128	@ 0x80
 8042676:	619a      	str	r2, [r3, #24]
 8042678:	4814      	ldr	r0, [pc, #80]	@ (80426cc <MX_TIM4_Init+0x98>)
 804267a:	f002 fffd 	bl	8045678 <HAL_TIM_Base_Init>
 804267e:	4603      	mov	r3, r0
 8042680:	2b00      	cmp	r3, #0
 8042682:	d001      	beq.n	8042688 <MX_TIM4_Init+0x54>
 8042684:	f7ff fde6 	bl	8042254 <Error_Handler>
 8042688:	2307      	movs	r3, #7
 804268a:	60fb      	str	r3, [r7, #12]
 804268c:	2310      	movs	r3, #16
 804268e:	613b      	str	r3, [r7, #16]
 8042690:	f107 030c 	add.w	r3, r7, #12
 8042694:	4619      	mov	r1, r3
 8042696:	480d      	ldr	r0, [pc, #52]	@ (80426cc <MX_TIM4_Init+0x98>)
 8042698:	f003 fb13 	bl	8045cc2 <HAL_TIM_SlaveConfigSynchro>
 804269c:	4603      	mov	r3, r0
 804269e:	2b00      	cmp	r3, #0
 80426a0:	d001      	beq.n	80426a6 <MX_TIM4_Init+0x72>
 80426a2:	f7ff fdd7 	bl	8042254 <Error_Handler>
 80426a6:	2320      	movs	r3, #32
 80426a8:	603b      	str	r3, [r7, #0]
 80426aa:	2300      	movs	r3, #0
 80426ac:	60bb      	str	r3, [r7, #8]
 80426ae:	463b      	mov	r3, r7
 80426b0:	4619      	mov	r1, r3
 80426b2:	4806      	ldr	r0, [pc, #24]	@ (80426cc <MX_TIM4_Init+0x98>)
 80426b4:	f003 fff0 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 80426b8:	4603      	mov	r3, r0
 80426ba:	2b00      	cmp	r3, #0
 80426bc:	d001      	beq.n	80426c2 <MX_TIM4_Init+0x8e>
 80426be:	f7ff fdc9 	bl	8042254 <Error_Handler>
 80426c2:	bf00      	nop
 80426c4:	3720      	adds	r7, #32
 80426c6:	46bd      	mov	sp, r7
 80426c8:	bd80      	pop	{r7, pc}
 80426ca:	bf00      	nop
 80426cc:	20019f58 	.word	0x20019f58
 80426d0:	40000800 	.word	0x40000800

080426d4 <MX_TIM5_Init>:
 80426d4:	b580      	push	{r7, lr}
 80426d6:	b08c      	sub	sp, #48	@ 0x30
 80426d8:	af00      	add	r7, sp, #0
 80426da:	f107 0320 	add.w	r3, r7, #32
 80426de:	2200      	movs	r2, #0
 80426e0:	601a      	str	r2, [r3, #0]
 80426e2:	605a      	str	r2, [r3, #4]
 80426e4:	609a      	str	r2, [r3, #8]
 80426e6:	60da      	str	r2, [r3, #12]
 80426e8:	f107 030c 	add.w	r3, r7, #12
 80426ec:	2200      	movs	r2, #0
 80426ee:	601a      	str	r2, [r3, #0]
 80426f0:	605a      	str	r2, [r3, #4]
 80426f2:	609a      	str	r2, [r3, #8]
 80426f4:	60da      	str	r2, [r3, #12]
 80426f6:	611a      	str	r2, [r3, #16]
 80426f8:	463b      	mov	r3, r7
 80426fa:	2200      	movs	r2, #0
 80426fc:	601a      	str	r2, [r3, #0]
 80426fe:	605a      	str	r2, [r3, #4]
 8042700:	609a      	str	r2, [r3, #8]
 8042702:	4b24      	ldr	r3, [pc, #144]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042704:	4a24      	ldr	r2, [pc, #144]	@ (8042798 <MX_TIM5_Init+0xc4>)
 8042706:	601a      	str	r2, [r3, #0]
 8042708:	4b22      	ldr	r3, [pc, #136]	@ (8042794 <MX_TIM5_Init+0xc0>)
 804270a:	2200      	movs	r2, #0
 804270c:	605a      	str	r2, [r3, #4]
 804270e:	4b21      	ldr	r3, [pc, #132]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042710:	2210      	movs	r2, #16
 8042712:	609a      	str	r2, [r3, #8]
 8042714:	4b1f      	ldr	r3, [pc, #124]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042716:	2201      	movs	r2, #1
 8042718:	60da      	str	r2, [r3, #12]
 804271a:	4b1e      	ldr	r3, [pc, #120]	@ (8042794 <MX_TIM5_Init+0xc0>)
 804271c:	2200      	movs	r2, #0
 804271e:	611a      	str	r2, [r3, #16]
 8042720:	4b1c      	ldr	r3, [pc, #112]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042722:	2280      	movs	r2, #128	@ 0x80
 8042724:	619a      	str	r2, [r3, #24]
 8042726:	481b      	ldr	r0, [pc, #108]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042728:	f002 ffa6 	bl	8045678 <HAL_TIM_Base_Init>
 804272c:	4603      	mov	r3, r0
 804272e:	2b00      	cmp	r3, #0
 8042730:	d001      	beq.n	8042736 <MX_TIM5_Init+0x62>
 8042732:	f7ff fd8f 	bl	8042254 <Error_Handler>
 8042736:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 804273a:	623b      	str	r3, [r7, #32]
 804273c:	f107 0320 	add.w	r3, r7, #32
 8042740:	4619      	mov	r1, r3
 8042742:	4814      	ldr	r0, [pc, #80]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042744:	f003 f9f4 	bl	8045b30 <HAL_TIM_ConfigClockSource>
 8042748:	4603      	mov	r3, r0
 804274a:	2b00      	cmp	r3, #0
 804274c:	d001      	beq.n	8042752 <MX_TIM5_Init+0x7e>
 804274e:	f7ff fd81 	bl	8042254 <Error_Handler>
 8042752:	2304      	movs	r3, #4
 8042754:	60fb      	str	r3, [r7, #12]
 8042756:	2320      	movs	r3, #32
 8042758:	613b      	str	r3, [r7, #16]
 804275a:	f107 030c 	add.w	r3, r7, #12
 804275e:	4619      	mov	r1, r3
 8042760:	480c      	ldr	r0, [pc, #48]	@ (8042794 <MX_TIM5_Init+0xc0>)
 8042762:	f003 faae 	bl	8045cc2 <HAL_TIM_SlaveConfigSynchro>
 8042766:	4603      	mov	r3, r0
 8042768:	2b00      	cmp	r3, #0
 804276a:	d001      	beq.n	8042770 <MX_TIM5_Init+0x9c>
 804276c:	f7ff fd72 	bl	8042254 <Error_Handler>
 8042770:	2300      	movs	r3, #0
 8042772:	603b      	str	r3, [r7, #0]
 8042774:	2300      	movs	r3, #0
 8042776:	60bb      	str	r3, [r7, #8]
 8042778:	463b      	mov	r3, r7
 804277a:	4619      	mov	r1, r3
 804277c:	4805      	ldr	r0, [pc, #20]	@ (8042794 <MX_TIM5_Init+0xc0>)
 804277e:	f003 ff8b 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 8042782:	4603      	mov	r3, r0
 8042784:	2b00      	cmp	r3, #0
 8042786:	d001      	beq.n	804278c <MX_TIM5_Init+0xb8>
 8042788:	f7ff fd64 	bl	8042254 <Error_Handler>
 804278c:	bf00      	nop
 804278e:	3730      	adds	r7, #48	@ 0x30
 8042790:	46bd      	mov	sp, r7
 8042792:	bd80      	pop	{r7, pc}
 8042794:	20019fa4 	.word	0x20019fa4
 8042798:	40000c00 	.word	0x40000c00

0804279c <MX_TIM7_Init>:
 804279c:	b580      	push	{r7, lr}
 804279e:	b084      	sub	sp, #16
 80427a0:	af00      	add	r7, sp, #0
 80427a2:	1d3b      	adds	r3, r7, #4
 80427a4:	2200      	movs	r2, #0
 80427a6:	601a      	str	r2, [r3, #0]
 80427a8:	605a      	str	r2, [r3, #4]
 80427aa:	609a      	str	r2, [r3, #8]
 80427ac:	4b14      	ldr	r3, [pc, #80]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427ae:	4a15      	ldr	r2, [pc, #84]	@ (8042804 <MX_TIM7_Init+0x68>)
 80427b0:	601a      	str	r2, [r3, #0]
 80427b2:	4b13      	ldr	r3, [pc, #76]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427b4:	2200      	movs	r2, #0
 80427b6:	605a      	str	r2, [r3, #4]
 80427b8:	4b11      	ldr	r3, [pc, #68]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427ba:	2200      	movs	r2, #0
 80427bc:	609a      	str	r2, [r3, #8]
 80427be:	4b10      	ldr	r3, [pc, #64]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427c0:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 80427c4:	60da      	str	r2, [r3, #12]
 80427c6:	4b0e      	ldr	r3, [pc, #56]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427c8:	2280      	movs	r2, #128	@ 0x80
 80427ca:	619a      	str	r2, [r3, #24]
 80427cc:	480c      	ldr	r0, [pc, #48]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427ce:	f002 ff53 	bl	8045678 <HAL_TIM_Base_Init>
 80427d2:	4603      	mov	r3, r0
 80427d4:	2b00      	cmp	r3, #0
 80427d6:	d001      	beq.n	80427dc <MX_TIM7_Init+0x40>
 80427d8:	f7ff fd3c 	bl	8042254 <Error_Handler>
 80427dc:	2300      	movs	r3, #0
 80427de:	607b      	str	r3, [r7, #4]
 80427e0:	2300      	movs	r3, #0
 80427e2:	60fb      	str	r3, [r7, #12]
 80427e4:	1d3b      	adds	r3, r7, #4
 80427e6:	4619      	mov	r1, r3
 80427e8:	4805      	ldr	r0, [pc, #20]	@ (8042800 <MX_TIM7_Init+0x64>)
 80427ea:	f003 ff55 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 80427ee:	4603      	mov	r3, r0
 80427f0:	2b00      	cmp	r3, #0
 80427f2:	d001      	beq.n	80427f8 <MX_TIM7_Init+0x5c>
 80427f4:	f7ff fd2e 	bl	8042254 <Error_Handler>
 80427f8:	bf00      	nop
 80427fa:	3710      	adds	r7, #16
 80427fc:	46bd      	mov	sp, r7
 80427fe:	bd80      	pop	{r7, pc}
 8042800:	20019ff0 	.word	0x20019ff0
 8042804:	40001400 	.word	0x40001400

08042808 <MX_TIM8_Init>:
 8042808:	b580      	push	{r7, lr}
 804280a:	b0a0      	sub	sp, #128	@ 0x80
 804280c:	af00      	add	r7, sp, #0
 804280e:	f107 0370 	add.w	r3, r7, #112	@ 0x70
 8042812:	2200      	movs	r2, #0
 8042814:	601a      	str	r2, [r3, #0]
 8042816:	605a      	str	r2, [r3, #4]
 8042818:	609a      	str	r2, [r3, #8]
 804281a:	60da      	str	r2, [r3, #12]
 804281c:	f107 035c 	add.w	r3, r7, #92	@ 0x5c
 8042820:	2200      	movs	r2, #0
 8042822:	601a      	str	r2, [r3, #0]
 8042824:	605a      	str	r2, [r3, #4]
 8042826:	609a      	str	r2, [r3, #8]
 8042828:	60da      	str	r2, [r3, #12]
 804282a:	611a      	str	r2, [r3, #16]
 804282c:	f107 0350 	add.w	r3, r7, #80	@ 0x50
 8042830:	2200      	movs	r2, #0
 8042832:	601a      	str	r2, [r3, #0]
 8042834:	605a      	str	r2, [r3, #4]
 8042836:	609a      	str	r2, [r3, #8]
 8042838:	f107 0334 	add.w	r3, r7, #52	@ 0x34
 804283c:	2200      	movs	r2, #0
 804283e:	601a      	str	r2, [r3, #0]
 8042840:	605a      	str	r2, [r3, #4]
 8042842:	609a      	str	r2, [r3, #8]
 8042844:	60da      	str	r2, [r3, #12]
 8042846:	611a      	str	r2, [r3, #16]
 8042848:	615a      	str	r2, [r3, #20]
 804284a:	619a      	str	r2, [r3, #24]
 804284c:	463b      	mov	r3, r7
 804284e:	2234      	movs	r2, #52	@ 0x34
 8042850:	2100      	movs	r1, #0
 8042852:	4618      	mov	r0, r3
 8042854:	f7fd ffb1 	bl	80407ba <memset>
 8042858:	4b53      	ldr	r3, [pc, #332]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804285a:	4a54      	ldr	r2, [pc, #336]	@ (80429ac <MX_TIM8_Init+0x1a4>)
 804285c:	601a      	str	r2, [r3, #0]
 804285e:	4b52      	ldr	r3, [pc, #328]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042860:	2200      	movs	r2, #0
 8042862:	605a      	str	r2, [r3, #4]
 8042864:	4b50      	ldr	r3, [pc, #320]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042866:	2200      	movs	r2, #0
 8042868:	609a      	str	r2, [r3, #8]
 804286a:	4b4f      	ldr	r3, [pc, #316]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804286c:	2214      	movs	r2, #20
 804286e:	60da      	str	r2, [r3, #12]
 8042870:	4b4d      	ldr	r3, [pc, #308]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042872:	2200      	movs	r2, #0
 8042874:	611a      	str	r2, [r3, #16]
 8042876:	4b4c      	ldr	r3, [pc, #304]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042878:	2200      	movs	r2, #0
 804287a:	615a      	str	r2, [r3, #20]
 804287c:	4b4a      	ldr	r3, [pc, #296]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804287e:	2280      	movs	r2, #128	@ 0x80
 8042880:	619a      	str	r2, [r3, #24]
 8042882:	4849      	ldr	r0, [pc, #292]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042884:	f002 fef8 	bl	8045678 <HAL_TIM_Base_Init>
 8042888:	4603      	mov	r3, r0
 804288a:	2b00      	cmp	r3, #0
 804288c:	d001      	beq.n	8042892 <MX_TIM8_Init+0x8a>
 804288e:	f7ff fce1 	bl	8042254 <Error_Handler>
 8042892:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8042896:	673b      	str	r3, [r7, #112]	@ 0x70
 8042898:	f107 0370 	add.w	r3, r7, #112	@ 0x70
 804289c:	4619      	mov	r1, r3
 804289e:	4842      	ldr	r0, [pc, #264]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 80428a0:	f003 f946 	bl	8045b30 <HAL_TIM_ConfigClockSource>
 80428a4:	4603      	mov	r3, r0
 80428a6:	2b00      	cmp	r3, #0
 80428a8:	d001      	beq.n	80428ae <MX_TIM8_Init+0xa6>
 80428aa:	f7ff fcd3 	bl	8042254 <Error_Handler>
 80428ae:	483e      	ldr	r0, [pc, #248]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 80428b0:	f002 ffc9 	bl	8045846 <HAL_TIM_PWM_Init>
 80428b4:	4603      	mov	r3, r0
 80428b6:	2b00      	cmp	r3, #0
 80428b8:	d001      	beq.n	80428be <MX_TIM8_Init+0xb6>
 80428ba:	f7ff fccb 	bl	8042254 <Error_Handler>
 80428be:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
 80428c2:	65fb      	str	r3, [r7, #92]	@ 0x5c
 80428c4:	2310      	movs	r3, #16
 80428c6:	663b      	str	r3, [r7, #96]	@ 0x60
 80428c8:	f107 035c 	add.w	r3, r7, #92	@ 0x5c
 80428cc:	4619      	mov	r1, r3
 80428ce:	4836      	ldr	r0, [pc, #216]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 80428d0:	f003 f9f7 	bl	8045cc2 <HAL_TIM_SlaveConfigSynchro>
 80428d4:	4603      	mov	r3, r0
 80428d6:	2b00      	cmp	r3, #0
 80428d8:	d001      	beq.n	80428de <MX_TIM8_Init+0xd6>
 80428da:	f7ff fcbb 	bl	8042254 <Error_Handler>
 80428de:	2320      	movs	r3, #32
 80428e0:	653b      	str	r3, [r7, #80]	@ 0x50
 80428e2:	2300      	movs	r3, #0
 80428e4:	657b      	str	r3, [r7, #84]	@ 0x54
 80428e6:	2300      	movs	r3, #0
 80428e8:	65bb      	str	r3, [r7, #88]	@ 0x58
 80428ea:	f107 0350 	add.w	r3, r7, #80	@ 0x50
 80428ee:	4619      	mov	r1, r3
 80428f0:	482d      	ldr	r0, [pc, #180]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 80428f2:	f003 fed1 	bl	8046698 <HAL_TIMEx_MasterConfigSynchronization>
 80428f6:	4603      	mov	r3, r0
 80428f8:	2b00      	cmp	r3, #0
 80428fa:	d001      	beq.n	8042900 <MX_TIM8_Init+0xf8>
 80428fc:	f7ff fcaa 	bl	8042254 <Error_Handler>
 8042900:	2370      	movs	r3, #112	@ 0x70
 8042902:	637b      	str	r3, [r7, #52]	@ 0x34
 8042904:	2309      	movs	r3, #9
 8042906:	63bb      	str	r3, [r7, #56]	@ 0x38
 8042908:	2300      	movs	r3, #0
 804290a:	63fb      	str	r3, [r7, #60]	@ 0x3c
 804290c:	2300      	movs	r3, #0
 804290e:	643b      	str	r3, [r7, #64]	@ 0x40
 8042910:	2300      	movs	r3, #0
 8042912:	647b      	str	r3, [r7, #68]	@ 0x44
 8042914:	2300      	movs	r3, #0
 8042916:	64bb      	str	r3, [r7, #72]	@ 0x48
 8042918:	2300      	movs	r3, #0
 804291a:	64fb      	str	r3, [r7, #76]	@ 0x4c
 804291c:	f107 0334 	add.w	r3, r7, #52	@ 0x34
 8042920:	2200      	movs	r2, #0
 8042922:	4619      	mov	r1, r3
 8042924:	4820      	ldr	r0, [pc, #128]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 8042926:	f002 ffef 	bl	8045908 <HAL_TIM_PWM_ConfigChannel>
 804292a:	4603      	mov	r3, r0
 804292c:	2b00      	cmp	r3, #0
 804292e:	d001      	beq.n	8042934 <MX_TIM8_Init+0x12c>
 8042930:	f7ff fc90 	bl	8042254 <Error_Handler>
 8042934:	f107 0334 	add.w	r3, r7, #52	@ 0x34
 8042938:	2204      	movs	r2, #4
 804293a:	4619      	mov	r1, r3
 804293c:	481a      	ldr	r0, [pc, #104]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804293e:	f002 ffe3 	bl	8045908 <HAL_TIM_PWM_ConfigChannel>
 8042942:	4603      	mov	r3, r0
 8042944:	2b00      	cmp	r3, #0
 8042946:	d001      	beq.n	804294c <MX_TIM8_Init+0x144>
 8042948:	f7ff fc84 	bl	8042254 <Error_Handler>
 804294c:	2300      	movs	r3, #0
 804294e:	603b      	str	r3, [r7, #0]
 8042950:	2300      	movs	r3, #0
 8042952:	607b      	str	r3, [r7, #4]
 8042954:	2300      	movs	r3, #0
 8042956:	60bb      	str	r3, [r7, #8]
 8042958:	2300      	movs	r3, #0
 804295a:	60fb      	str	r3, [r7, #12]
 804295c:	2300      	movs	r3, #0
 804295e:	613b      	str	r3, [r7, #16]
 8042960:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 8042964:	617b      	str	r3, [r7, #20]
 8042966:	2300      	movs	r3, #0
 8042968:	61bb      	str	r3, [r7, #24]
 804296a:	2300      	movs	r3, #0
 804296c:	61fb      	str	r3, [r7, #28]
 804296e:	2300      	movs	r3, #0
 8042970:	623b      	str	r3, [r7, #32]
 8042972:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
 8042976:	627b      	str	r3, [r7, #36]	@ 0x24
 8042978:	2300      	movs	r3, #0
 804297a:	62bb      	str	r3, [r7, #40]	@ 0x28
 804297c:	2300      	movs	r3, #0
 804297e:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8042980:	2300      	movs	r3, #0
 8042982:	633b      	str	r3, [r7, #48]	@ 0x30
 8042984:	463b      	mov	r3, r7
 8042986:	4619      	mov	r1, r3
 8042988:	4807      	ldr	r0, [pc, #28]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804298a:	f003 ff0d 	bl	80467a8 <HAL_TIMEx_ConfigBreakDeadTime>
 804298e:	4603      	mov	r3, r0
 8042990:	2b00      	cmp	r3, #0
 8042992:	d001      	beq.n	8042998 <MX_TIM8_Init+0x190>
 8042994:	f7ff fc5e 	bl	8042254 <Error_Handler>
 8042998:	4803      	ldr	r0, [pc, #12]	@ (80429a8 <MX_TIM8_Init+0x1a0>)
 804299a:	f000 f9df 	bl	8042d5c <HAL_TIM_MspPostInit>
 804299e:	bf00      	nop
 80429a0:	3780      	adds	r7, #128	@ 0x80
 80429a2:	46bd      	mov	sp, r7
 80429a4:	bd80      	pop	{r7, pc}
 80429a6:	bf00      	nop
 80429a8:	2001a03c 	.word	0x2001a03c
 80429ac:	40013400 	.word	0x40013400

080429b0 <HAL_TIM_Base_MspInit>:
 80429b0:	b580      	push	{r7, lr}
 80429b2:	b088      	sub	sp, #32
 80429b4:	af00      	add	r7, sp, #0
 80429b6:	6078      	str	r0, [r7, #4]
 80429b8:	687b      	ldr	r3, [r7, #4]
 80429ba:	681b      	ldr	r3, [r3, #0]
 80429bc:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80429c0:	d141      	bne.n	8042a46 <HAL_TIM_Base_MspInit+0x96>
 80429c2:	4b93      	ldr	r3, [pc, #588]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 80429c4:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80429c6:	4a92      	ldr	r2, [pc, #584]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 80429c8:	f043 0301 	orr.w	r3, r3, #1
 80429cc:	6593      	str	r3, [r2, #88]	@ 0x58
 80429ce:	4b90      	ldr	r3, [pc, #576]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 80429d0:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80429d2:	f003 0301 	and.w	r3, r3, #1
 80429d6:	61fb      	str	r3, [r7, #28]
 80429d8:	69fb      	ldr	r3, [r7, #28]
 80429da:	4b8e      	ldr	r3, [pc, #568]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429dc:	4a8e      	ldr	r2, [pc, #568]	@ (8042c18 <HAL_TIM_Base_MspInit+0x268>)
 80429de:	601a      	str	r2, [r3, #0]
 80429e0:	4b8c      	ldr	r3, [pc, #560]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429e2:	223c      	movs	r2, #60	@ 0x3c
 80429e4:	605a      	str	r2, [r3, #4]
 80429e6:	4b8b      	ldr	r3, [pc, #556]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429e8:	2210      	movs	r2, #16
 80429ea:	609a      	str	r2, [r3, #8]
 80429ec:	4b89      	ldr	r3, [pc, #548]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429ee:	2200      	movs	r2, #0
 80429f0:	60da      	str	r2, [r3, #12]
 80429f2:	4b88      	ldr	r3, [pc, #544]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429f4:	2200      	movs	r2, #0
 80429f6:	611a      	str	r2, [r3, #16]
 80429f8:	4b86      	ldr	r3, [pc, #536]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 80429fa:	f44f 7200 	mov.w	r2, #512	@ 0x200
 80429fe:	615a      	str	r2, [r3, #20]
 8042a00:	4b84      	ldr	r3, [pc, #528]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a02:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042a06:	619a      	str	r2, [r3, #24]
 8042a08:	4b82      	ldr	r3, [pc, #520]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a0a:	2220      	movs	r2, #32
 8042a0c:	61da      	str	r2, [r3, #28]
 8042a0e:	4b81      	ldr	r3, [pc, #516]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a10:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
 8042a14:	621a      	str	r2, [r3, #32]
 8042a16:	487f      	ldr	r0, [pc, #508]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a18:	f000 fc0a 	bl	8043230 <HAL_DMA_Init>
 8042a1c:	4603      	mov	r3, r0
 8042a1e:	2b00      	cmp	r3, #0
 8042a20:	d001      	beq.n	8042a26 <HAL_TIM_Base_MspInit+0x76>
 8042a22:	f7ff fc17 	bl	8042254 <Error_Handler>
 8042a26:	2110      	movs	r1, #16
 8042a28:	487a      	ldr	r0, [pc, #488]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a2a:	f000 fe48 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042a2e:	4603      	mov	r3, r0
 8042a30:	2b00      	cmp	r3, #0
 8042a32:	d001      	beq.n	8042a38 <HAL_TIM_Base_MspInit+0x88>
 8042a34:	f7ff fc0e 	bl	8042254 <Error_Handler>
 8042a38:	687b      	ldr	r3, [r7, #4]
 8042a3a:	4a76      	ldr	r2, [pc, #472]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a3c:	621a      	str	r2, [r3, #32]
 8042a3e:	4a75      	ldr	r2, [pc, #468]	@ (8042c14 <HAL_TIM_Base_MspInit+0x264>)
 8042a40:	687b      	ldr	r3, [r7, #4]
 8042a42:	6293      	str	r3, [r2, #40]	@ 0x28
 8042a44:	e179      	b.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042a46:	687b      	ldr	r3, [r7, #4]
 8042a48:	681b      	ldr	r3, [r3, #0]
 8042a4a:	4a74      	ldr	r2, [pc, #464]	@ (8042c1c <HAL_TIM_Base_MspInit+0x26c>)
 8042a4c:	4293      	cmp	r3, r2
 8042a4e:	d140      	bne.n	8042ad2 <HAL_TIM_Base_MspInit+0x122>
 8042a50:	4b6f      	ldr	r3, [pc, #444]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042a52:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042a54:	4a6e      	ldr	r2, [pc, #440]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042a56:	f043 0302 	orr.w	r3, r3, #2
 8042a5a:	6593      	str	r3, [r2, #88]	@ 0x58
 8042a5c:	4b6c      	ldr	r3, [pc, #432]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042a5e:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042a60:	f003 0302 	and.w	r3, r3, #2
 8042a64:	61bb      	str	r3, [r7, #24]
 8042a66:	69bb      	ldr	r3, [r7, #24]
 8042a68:	4b6d      	ldr	r3, [pc, #436]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a6a:	4a6e      	ldr	r2, [pc, #440]	@ (8042c24 <HAL_TIM_Base_MspInit+0x274>)
 8042a6c:	601a      	str	r2, [r3, #0]
 8042a6e:	4b6c      	ldr	r3, [pc, #432]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a70:	2241      	movs	r2, #65	@ 0x41
 8042a72:	605a      	str	r2, [r3, #4]
 8042a74:	4b6a      	ldr	r3, [pc, #424]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a76:	2200      	movs	r2, #0
 8042a78:	609a      	str	r2, [r3, #8]
 8042a7a:	4b69      	ldr	r3, [pc, #420]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a7c:	2200      	movs	r2, #0
 8042a7e:	60da      	str	r2, [r3, #12]
 8042a80:	4b67      	ldr	r3, [pc, #412]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a82:	2280      	movs	r2, #128	@ 0x80
 8042a84:	611a      	str	r2, [r3, #16]
 8042a86:	4b66      	ldr	r3, [pc, #408]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a88:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8042a8c:	615a      	str	r2, [r3, #20]
 8042a8e:	4b64      	ldr	r3, [pc, #400]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a90:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042a94:	619a      	str	r2, [r3, #24]
 8042a96:	4b62      	ldr	r3, [pc, #392]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a98:	2200      	movs	r2, #0
 8042a9a:	61da      	str	r2, [r3, #28]
 8042a9c:	4b60      	ldr	r3, [pc, #384]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042a9e:	2200      	movs	r2, #0
 8042aa0:	621a      	str	r2, [r3, #32]
 8042aa2:	485f      	ldr	r0, [pc, #380]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042aa4:	f000 fbc4 	bl	8043230 <HAL_DMA_Init>
 8042aa8:	4603      	mov	r3, r0
 8042aaa:	2b00      	cmp	r3, #0
 8042aac:	d001      	beq.n	8042ab2 <HAL_TIM_Base_MspInit+0x102>
 8042aae:	f7ff fbd1 	bl	8042254 <Error_Handler>
 8042ab2:	2110      	movs	r1, #16
 8042ab4:	485a      	ldr	r0, [pc, #360]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042ab6:	f000 fe02 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042aba:	4603      	mov	r3, r0
 8042abc:	2b00      	cmp	r3, #0
 8042abe:	d001      	beq.n	8042ac4 <HAL_TIM_Base_MspInit+0x114>
 8042ac0:	f7ff fbc8 	bl	8042254 <Error_Handler>
 8042ac4:	687b      	ldr	r3, [r7, #4]
 8042ac6:	4a56      	ldr	r2, [pc, #344]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042ac8:	621a      	str	r2, [r3, #32]
 8042aca:	4a55      	ldr	r2, [pc, #340]	@ (8042c20 <HAL_TIM_Base_MspInit+0x270>)
 8042acc:	687b      	ldr	r3, [r7, #4]
 8042ace:	6293      	str	r3, [r2, #40]	@ 0x28
 8042ad0:	e133      	b.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042ad2:	687b      	ldr	r3, [r7, #4]
 8042ad4:	681b      	ldr	r3, [r3, #0]
 8042ad6:	4a54      	ldr	r2, [pc, #336]	@ (8042c28 <HAL_TIM_Base_MspInit+0x278>)
 8042ad8:	4293      	cmp	r3, r2
 8042ada:	d141      	bne.n	8042b60 <HAL_TIM_Base_MspInit+0x1b0>
 8042adc:	4b4c      	ldr	r3, [pc, #304]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042ade:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042ae0:	4a4b      	ldr	r2, [pc, #300]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042ae2:	f043 0304 	orr.w	r3, r3, #4
 8042ae6:	6593      	str	r3, [r2, #88]	@ 0x58
 8042ae8:	4b49      	ldr	r3, [pc, #292]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042aea:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042aec:	f003 0304 	and.w	r3, r3, #4
 8042af0:	617b      	str	r3, [r7, #20]
 8042af2:	697b      	ldr	r3, [r7, #20]
 8042af4:	4b4d      	ldr	r3, [pc, #308]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042af6:	4a4e      	ldr	r2, [pc, #312]	@ (8042c30 <HAL_TIM_Base_MspInit+0x280>)
 8042af8:	601a      	str	r2, [r3, #0]
 8042afa:	4b4c      	ldr	r3, [pc, #304]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042afc:	2247      	movs	r2, #71	@ 0x47
 8042afe:	605a      	str	r2, [r3, #4]
 8042b00:	4b4a      	ldr	r3, [pc, #296]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b02:	2210      	movs	r2, #16
 8042b04:	609a      	str	r2, [r3, #8]
 8042b06:	4b49      	ldr	r3, [pc, #292]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b08:	2200      	movs	r2, #0
 8042b0a:	60da      	str	r2, [r3, #12]
 8042b0c:	4b47      	ldr	r3, [pc, #284]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b0e:	2200      	movs	r2, #0
 8042b10:	611a      	str	r2, [r3, #16]
 8042b12:	4b46      	ldr	r3, [pc, #280]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b14:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8042b18:	615a      	str	r2, [r3, #20]
 8042b1a:	4b44      	ldr	r3, [pc, #272]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b1c:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042b20:	619a      	str	r2, [r3, #24]
 8042b22:	4b42      	ldr	r3, [pc, #264]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b24:	2220      	movs	r2, #32
 8042b26:	61da      	str	r2, [r3, #28]
 8042b28:	4b40      	ldr	r3, [pc, #256]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b2a:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
 8042b2e:	621a      	str	r2, [r3, #32]
 8042b30:	483e      	ldr	r0, [pc, #248]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b32:	f000 fb7d 	bl	8043230 <HAL_DMA_Init>
 8042b36:	4603      	mov	r3, r0
 8042b38:	2b00      	cmp	r3, #0
 8042b3a:	d001      	beq.n	8042b40 <HAL_TIM_Base_MspInit+0x190>
 8042b3c:	f7ff fb8a 	bl	8042254 <Error_Handler>
 8042b40:	2110      	movs	r1, #16
 8042b42:	483a      	ldr	r0, [pc, #232]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b44:	f000 fdbb 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042b48:	4603      	mov	r3, r0
 8042b4a:	2b00      	cmp	r3, #0
 8042b4c:	d001      	beq.n	8042b52 <HAL_TIM_Base_MspInit+0x1a2>
 8042b4e:	f7ff fb81 	bl	8042254 <Error_Handler>
 8042b52:	687b      	ldr	r3, [r7, #4]
 8042b54:	4a35      	ldr	r2, [pc, #212]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b56:	621a      	str	r2, [r3, #32]
 8042b58:	4a34      	ldr	r2, [pc, #208]	@ (8042c2c <HAL_TIM_Base_MspInit+0x27c>)
 8042b5a:	687b      	ldr	r3, [r7, #4]
 8042b5c:	6293      	str	r3, [r2, #40]	@ 0x28
 8042b5e:	e0ec      	b.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042b60:	687b      	ldr	r3, [r7, #4]
 8042b62:	681b      	ldr	r3, [r3, #0]
 8042b64:	4a33      	ldr	r2, [pc, #204]	@ (8042c34 <HAL_TIM_Base_MspInit+0x284>)
 8042b66:	4293      	cmp	r3, r2
 8042b68:	d140      	bne.n	8042bec <HAL_TIM_Base_MspInit+0x23c>
 8042b6a:	4b29      	ldr	r3, [pc, #164]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042b6c:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042b6e:	4a28      	ldr	r2, [pc, #160]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042b70:	f043 0308 	orr.w	r3, r3, #8
 8042b74:	6593      	str	r3, [r2, #88]	@ 0x58
 8042b76:	4b26      	ldr	r3, [pc, #152]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042b78:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042b7a:	f003 0308 	and.w	r3, r3, #8
 8042b7e:	613b      	str	r3, [r7, #16]
 8042b80:	693b      	ldr	r3, [r7, #16]
 8042b82:	4b2d      	ldr	r3, [pc, #180]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042b84:	4a2d      	ldr	r2, [pc, #180]	@ (8042c3c <HAL_TIM_Base_MspInit+0x28c>)
 8042b86:	601a      	str	r2, [r3, #0]
 8042b88:	4b2b      	ldr	r3, [pc, #172]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042b8a:	224c      	movs	r2, #76	@ 0x4c
 8042b8c:	605a      	str	r2, [r3, #4]
 8042b8e:	4b2a      	ldr	r3, [pc, #168]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042b90:	2210      	movs	r2, #16
 8042b92:	609a      	str	r2, [r3, #8]
 8042b94:	4b28      	ldr	r3, [pc, #160]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042b96:	2200      	movs	r2, #0
 8042b98:	60da      	str	r2, [r3, #12]
 8042b9a:	4b27      	ldr	r3, [pc, #156]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042b9c:	2200      	movs	r2, #0
 8042b9e:	611a      	str	r2, [r3, #16]
 8042ba0:	4b25      	ldr	r3, [pc, #148]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042ba2:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8042ba6:	615a      	str	r2, [r3, #20]
 8042ba8:	4b23      	ldr	r3, [pc, #140]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042baa:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042bae:	619a      	str	r2, [r3, #24]
 8042bb0:	4b21      	ldr	r3, [pc, #132]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042bb2:	2220      	movs	r2, #32
 8042bb4:	61da      	str	r2, [r3, #28]
 8042bb6:	4b20      	ldr	r3, [pc, #128]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042bb8:	2200      	movs	r2, #0
 8042bba:	621a      	str	r2, [r3, #32]
 8042bbc:	481e      	ldr	r0, [pc, #120]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042bbe:	f000 fb37 	bl	8043230 <HAL_DMA_Init>
 8042bc2:	4603      	mov	r3, r0
 8042bc4:	2b00      	cmp	r3, #0
 8042bc6:	d001      	beq.n	8042bcc <HAL_TIM_Base_MspInit+0x21c>
 8042bc8:	f7ff fb44 	bl	8042254 <Error_Handler>
 8042bcc:	2110      	movs	r1, #16
 8042bce:	481a      	ldr	r0, [pc, #104]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042bd0:	f000 fd75 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042bd4:	4603      	mov	r3, r0
 8042bd6:	2b00      	cmp	r3, #0
 8042bd8:	d001      	beq.n	8042bde <HAL_TIM_Base_MspInit+0x22e>
 8042bda:	f7ff fb3b 	bl	8042254 <Error_Handler>
 8042bde:	687b      	ldr	r3, [r7, #4]
 8042be0:	4a15      	ldr	r2, [pc, #84]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042be2:	621a      	str	r2, [r3, #32]
 8042be4:	4a14      	ldr	r2, [pc, #80]	@ (8042c38 <HAL_TIM_Base_MspInit+0x288>)
 8042be6:	687b      	ldr	r3, [r7, #4]
 8042be8:	6293      	str	r3, [r2, #40]	@ 0x28
 8042bea:	e0a6      	b.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042bec:	687b      	ldr	r3, [r7, #4]
 8042bee:	681b      	ldr	r3, [r3, #0]
 8042bf0:	4a13      	ldr	r2, [pc, #76]	@ (8042c40 <HAL_TIM_Base_MspInit+0x290>)
 8042bf2:	4293      	cmp	r3, r2
 8042bf4:	d126      	bne.n	8042c44 <HAL_TIM_Base_MspInit+0x294>
 8042bf6:	4b06      	ldr	r3, [pc, #24]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042bf8:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042bfa:	4a05      	ldr	r2, [pc, #20]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042bfc:	f043 0320 	orr.w	r3, r3, #32
 8042c00:	6593      	str	r3, [r2, #88]	@ 0x58
 8042c02:	4b03      	ldr	r3, [pc, #12]	@ (8042c10 <HAL_TIM_Base_MspInit+0x260>)
 8042c04:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042c06:	f003 0320 	and.w	r3, r3, #32
 8042c0a:	60fb      	str	r3, [r7, #12]
 8042c0c:	68fb      	ldr	r3, [r7, #12]
 8042c0e:	e094      	b.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042c10:	40021000 	.word	0x40021000
 8042c14:	2001a088 	.word	0x2001a088
 8042c18:	40020030 	.word	0x40020030
 8042c1c:	40000400 	.word	0x40000400
 8042c20:	2001a0f0 	.word	0x2001a0f0
 8042c24:	40020044 	.word	0x40020044
 8042c28:	40000800 	.word	0x40000800
 8042c2c:	2001a158 	.word	0x2001a158
 8042c30:	40020094 	.word	0x40020094
 8042c34:	40000c00 	.word	0x40000c00
 8042c38:	2001a1c0 	.word	0x2001a1c0
 8042c3c:	40020058 	.word	0x40020058
 8042c40:	40001400 	.word	0x40001400
 8042c44:	687b      	ldr	r3, [r7, #4]
 8042c46:	681b      	ldr	r3, [r3, #0]
 8042c48:	4a3e      	ldr	r2, [pc, #248]	@ (8042d44 <HAL_TIM_Base_MspInit+0x394>)
 8042c4a:	4293      	cmp	r3, r2
 8042c4c:	d175      	bne.n	8042d3a <HAL_TIM_Base_MspInit+0x38a>
 8042c4e:	4b3e      	ldr	r3, [pc, #248]	@ (8042d48 <HAL_TIM_Base_MspInit+0x398>)
 8042c50:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8042c52:	4a3d      	ldr	r2, [pc, #244]	@ (8042d48 <HAL_TIM_Base_MspInit+0x398>)
 8042c54:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 8042c58:	6613      	str	r3, [r2, #96]	@ 0x60
 8042c5a:	4b3b      	ldr	r3, [pc, #236]	@ (8042d48 <HAL_TIM_Base_MspInit+0x398>)
 8042c5c:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8042c5e:	f403 5300 	and.w	r3, r3, #8192	@ 0x2000
 8042c62:	60bb      	str	r3, [r7, #8]
 8042c64:	68bb      	ldr	r3, [r7, #8]
 8042c66:	4b39      	ldr	r3, [pc, #228]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c68:	4a39      	ldr	r2, [pc, #228]	@ (8042d50 <HAL_TIM_Base_MspInit+0x3a0>)
 8042c6a:	601a      	str	r2, [r3, #0]
 8042c6c:	4b37      	ldr	r3, [pc, #220]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c6e:	2231      	movs	r2, #49	@ 0x31
 8042c70:	605a      	str	r2, [r3, #4]
 8042c72:	4b36      	ldr	r3, [pc, #216]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c74:	2210      	movs	r2, #16
 8042c76:	609a      	str	r2, [r3, #8]
 8042c78:	4b34      	ldr	r3, [pc, #208]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c7a:	2200      	movs	r2, #0
 8042c7c:	60da      	str	r2, [r3, #12]
 8042c7e:	4b33      	ldr	r3, [pc, #204]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c80:	2200      	movs	r2, #0
 8042c82:	611a      	str	r2, [r3, #16]
 8042c84:	4b31      	ldr	r3, [pc, #196]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c86:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8042c8a:	615a      	str	r2, [r3, #20]
 8042c8c:	4b2f      	ldr	r3, [pc, #188]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c8e:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042c92:	619a      	str	r2, [r3, #24]
 8042c94:	4b2d      	ldr	r3, [pc, #180]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c96:	2220      	movs	r2, #32
 8042c98:	61da      	str	r2, [r3, #28]
 8042c9a:	4b2c      	ldr	r3, [pc, #176]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042c9c:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 8042ca0:	621a      	str	r2, [r3, #32]
 8042ca2:	482a      	ldr	r0, [pc, #168]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042ca4:	f000 fac4 	bl	8043230 <HAL_DMA_Init>
 8042ca8:	4603      	mov	r3, r0
 8042caa:	2b00      	cmp	r3, #0
 8042cac:	d001      	beq.n	8042cb2 <HAL_TIM_Base_MspInit+0x302>
 8042cae:	f7ff fad1 	bl	8042254 <Error_Handler>
 8042cb2:	2110      	movs	r1, #16
 8042cb4:	4825      	ldr	r0, [pc, #148]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042cb6:	f000 fd02 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042cba:	4603      	mov	r3, r0
 8042cbc:	2b00      	cmp	r3, #0
 8042cbe:	d001      	beq.n	8042cc4 <HAL_TIM_Base_MspInit+0x314>
 8042cc0:	f7ff fac8 	bl	8042254 <Error_Handler>
 8042cc4:	687b      	ldr	r3, [r7, #4]
 8042cc6:	4a21      	ldr	r2, [pc, #132]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042cc8:	625a      	str	r2, [r3, #36]	@ 0x24
 8042cca:	4a20      	ldr	r2, [pc, #128]	@ (8042d4c <HAL_TIM_Base_MspInit+0x39c>)
 8042ccc:	687b      	ldr	r3, [r7, #4]
 8042cce:	6293      	str	r3, [r2, #40]	@ 0x28
 8042cd0:	4b20      	ldr	r3, [pc, #128]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cd2:	4a21      	ldr	r2, [pc, #132]	@ (8042d58 <HAL_TIM_Base_MspInit+0x3a8>)
 8042cd4:	601a      	str	r2, [r3, #0]
 8042cd6:	4b1f      	ldr	r3, [pc, #124]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cd8:	2232      	movs	r2, #50	@ 0x32
 8042cda:	605a      	str	r2, [r3, #4]
 8042cdc:	4b1d      	ldr	r3, [pc, #116]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cde:	2200      	movs	r2, #0
 8042ce0:	609a      	str	r2, [r3, #8]
 8042ce2:	4b1c      	ldr	r3, [pc, #112]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042ce4:	2200      	movs	r2, #0
 8042ce6:	60da      	str	r2, [r3, #12]
 8042ce8:	4b1a      	ldr	r3, [pc, #104]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cea:	2280      	movs	r2, #128	@ 0x80
 8042cec:	611a      	str	r2, [r3, #16]
 8042cee:	4b19      	ldr	r3, [pc, #100]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cf0:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8042cf4:	615a      	str	r2, [r3, #20]
 8042cf6:	4b17      	ldr	r3, [pc, #92]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042cf8:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8042cfc:	619a      	str	r2, [r3, #24]
 8042cfe:	4b15      	ldr	r3, [pc, #84]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d00:	2200      	movs	r2, #0
 8042d02:	61da      	str	r2, [r3, #28]
 8042d04:	4b13      	ldr	r3, [pc, #76]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d06:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 8042d0a:	621a      	str	r2, [r3, #32]
 8042d0c:	4811      	ldr	r0, [pc, #68]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d0e:	f000 fa8f 	bl	8043230 <HAL_DMA_Init>
 8042d12:	4603      	mov	r3, r0
 8042d14:	2b00      	cmp	r3, #0
 8042d16:	d001      	beq.n	8042d1c <HAL_TIM_Base_MspInit+0x36c>
 8042d18:	f7ff fa9c 	bl	8042254 <Error_Handler>
 8042d1c:	2110      	movs	r1, #16
 8042d1e:	480d      	ldr	r0, [pc, #52]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d20:	f000 fccd 	bl	80436be <HAL_DMA_ConfigChannelAttributes>
 8042d24:	4603      	mov	r3, r0
 8042d26:	2b00      	cmp	r3, #0
 8042d28:	d001      	beq.n	8042d2e <HAL_TIM_Base_MspInit+0x37e>
 8042d2a:	f7ff fa93 	bl	8042254 <Error_Handler>
 8042d2e:	687b      	ldr	r3, [r7, #4]
 8042d30:	4a08      	ldr	r2, [pc, #32]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d32:	629a      	str	r2, [r3, #40]	@ 0x28
 8042d34:	4a07      	ldr	r2, [pc, #28]	@ (8042d54 <HAL_TIM_Base_MspInit+0x3a4>)
 8042d36:	687b      	ldr	r3, [r7, #4]
 8042d38:	6293      	str	r3, [r2, #40]	@ 0x28
 8042d3a:	bf00      	nop
 8042d3c:	3720      	adds	r7, #32
 8042d3e:	46bd      	mov	sp, r7
 8042d40:	bd80      	pop	{r7, pc}
 8042d42:	bf00      	nop
 8042d44:	40013400 	.word	0x40013400
 8042d48:	40021000 	.word	0x40021000
 8042d4c:	2001a228 	.word	0x2001a228
 8042d50:	4002006c 	.word	0x4002006c
 8042d54:	2001a290 	.word	0x2001a290
 8042d58:	40020080 	.word	0x40020080

08042d5c <HAL_TIM_MspPostInit>:
 8042d5c:	b580      	push	{r7, lr}
 8042d5e:	b088      	sub	sp, #32
 8042d60:	af00      	add	r7, sp, #0
 8042d62:	6078      	str	r0, [r7, #4]
 8042d64:	f107 030c 	add.w	r3, r7, #12
 8042d68:	2200      	movs	r2, #0
 8042d6a:	601a      	str	r2, [r3, #0]
 8042d6c:	605a      	str	r2, [r3, #4]
 8042d6e:	609a      	str	r2, [r3, #8]
 8042d70:	60da      	str	r2, [r3, #12]
 8042d72:	611a      	str	r2, [r3, #16]
 8042d74:	687b      	ldr	r3, [r7, #4]
 8042d76:	681b      	ldr	r3, [r3, #0]
 8042d78:	4a11      	ldr	r2, [pc, #68]	@ (8042dc0 <HAL_TIM_MspPostInit+0x64>)
 8042d7a:	4293      	cmp	r3, r2
 8042d7c:	d11b      	bne.n	8042db6 <HAL_TIM_MspPostInit+0x5a>
 8042d7e:	4b11      	ldr	r3, [pc, #68]	@ (8042dc4 <HAL_TIM_MspPostInit+0x68>)
 8042d80:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8042d82:	4a10      	ldr	r2, [pc, #64]	@ (8042dc4 <HAL_TIM_MspPostInit+0x68>)
 8042d84:	f043 0304 	orr.w	r3, r3, #4
 8042d88:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8042d8a:	4b0e      	ldr	r3, [pc, #56]	@ (8042dc4 <HAL_TIM_MspPostInit+0x68>)
 8042d8c:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8042d8e:	f003 0304 	and.w	r3, r3, #4
 8042d92:	60bb      	str	r3, [r7, #8]
 8042d94:	68bb      	ldr	r3, [r7, #8]
 8042d96:	23c0      	movs	r3, #192	@ 0xc0
 8042d98:	60fb      	str	r3, [r7, #12]
 8042d9a:	2302      	movs	r3, #2
 8042d9c:	613b      	str	r3, [r7, #16]
 8042d9e:	2300      	movs	r3, #0
 8042da0:	617b      	str	r3, [r7, #20]
 8042da2:	2300      	movs	r3, #0
 8042da4:	61bb      	str	r3, [r7, #24]
 8042da6:	2303      	movs	r3, #3
 8042da8:	61fb      	str	r3, [r7, #28]
 8042daa:	f107 030c 	add.w	r3, r7, #12
 8042dae:	4619      	mov	r1, r3
 8042db0:	4805      	ldr	r0, [pc, #20]	@ (8042dc8 <HAL_TIM_MspPostInit+0x6c>)
 8042db2:	f000 fd55 	bl	8043860 <HAL_GPIO_Init>
 8042db6:	bf00      	nop
 8042db8:	3720      	adds	r7, #32
 8042dba:	46bd      	mov	sp, r7
 8042dbc:	bd80      	pop	{r7, pc}
 8042dbe:	bf00      	nop
 8042dc0:	40013400 	.word	0x40013400
 8042dc4:	40021000 	.word	0x40021000
 8042dc8:	42020800 	.word	0x42020800

08042dcc <MX_LPUART1_UART_Init>:
 8042dcc:	b580      	push	{r7, lr}
 8042dce:	af00      	add	r7, sp, #0
 8042dd0:	4b22      	ldr	r3, [pc, #136]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042dd2:	4a23      	ldr	r2, [pc, #140]	@ (8042e60 <MX_LPUART1_UART_Init+0x94>)
 8042dd4:	601a      	str	r2, [r3, #0]
 8042dd6:	4b21      	ldr	r3, [pc, #132]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042dd8:	f44f 32e1 	mov.w	r2, #115200	@ 0x1c200
 8042ddc:	605a      	str	r2, [r3, #4]
 8042dde:	4b1f      	ldr	r3, [pc, #124]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042de0:	2200      	movs	r2, #0
 8042de2:	609a      	str	r2, [r3, #8]
 8042de4:	4b1d      	ldr	r3, [pc, #116]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042de6:	2200      	movs	r2, #0
 8042de8:	60da      	str	r2, [r3, #12]
 8042dea:	4b1c      	ldr	r3, [pc, #112]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042dec:	2200      	movs	r2, #0
 8042dee:	611a      	str	r2, [r3, #16]
 8042df0:	4b1a      	ldr	r3, [pc, #104]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042df2:	220c      	movs	r2, #12
 8042df4:	615a      	str	r2, [r3, #20]
 8042df6:	4b19      	ldr	r3, [pc, #100]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042df8:	2200      	movs	r2, #0
 8042dfa:	619a      	str	r2, [r3, #24]
 8042dfc:	4b17      	ldr	r3, [pc, #92]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042dfe:	2200      	movs	r2, #0
 8042e00:	621a      	str	r2, [r3, #32]
 8042e02:	4b16      	ldr	r3, [pc, #88]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e04:	2200      	movs	r2, #0
 8042e06:	625a      	str	r2, [r3, #36]	@ 0x24
 8042e08:	4b14      	ldr	r3, [pc, #80]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e0a:	2200      	movs	r2, #0
 8042e0c:	629a      	str	r2, [r3, #40]	@ 0x28
 8042e0e:	4b13      	ldr	r3, [pc, #76]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e10:	2200      	movs	r2, #0
 8042e12:	665a      	str	r2, [r3, #100]	@ 0x64
 8042e14:	4811      	ldr	r0, [pc, #68]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e16:	f003 fd53 	bl	80468c0 <HAL_UART_Init>
 8042e1a:	4603      	mov	r3, r0
 8042e1c:	2b00      	cmp	r3, #0
 8042e1e:	d001      	beq.n	8042e24 <MX_LPUART1_UART_Init+0x58>
 8042e20:	f7ff fa18 	bl	8042254 <Error_Handler>
 8042e24:	2100      	movs	r1, #0
 8042e26:	480d      	ldr	r0, [pc, #52]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e28:	f004 fb80 	bl	804752c <HAL_UARTEx_SetTxFifoThreshold>
 8042e2c:	4603      	mov	r3, r0
 8042e2e:	2b00      	cmp	r3, #0
 8042e30:	d001      	beq.n	8042e36 <MX_LPUART1_UART_Init+0x6a>
 8042e32:	f7ff fa0f 	bl	8042254 <Error_Handler>
 8042e36:	2100      	movs	r1, #0
 8042e38:	4808      	ldr	r0, [pc, #32]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e3a:	f004 fbb5 	bl	80475a8 <HAL_UARTEx_SetRxFifoThreshold>
 8042e3e:	4603      	mov	r3, r0
 8042e40:	2b00      	cmp	r3, #0
 8042e42:	d001      	beq.n	8042e48 <MX_LPUART1_UART_Init+0x7c>
 8042e44:	f7ff fa06 	bl	8042254 <Error_Handler>
 8042e48:	4804      	ldr	r0, [pc, #16]	@ (8042e5c <MX_LPUART1_UART_Init+0x90>)
 8042e4a:	f004 fb36 	bl	80474ba <HAL_UARTEx_DisableFifoMode>
 8042e4e:	4603      	mov	r3, r0
 8042e50:	2b00      	cmp	r3, #0
 8042e52:	d001      	beq.n	8042e58 <MX_LPUART1_UART_Init+0x8c>
 8042e54:	f7ff f9fe 	bl	8042254 <Error_Handler>
 8042e58:	bf00      	nop
 8042e5a:	bd80      	pop	{r7, pc}
 8042e5c:	2001a2f8 	.word	0x2001a2f8
 8042e60:	40008000 	.word	0x40008000

08042e64 <HAL_UART_MspInit>:
 8042e64:	b580      	push	{r7, lr}
 8042e66:	b0ae      	sub	sp, #184	@ 0xb8
 8042e68:	af00      	add	r7, sp, #0
 8042e6a:	6078      	str	r0, [r7, #4]
 8042e6c:	f107 03a4 	add.w	r3, r7, #164	@ 0xa4
 8042e70:	2200      	movs	r2, #0
 8042e72:	601a      	str	r2, [r3, #0]
 8042e74:	605a      	str	r2, [r3, #4]
 8042e76:	609a      	str	r2, [r3, #8]
 8042e78:	60da      	str	r2, [r3, #12]
 8042e7a:	611a      	str	r2, [r3, #16]
 8042e7c:	f107 0310 	add.w	r3, r7, #16
 8042e80:	2294      	movs	r2, #148	@ 0x94
 8042e82:	2100      	movs	r1, #0
 8042e84:	4618      	mov	r0, r3
 8042e86:	f7fd fc98 	bl	80407ba <memset>
 8042e8a:	687b      	ldr	r3, [r7, #4]
 8042e8c:	681b      	ldr	r3, [r3, #0]
 8042e8e:	4a22      	ldr	r2, [pc, #136]	@ (8042f18 <HAL_UART_MspInit+0xb4>)
 8042e90:	4293      	cmp	r3, r2
 8042e92:	d13d      	bne.n	8042f10 <HAL_UART_MspInit+0xac>
 8042e94:	2320      	movs	r3, #32
 8042e96:	613b      	str	r3, [r7, #16]
 8042e98:	2300      	movs	r3, #0
 8042e9a:	65bb      	str	r3, [r7, #88]	@ 0x58
 8042e9c:	f107 0310 	add.w	r3, r7, #16
 8042ea0:	4618      	mov	r0, r3
 8042ea2:	f001 fed3 	bl	8044c4c <HAL_RCCEx_PeriphCLKConfig>
 8042ea6:	4603      	mov	r3, r0
 8042ea8:	2b00      	cmp	r3, #0
 8042eaa:	d001      	beq.n	8042eb0 <HAL_UART_MspInit+0x4c>
 8042eac:	f7ff f9d2 	bl	8042254 <Error_Handler>
 8042eb0:	4b1a      	ldr	r3, [pc, #104]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042eb2:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8042eb4:	4a19      	ldr	r2, [pc, #100]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042eb6:	f043 0301 	orr.w	r3, r3, #1
 8042eba:	65d3      	str	r3, [r2, #92]	@ 0x5c
 8042ebc:	4b17      	ldr	r3, [pc, #92]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042ebe:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8042ec0:	f003 0301 	and.w	r3, r3, #1
 8042ec4:	60fb      	str	r3, [r7, #12]
 8042ec6:	68fb      	ldr	r3, [r7, #12]
 8042ec8:	4b14      	ldr	r3, [pc, #80]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042eca:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8042ecc:	4a13      	ldr	r2, [pc, #76]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042ece:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8042ed2:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8042ed4:	4b11      	ldr	r3, [pc, #68]	@ (8042f1c <HAL_UART_MspInit+0xb8>)
 8042ed6:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8042ed8:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8042edc:	60bb      	str	r3, [r7, #8]
 8042ede:	68bb      	ldr	r3, [r7, #8]
 8042ee0:	f000 feca 	bl	8043c78 <HAL_PWREx_EnableVddIO2>
 8042ee4:	f44f 73c0 	mov.w	r3, #384	@ 0x180
 8042ee8:	f8c7 30a4 	str.w	r3, [r7, #164]	@ 0xa4
 8042eec:	2302      	movs	r3, #2
 8042eee:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 8042ef2:	2300      	movs	r3, #0
 8042ef4:	f8c7 30ac 	str.w	r3, [r7, #172]	@ 0xac
 8042ef8:	2300      	movs	r3, #0
 8042efa:	f8c7 30b0 	str.w	r3, [r7, #176]	@ 0xb0
 8042efe:	2308      	movs	r3, #8
 8042f00:	f8c7 30b4 	str.w	r3, [r7, #180]	@ 0xb4
 8042f04:	f107 03a4 	add.w	r3, r7, #164	@ 0xa4
 8042f08:	4619      	mov	r1, r3
 8042f0a:	4805      	ldr	r0, [pc, #20]	@ (8042f20 <HAL_UART_MspInit+0xbc>)
 8042f0c:	f000 fca8 	bl	8043860 <HAL_GPIO_Init>
 8042f10:	bf00      	nop
 8042f12:	37b8      	adds	r7, #184	@ 0xb8
 8042f14:	46bd      	mov	sp, r7
 8042f16:	bd80      	pop	{r7, pc}
 8042f18:	40008000 	.word	0x40008000
 8042f1c:	40021000 	.word	0x40021000
 8042f20:	42021800 	.word	0x42021800

08042f24 <HAL_Init>:
 8042f24:	b580      	push	{r7, lr}
 8042f26:	b082      	sub	sp, #8
 8042f28:	af00      	add	r7, sp, #0
 8042f2a:	2300      	movs	r3, #0
 8042f2c:	71fb      	strb	r3, [r7, #7]
 8042f2e:	2004      	movs	r0, #4
 8042f30:	f000 f93e 	bl	80431b0 <HAL_NVIC_SetPriorityGrouping>
 8042f34:	f7ff fad8 	bl	80424e8 <SystemCoreClockUpdate>
 8042f38:	2007      	movs	r0, #7
 8042f3a:	f000 f80d 	bl	8042f58 <HAL_InitTick>
 8042f3e:	4603      	mov	r3, r0
 8042f40:	2b00      	cmp	r3, #0
 8042f42:	d002      	beq.n	8042f4a <HAL_Init+0x26>
 8042f44:	2301      	movs	r3, #1
 8042f46:	71fb      	strb	r3, [r7, #7]
 8042f48:	e001      	b.n	8042f4e <HAL_Init+0x2a>
 8042f4a:	f7ff f991 	bl	8042270 <HAL_MspInit>
 8042f4e:	79fb      	ldrb	r3, [r7, #7]
 8042f50:	4618      	mov	r0, r3
 8042f52:	3708      	adds	r7, #8
 8042f54:	46bd      	mov	sp, r7
 8042f56:	bd80      	pop	{r7, pc}

08042f58 <HAL_InitTick>:
 8042f58:	b580      	push	{r7, lr}
 8042f5a:	b084      	sub	sp, #16
 8042f5c:	af00      	add	r7, sp, #0
 8042f5e:	6078      	str	r0, [r7, #4]
 8042f60:	2300      	movs	r3, #0
 8042f62:	73fb      	strb	r3, [r7, #15]
 8042f64:	4b17      	ldr	r3, [pc, #92]	@ (8042fc4 <HAL_InitTick+0x6c>)
 8042f66:	781b      	ldrb	r3, [r3, #0]
 8042f68:	2b00      	cmp	r3, #0
 8042f6a:	d023      	beq.n	8042fb4 <HAL_InitTick+0x5c>
 8042f6c:	4b16      	ldr	r3, [pc, #88]	@ (8042fc8 <HAL_InitTick+0x70>)
 8042f6e:	681a      	ldr	r2, [r3, #0]
 8042f70:	4b14      	ldr	r3, [pc, #80]	@ (8042fc4 <HAL_InitTick+0x6c>)
 8042f72:	781b      	ldrb	r3, [r3, #0]
 8042f74:	4619      	mov	r1, r3
 8042f76:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 8042f7a:	fbb3 f3f1 	udiv	r3, r3, r1
 8042f7e:	fbb2 f3f3 	udiv	r3, r2, r3
 8042f82:	4618      	mov	r0, r3
 8042f84:	f000 f947 	bl	8043216 <HAL_SYSTICK_Config>
 8042f88:	4603      	mov	r3, r0
 8042f8a:	2b00      	cmp	r3, #0
 8042f8c:	d10f      	bne.n	8042fae <HAL_InitTick+0x56>
 8042f8e:	687b      	ldr	r3, [r7, #4]
 8042f90:	2b07      	cmp	r3, #7
 8042f92:	d809      	bhi.n	8042fa8 <HAL_InitTick+0x50>
 8042f94:	2200      	movs	r2, #0
 8042f96:	6879      	ldr	r1, [r7, #4]
 8042f98:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8042f9c:	f000 f913 	bl	80431c6 <HAL_NVIC_SetPriority>
 8042fa0:	4a0a      	ldr	r2, [pc, #40]	@ (8042fcc <HAL_InitTick+0x74>)
 8042fa2:	687b      	ldr	r3, [r7, #4]
 8042fa4:	6013      	str	r3, [r2, #0]
 8042fa6:	e007      	b.n	8042fb8 <HAL_InitTick+0x60>
 8042fa8:	2301      	movs	r3, #1
 8042faa:	73fb      	strb	r3, [r7, #15]
 8042fac:	e004      	b.n	8042fb8 <HAL_InitTick+0x60>
 8042fae:	2301      	movs	r3, #1
 8042fb0:	73fb      	strb	r3, [r7, #15]
 8042fb2:	e001      	b.n	8042fb8 <HAL_InitTick+0x60>
 8042fb4:	2301      	movs	r3, #1
 8042fb6:	73fb      	strb	r3, [r7, #15]
 8042fb8:	7bfb      	ldrb	r3, [r7, #15]
 8042fba:	4618      	mov	r0, r3
 8042fbc:	3710      	adds	r7, #16
 8042fbe:	46bd      	mov	sp, r7
 8042fc0:	bd80      	pop	{r7, pc}
 8042fc2:	bf00      	nop
 8042fc4:	20018128 	.word	0x20018128
 8042fc8:	20018120 	.word	0x20018120
 8042fcc:	20018124 	.word	0x20018124

08042fd0 <HAL_IncTick>:
 8042fd0:	b480      	push	{r7}
 8042fd2:	af00      	add	r7, sp, #0
 8042fd4:	4b06      	ldr	r3, [pc, #24]	@ (8042ff0 <HAL_IncTick+0x20>)
 8042fd6:	781b      	ldrb	r3, [r3, #0]
 8042fd8:	461a      	mov	r2, r3
 8042fda:	4b06      	ldr	r3, [pc, #24]	@ (8042ff4 <HAL_IncTick+0x24>)
 8042fdc:	681b      	ldr	r3, [r3, #0]
 8042fde:	4413      	add	r3, r2
 8042fe0:	4a04      	ldr	r2, [pc, #16]	@ (8042ff4 <HAL_IncTick+0x24>)
 8042fe2:	6013      	str	r3, [r2, #0]
 8042fe4:	bf00      	nop
 8042fe6:	46bd      	mov	sp, r7
 8042fe8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042fec:	4770      	bx	lr
 8042fee:	bf00      	nop
 8042ff0:	20018128 	.word	0x20018128
 8042ff4:	2001a38c 	.word	0x2001a38c

08042ff8 <HAL_GetTick>:
 8042ff8:	b480      	push	{r7}
 8042ffa:	af00      	add	r7, sp, #0
 8042ffc:	4b03      	ldr	r3, [pc, #12]	@ (804300c <HAL_GetTick+0x14>)
 8042ffe:	681b      	ldr	r3, [r3, #0]
 8043000:	4618      	mov	r0, r3
 8043002:	46bd      	mov	sp, r7
 8043004:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043008:	4770      	bx	lr
 804300a:	bf00      	nop
 804300c:	2001a38c 	.word	0x2001a38c

08043010 <__NVIC_SetPriorityGrouping>:
 8043010:	b480      	push	{r7}
 8043012:	b085      	sub	sp, #20
 8043014:	af00      	add	r7, sp, #0
 8043016:	6078      	str	r0, [r7, #4]
 8043018:	687b      	ldr	r3, [r7, #4]
 804301a:	f003 0307 	and.w	r3, r3, #7
 804301e:	60fb      	str	r3, [r7, #12]
 8043020:	4b0c      	ldr	r3, [pc, #48]	@ (8043054 <__NVIC_SetPriorityGrouping+0x44>)
 8043022:	68db      	ldr	r3, [r3, #12]
 8043024:	60bb      	str	r3, [r7, #8]
 8043026:	68ba      	ldr	r2, [r7, #8]
 8043028:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 804302c:	4013      	ands	r3, r2
 804302e:	60bb      	str	r3, [r7, #8]
 8043030:	68fb      	ldr	r3, [r7, #12]
 8043032:	021a      	lsls	r2, r3, #8
 8043034:	68bb      	ldr	r3, [r7, #8]
 8043036:	4313      	orrs	r3, r2
 8043038:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 804303c:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8043040:	60bb      	str	r3, [r7, #8]
 8043042:	4a04      	ldr	r2, [pc, #16]	@ (8043054 <__NVIC_SetPriorityGrouping+0x44>)
 8043044:	68bb      	ldr	r3, [r7, #8]
 8043046:	60d3      	str	r3, [r2, #12]
 8043048:	bf00      	nop
 804304a:	3714      	adds	r7, #20
 804304c:	46bd      	mov	sp, r7
 804304e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043052:	4770      	bx	lr
 8043054:	e000ed00 	.word	0xe000ed00

08043058 <__NVIC_GetPriorityGrouping>:
 8043058:	b480      	push	{r7}
 804305a:	af00      	add	r7, sp, #0
 804305c:	4b04      	ldr	r3, [pc, #16]	@ (8043070 <__NVIC_GetPriorityGrouping+0x18>)
 804305e:	68db      	ldr	r3, [r3, #12]
 8043060:	0a1b      	lsrs	r3, r3, #8
 8043062:	f003 0307 	and.w	r3, r3, #7
 8043066:	4618      	mov	r0, r3
 8043068:	46bd      	mov	sp, r7
 804306a:	f85d 7b04 	ldr.w	r7, [sp], #4
 804306e:	4770      	bx	lr
 8043070:	e000ed00 	.word	0xe000ed00

08043074 <__NVIC_EnableIRQ>:
 8043074:	b480      	push	{r7}
 8043076:	b083      	sub	sp, #12
 8043078:	af00      	add	r7, sp, #0
 804307a:	4603      	mov	r3, r0
 804307c:	71fb      	strb	r3, [r7, #7]
 804307e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8043082:	2b00      	cmp	r3, #0
 8043084:	db0b      	blt.n	804309e <__NVIC_EnableIRQ+0x2a>
 8043086:	79fb      	ldrb	r3, [r7, #7]
 8043088:	f003 021f 	and.w	r2, r3, #31
 804308c:	4907      	ldr	r1, [pc, #28]	@ (80430ac <__NVIC_EnableIRQ+0x38>)
 804308e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8043092:	095b      	lsrs	r3, r3, #5
 8043094:	2001      	movs	r0, #1
 8043096:	fa00 f202 	lsl.w	r2, r0, r2
 804309a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 804309e:	bf00      	nop
 80430a0:	370c      	adds	r7, #12
 80430a2:	46bd      	mov	sp, r7
 80430a4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80430a8:	4770      	bx	lr
 80430aa:	bf00      	nop
 80430ac:	e000e100 	.word	0xe000e100

080430b0 <__NVIC_SetPriority>:
 80430b0:	b480      	push	{r7}
 80430b2:	b083      	sub	sp, #12
 80430b4:	af00      	add	r7, sp, #0
 80430b6:	4603      	mov	r3, r0
 80430b8:	6039      	str	r1, [r7, #0]
 80430ba:	71fb      	strb	r3, [r7, #7]
 80430bc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80430c0:	2b00      	cmp	r3, #0
 80430c2:	db0a      	blt.n	80430da <__NVIC_SetPriority+0x2a>
 80430c4:	683b      	ldr	r3, [r7, #0]
 80430c6:	b2da      	uxtb	r2, r3
 80430c8:	490c      	ldr	r1, [pc, #48]	@ (80430fc <__NVIC_SetPriority+0x4c>)
 80430ca:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80430ce:	0152      	lsls	r2, r2, #5
 80430d0:	b2d2      	uxtb	r2, r2
 80430d2:	440b      	add	r3, r1
 80430d4:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 80430d8:	e00a      	b.n	80430f0 <__NVIC_SetPriority+0x40>
 80430da:	683b      	ldr	r3, [r7, #0]
 80430dc:	b2da      	uxtb	r2, r3
 80430de:	4908      	ldr	r1, [pc, #32]	@ (8043100 <__NVIC_SetPriority+0x50>)
 80430e0:	79fb      	ldrb	r3, [r7, #7]
 80430e2:	f003 030f 	and.w	r3, r3, #15
 80430e6:	3b04      	subs	r3, #4
 80430e8:	0152      	lsls	r2, r2, #5
 80430ea:	b2d2      	uxtb	r2, r2
 80430ec:	440b      	add	r3, r1
 80430ee:	761a      	strb	r2, [r3, #24]
 80430f0:	bf00      	nop
 80430f2:	370c      	adds	r7, #12
 80430f4:	46bd      	mov	sp, r7
 80430f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80430fa:	4770      	bx	lr
 80430fc:	e000e100 	.word	0xe000e100
 8043100:	e000ed00 	.word	0xe000ed00

08043104 <NVIC_EncodePriority>:
 8043104:	b480      	push	{r7}
 8043106:	b089      	sub	sp, #36	@ 0x24
 8043108:	af00      	add	r7, sp, #0
 804310a:	60f8      	str	r0, [r7, #12]
 804310c:	60b9      	str	r1, [r7, #8]
 804310e:	607a      	str	r2, [r7, #4]
 8043110:	68fb      	ldr	r3, [r7, #12]
 8043112:	f003 0307 	and.w	r3, r3, #7
 8043116:	61fb      	str	r3, [r7, #28]
 8043118:	69fb      	ldr	r3, [r7, #28]
 804311a:	f1c3 0307 	rsb	r3, r3, #7
 804311e:	2b03      	cmp	r3, #3
 8043120:	bf28      	it	cs
 8043122:	2303      	movcs	r3, #3
 8043124:	61bb      	str	r3, [r7, #24]
 8043126:	69fb      	ldr	r3, [r7, #28]
 8043128:	3303      	adds	r3, #3
 804312a:	2b06      	cmp	r3, #6
 804312c:	d902      	bls.n	8043134 <NVIC_EncodePriority+0x30>
 804312e:	69fb      	ldr	r3, [r7, #28]
 8043130:	3b04      	subs	r3, #4
 8043132:	e000      	b.n	8043136 <NVIC_EncodePriority+0x32>
 8043134:	2300      	movs	r3, #0
 8043136:	617b      	str	r3, [r7, #20]
 8043138:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 804313c:	69bb      	ldr	r3, [r7, #24]
 804313e:	fa02 f303 	lsl.w	r3, r2, r3
 8043142:	43da      	mvns	r2, r3
 8043144:	68bb      	ldr	r3, [r7, #8]
 8043146:	401a      	ands	r2, r3
 8043148:	697b      	ldr	r3, [r7, #20]
 804314a:	409a      	lsls	r2, r3
 804314c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
 8043150:	697b      	ldr	r3, [r7, #20]
 8043152:	fa01 f303 	lsl.w	r3, r1, r3
 8043156:	43d9      	mvns	r1, r3
 8043158:	687b      	ldr	r3, [r7, #4]
 804315a:	400b      	ands	r3, r1
 804315c:	4313      	orrs	r3, r2
 804315e:	4618      	mov	r0, r3
 8043160:	3724      	adds	r7, #36	@ 0x24
 8043162:	46bd      	mov	sp, r7
 8043164:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043168:	4770      	bx	lr
	...

0804316c <SysTick_Config>:
 804316c:	b580      	push	{r7, lr}
 804316e:	b082      	sub	sp, #8
 8043170:	af00      	add	r7, sp, #0
 8043172:	6078      	str	r0, [r7, #4]
 8043174:	687b      	ldr	r3, [r7, #4]
 8043176:	3b01      	subs	r3, #1
 8043178:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 804317c:	d301      	bcc.n	8043182 <SysTick_Config+0x16>
 804317e:	2301      	movs	r3, #1
 8043180:	e00f      	b.n	80431a2 <SysTick_Config+0x36>
 8043182:	4a0a      	ldr	r2, [pc, #40]	@ (80431ac <SysTick_Config+0x40>)
 8043184:	687b      	ldr	r3, [r7, #4]
 8043186:	3b01      	subs	r3, #1
 8043188:	6053      	str	r3, [r2, #4]
 804318a:	2107      	movs	r1, #7
 804318c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8043190:	f7ff ff8e 	bl	80430b0 <__NVIC_SetPriority>
 8043194:	4b05      	ldr	r3, [pc, #20]	@ (80431ac <SysTick_Config+0x40>)
 8043196:	2200      	movs	r2, #0
 8043198:	609a      	str	r2, [r3, #8]
 804319a:	4b04      	ldr	r3, [pc, #16]	@ (80431ac <SysTick_Config+0x40>)
 804319c:	2207      	movs	r2, #7
 804319e:	601a      	str	r2, [r3, #0]
 80431a0:	2300      	movs	r3, #0
 80431a2:	4618      	mov	r0, r3
 80431a4:	3708      	adds	r7, #8
 80431a6:	46bd      	mov	sp, r7
 80431a8:	bd80      	pop	{r7, pc}
 80431aa:	bf00      	nop
 80431ac:	e000e010 	.word	0xe000e010

080431b0 <HAL_NVIC_SetPriorityGrouping>:
 80431b0:	b580      	push	{r7, lr}
 80431b2:	b082      	sub	sp, #8
 80431b4:	af00      	add	r7, sp, #0
 80431b6:	6078      	str	r0, [r7, #4]
 80431b8:	6878      	ldr	r0, [r7, #4]
 80431ba:	f7ff ff29 	bl	8043010 <__NVIC_SetPriorityGrouping>
 80431be:	bf00      	nop
 80431c0:	3708      	adds	r7, #8
 80431c2:	46bd      	mov	sp, r7
 80431c4:	bd80      	pop	{r7, pc}

080431c6 <HAL_NVIC_SetPriority>:
 80431c6:	b580      	push	{r7, lr}
 80431c8:	b086      	sub	sp, #24
 80431ca:	af00      	add	r7, sp, #0
 80431cc:	4603      	mov	r3, r0
 80431ce:	60b9      	str	r1, [r7, #8]
 80431d0:	607a      	str	r2, [r7, #4]
 80431d2:	73fb      	strb	r3, [r7, #15]
 80431d4:	f7ff ff40 	bl	8043058 <__NVIC_GetPriorityGrouping>
 80431d8:	6178      	str	r0, [r7, #20]
 80431da:	687a      	ldr	r2, [r7, #4]
 80431dc:	68b9      	ldr	r1, [r7, #8]
 80431de:	6978      	ldr	r0, [r7, #20]
 80431e0:	f7ff ff90 	bl	8043104 <NVIC_EncodePriority>
 80431e4:	4602      	mov	r2, r0
 80431e6:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80431ea:	4611      	mov	r1, r2
 80431ec:	4618      	mov	r0, r3
 80431ee:	f7ff ff5f 	bl	80430b0 <__NVIC_SetPriority>
 80431f2:	bf00      	nop
 80431f4:	3718      	adds	r7, #24
 80431f6:	46bd      	mov	sp, r7
 80431f8:	bd80      	pop	{r7, pc}

080431fa <HAL_NVIC_EnableIRQ>:
 80431fa:	b580      	push	{r7, lr}
 80431fc:	b082      	sub	sp, #8
 80431fe:	af00      	add	r7, sp, #0
 8043200:	4603      	mov	r3, r0
 8043202:	71fb      	strb	r3, [r7, #7]
 8043204:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8043208:	4618      	mov	r0, r3
 804320a:	f7ff ff33 	bl	8043074 <__NVIC_EnableIRQ>
 804320e:	bf00      	nop
 8043210:	3708      	adds	r7, #8
 8043212:	46bd      	mov	sp, r7
 8043214:	bd80      	pop	{r7, pc}

08043216 <HAL_SYSTICK_Config>:
 8043216:	b580      	push	{r7, lr}
 8043218:	b082      	sub	sp, #8
 804321a:	af00      	add	r7, sp, #0
 804321c:	6078      	str	r0, [r7, #4]
 804321e:	6878      	ldr	r0, [r7, #4]
 8043220:	f7ff ffa4 	bl	804316c <SysTick_Config>
 8043224:	4603      	mov	r3, r0
 8043226:	4618      	mov	r0, r3
 8043228:	3708      	adds	r7, #8
 804322a:	46bd      	mov	sp, r7
 804322c:	bd80      	pop	{r7, pc}
	...

08043230 <HAL_DMA_Init>:
 8043230:	b580      	push	{r7, lr}
 8043232:	b084      	sub	sp, #16
 8043234:	af00      	add	r7, sp, #0
 8043236:	6078      	str	r0, [r7, #4]
 8043238:	687b      	ldr	r3, [r7, #4]
 804323a:	2b00      	cmp	r3, #0
 804323c:	d101      	bne.n	8043242 <HAL_DMA_Init+0x12>
 804323e:	2301      	movs	r3, #1
 8043240:	e08d      	b.n	804335e <HAL_DMA_Init+0x12e>
 8043242:	687b      	ldr	r3, [r7, #4]
 8043244:	681b      	ldr	r3, [r3, #0]
 8043246:	461a      	mov	r2, r3
 8043248:	4b47      	ldr	r3, [pc, #284]	@ (8043368 <HAL_DMA_Init+0x138>)
 804324a:	429a      	cmp	r2, r3
 804324c:	d80f      	bhi.n	804326e <HAL_DMA_Init+0x3e>
 804324e:	687b      	ldr	r3, [r7, #4]
 8043250:	681b      	ldr	r3, [r3, #0]
 8043252:	461a      	mov	r2, r3
 8043254:	4b45      	ldr	r3, [pc, #276]	@ (804336c <HAL_DMA_Init+0x13c>)
 8043256:	4413      	add	r3, r2
 8043258:	4a45      	ldr	r2, [pc, #276]	@ (8043370 <HAL_DMA_Init+0x140>)
 804325a:	fba2 2303 	umull	r2, r3, r2, r3
 804325e:	091b      	lsrs	r3, r3, #4
 8043260:	009a      	lsls	r2, r3, #2
 8043262:	687b      	ldr	r3, [r7, #4]
 8043264:	64da      	str	r2, [r3, #76]	@ 0x4c
 8043266:	687b      	ldr	r3, [r7, #4]
 8043268:	4a42      	ldr	r2, [pc, #264]	@ (8043374 <HAL_DMA_Init+0x144>)
 804326a:	649a      	str	r2, [r3, #72]	@ 0x48
 804326c:	e00e      	b.n	804328c <HAL_DMA_Init+0x5c>
 804326e:	687b      	ldr	r3, [r7, #4]
 8043270:	681b      	ldr	r3, [r3, #0]
 8043272:	461a      	mov	r2, r3
 8043274:	4b40      	ldr	r3, [pc, #256]	@ (8043378 <HAL_DMA_Init+0x148>)
 8043276:	4413      	add	r3, r2
 8043278:	4a3d      	ldr	r2, [pc, #244]	@ (8043370 <HAL_DMA_Init+0x140>)
 804327a:	fba2 2303 	umull	r2, r3, r2, r3
 804327e:	091b      	lsrs	r3, r3, #4
 8043280:	009a      	lsls	r2, r3, #2
 8043282:	687b      	ldr	r3, [r7, #4]
 8043284:	64da      	str	r2, [r3, #76]	@ 0x4c
 8043286:	687b      	ldr	r3, [r7, #4]
 8043288:	4a3c      	ldr	r2, [pc, #240]	@ (804337c <HAL_DMA_Init+0x14c>)
 804328a:	649a      	str	r2, [r3, #72]	@ 0x48
 804328c:	687b      	ldr	r3, [r7, #4]
 804328e:	2202      	movs	r2, #2
 8043290:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8043294:	687b      	ldr	r3, [r7, #4]
 8043296:	681b      	ldr	r3, [r3, #0]
 8043298:	681b      	ldr	r3, [r3, #0]
 804329a:	60fb      	str	r3, [r7, #12]
 804329c:	68fb      	ldr	r3, [r7, #12]
 804329e:	f423 33ff 	bic.w	r3, r3, #130560	@ 0x1fe00
 80432a2:	f423 73f8 	bic.w	r3, r3, #496	@ 0x1f0
 80432a6:	60fb      	str	r3, [r7, #12]
 80432a8:	687b      	ldr	r3, [r7, #4]
 80432aa:	689a      	ldr	r2, [r3, #8]
 80432ac:	687b      	ldr	r3, [r7, #4]
 80432ae:	68db      	ldr	r3, [r3, #12]
 80432b0:	431a      	orrs	r2, r3
 80432b2:	687b      	ldr	r3, [r7, #4]
 80432b4:	691b      	ldr	r3, [r3, #16]
 80432b6:	431a      	orrs	r2, r3
 80432b8:	687b      	ldr	r3, [r7, #4]
 80432ba:	695b      	ldr	r3, [r3, #20]
 80432bc:	431a      	orrs	r2, r3
 80432be:	687b      	ldr	r3, [r7, #4]
 80432c0:	699b      	ldr	r3, [r3, #24]
 80432c2:	431a      	orrs	r2, r3
 80432c4:	687b      	ldr	r3, [r7, #4]
 80432c6:	69db      	ldr	r3, [r3, #28]
 80432c8:	431a      	orrs	r2, r3
 80432ca:	687b      	ldr	r3, [r7, #4]
 80432cc:	6a1b      	ldr	r3, [r3, #32]
 80432ce:	4313      	orrs	r3, r2
 80432d0:	68fa      	ldr	r2, [r7, #12]
 80432d2:	4313      	orrs	r3, r2
 80432d4:	60fb      	str	r3, [r7, #12]
 80432d6:	687b      	ldr	r3, [r7, #4]
 80432d8:	681b      	ldr	r3, [r3, #0]
 80432da:	68fa      	ldr	r2, [r7, #12]
 80432dc:	601a      	str	r2, [r3, #0]
 80432de:	6878      	ldr	r0, [r7, #4]
 80432e0:	f000 fa5c 	bl	804379c <DMA_CalcDMAMUXChannelBaseAndMask>
 80432e4:	687b      	ldr	r3, [r7, #4]
 80432e6:	689b      	ldr	r3, [r3, #8]
 80432e8:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 80432ec:	d102      	bne.n	80432f4 <HAL_DMA_Init+0xc4>
 80432ee:	687b      	ldr	r3, [r7, #4]
 80432f0:	2200      	movs	r2, #0
 80432f2:	605a      	str	r2, [r3, #4]
 80432f4:	687b      	ldr	r3, [r7, #4]
 80432f6:	685a      	ldr	r2, [r3, #4]
 80432f8:	687b      	ldr	r3, [r7, #4]
 80432fa:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80432fc:	b2d2      	uxtb	r2, r2
 80432fe:	601a      	str	r2, [r3, #0]
 8043300:	687b      	ldr	r3, [r7, #4]
 8043302:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8043304:	687a      	ldr	r2, [r7, #4]
 8043306:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 8043308:	605a      	str	r2, [r3, #4]
 804330a:	687b      	ldr	r3, [r7, #4]
 804330c:	685b      	ldr	r3, [r3, #4]
 804330e:	2b00      	cmp	r3, #0
 8043310:	d010      	beq.n	8043334 <HAL_DMA_Init+0x104>
 8043312:	687b      	ldr	r3, [r7, #4]
 8043314:	685b      	ldr	r3, [r3, #4]
 8043316:	2b04      	cmp	r3, #4
 8043318:	d80c      	bhi.n	8043334 <HAL_DMA_Init+0x104>
 804331a:	6878      	ldr	r0, [r7, #4]
 804331c:	f000 fa7c 	bl	8043818 <DMA_CalcDMAMUXRequestGenBaseAndMask>
 8043320:	687b      	ldr	r3, [r7, #4]
 8043322:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8043324:	2200      	movs	r2, #0
 8043326:	601a      	str	r2, [r3, #0]
 8043328:	687b      	ldr	r3, [r7, #4]
 804332a:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 804332c:	687a      	ldr	r2, [r7, #4]
 804332e:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 8043330:	605a      	str	r2, [r3, #4]
 8043332:	e008      	b.n	8043346 <HAL_DMA_Init+0x116>
 8043334:	687b      	ldr	r3, [r7, #4]
 8043336:	2200      	movs	r2, #0
 8043338:	65da      	str	r2, [r3, #92]	@ 0x5c
 804333a:	687b      	ldr	r3, [r7, #4]
 804333c:	2200      	movs	r2, #0
 804333e:	661a      	str	r2, [r3, #96]	@ 0x60
 8043340:	687b      	ldr	r3, [r7, #4]
 8043342:	2200      	movs	r2, #0
 8043344:	665a      	str	r2, [r3, #100]	@ 0x64
 8043346:	687b      	ldr	r3, [r7, #4]
 8043348:	2200      	movs	r2, #0
 804334a:	645a      	str	r2, [r3, #68]	@ 0x44
 804334c:	687b      	ldr	r3, [r7, #4]
 804334e:	2201      	movs	r2, #1
 8043350:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8043354:	687b      	ldr	r3, [r7, #4]
 8043356:	2200      	movs	r2, #0
 8043358:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 804335c:	2300      	movs	r3, #0
 804335e:	4618      	mov	r0, r3
 8043360:	3710      	adds	r7, #16
 8043362:	46bd      	mov	sp, r7
 8043364:	bd80      	pop	{r7, pc}
 8043366:	bf00      	nop
 8043368:	40020407 	.word	0x40020407
 804336c:	bffdfff8 	.word	0xbffdfff8
 8043370:	cccccccd 	.word	0xcccccccd
 8043374:	40020000 	.word	0x40020000
 8043378:	bffdfbf8 	.word	0xbffdfbf8
 804337c:	40020400 	.word	0x40020400

08043380 <HAL_DMA_Start>:
 8043380:	b580      	push	{r7, lr}
 8043382:	b086      	sub	sp, #24
 8043384:	af00      	add	r7, sp, #0
 8043386:	60f8      	str	r0, [r7, #12]
 8043388:	60b9      	str	r1, [r7, #8]
 804338a:	607a      	str	r2, [r7, #4]
 804338c:	603b      	str	r3, [r7, #0]
 804338e:	2300      	movs	r3, #0
 8043390:	75fb      	strb	r3, [r7, #23]
 8043392:	68fb      	ldr	r3, [r7, #12]
 8043394:	f893 3024 	ldrb.w	r3, [r3, #36]	@ 0x24
 8043398:	2b01      	cmp	r3, #1
 804339a:	d101      	bne.n	80433a0 <HAL_DMA_Start+0x20>
 804339c:	2302      	movs	r3, #2
 804339e:	e02e      	b.n	80433fe <HAL_DMA_Start+0x7e>
 80433a0:	68fb      	ldr	r3, [r7, #12]
 80433a2:	2201      	movs	r2, #1
 80433a4:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80433a8:	68fb      	ldr	r3, [r7, #12]
 80433aa:	f893 3025 	ldrb.w	r3, [r3, #37]	@ 0x25
 80433ae:	b2db      	uxtb	r3, r3
 80433b0:	2b01      	cmp	r3, #1
 80433b2:	d11d      	bne.n	80433f0 <HAL_DMA_Start+0x70>
 80433b4:	68fb      	ldr	r3, [r7, #12]
 80433b6:	2202      	movs	r2, #2
 80433b8:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 80433bc:	68fb      	ldr	r3, [r7, #12]
 80433be:	2200      	movs	r2, #0
 80433c0:	645a      	str	r2, [r3, #68]	@ 0x44
 80433c2:	68fb      	ldr	r3, [r7, #12]
 80433c4:	681b      	ldr	r3, [r3, #0]
 80433c6:	681a      	ldr	r2, [r3, #0]
 80433c8:	68fb      	ldr	r3, [r7, #12]
 80433ca:	681b      	ldr	r3, [r3, #0]
 80433cc:	f022 0201 	bic.w	r2, r2, #1
 80433d0:	601a      	str	r2, [r3, #0]
 80433d2:	683b      	ldr	r3, [r7, #0]
 80433d4:	687a      	ldr	r2, [r7, #4]
 80433d6:	68b9      	ldr	r1, [r7, #8]
 80433d8:	68f8      	ldr	r0, [r7, #12]
 80433da:	f000 f9a0 	bl	804371e <DMA_SetConfig>
 80433de:	68fb      	ldr	r3, [r7, #12]
 80433e0:	681b      	ldr	r3, [r3, #0]
 80433e2:	681a      	ldr	r2, [r3, #0]
 80433e4:	68fb      	ldr	r3, [r7, #12]
 80433e6:	681b      	ldr	r3, [r3, #0]
 80433e8:	f042 0201 	orr.w	r2, r2, #1
 80433ec:	601a      	str	r2, [r3, #0]
 80433ee:	e005      	b.n	80433fc <HAL_DMA_Start+0x7c>
 80433f0:	68fb      	ldr	r3, [r7, #12]
 80433f2:	2200      	movs	r2, #0
 80433f4:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80433f8:	2302      	movs	r3, #2
 80433fa:	75fb      	strb	r3, [r7, #23]
 80433fc:	7dfb      	ldrb	r3, [r7, #23]
 80433fe:	4618      	mov	r0, r3
 8043400:	3718      	adds	r7, #24
 8043402:	46bd      	mov	sp, r7
 8043404:	bd80      	pop	{r7, pc}

08043406 <HAL_DMA_Abort>:
 8043406:	b480      	push	{r7}
 8043408:	b085      	sub	sp, #20
 804340a:	af00      	add	r7, sp, #0
 804340c:	6078      	str	r0, [r7, #4]
 804340e:	2300      	movs	r3, #0
 8043410:	73fb      	strb	r3, [r7, #15]
 8043412:	687b      	ldr	r3, [r7, #4]
 8043414:	f893 3025 	ldrb.w	r3, [r3, #37]	@ 0x25
 8043418:	b2db      	uxtb	r3, r3
 804341a:	2b02      	cmp	r3, #2
 804341c:	d008      	beq.n	8043430 <HAL_DMA_Abort+0x2a>
 804341e:	687b      	ldr	r3, [r7, #4]
 8043420:	2204      	movs	r2, #4
 8043422:	645a      	str	r2, [r3, #68]	@ 0x44
 8043424:	687b      	ldr	r3, [r7, #4]
 8043426:	2200      	movs	r2, #0
 8043428:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 804342c:	2301      	movs	r3, #1
 804342e:	e040      	b.n	80434b2 <HAL_DMA_Abort+0xac>
 8043430:	687b      	ldr	r3, [r7, #4]
 8043432:	681b      	ldr	r3, [r3, #0]
 8043434:	681a      	ldr	r2, [r3, #0]
 8043436:	687b      	ldr	r3, [r7, #4]
 8043438:	681b      	ldr	r3, [r3, #0]
 804343a:	f022 020e 	bic.w	r2, r2, #14
 804343e:	601a      	str	r2, [r3, #0]
 8043440:	687b      	ldr	r3, [r7, #4]
 8043442:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8043444:	681a      	ldr	r2, [r3, #0]
 8043446:	687b      	ldr	r3, [r7, #4]
 8043448:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 804344a:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 804344e:	601a      	str	r2, [r3, #0]
 8043450:	687b      	ldr	r3, [r7, #4]
 8043452:	681b      	ldr	r3, [r3, #0]
 8043454:	681a      	ldr	r2, [r3, #0]
 8043456:	687b      	ldr	r3, [r7, #4]
 8043458:	681b      	ldr	r3, [r3, #0]
 804345a:	f022 0201 	bic.w	r2, r2, #1
 804345e:	601a      	str	r2, [r3, #0]
 8043460:	687b      	ldr	r3, [r7, #4]
 8043462:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8043464:	f003 021c 	and.w	r2, r3, #28
 8043468:	687b      	ldr	r3, [r7, #4]
 804346a:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 804346c:	2101      	movs	r1, #1
 804346e:	fa01 f202 	lsl.w	r2, r1, r2
 8043472:	605a      	str	r2, [r3, #4]
 8043474:	687b      	ldr	r3, [r7, #4]
 8043476:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8043478:	687a      	ldr	r2, [r7, #4]
 804347a:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 804347c:	605a      	str	r2, [r3, #4]
 804347e:	687b      	ldr	r3, [r7, #4]
 8043480:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8043482:	2b00      	cmp	r3, #0
 8043484:	d00c      	beq.n	80434a0 <HAL_DMA_Abort+0x9a>
 8043486:	687b      	ldr	r3, [r7, #4]
 8043488:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 804348a:	681a      	ldr	r2, [r3, #0]
 804348c:	687b      	ldr	r3, [r7, #4]
 804348e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8043490:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8043494:	601a      	str	r2, [r3, #0]
 8043496:	687b      	ldr	r3, [r7, #4]
 8043498:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 804349a:	687a      	ldr	r2, [r7, #4]
 804349c:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 804349e:	605a      	str	r2, [r3, #4]
 80434a0:	687b      	ldr	r3, [r7, #4]
 80434a2:	2201      	movs	r2, #1
 80434a4:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 80434a8:	687b      	ldr	r3, [r7, #4]
 80434aa:	2200      	movs	r2, #0
 80434ac:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80434b0:	7bfb      	ldrb	r3, [r7, #15]
 80434b2:	4618      	mov	r0, r3
 80434b4:	3714      	adds	r7, #20
 80434b6:	46bd      	mov	sp, r7
 80434b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80434bc:	4770      	bx	lr

080434be <HAL_DMA_IRQHandler>:
 80434be:	b580      	push	{r7, lr}
 80434c0:	b084      	sub	sp, #16
 80434c2:	af00      	add	r7, sp, #0
 80434c4:	6078      	str	r0, [r7, #4]
 80434c6:	687b      	ldr	r3, [r7, #4]
 80434c8:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80434ca:	681b      	ldr	r3, [r3, #0]
 80434cc:	60fb      	str	r3, [r7, #12]
 80434ce:	687b      	ldr	r3, [r7, #4]
 80434d0:	681b      	ldr	r3, [r3, #0]
 80434d2:	681b      	ldr	r3, [r3, #0]
 80434d4:	60bb      	str	r3, [r7, #8]
 80434d6:	687b      	ldr	r3, [r7, #4]
 80434d8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80434da:	f003 031c 	and.w	r3, r3, #28
 80434de:	2204      	movs	r2, #4
 80434e0:	409a      	lsls	r2, r3
 80434e2:	68fb      	ldr	r3, [r7, #12]
 80434e4:	4013      	ands	r3, r2
 80434e6:	2b00      	cmp	r3, #0
 80434e8:	d053      	beq.n	8043592 <HAL_DMA_IRQHandler+0xd4>
 80434ea:	68bb      	ldr	r3, [r7, #8]
 80434ec:	f003 0304 	and.w	r3, r3, #4
 80434f0:	2b00      	cmp	r3, #0
 80434f2:	d04e      	beq.n	8043592 <HAL_DMA_IRQHandler+0xd4>
 80434f4:	687b      	ldr	r3, [r7, #4]
 80434f6:	681b      	ldr	r3, [r3, #0]
 80434f8:	681b      	ldr	r3, [r3, #0]
 80434fa:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 80434fe:	2b00      	cmp	r3, #0
 8043500:	d024      	beq.n	804354c <HAL_DMA_IRQHandler+0x8e>
 8043502:	687b      	ldr	r3, [r7, #4]
 8043504:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8043506:	f003 021c 	and.w	r2, r3, #28
 804350a:	687b      	ldr	r3, [r7, #4]
 804350c:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 804350e:	2104      	movs	r1, #4
 8043510:	fa01 f202 	lsl.w	r2, r1, r2
 8043514:	605a      	str	r2, [r3, #4]
 8043516:	687b      	ldr	r3, [r7, #4]
 8043518:	681b      	ldr	r3, [r3, #0]
 804351a:	681b      	ldr	r3, [r3, #0]
 804351c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8043520:	2b00      	cmp	r3, #0
 8043522:	d109      	bne.n	8043538 <HAL_DMA_IRQHandler+0x7a>
 8043524:	687b      	ldr	r3, [r7, #4]
 8043526:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8043528:	2b00      	cmp	r3, #0
 804352a:	f000 80c0 	beq.w	80436ae <HAL_DMA_IRQHandler+0x1f0>
 804352e:	687b      	ldr	r3, [r7, #4]
 8043530:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8043532:	6878      	ldr	r0, [r7, #4]
 8043534:	4798      	blx	r3
 8043536:	e0ba      	b.n	80436ae <HAL_DMA_IRQHandler+0x1f0>
 8043538:	687b      	ldr	r3, [r7, #4]
 804353a:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 804353c:	2b00      	cmp	r3, #0
 804353e:	f000 80b6 	beq.w	80436ae <HAL_DMA_IRQHandler+0x1f0>
 8043542:	687b      	ldr	r3, [r7, #4]
 8043544:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8043546:	6878      	ldr	r0, [r7, #4]
 8043548:	4798      	blx	r3
 804354a:	e0b0      	b.n	80436ae <HAL_DMA_IRQHandler+0x1f0>
 804354c:	687b      	ldr	r3, [r7, #4]
 804354e:	681b      	ldr	r3, [r3, #0]
 8043550:	681b      	ldr	r3, [r3, #0]
 8043552:	f003 0320 	and.w	r3, r3, #32
 8043556:	2b00      	cmp	r3, #0
 8043558:	d107      	bne.n	804356a <HAL_DMA_IRQHandler+0xac>
 804355a:	687b      	ldr	r3, [r7, #4]
 804355c:	681b      	ldr	r3, [r3, #0]
 804355e:	681a      	ldr	r2, [r3, #0]
 8043560:	687b      	ldr	r3, [r7, #4]
 8043562:	681b      	ldr	r3, [r3, #0]
 8043564:	f022 0204 	bic.w	r2, r2, #4
 8043568:	601a      	str	r2, [r3, #0]
 804356a:	687b      	ldr	r3, [r7, #4]
 804356c:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 804356e:	f003 021c 	and.w	r2, r3, #28
 8043572:	687b      	ldr	r3, [r7, #4]
 8043574:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8043576:	2104      	movs	r1, #4
 8043578:	fa01 f202 	lsl.w	r2, r1, r2
 804357c:	605a      	str	r2, [r3, #4]
 804357e:	687b      	ldr	r3, [r7, #4]
 8043580:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8043582:	2b00      	cmp	r3, #0
 8043584:	f000 8093 	beq.w	80436ae <HAL_DMA_IRQHandler+0x1f0>
 8043588:	687b      	ldr	r3, [r7, #4]
 804358a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 804358c:	6878      	ldr	r0, [r7, #4]
 804358e:	4798      	blx	r3
 8043590:	e08d      	b.n	80436ae <HAL_DMA_IRQHandler+0x1f0>
 8043592:	687b      	ldr	r3, [r7, #4]
 8043594:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8043596:	f003 031c 	and.w	r3, r3, #28
 804359a:	2202      	movs	r2, #2
 804359c:	409a      	lsls	r2, r3
 804359e:	68fb      	ldr	r3, [r7, #12]
 80435a0:	4013      	ands	r3, r2
 80435a2:	2b00      	cmp	r3, #0
 80435a4:	d04e      	beq.n	8043644 <HAL_DMA_IRQHandler+0x186>
 80435a6:	68bb      	ldr	r3, [r7, #8]
 80435a8:	f003 0302 	and.w	r3, r3, #2
 80435ac:	2b00      	cmp	r3, #0
 80435ae:	d049      	beq.n	8043644 <HAL_DMA_IRQHandler+0x186>
 80435b0:	687b      	ldr	r3, [r7, #4]
 80435b2:	681b      	ldr	r3, [r3, #0]
 80435b4:	681b      	ldr	r3, [r3, #0]
 80435b6:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 80435ba:	2b00      	cmp	r3, #0
 80435bc:	d018      	beq.n	80435f0 <HAL_DMA_IRQHandler+0x132>
 80435be:	687b      	ldr	r3, [r7, #4]
 80435c0:	681b      	ldr	r3, [r3, #0]
 80435c2:	681b      	ldr	r3, [r3, #0]
 80435c4:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 80435c8:	2b00      	cmp	r3, #0
 80435ca:	d108      	bne.n	80435de <HAL_DMA_IRQHandler+0x120>
 80435cc:	687b      	ldr	r3, [r7, #4]
 80435ce:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80435d0:	2b00      	cmp	r3, #0
 80435d2:	d06e      	beq.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 80435d4:	687b      	ldr	r3, [r7, #4]
 80435d6:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80435d8:	6878      	ldr	r0, [r7, #4]
 80435da:	4798      	blx	r3
 80435dc:	e069      	b.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 80435de:	687b      	ldr	r3, [r7, #4]
 80435e0:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80435e2:	2b00      	cmp	r3, #0
 80435e4:	d065      	beq.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 80435e6:	687b      	ldr	r3, [r7, #4]
 80435e8:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80435ea:	6878      	ldr	r0, [r7, #4]
 80435ec:	4798      	blx	r3
 80435ee:	e060      	b.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 80435f0:	687b      	ldr	r3, [r7, #4]
 80435f2:	681b      	ldr	r3, [r3, #0]
 80435f4:	681b      	ldr	r3, [r3, #0]
 80435f6:	f003 0320 	and.w	r3, r3, #32
 80435fa:	2b00      	cmp	r3, #0
 80435fc:	d10b      	bne.n	8043616 <HAL_DMA_IRQHandler+0x158>
 80435fe:	687b      	ldr	r3, [r7, #4]
 8043600:	681b      	ldr	r3, [r3, #0]
 8043602:	681a      	ldr	r2, [r3, #0]
 8043604:	687b      	ldr	r3, [r7, #4]
 8043606:	681b      	ldr	r3, [r3, #0]
 8043608:	f022 020a 	bic.w	r2, r2, #10
 804360c:	601a      	str	r2, [r3, #0]
 804360e:	687b      	ldr	r3, [r7, #4]
 8043610:	2201      	movs	r2, #1
 8043612:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8043616:	687b      	ldr	r3, [r7, #4]
 8043618:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 804361a:	f003 021c 	and.w	r2, r3, #28
 804361e:	687b      	ldr	r3, [r7, #4]
 8043620:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8043622:	2102      	movs	r1, #2
 8043624:	fa01 f202 	lsl.w	r2, r1, r2
 8043628:	605a      	str	r2, [r3, #4]
 804362a:	687b      	ldr	r3, [r7, #4]
 804362c:	2200      	movs	r2, #0
 804362e:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8043632:	687b      	ldr	r3, [r7, #4]
 8043634:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8043636:	2b00      	cmp	r3, #0
 8043638:	d03b      	beq.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 804363a:	687b      	ldr	r3, [r7, #4]
 804363c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 804363e:	6878      	ldr	r0, [r7, #4]
 8043640:	4798      	blx	r3
 8043642:	e036      	b.n	80436b2 <HAL_DMA_IRQHandler+0x1f4>
 8043644:	687b      	ldr	r3, [r7, #4]
 8043646:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8043648:	f003 031c 	and.w	r3, r3, #28
 804364c:	2208      	movs	r2, #8
 804364e:	409a      	lsls	r2, r3
 8043650:	68fb      	ldr	r3, [r7, #12]
 8043652:	4013      	ands	r3, r2
 8043654:	2b00      	cmp	r3, #0
 8043656:	d02e      	beq.n	80436b6 <HAL_DMA_IRQHandler+0x1f8>
 8043658:	68bb      	ldr	r3, [r7, #8]
 804365a:	f003 0308 	and.w	r3, r3, #8
 804365e:	2b00      	cmp	r3, #0
 8043660:	d029      	beq.n	80436b6 <HAL_DMA_IRQHandler+0x1f8>
 8043662:	687b      	ldr	r3, [r7, #4]
 8043664:	681b      	ldr	r3, [r3, #0]
 8043666:	681a      	ldr	r2, [r3, #0]
 8043668:	687b      	ldr	r3, [r7, #4]
 804366a:	681b      	ldr	r3, [r3, #0]
 804366c:	f022 020e 	bic.w	r2, r2, #14
 8043670:	601a      	str	r2, [r3, #0]
 8043672:	687b      	ldr	r3, [r7, #4]
 8043674:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8043676:	f003 021c 	and.w	r2, r3, #28
 804367a:	687b      	ldr	r3, [r7, #4]
 804367c:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 804367e:	2101      	movs	r1, #1
 8043680:	fa01 f202 	lsl.w	r2, r1, r2
 8043684:	605a      	str	r2, [r3, #4]
 8043686:	687b      	ldr	r3, [r7, #4]
 8043688:	2201      	movs	r2, #1
 804368a:	645a      	str	r2, [r3, #68]	@ 0x44
 804368c:	687b      	ldr	r3, [r7, #4]
 804368e:	2201      	movs	r2, #1
 8043690:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8043694:	687b      	ldr	r3, [r7, #4]
 8043696:	2200      	movs	r2, #0
 8043698:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 804369c:	687b      	ldr	r3, [r7, #4]
 804369e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80436a0:	2b00      	cmp	r3, #0
 80436a2:	d008      	beq.n	80436b6 <HAL_DMA_IRQHandler+0x1f8>
 80436a4:	687b      	ldr	r3, [r7, #4]
 80436a6:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80436a8:	6878      	ldr	r0, [r7, #4]
 80436aa:	4798      	blx	r3
 80436ac:	e002      	b.n	80436b4 <HAL_DMA_IRQHandler+0x1f6>
 80436ae:	bf00      	nop
 80436b0:	e000      	b.n	80436b4 <HAL_DMA_IRQHandler+0x1f6>
 80436b2:	bf00      	nop
 80436b4:	bf00      	nop
 80436b6:	bf00      	nop
 80436b8:	3710      	adds	r7, #16
 80436ba:	46bd      	mov	sp, r7
 80436bc:	bd80      	pop	{r7, pc}

080436be <HAL_DMA_ConfigChannelAttributes>:
 80436be:	b480      	push	{r7}
 80436c0:	b085      	sub	sp, #20
 80436c2:	af00      	add	r7, sp, #0
 80436c4:	6078      	str	r0, [r7, #4]
 80436c6:	6039      	str	r1, [r7, #0]
 80436c8:	2300      	movs	r3, #0
 80436ca:	72fb      	strb	r3, [r7, #11]
 80436cc:	687b      	ldr	r3, [r7, #4]
 80436ce:	2b00      	cmp	r3, #0
 80436d0:	d103      	bne.n	80436da <HAL_DMA_ConfigChannelAttributes+0x1c>
 80436d2:	2301      	movs	r3, #1
 80436d4:	72fb      	strb	r3, [r7, #11]
 80436d6:	7afb      	ldrb	r3, [r7, #11]
 80436d8:	e01b      	b.n	8043712 <HAL_DMA_ConfigChannelAttributes+0x54>
 80436da:	687b      	ldr	r3, [r7, #4]
 80436dc:	681b      	ldr	r3, [r3, #0]
 80436de:	681b      	ldr	r3, [r3, #0]
 80436e0:	60fb      	str	r3, [r7, #12]
 80436e2:	683b      	ldr	r3, [r7, #0]
 80436e4:	f003 0310 	and.w	r3, r3, #16
 80436e8:	2b00      	cmp	r3, #0
 80436ea:	d00d      	beq.n	8043708 <HAL_DMA_ConfigChannelAttributes+0x4a>
 80436ec:	683b      	ldr	r3, [r7, #0]
 80436ee:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 80436f2:	2b00      	cmp	r3, #0
 80436f4:	d004      	beq.n	8043700 <HAL_DMA_ConfigChannelAttributes+0x42>
 80436f6:	68fb      	ldr	r3, [r7, #12]
 80436f8:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 80436fc:	60fb      	str	r3, [r7, #12]
 80436fe:	e003      	b.n	8043708 <HAL_DMA_ConfigChannelAttributes+0x4a>
 8043700:	68fb      	ldr	r3, [r7, #12]
 8043702:	f423 1380 	bic.w	r3, r3, #1048576	@ 0x100000
 8043706:	60fb      	str	r3, [r7, #12]
 8043708:	687b      	ldr	r3, [r7, #4]
 804370a:	681b      	ldr	r3, [r3, #0]
 804370c:	68fa      	ldr	r2, [r7, #12]
 804370e:	601a      	str	r2, [r3, #0]
 8043710:	7afb      	ldrb	r3, [r7, #11]
 8043712:	4618      	mov	r0, r3
 8043714:	3714      	adds	r7, #20
 8043716:	46bd      	mov	sp, r7
 8043718:	f85d 7b04 	ldr.w	r7, [sp], #4
 804371c:	4770      	bx	lr

0804371e <DMA_SetConfig>:
 804371e:	b480      	push	{r7}
 8043720:	b085      	sub	sp, #20
 8043722:	af00      	add	r7, sp, #0
 8043724:	60f8      	str	r0, [r7, #12]
 8043726:	60b9      	str	r1, [r7, #8]
 8043728:	607a      	str	r2, [r7, #4]
 804372a:	603b      	str	r3, [r7, #0]
 804372c:	68fb      	ldr	r3, [r7, #12]
 804372e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8043730:	68fa      	ldr	r2, [r7, #12]
 8043732:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 8043734:	605a      	str	r2, [r3, #4]
 8043736:	68fb      	ldr	r3, [r7, #12]
 8043738:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 804373a:	2b00      	cmp	r3, #0
 804373c:	d004      	beq.n	8043748 <DMA_SetConfig+0x2a>
 804373e:	68fb      	ldr	r3, [r7, #12]
 8043740:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8043742:	68fa      	ldr	r2, [r7, #12]
 8043744:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 8043746:	605a      	str	r2, [r3, #4]
 8043748:	68fb      	ldr	r3, [r7, #12]
 804374a:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 804374c:	f003 021c 	and.w	r2, r3, #28
 8043750:	68fb      	ldr	r3, [r7, #12]
 8043752:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8043754:	2101      	movs	r1, #1
 8043756:	fa01 f202 	lsl.w	r2, r1, r2
 804375a:	605a      	str	r2, [r3, #4]
 804375c:	68fb      	ldr	r3, [r7, #12]
 804375e:	681b      	ldr	r3, [r3, #0]
 8043760:	683a      	ldr	r2, [r7, #0]
 8043762:	605a      	str	r2, [r3, #4]
 8043764:	68fb      	ldr	r3, [r7, #12]
 8043766:	689b      	ldr	r3, [r3, #8]
 8043768:	2b10      	cmp	r3, #16
 804376a:	d108      	bne.n	804377e <DMA_SetConfig+0x60>
 804376c:	68fb      	ldr	r3, [r7, #12]
 804376e:	681b      	ldr	r3, [r3, #0]
 8043770:	687a      	ldr	r2, [r7, #4]
 8043772:	609a      	str	r2, [r3, #8]
 8043774:	68fb      	ldr	r3, [r7, #12]
 8043776:	681b      	ldr	r3, [r3, #0]
 8043778:	68ba      	ldr	r2, [r7, #8]
 804377a:	60da      	str	r2, [r3, #12]
 804377c:	e007      	b.n	804378e <DMA_SetConfig+0x70>
 804377e:	68fb      	ldr	r3, [r7, #12]
 8043780:	681b      	ldr	r3, [r3, #0]
 8043782:	68ba      	ldr	r2, [r7, #8]
 8043784:	609a      	str	r2, [r3, #8]
 8043786:	68fb      	ldr	r3, [r7, #12]
 8043788:	681b      	ldr	r3, [r3, #0]
 804378a:	687a      	ldr	r2, [r7, #4]
 804378c:	60da      	str	r2, [r3, #12]
 804378e:	bf00      	nop
 8043790:	3714      	adds	r7, #20
 8043792:	46bd      	mov	sp, r7
 8043794:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043798:	4770      	bx	lr
	...

0804379c <DMA_CalcDMAMUXChannelBaseAndMask>:
 804379c:	b480      	push	{r7}
 804379e:	b085      	sub	sp, #20
 80437a0:	af00      	add	r7, sp, #0
 80437a2:	6078      	str	r0, [r7, #4]
 80437a4:	687b      	ldr	r3, [r7, #4]
 80437a6:	681b      	ldr	r3, [r3, #0]
 80437a8:	461a      	mov	r2, r3
 80437aa:	4b17      	ldr	r3, [pc, #92]	@ (8043808 <DMA_CalcDMAMUXChannelBaseAndMask+0x6c>)
 80437ac:	429a      	cmp	r2, r3
 80437ae:	d80a      	bhi.n	80437c6 <DMA_CalcDMAMUXChannelBaseAndMask+0x2a>
 80437b0:	687b      	ldr	r3, [r7, #4]
 80437b2:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80437b4:	089b      	lsrs	r3, r3, #2
 80437b6:	009b      	lsls	r3, r3, #2
 80437b8:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
 80437bc:	f503 3302 	add.w	r3, r3, #133120	@ 0x20800
 80437c0:	687a      	ldr	r2, [r7, #4]
 80437c2:	6513      	str	r3, [r2, #80]	@ 0x50
 80437c4:	e007      	b.n	80437d6 <DMA_CalcDMAMUXChannelBaseAndMask+0x3a>
 80437c6:	687b      	ldr	r3, [r7, #4]
 80437c8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80437ca:	089b      	lsrs	r3, r3, #2
 80437cc:	009a      	lsls	r2, r3, #2
 80437ce:	4b0f      	ldr	r3, [pc, #60]	@ (804380c <DMA_CalcDMAMUXChannelBaseAndMask+0x70>)
 80437d0:	4413      	add	r3, r2
 80437d2:	687a      	ldr	r2, [r7, #4]
 80437d4:	6513      	str	r3, [r2, #80]	@ 0x50
 80437d6:	687b      	ldr	r3, [r7, #4]
 80437d8:	681b      	ldr	r3, [r3, #0]
 80437da:	b2db      	uxtb	r3, r3
 80437dc:	3b08      	subs	r3, #8
 80437de:	4a0c      	ldr	r2, [pc, #48]	@ (8043810 <DMA_CalcDMAMUXChannelBaseAndMask+0x74>)
 80437e0:	fba2 2303 	umull	r2, r3, r2, r3
 80437e4:	091b      	lsrs	r3, r3, #4
 80437e6:	60fb      	str	r3, [r7, #12]
 80437e8:	687b      	ldr	r3, [r7, #4]
 80437ea:	4a0a      	ldr	r2, [pc, #40]	@ (8043814 <DMA_CalcDMAMUXChannelBaseAndMask+0x78>)
 80437ec:	655a      	str	r2, [r3, #84]	@ 0x54
 80437ee:	68fb      	ldr	r3, [r7, #12]
 80437f0:	f003 031f 	and.w	r3, r3, #31
 80437f4:	2201      	movs	r2, #1
 80437f6:	409a      	lsls	r2, r3
 80437f8:	687b      	ldr	r3, [r7, #4]
 80437fa:	659a      	str	r2, [r3, #88]	@ 0x58
 80437fc:	bf00      	nop
 80437fe:	3714      	adds	r7, #20
 8043800:	46bd      	mov	sp, r7
 8043802:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043806:	4770      	bx	lr
 8043808:	40020407 	.word	0x40020407
 804380c:	40020820 	.word	0x40020820
 8043810:	cccccccd 	.word	0xcccccccd
 8043814:	40020880 	.word	0x40020880

08043818 <DMA_CalcDMAMUXRequestGenBaseAndMask>:
 8043818:	b480      	push	{r7}
 804381a:	b085      	sub	sp, #20
 804381c:	af00      	add	r7, sp, #0
 804381e:	6078      	str	r0, [r7, #4]
 8043820:	687b      	ldr	r3, [r7, #4]
 8043822:	685b      	ldr	r3, [r3, #4]
 8043824:	b2db      	uxtb	r3, r3
 8043826:	60fb      	str	r3, [r7, #12]
 8043828:	68fa      	ldr	r2, [r7, #12]
 804382a:	4b0b      	ldr	r3, [pc, #44]	@ (8043858 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x40>)
 804382c:	4413      	add	r3, r2
 804382e:	009b      	lsls	r3, r3, #2
 8043830:	461a      	mov	r2, r3
 8043832:	687b      	ldr	r3, [r7, #4]
 8043834:	65da      	str	r2, [r3, #92]	@ 0x5c
 8043836:	687b      	ldr	r3, [r7, #4]
 8043838:	4a08      	ldr	r2, [pc, #32]	@ (804385c <DMA_CalcDMAMUXRequestGenBaseAndMask+0x44>)
 804383a:	661a      	str	r2, [r3, #96]	@ 0x60
 804383c:	68fb      	ldr	r3, [r7, #12]
 804383e:	3b01      	subs	r3, #1
 8043840:	f003 0303 	and.w	r3, r3, #3
 8043844:	2201      	movs	r2, #1
 8043846:	409a      	lsls	r2, r3
 8043848:	687b      	ldr	r3, [r7, #4]
 804384a:	665a      	str	r2, [r3, #100]	@ 0x64
 804384c:	bf00      	nop
 804384e:	3714      	adds	r7, #20
 8043850:	46bd      	mov	sp, r7
 8043852:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043856:	4770      	bx	lr
 8043858:	1000823f 	.word	0x1000823f
 804385c:	40020940 	.word	0x40020940

08043860 <HAL_GPIO_Init>:
 8043860:	b480      	push	{r7}
 8043862:	b087      	sub	sp, #28
 8043864:	af00      	add	r7, sp, #0
 8043866:	6078      	str	r0, [r7, #4]
 8043868:	6039      	str	r1, [r7, #0]
 804386a:	2300      	movs	r3, #0
 804386c:	617b      	str	r3, [r7, #20]
 804386e:	e162      	b.n	8043b36 <HAL_GPIO_Init+0x2d6>
 8043870:	683b      	ldr	r3, [r7, #0]
 8043872:	681a      	ldr	r2, [r3, #0]
 8043874:	2101      	movs	r1, #1
 8043876:	697b      	ldr	r3, [r7, #20]
 8043878:	fa01 f303 	lsl.w	r3, r1, r3
 804387c:	4013      	ands	r3, r2
 804387e:	60fb      	str	r3, [r7, #12]
 8043880:	68fb      	ldr	r3, [r7, #12]
 8043882:	2b00      	cmp	r3, #0
 8043884:	f000 8154 	beq.w	8043b30 <HAL_GPIO_Init+0x2d0>
 8043888:	683b      	ldr	r3, [r7, #0]
 804388a:	685b      	ldr	r3, [r3, #4]
 804388c:	f003 0303 	and.w	r3, r3, #3
 8043890:	2b01      	cmp	r3, #1
 8043892:	d005      	beq.n	80438a0 <HAL_GPIO_Init+0x40>
 8043894:	683b      	ldr	r3, [r7, #0]
 8043896:	685b      	ldr	r3, [r3, #4]
 8043898:	f003 0303 	and.w	r3, r3, #3
 804389c:	2b02      	cmp	r3, #2
 804389e:	d130      	bne.n	8043902 <HAL_GPIO_Init+0xa2>
 80438a0:	687b      	ldr	r3, [r7, #4]
 80438a2:	689b      	ldr	r3, [r3, #8]
 80438a4:	613b      	str	r3, [r7, #16]
 80438a6:	697b      	ldr	r3, [r7, #20]
 80438a8:	005b      	lsls	r3, r3, #1
 80438aa:	2203      	movs	r2, #3
 80438ac:	fa02 f303 	lsl.w	r3, r2, r3
 80438b0:	43db      	mvns	r3, r3
 80438b2:	693a      	ldr	r2, [r7, #16]
 80438b4:	4013      	ands	r3, r2
 80438b6:	613b      	str	r3, [r7, #16]
 80438b8:	683b      	ldr	r3, [r7, #0]
 80438ba:	68da      	ldr	r2, [r3, #12]
 80438bc:	697b      	ldr	r3, [r7, #20]
 80438be:	005b      	lsls	r3, r3, #1
 80438c0:	fa02 f303 	lsl.w	r3, r2, r3
 80438c4:	693a      	ldr	r2, [r7, #16]
 80438c6:	4313      	orrs	r3, r2
 80438c8:	613b      	str	r3, [r7, #16]
 80438ca:	687b      	ldr	r3, [r7, #4]
 80438cc:	693a      	ldr	r2, [r7, #16]
 80438ce:	609a      	str	r2, [r3, #8]
 80438d0:	687b      	ldr	r3, [r7, #4]
 80438d2:	685b      	ldr	r3, [r3, #4]
 80438d4:	613b      	str	r3, [r7, #16]
 80438d6:	2201      	movs	r2, #1
 80438d8:	697b      	ldr	r3, [r7, #20]
 80438da:	fa02 f303 	lsl.w	r3, r2, r3
 80438de:	43db      	mvns	r3, r3
 80438e0:	693a      	ldr	r2, [r7, #16]
 80438e2:	4013      	ands	r3, r2
 80438e4:	613b      	str	r3, [r7, #16]
 80438e6:	683b      	ldr	r3, [r7, #0]
 80438e8:	685b      	ldr	r3, [r3, #4]
 80438ea:	091b      	lsrs	r3, r3, #4
 80438ec:	f003 0201 	and.w	r2, r3, #1
 80438f0:	697b      	ldr	r3, [r7, #20]
 80438f2:	fa02 f303 	lsl.w	r3, r2, r3
 80438f6:	693a      	ldr	r2, [r7, #16]
 80438f8:	4313      	orrs	r3, r2
 80438fa:	613b      	str	r3, [r7, #16]
 80438fc:	687b      	ldr	r3, [r7, #4]
 80438fe:	693a      	ldr	r2, [r7, #16]
 8043900:	605a      	str	r2, [r3, #4]
 8043902:	683b      	ldr	r3, [r7, #0]
 8043904:	685b      	ldr	r3, [r3, #4]
 8043906:	f003 0303 	and.w	r3, r3, #3
 804390a:	2b03      	cmp	r3, #3
 804390c:	d109      	bne.n	8043922 <HAL_GPIO_Init+0xc2>
 804390e:	683b      	ldr	r3, [r7, #0]
 8043910:	685b      	ldr	r3, [r3, #4]
 8043912:	f003 0303 	and.w	r3, r3, #3
 8043916:	2b03      	cmp	r3, #3
 8043918:	d11b      	bne.n	8043952 <HAL_GPIO_Init+0xf2>
 804391a:	683b      	ldr	r3, [r7, #0]
 804391c:	689b      	ldr	r3, [r3, #8]
 804391e:	2b01      	cmp	r3, #1
 8043920:	d017      	beq.n	8043952 <HAL_GPIO_Init+0xf2>
 8043922:	687b      	ldr	r3, [r7, #4]
 8043924:	68db      	ldr	r3, [r3, #12]
 8043926:	613b      	str	r3, [r7, #16]
 8043928:	697b      	ldr	r3, [r7, #20]
 804392a:	005b      	lsls	r3, r3, #1
 804392c:	2203      	movs	r2, #3
 804392e:	fa02 f303 	lsl.w	r3, r2, r3
 8043932:	43db      	mvns	r3, r3
 8043934:	693a      	ldr	r2, [r7, #16]
 8043936:	4013      	ands	r3, r2
 8043938:	613b      	str	r3, [r7, #16]
 804393a:	683b      	ldr	r3, [r7, #0]
 804393c:	689a      	ldr	r2, [r3, #8]
 804393e:	697b      	ldr	r3, [r7, #20]
 8043940:	005b      	lsls	r3, r3, #1
 8043942:	fa02 f303 	lsl.w	r3, r2, r3
 8043946:	693a      	ldr	r2, [r7, #16]
 8043948:	4313      	orrs	r3, r2
 804394a:	613b      	str	r3, [r7, #16]
 804394c:	687b      	ldr	r3, [r7, #4]
 804394e:	693a      	ldr	r2, [r7, #16]
 8043950:	60da      	str	r2, [r3, #12]
 8043952:	683b      	ldr	r3, [r7, #0]
 8043954:	685b      	ldr	r3, [r3, #4]
 8043956:	f003 0303 	and.w	r3, r3, #3
 804395a:	2b02      	cmp	r3, #2
 804395c:	d123      	bne.n	80439a6 <HAL_GPIO_Init+0x146>
 804395e:	697b      	ldr	r3, [r7, #20]
 8043960:	08da      	lsrs	r2, r3, #3
 8043962:	687b      	ldr	r3, [r7, #4]
 8043964:	3208      	adds	r2, #8
 8043966:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 804396a:	613b      	str	r3, [r7, #16]
 804396c:	697b      	ldr	r3, [r7, #20]
 804396e:	f003 0307 	and.w	r3, r3, #7
 8043972:	009b      	lsls	r3, r3, #2
 8043974:	220f      	movs	r2, #15
 8043976:	fa02 f303 	lsl.w	r3, r2, r3
 804397a:	43db      	mvns	r3, r3
 804397c:	693a      	ldr	r2, [r7, #16]
 804397e:	4013      	ands	r3, r2
 8043980:	613b      	str	r3, [r7, #16]
 8043982:	683b      	ldr	r3, [r7, #0]
 8043984:	691a      	ldr	r2, [r3, #16]
 8043986:	697b      	ldr	r3, [r7, #20]
 8043988:	f003 0307 	and.w	r3, r3, #7
 804398c:	009b      	lsls	r3, r3, #2
 804398e:	fa02 f303 	lsl.w	r3, r2, r3
 8043992:	693a      	ldr	r2, [r7, #16]
 8043994:	4313      	orrs	r3, r2
 8043996:	613b      	str	r3, [r7, #16]
 8043998:	697b      	ldr	r3, [r7, #20]
 804399a:	08da      	lsrs	r2, r3, #3
 804399c:	687b      	ldr	r3, [r7, #4]
 804399e:	3208      	adds	r2, #8
 80439a0:	6939      	ldr	r1, [r7, #16]
 80439a2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80439a6:	687b      	ldr	r3, [r7, #4]
 80439a8:	681b      	ldr	r3, [r3, #0]
 80439aa:	613b      	str	r3, [r7, #16]
 80439ac:	697b      	ldr	r3, [r7, #20]
 80439ae:	005b      	lsls	r3, r3, #1
 80439b0:	2203      	movs	r2, #3
 80439b2:	fa02 f303 	lsl.w	r3, r2, r3
 80439b6:	43db      	mvns	r3, r3
 80439b8:	693a      	ldr	r2, [r7, #16]
 80439ba:	4013      	ands	r3, r2
 80439bc:	613b      	str	r3, [r7, #16]
 80439be:	683b      	ldr	r3, [r7, #0]
 80439c0:	685b      	ldr	r3, [r3, #4]
 80439c2:	f003 0203 	and.w	r2, r3, #3
 80439c6:	697b      	ldr	r3, [r7, #20]
 80439c8:	005b      	lsls	r3, r3, #1
 80439ca:	fa02 f303 	lsl.w	r3, r2, r3
 80439ce:	693a      	ldr	r2, [r7, #16]
 80439d0:	4313      	orrs	r3, r2
 80439d2:	613b      	str	r3, [r7, #16]
 80439d4:	687b      	ldr	r3, [r7, #4]
 80439d6:	693a      	ldr	r2, [r7, #16]
 80439d8:	601a      	str	r2, [r3, #0]
 80439da:	683b      	ldr	r3, [r7, #0]
 80439dc:	685b      	ldr	r3, [r3, #4]
 80439de:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 80439e2:	2b00      	cmp	r3, #0
 80439e4:	f000 80a4 	beq.w	8043b30 <HAL_GPIO_Init+0x2d0>
 80439e8:	4a5a      	ldr	r2, [pc, #360]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 80439ea:	697b      	ldr	r3, [r7, #20]
 80439ec:	089b      	lsrs	r3, r3, #2
 80439ee:	3318      	adds	r3, #24
 80439f0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80439f4:	613b      	str	r3, [r7, #16]
 80439f6:	697b      	ldr	r3, [r7, #20]
 80439f8:	f003 0303 	and.w	r3, r3, #3
 80439fc:	00db      	lsls	r3, r3, #3
 80439fe:	220f      	movs	r2, #15
 8043a00:	fa02 f303 	lsl.w	r3, r2, r3
 8043a04:	43db      	mvns	r3, r3
 8043a06:	693a      	ldr	r2, [r7, #16]
 8043a08:	4013      	ands	r3, r2
 8043a0a:	613b      	str	r3, [r7, #16]
 8043a0c:	687b      	ldr	r3, [r7, #4]
 8043a0e:	4a52      	ldr	r2, [pc, #328]	@ (8043b58 <HAL_GPIO_Init+0x2f8>)
 8043a10:	4293      	cmp	r3, r2
 8043a12:	d025      	beq.n	8043a60 <HAL_GPIO_Init+0x200>
 8043a14:	687b      	ldr	r3, [r7, #4]
 8043a16:	4a51      	ldr	r2, [pc, #324]	@ (8043b5c <HAL_GPIO_Init+0x2fc>)
 8043a18:	4293      	cmp	r3, r2
 8043a1a:	d01f      	beq.n	8043a5c <HAL_GPIO_Init+0x1fc>
 8043a1c:	687b      	ldr	r3, [r7, #4]
 8043a1e:	4a50      	ldr	r2, [pc, #320]	@ (8043b60 <HAL_GPIO_Init+0x300>)
 8043a20:	4293      	cmp	r3, r2
 8043a22:	d019      	beq.n	8043a58 <HAL_GPIO_Init+0x1f8>
 8043a24:	687b      	ldr	r3, [r7, #4]
 8043a26:	4a4f      	ldr	r2, [pc, #316]	@ (8043b64 <HAL_GPIO_Init+0x304>)
 8043a28:	4293      	cmp	r3, r2
 8043a2a:	d013      	beq.n	8043a54 <HAL_GPIO_Init+0x1f4>
 8043a2c:	687b      	ldr	r3, [r7, #4]
 8043a2e:	4a4e      	ldr	r2, [pc, #312]	@ (8043b68 <HAL_GPIO_Init+0x308>)
 8043a30:	4293      	cmp	r3, r2
 8043a32:	d00d      	beq.n	8043a50 <HAL_GPIO_Init+0x1f0>
 8043a34:	687b      	ldr	r3, [r7, #4]
 8043a36:	4a4d      	ldr	r2, [pc, #308]	@ (8043b6c <HAL_GPIO_Init+0x30c>)
 8043a38:	4293      	cmp	r3, r2
 8043a3a:	d007      	beq.n	8043a4c <HAL_GPIO_Init+0x1ec>
 8043a3c:	687b      	ldr	r3, [r7, #4]
 8043a3e:	4a4c      	ldr	r2, [pc, #304]	@ (8043b70 <HAL_GPIO_Init+0x310>)
 8043a40:	4293      	cmp	r3, r2
 8043a42:	d101      	bne.n	8043a48 <HAL_GPIO_Init+0x1e8>
 8043a44:	2306      	movs	r3, #6
 8043a46:	e00c      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a48:	2307      	movs	r3, #7
 8043a4a:	e00a      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a4c:	2305      	movs	r3, #5
 8043a4e:	e008      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a50:	2304      	movs	r3, #4
 8043a52:	e006      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a54:	2303      	movs	r3, #3
 8043a56:	e004      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a58:	2302      	movs	r3, #2
 8043a5a:	e002      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a5c:	2301      	movs	r3, #1
 8043a5e:	e000      	b.n	8043a62 <HAL_GPIO_Init+0x202>
 8043a60:	2300      	movs	r3, #0
 8043a62:	697a      	ldr	r2, [r7, #20]
 8043a64:	f002 0203 	and.w	r2, r2, #3
 8043a68:	00d2      	lsls	r2, r2, #3
 8043a6a:	4093      	lsls	r3, r2
 8043a6c:	693a      	ldr	r2, [r7, #16]
 8043a6e:	4313      	orrs	r3, r2
 8043a70:	613b      	str	r3, [r7, #16]
 8043a72:	4938      	ldr	r1, [pc, #224]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043a74:	697b      	ldr	r3, [r7, #20]
 8043a76:	089b      	lsrs	r3, r3, #2
 8043a78:	3318      	adds	r3, #24
 8043a7a:	693a      	ldr	r2, [r7, #16]
 8043a7c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8043a80:	4b34      	ldr	r3, [pc, #208]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043a82:	681b      	ldr	r3, [r3, #0]
 8043a84:	613b      	str	r3, [r7, #16]
 8043a86:	68fb      	ldr	r3, [r7, #12]
 8043a88:	43db      	mvns	r3, r3
 8043a8a:	693a      	ldr	r2, [r7, #16]
 8043a8c:	4013      	ands	r3, r2
 8043a8e:	613b      	str	r3, [r7, #16]
 8043a90:	683b      	ldr	r3, [r7, #0]
 8043a92:	685b      	ldr	r3, [r3, #4]
 8043a94:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8043a98:	2b00      	cmp	r3, #0
 8043a9a:	d003      	beq.n	8043aa4 <HAL_GPIO_Init+0x244>
 8043a9c:	693a      	ldr	r2, [r7, #16]
 8043a9e:	68fb      	ldr	r3, [r7, #12]
 8043aa0:	4313      	orrs	r3, r2
 8043aa2:	613b      	str	r3, [r7, #16]
 8043aa4:	4a2b      	ldr	r2, [pc, #172]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043aa6:	693b      	ldr	r3, [r7, #16]
 8043aa8:	6013      	str	r3, [r2, #0]
 8043aaa:	4b2a      	ldr	r3, [pc, #168]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043aac:	685b      	ldr	r3, [r3, #4]
 8043aae:	613b      	str	r3, [r7, #16]
 8043ab0:	68fb      	ldr	r3, [r7, #12]
 8043ab2:	43db      	mvns	r3, r3
 8043ab4:	693a      	ldr	r2, [r7, #16]
 8043ab6:	4013      	ands	r3, r2
 8043ab8:	613b      	str	r3, [r7, #16]
 8043aba:	683b      	ldr	r3, [r7, #0]
 8043abc:	685b      	ldr	r3, [r3, #4]
 8043abe:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8043ac2:	2b00      	cmp	r3, #0
 8043ac4:	d003      	beq.n	8043ace <HAL_GPIO_Init+0x26e>
 8043ac6:	693a      	ldr	r2, [r7, #16]
 8043ac8:	68fb      	ldr	r3, [r7, #12]
 8043aca:	4313      	orrs	r3, r2
 8043acc:	613b      	str	r3, [r7, #16]
 8043ace:	4a21      	ldr	r2, [pc, #132]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043ad0:	693b      	ldr	r3, [r7, #16]
 8043ad2:	6053      	str	r3, [r2, #4]
 8043ad4:	4b1f      	ldr	r3, [pc, #124]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043ad6:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8043ada:	613b      	str	r3, [r7, #16]
 8043adc:	68fb      	ldr	r3, [r7, #12]
 8043ade:	43db      	mvns	r3, r3
 8043ae0:	693a      	ldr	r2, [r7, #16]
 8043ae2:	4013      	ands	r3, r2
 8043ae4:	613b      	str	r3, [r7, #16]
 8043ae6:	683b      	ldr	r3, [r7, #0]
 8043ae8:	685b      	ldr	r3, [r3, #4]
 8043aea:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043aee:	2b00      	cmp	r3, #0
 8043af0:	d003      	beq.n	8043afa <HAL_GPIO_Init+0x29a>
 8043af2:	693a      	ldr	r2, [r7, #16]
 8043af4:	68fb      	ldr	r3, [r7, #12]
 8043af6:	4313      	orrs	r3, r2
 8043af8:	613b      	str	r3, [r7, #16]
 8043afa:	4a16      	ldr	r2, [pc, #88]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043afc:	693b      	ldr	r3, [r7, #16]
 8043afe:	f8c2 3084 	str.w	r3, [r2, #132]	@ 0x84
 8043b02:	4b14      	ldr	r3, [pc, #80]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043b04:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 8043b08:	613b      	str	r3, [r7, #16]
 8043b0a:	68fb      	ldr	r3, [r7, #12]
 8043b0c:	43db      	mvns	r3, r3
 8043b0e:	693a      	ldr	r2, [r7, #16]
 8043b10:	4013      	ands	r3, r2
 8043b12:	613b      	str	r3, [r7, #16]
 8043b14:	683b      	ldr	r3, [r7, #0]
 8043b16:	685b      	ldr	r3, [r3, #4]
 8043b18:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8043b1c:	2b00      	cmp	r3, #0
 8043b1e:	d003      	beq.n	8043b28 <HAL_GPIO_Init+0x2c8>
 8043b20:	693a      	ldr	r2, [r7, #16]
 8043b22:	68fb      	ldr	r3, [r7, #12]
 8043b24:	4313      	orrs	r3, r2
 8043b26:	613b      	str	r3, [r7, #16]
 8043b28:	4a0a      	ldr	r2, [pc, #40]	@ (8043b54 <HAL_GPIO_Init+0x2f4>)
 8043b2a:	693b      	ldr	r3, [r7, #16]
 8043b2c:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 8043b30:	697b      	ldr	r3, [r7, #20]
 8043b32:	3301      	adds	r3, #1
 8043b34:	617b      	str	r3, [r7, #20]
 8043b36:	683b      	ldr	r3, [r7, #0]
 8043b38:	681a      	ldr	r2, [r3, #0]
 8043b3a:	697b      	ldr	r3, [r7, #20]
 8043b3c:	fa22 f303 	lsr.w	r3, r2, r3
 8043b40:	2b00      	cmp	r3, #0
 8043b42:	f47f ae95 	bne.w	8043870 <HAL_GPIO_Init+0x10>
 8043b46:	bf00      	nop
 8043b48:	bf00      	nop
 8043b4a:	371c      	adds	r7, #28
 8043b4c:	46bd      	mov	sp, r7
 8043b4e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043b52:	4770      	bx	lr
 8043b54:	4002f400 	.word	0x4002f400
 8043b58:	42020000 	.word	0x42020000
 8043b5c:	42020400 	.word	0x42020400
 8043b60:	42020800 	.word	0x42020800
 8043b64:	42020c00 	.word	0x42020c00
 8043b68:	42021000 	.word	0x42021000
 8043b6c:	42021400 	.word	0x42021400
 8043b70:	42021800 	.word	0x42021800

08043b74 <HAL_GPIO_WritePin>:
 8043b74:	b480      	push	{r7}
 8043b76:	b083      	sub	sp, #12
 8043b78:	af00      	add	r7, sp, #0
 8043b7a:	6078      	str	r0, [r7, #4]
 8043b7c:	460b      	mov	r3, r1
 8043b7e:	807b      	strh	r3, [r7, #2]
 8043b80:	4613      	mov	r3, r2
 8043b82:	707b      	strb	r3, [r7, #1]
 8043b84:	787b      	ldrb	r3, [r7, #1]
 8043b86:	2b00      	cmp	r3, #0
 8043b88:	d003      	beq.n	8043b92 <HAL_GPIO_WritePin+0x1e>
 8043b8a:	887a      	ldrh	r2, [r7, #2]
 8043b8c:	687b      	ldr	r3, [r7, #4]
 8043b8e:	619a      	str	r2, [r3, #24]
 8043b90:	e002      	b.n	8043b98 <HAL_GPIO_WritePin+0x24>
 8043b92:	887a      	ldrh	r2, [r7, #2]
 8043b94:	687b      	ldr	r3, [r7, #4]
 8043b96:	629a      	str	r2, [r3, #40]	@ 0x28
 8043b98:	bf00      	nop
 8043b9a:	370c      	adds	r7, #12
 8043b9c:	46bd      	mov	sp, r7
 8043b9e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043ba2:	4770      	bx	lr

08043ba4 <HAL_PWREx_GetVoltageRange>:
 8043ba4:	b480      	push	{r7}
 8043ba6:	af00      	add	r7, sp, #0
 8043ba8:	4b04      	ldr	r3, [pc, #16]	@ (8043bbc <HAL_PWREx_GetVoltageRange+0x18>)
 8043baa:	681b      	ldr	r3, [r3, #0]
 8043bac:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 8043bb0:	4618      	mov	r0, r3
 8043bb2:	46bd      	mov	sp, r7
 8043bb4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043bb8:	4770      	bx	lr
 8043bba:	bf00      	nop
 8043bbc:	40007000 	.word	0x40007000

08043bc0 <HAL_PWREx_ControlVoltageScaling>:
 8043bc0:	b580      	push	{r7, lr}
 8043bc2:	b084      	sub	sp, #16
 8043bc4:	af00      	add	r7, sp, #0
 8043bc6:	6078      	str	r0, [r7, #4]
 8043bc8:	4b27      	ldr	r3, [pc, #156]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043bca:	681b      	ldr	r3, [r3, #0]
 8043bcc:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 8043bd0:	60bb      	str	r3, [r7, #8]
 8043bd2:	f000 f861 	bl	8043c98 <HAL_PWREx_SMPS_GetEffectiveMode>
 8043bd6:	4603      	mov	r3, r0
 8043bd8:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8043bdc:	d101      	bne.n	8043be2 <HAL_PWREx_ControlVoltageScaling+0x22>
 8043bde:	2301      	movs	r3, #1
 8043be0:	e03e      	b.n	8043c60 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8043be2:	4b21      	ldr	r3, [pc, #132]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043be4:	68db      	ldr	r3, [r3, #12]
 8043be6:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8043bea:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8043bee:	d101      	bne.n	8043bf4 <HAL_PWREx_ControlVoltageScaling+0x34>
 8043bf0:	2301      	movs	r3, #1
 8043bf2:	e035      	b.n	8043c60 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8043bf4:	68ba      	ldr	r2, [r7, #8]
 8043bf6:	687b      	ldr	r3, [r7, #4]
 8043bf8:	429a      	cmp	r2, r3
 8043bfa:	d101      	bne.n	8043c00 <HAL_PWREx_ControlVoltageScaling+0x40>
 8043bfc:	2300      	movs	r3, #0
 8043bfe:	e02f      	b.n	8043c60 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8043c00:	4b19      	ldr	r3, [pc, #100]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043c02:	681b      	ldr	r3, [r3, #0]
 8043c04:	f423 62c0 	bic.w	r2, r3, #1536	@ 0x600
 8043c08:	4917      	ldr	r1, [pc, #92]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043c0a:	687b      	ldr	r3, [r7, #4]
 8043c0c:	4313      	orrs	r3, r2
 8043c0e:	600b      	str	r3, [r1, #0]
 8043c10:	4b16      	ldr	r3, [pc, #88]	@ (8043c6c <HAL_PWREx_ControlVoltageScaling+0xac>)
 8043c12:	681b      	ldr	r3, [r3, #0]
 8043c14:	095b      	lsrs	r3, r3, #5
 8043c16:	4a16      	ldr	r2, [pc, #88]	@ (8043c70 <HAL_PWREx_ControlVoltageScaling+0xb0>)
 8043c18:	fba2 2303 	umull	r2, r3, r2, r3
 8043c1c:	09db      	lsrs	r3, r3, #7
 8043c1e:	2232      	movs	r2, #50	@ 0x32
 8043c20:	fb02 f303 	mul.w	r3, r2, r3
 8043c24:	4a13      	ldr	r2, [pc, #76]	@ (8043c74 <HAL_PWREx_ControlVoltageScaling+0xb4>)
 8043c26:	fba2 2303 	umull	r2, r3, r2, r3
 8043c2a:	08db      	lsrs	r3, r3, #3
 8043c2c:	3301      	adds	r3, #1
 8043c2e:	60fb      	str	r3, [r7, #12]
 8043c30:	e002      	b.n	8043c38 <HAL_PWREx_ControlVoltageScaling+0x78>
 8043c32:	68fb      	ldr	r3, [r7, #12]
 8043c34:	3b01      	subs	r3, #1
 8043c36:	60fb      	str	r3, [r7, #12]
 8043c38:	4b0b      	ldr	r3, [pc, #44]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043c3a:	695b      	ldr	r3, [r3, #20]
 8043c3c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8043c40:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8043c44:	d102      	bne.n	8043c4c <HAL_PWREx_ControlVoltageScaling+0x8c>
 8043c46:	68fb      	ldr	r3, [r7, #12]
 8043c48:	2b00      	cmp	r3, #0
 8043c4a:	d1f2      	bne.n	8043c32 <HAL_PWREx_ControlVoltageScaling+0x72>
 8043c4c:	4b06      	ldr	r3, [pc, #24]	@ (8043c68 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8043c4e:	695b      	ldr	r3, [r3, #20]
 8043c50:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8043c54:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8043c58:	d101      	bne.n	8043c5e <HAL_PWREx_ControlVoltageScaling+0x9e>
 8043c5a:	2303      	movs	r3, #3
 8043c5c:	e000      	b.n	8043c60 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8043c5e:	2300      	movs	r3, #0
 8043c60:	4618      	mov	r0, r3
 8043c62:	3710      	adds	r7, #16
 8043c64:	46bd      	mov	sp, r7
 8043c66:	bd80      	pop	{r7, pc}
 8043c68:	40007000 	.word	0x40007000
 8043c6c:	20018120 	.word	0x20018120
 8043c70:	0a7c5ac5 	.word	0x0a7c5ac5
 8043c74:	cccccccd 	.word	0xcccccccd

08043c78 <HAL_PWREx_EnableVddIO2>:
 8043c78:	b480      	push	{r7}
 8043c7a:	af00      	add	r7, sp, #0
 8043c7c:	4b05      	ldr	r3, [pc, #20]	@ (8043c94 <HAL_PWREx_EnableVddIO2+0x1c>)
 8043c7e:	685b      	ldr	r3, [r3, #4]
 8043c80:	4a04      	ldr	r2, [pc, #16]	@ (8043c94 <HAL_PWREx_EnableVddIO2+0x1c>)
 8043c82:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 8043c86:	6053      	str	r3, [r2, #4]
 8043c88:	bf00      	nop
 8043c8a:	46bd      	mov	sp, r7
 8043c8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043c90:	4770      	bx	lr
 8043c92:	bf00      	nop
 8043c94:	40007000 	.word	0x40007000

08043c98 <HAL_PWREx_SMPS_GetEffectiveMode>:
 8043c98:	b480      	push	{r7}
 8043c9a:	b083      	sub	sp, #12
 8043c9c:	af00      	add	r7, sp, #0
 8043c9e:	4b0f      	ldr	r3, [pc, #60]	@ (8043cdc <HAL_PWREx_SMPS_GetEffectiveMode+0x44>)
 8043ca0:	691b      	ldr	r3, [r3, #16]
 8043ca2:	603b      	str	r3, [r7, #0]
 8043ca4:	683b      	ldr	r3, [r7, #0]
 8043ca6:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 8043caa:	2b00      	cmp	r3, #0
 8043cac:	d003      	beq.n	8043cb6 <HAL_PWREx_SMPS_GetEffectiveMode+0x1e>
 8043cae:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8043cb2:	607b      	str	r3, [r7, #4]
 8043cb4:	e00a      	b.n	8043ccc <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 8043cb6:	683b      	ldr	r3, [r7, #0]
 8043cb8:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8043cbc:	2b00      	cmp	r3, #0
 8043cbe:	d103      	bne.n	8043cc8 <HAL_PWREx_SMPS_GetEffectiveMode+0x30>
 8043cc0:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8043cc4:	607b      	str	r3, [r7, #4]
 8043cc6:	e001      	b.n	8043ccc <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 8043cc8:	2300      	movs	r3, #0
 8043cca:	607b      	str	r3, [r7, #4]
 8043ccc:	687b      	ldr	r3, [r7, #4]
 8043cce:	4618      	mov	r0, r3
 8043cd0:	370c      	adds	r7, #12
 8043cd2:	46bd      	mov	sp, r7
 8043cd4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043cd8:	4770      	bx	lr
 8043cda:	bf00      	nop
 8043cdc:	40007000 	.word	0x40007000

08043ce0 <HAL_RCC_OscConfig>:
 8043ce0:	b580      	push	{r7, lr}
 8043ce2:	b088      	sub	sp, #32
 8043ce4:	af00      	add	r7, sp, #0
 8043ce6:	6078      	str	r0, [r7, #4]
 8043ce8:	687b      	ldr	r3, [r7, #4]
 8043cea:	2b00      	cmp	r3, #0
 8043cec:	d102      	bne.n	8043cf4 <HAL_RCC_OscConfig+0x14>
 8043cee:	2301      	movs	r3, #1
 8043cf0:	f000 bcc2 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043cf4:	4b99      	ldr	r3, [pc, #612]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043cf6:	689b      	ldr	r3, [r3, #8]
 8043cf8:	f003 030c 	and.w	r3, r3, #12
 8043cfc:	61bb      	str	r3, [r7, #24]
 8043cfe:	4b97      	ldr	r3, [pc, #604]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d00:	68db      	ldr	r3, [r3, #12]
 8043d02:	f003 0303 	and.w	r3, r3, #3
 8043d06:	617b      	str	r3, [r7, #20]
 8043d08:	687b      	ldr	r3, [r7, #4]
 8043d0a:	681b      	ldr	r3, [r3, #0]
 8043d0c:	f003 0310 	and.w	r3, r3, #16
 8043d10:	2b00      	cmp	r3, #0
 8043d12:	f000 80e9 	beq.w	8043ee8 <HAL_RCC_OscConfig+0x208>
 8043d16:	69bb      	ldr	r3, [r7, #24]
 8043d18:	2b00      	cmp	r3, #0
 8043d1a:	d006      	beq.n	8043d2a <HAL_RCC_OscConfig+0x4a>
 8043d1c:	69bb      	ldr	r3, [r7, #24]
 8043d1e:	2b0c      	cmp	r3, #12
 8043d20:	f040 8083 	bne.w	8043e2a <HAL_RCC_OscConfig+0x14a>
 8043d24:	697b      	ldr	r3, [r7, #20]
 8043d26:	2b01      	cmp	r3, #1
 8043d28:	d17f      	bne.n	8043e2a <HAL_RCC_OscConfig+0x14a>
 8043d2a:	4b8c      	ldr	r3, [pc, #560]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d2c:	681b      	ldr	r3, [r3, #0]
 8043d2e:	f003 0302 	and.w	r3, r3, #2
 8043d32:	2b00      	cmp	r3, #0
 8043d34:	d006      	beq.n	8043d44 <HAL_RCC_OscConfig+0x64>
 8043d36:	687b      	ldr	r3, [r7, #4]
 8043d38:	69db      	ldr	r3, [r3, #28]
 8043d3a:	2b00      	cmp	r3, #0
 8043d3c:	d102      	bne.n	8043d44 <HAL_RCC_OscConfig+0x64>
 8043d3e:	2301      	movs	r3, #1
 8043d40:	f000 bc9a 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043d44:	687b      	ldr	r3, [r7, #4]
 8043d46:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8043d48:	4b84      	ldr	r3, [pc, #528]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d4a:	681b      	ldr	r3, [r3, #0]
 8043d4c:	f003 0308 	and.w	r3, r3, #8
 8043d50:	2b00      	cmp	r3, #0
 8043d52:	d004      	beq.n	8043d5e <HAL_RCC_OscConfig+0x7e>
 8043d54:	4b81      	ldr	r3, [pc, #516]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d56:	681b      	ldr	r3, [r3, #0]
 8043d58:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8043d5c:	e005      	b.n	8043d6a <HAL_RCC_OscConfig+0x8a>
 8043d5e:	4b7f      	ldr	r3, [pc, #508]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d60:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8043d64:	091b      	lsrs	r3, r3, #4
 8043d66:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8043d6a:	4293      	cmp	r3, r2
 8043d6c:	d224      	bcs.n	8043db8 <HAL_RCC_OscConfig+0xd8>
 8043d6e:	687b      	ldr	r3, [r7, #4]
 8043d70:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8043d72:	4618      	mov	r0, r3
 8043d74:	f000 fe9a 	bl	8044aac <RCC_SetFlashLatencyFromMSIRange>
 8043d78:	4603      	mov	r3, r0
 8043d7a:	2b00      	cmp	r3, #0
 8043d7c:	d002      	beq.n	8043d84 <HAL_RCC_OscConfig+0xa4>
 8043d7e:	2301      	movs	r3, #1
 8043d80:	f000 bc7a 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043d84:	4b75      	ldr	r3, [pc, #468]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d86:	681b      	ldr	r3, [r3, #0]
 8043d88:	4a74      	ldr	r2, [pc, #464]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d8a:	f043 0308 	orr.w	r3, r3, #8
 8043d8e:	6013      	str	r3, [r2, #0]
 8043d90:	4b72      	ldr	r3, [pc, #456]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d92:	681b      	ldr	r3, [r3, #0]
 8043d94:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8043d98:	687b      	ldr	r3, [r7, #4]
 8043d9a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8043d9c:	496f      	ldr	r1, [pc, #444]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043d9e:	4313      	orrs	r3, r2
 8043da0:	600b      	str	r3, [r1, #0]
 8043da2:	4b6e      	ldr	r3, [pc, #440]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043da4:	685b      	ldr	r3, [r3, #4]
 8043da6:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 8043daa:	687b      	ldr	r3, [r7, #4]
 8043dac:	6a1b      	ldr	r3, [r3, #32]
 8043dae:	021b      	lsls	r3, r3, #8
 8043db0:	496a      	ldr	r1, [pc, #424]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043db2:	4313      	orrs	r3, r2
 8043db4:	604b      	str	r3, [r1, #4]
 8043db6:	e026      	b.n	8043e06 <HAL_RCC_OscConfig+0x126>
 8043db8:	4b68      	ldr	r3, [pc, #416]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043dba:	681b      	ldr	r3, [r3, #0]
 8043dbc:	4a67      	ldr	r2, [pc, #412]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043dbe:	f043 0308 	orr.w	r3, r3, #8
 8043dc2:	6013      	str	r3, [r2, #0]
 8043dc4:	4b65      	ldr	r3, [pc, #404]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043dc6:	681b      	ldr	r3, [r3, #0]
 8043dc8:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8043dcc:	687b      	ldr	r3, [r7, #4]
 8043dce:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8043dd0:	4962      	ldr	r1, [pc, #392]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043dd2:	4313      	orrs	r3, r2
 8043dd4:	600b      	str	r3, [r1, #0]
 8043dd6:	4b61      	ldr	r3, [pc, #388]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043dd8:	685b      	ldr	r3, [r3, #4]
 8043dda:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 8043dde:	687b      	ldr	r3, [r7, #4]
 8043de0:	6a1b      	ldr	r3, [r3, #32]
 8043de2:	021b      	lsls	r3, r3, #8
 8043de4:	495d      	ldr	r1, [pc, #372]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043de6:	4313      	orrs	r3, r2
 8043de8:	604b      	str	r3, [r1, #4]
 8043dea:	69bb      	ldr	r3, [r7, #24]
 8043dec:	2b00      	cmp	r3, #0
 8043dee:	d10a      	bne.n	8043e06 <HAL_RCC_OscConfig+0x126>
 8043df0:	687b      	ldr	r3, [r7, #4]
 8043df2:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8043df4:	4618      	mov	r0, r3
 8043df6:	f000 fe59 	bl	8044aac <RCC_SetFlashLatencyFromMSIRange>
 8043dfa:	4603      	mov	r3, r0
 8043dfc:	2b00      	cmp	r3, #0
 8043dfe:	d002      	beq.n	8043e06 <HAL_RCC_OscConfig+0x126>
 8043e00:	2301      	movs	r3, #1
 8043e02:	f000 bc39 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043e06:	f000 fe15 	bl	8044a34 <HAL_RCC_GetHCLKFreq>
 8043e0a:	4603      	mov	r3, r0
 8043e0c:	4a54      	ldr	r2, [pc, #336]	@ (8043f60 <HAL_RCC_OscConfig+0x280>)
 8043e0e:	6013      	str	r3, [r2, #0]
 8043e10:	4b54      	ldr	r3, [pc, #336]	@ (8043f64 <HAL_RCC_OscConfig+0x284>)
 8043e12:	681b      	ldr	r3, [r3, #0]
 8043e14:	4618      	mov	r0, r3
 8043e16:	f7ff f89f 	bl	8042f58 <HAL_InitTick>
 8043e1a:	4603      	mov	r3, r0
 8043e1c:	73fb      	strb	r3, [r7, #15]
 8043e1e:	7bfb      	ldrb	r3, [r7, #15]
 8043e20:	2b00      	cmp	r3, #0
 8043e22:	d060      	beq.n	8043ee6 <HAL_RCC_OscConfig+0x206>
 8043e24:	7bfb      	ldrb	r3, [r7, #15]
 8043e26:	f000 bc27 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043e2a:	687b      	ldr	r3, [r7, #4]
 8043e2c:	69db      	ldr	r3, [r3, #28]
 8043e2e:	2b00      	cmp	r3, #0
 8043e30:	d039      	beq.n	8043ea6 <HAL_RCC_OscConfig+0x1c6>
 8043e32:	4b4a      	ldr	r3, [pc, #296]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e34:	681b      	ldr	r3, [r3, #0]
 8043e36:	4a49      	ldr	r2, [pc, #292]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e38:	f043 0301 	orr.w	r3, r3, #1
 8043e3c:	6013      	str	r3, [r2, #0]
 8043e3e:	f7ff f8db 	bl	8042ff8 <HAL_GetTick>
 8043e42:	6138      	str	r0, [r7, #16]
 8043e44:	e00f      	b.n	8043e66 <HAL_RCC_OscConfig+0x186>
 8043e46:	f7ff f8d7 	bl	8042ff8 <HAL_GetTick>
 8043e4a:	4602      	mov	r2, r0
 8043e4c:	693b      	ldr	r3, [r7, #16]
 8043e4e:	1ad3      	subs	r3, r2, r3
 8043e50:	2b02      	cmp	r3, #2
 8043e52:	d908      	bls.n	8043e66 <HAL_RCC_OscConfig+0x186>
 8043e54:	4b41      	ldr	r3, [pc, #260]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e56:	681b      	ldr	r3, [r3, #0]
 8043e58:	f003 0302 	and.w	r3, r3, #2
 8043e5c:	2b00      	cmp	r3, #0
 8043e5e:	d102      	bne.n	8043e66 <HAL_RCC_OscConfig+0x186>
 8043e60:	2303      	movs	r3, #3
 8043e62:	f000 bc09 	b.w	8044678 <HAL_RCC_OscConfig+0x998>
 8043e66:	4b3d      	ldr	r3, [pc, #244]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e68:	681b      	ldr	r3, [r3, #0]
 8043e6a:	f003 0302 	and.w	r3, r3, #2
 8043e6e:	2b00      	cmp	r3, #0
 8043e70:	d0e9      	beq.n	8043e46 <HAL_RCC_OscConfig+0x166>
 8043e72:	4b3a      	ldr	r3, [pc, #232]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e74:	681b      	ldr	r3, [r3, #0]
 8043e76:	4a39      	ldr	r2, [pc, #228]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e78:	f043 0308 	orr.w	r3, r3, #8
 8043e7c:	6013      	str	r3, [r2, #0]
 8043e7e:	4b37      	ldr	r3, [pc, #220]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e80:	681b      	ldr	r3, [r3, #0]
 8043e82:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8043e86:	687b      	ldr	r3, [r7, #4]
 8043e88:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8043e8a:	4934      	ldr	r1, [pc, #208]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e8c:	4313      	orrs	r3, r2
 8043e8e:	600b      	str	r3, [r1, #0]
 8043e90:	4b32      	ldr	r3, [pc, #200]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043e92:	685b      	ldr	r3, [r3, #4]
 8043e94:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 8043e98:	687b      	ldr	r3, [r7, #4]
 8043e9a:	6a1b      	ldr	r3, [r3, #32]
 8043e9c:	021b      	lsls	r3, r3, #8
 8043e9e:	492f      	ldr	r1, [pc, #188]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043ea0:	4313      	orrs	r3, r2
 8043ea2:	604b      	str	r3, [r1, #4]
 8043ea4:	e020      	b.n	8043ee8 <HAL_RCC_OscConfig+0x208>
 8043ea6:	4b2d      	ldr	r3, [pc, #180]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043ea8:	681b      	ldr	r3, [r3, #0]
 8043eaa:	4a2c      	ldr	r2, [pc, #176]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043eac:	f023 0301 	bic.w	r3, r3, #1
 8043eb0:	6013      	str	r3, [r2, #0]
 8043eb2:	f7ff f8a1 	bl	8042ff8 <HAL_GetTick>
 8043eb6:	6138      	str	r0, [r7, #16]
 8043eb8:	e00e      	b.n	8043ed8 <HAL_RCC_OscConfig+0x1f8>
 8043eba:	f7ff f89d 	bl	8042ff8 <HAL_GetTick>
 8043ebe:	4602      	mov	r2, r0
 8043ec0:	693b      	ldr	r3, [r7, #16]
 8043ec2:	1ad3      	subs	r3, r2, r3
 8043ec4:	2b02      	cmp	r3, #2
 8043ec6:	d907      	bls.n	8043ed8 <HAL_RCC_OscConfig+0x1f8>
 8043ec8:	4b24      	ldr	r3, [pc, #144]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043eca:	681b      	ldr	r3, [r3, #0]
 8043ecc:	f003 0302 	and.w	r3, r3, #2
 8043ed0:	2b00      	cmp	r3, #0
 8043ed2:	d001      	beq.n	8043ed8 <HAL_RCC_OscConfig+0x1f8>
 8043ed4:	2303      	movs	r3, #3
 8043ed6:	e3cf      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8043ed8:	4b20      	ldr	r3, [pc, #128]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043eda:	681b      	ldr	r3, [r3, #0]
 8043edc:	f003 0302 	and.w	r3, r3, #2
 8043ee0:	2b00      	cmp	r3, #0
 8043ee2:	d1ea      	bne.n	8043eba <HAL_RCC_OscConfig+0x1da>
 8043ee4:	e000      	b.n	8043ee8 <HAL_RCC_OscConfig+0x208>
 8043ee6:	bf00      	nop
 8043ee8:	687b      	ldr	r3, [r7, #4]
 8043eea:	681b      	ldr	r3, [r3, #0]
 8043eec:	f003 0301 	and.w	r3, r3, #1
 8043ef0:	2b00      	cmp	r3, #0
 8043ef2:	d07e      	beq.n	8043ff2 <HAL_RCC_OscConfig+0x312>
 8043ef4:	69bb      	ldr	r3, [r7, #24]
 8043ef6:	2b08      	cmp	r3, #8
 8043ef8:	d005      	beq.n	8043f06 <HAL_RCC_OscConfig+0x226>
 8043efa:	69bb      	ldr	r3, [r7, #24]
 8043efc:	2b0c      	cmp	r3, #12
 8043efe:	d10e      	bne.n	8043f1e <HAL_RCC_OscConfig+0x23e>
 8043f00:	697b      	ldr	r3, [r7, #20]
 8043f02:	2b03      	cmp	r3, #3
 8043f04:	d10b      	bne.n	8043f1e <HAL_RCC_OscConfig+0x23e>
 8043f06:	4b15      	ldr	r3, [pc, #84]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f08:	681b      	ldr	r3, [r3, #0]
 8043f0a:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043f0e:	2b00      	cmp	r3, #0
 8043f10:	d06e      	beq.n	8043ff0 <HAL_RCC_OscConfig+0x310>
 8043f12:	687b      	ldr	r3, [r7, #4]
 8043f14:	685b      	ldr	r3, [r3, #4]
 8043f16:	2b00      	cmp	r3, #0
 8043f18:	d16a      	bne.n	8043ff0 <HAL_RCC_OscConfig+0x310>
 8043f1a:	2301      	movs	r3, #1
 8043f1c:	e3ac      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8043f1e:	687b      	ldr	r3, [r7, #4]
 8043f20:	685b      	ldr	r3, [r3, #4]
 8043f22:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8043f26:	d106      	bne.n	8043f36 <HAL_RCC_OscConfig+0x256>
 8043f28:	4b0c      	ldr	r3, [pc, #48]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f2a:	681b      	ldr	r3, [r3, #0]
 8043f2c:	4a0b      	ldr	r2, [pc, #44]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f2e:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8043f32:	6013      	str	r3, [r2, #0]
 8043f34:	e024      	b.n	8043f80 <HAL_RCC_OscConfig+0x2a0>
 8043f36:	687b      	ldr	r3, [r7, #4]
 8043f38:	685b      	ldr	r3, [r3, #4]
 8043f3a:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 8043f3e:	d113      	bne.n	8043f68 <HAL_RCC_OscConfig+0x288>
 8043f40:	4b06      	ldr	r3, [pc, #24]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f42:	681b      	ldr	r3, [r3, #0]
 8043f44:	4a05      	ldr	r2, [pc, #20]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f46:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8043f4a:	6013      	str	r3, [r2, #0]
 8043f4c:	4b03      	ldr	r3, [pc, #12]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f4e:	681b      	ldr	r3, [r3, #0]
 8043f50:	4a02      	ldr	r2, [pc, #8]	@ (8043f5c <HAL_RCC_OscConfig+0x27c>)
 8043f52:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8043f56:	6013      	str	r3, [r2, #0]
 8043f58:	e012      	b.n	8043f80 <HAL_RCC_OscConfig+0x2a0>
 8043f5a:	bf00      	nop
 8043f5c:	40021000 	.word	0x40021000
 8043f60:	20018120 	.word	0x20018120
 8043f64:	20018124 	.word	0x20018124
 8043f68:	4b8b      	ldr	r3, [pc, #556]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043f6a:	681b      	ldr	r3, [r3, #0]
 8043f6c:	4a8a      	ldr	r2, [pc, #552]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043f6e:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8043f72:	6013      	str	r3, [r2, #0]
 8043f74:	4b88      	ldr	r3, [pc, #544]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043f76:	681b      	ldr	r3, [r3, #0]
 8043f78:	4a87      	ldr	r2, [pc, #540]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043f7a:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 8043f7e:	6013      	str	r3, [r2, #0]
 8043f80:	687b      	ldr	r3, [r7, #4]
 8043f82:	685b      	ldr	r3, [r3, #4]
 8043f84:	2b00      	cmp	r3, #0
 8043f86:	d019      	beq.n	8043fbc <HAL_RCC_OscConfig+0x2dc>
 8043f88:	f7ff f836 	bl	8042ff8 <HAL_GetTick>
 8043f8c:	6138      	str	r0, [r7, #16]
 8043f8e:	e00e      	b.n	8043fae <HAL_RCC_OscConfig+0x2ce>
 8043f90:	f7ff f832 	bl	8042ff8 <HAL_GetTick>
 8043f94:	4602      	mov	r2, r0
 8043f96:	693b      	ldr	r3, [r7, #16]
 8043f98:	1ad3      	subs	r3, r2, r3
 8043f9a:	2b64      	cmp	r3, #100	@ 0x64
 8043f9c:	d907      	bls.n	8043fae <HAL_RCC_OscConfig+0x2ce>
 8043f9e:	4b7e      	ldr	r3, [pc, #504]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043fa0:	681b      	ldr	r3, [r3, #0]
 8043fa2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043fa6:	2b00      	cmp	r3, #0
 8043fa8:	d101      	bne.n	8043fae <HAL_RCC_OscConfig+0x2ce>
 8043faa:	2303      	movs	r3, #3
 8043fac:	e364      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8043fae:	4b7a      	ldr	r3, [pc, #488]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043fb0:	681b      	ldr	r3, [r3, #0]
 8043fb2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043fb6:	2b00      	cmp	r3, #0
 8043fb8:	d0ea      	beq.n	8043f90 <HAL_RCC_OscConfig+0x2b0>
 8043fba:	e01a      	b.n	8043ff2 <HAL_RCC_OscConfig+0x312>
 8043fbc:	f7ff f81c 	bl	8042ff8 <HAL_GetTick>
 8043fc0:	6138      	str	r0, [r7, #16]
 8043fc2:	e00e      	b.n	8043fe2 <HAL_RCC_OscConfig+0x302>
 8043fc4:	f7ff f818 	bl	8042ff8 <HAL_GetTick>
 8043fc8:	4602      	mov	r2, r0
 8043fca:	693b      	ldr	r3, [r7, #16]
 8043fcc:	1ad3      	subs	r3, r2, r3
 8043fce:	2b64      	cmp	r3, #100	@ 0x64
 8043fd0:	d907      	bls.n	8043fe2 <HAL_RCC_OscConfig+0x302>
 8043fd2:	4b71      	ldr	r3, [pc, #452]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043fd4:	681b      	ldr	r3, [r3, #0]
 8043fd6:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043fda:	2b00      	cmp	r3, #0
 8043fdc:	d001      	beq.n	8043fe2 <HAL_RCC_OscConfig+0x302>
 8043fde:	2303      	movs	r3, #3
 8043fe0:	e34a      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8043fe2:	4b6d      	ldr	r3, [pc, #436]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8043fe4:	681b      	ldr	r3, [r3, #0]
 8043fe6:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8043fea:	2b00      	cmp	r3, #0
 8043fec:	d1ea      	bne.n	8043fc4 <HAL_RCC_OscConfig+0x2e4>
 8043fee:	e000      	b.n	8043ff2 <HAL_RCC_OscConfig+0x312>
 8043ff0:	bf00      	nop
 8043ff2:	687b      	ldr	r3, [r7, #4]
 8043ff4:	681b      	ldr	r3, [r3, #0]
 8043ff6:	f003 0302 	and.w	r3, r3, #2
 8043ffa:	2b00      	cmp	r3, #0
 8043ffc:	d06c      	beq.n	80440d8 <HAL_RCC_OscConfig+0x3f8>
 8043ffe:	69bb      	ldr	r3, [r7, #24]
 8044000:	2b04      	cmp	r3, #4
 8044002:	d005      	beq.n	8044010 <HAL_RCC_OscConfig+0x330>
 8044004:	69bb      	ldr	r3, [r7, #24]
 8044006:	2b0c      	cmp	r3, #12
 8044008:	d119      	bne.n	804403e <HAL_RCC_OscConfig+0x35e>
 804400a:	697b      	ldr	r3, [r7, #20]
 804400c:	2b02      	cmp	r3, #2
 804400e:	d116      	bne.n	804403e <HAL_RCC_OscConfig+0x35e>
 8044010:	4b61      	ldr	r3, [pc, #388]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044012:	681b      	ldr	r3, [r3, #0]
 8044014:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8044018:	2b00      	cmp	r3, #0
 804401a:	d005      	beq.n	8044028 <HAL_RCC_OscConfig+0x348>
 804401c:	687b      	ldr	r3, [r7, #4]
 804401e:	68db      	ldr	r3, [r3, #12]
 8044020:	2b00      	cmp	r3, #0
 8044022:	d101      	bne.n	8044028 <HAL_RCC_OscConfig+0x348>
 8044024:	2301      	movs	r3, #1
 8044026:	e327      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044028:	4b5b      	ldr	r3, [pc, #364]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804402a:	685b      	ldr	r3, [r3, #4]
 804402c:	f023 42fe 	bic.w	r2, r3, #2130706432	@ 0x7f000000
 8044030:	687b      	ldr	r3, [r7, #4]
 8044032:	691b      	ldr	r3, [r3, #16]
 8044034:	061b      	lsls	r3, r3, #24
 8044036:	4958      	ldr	r1, [pc, #352]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044038:	4313      	orrs	r3, r2
 804403a:	604b      	str	r3, [r1, #4]
 804403c:	e04c      	b.n	80440d8 <HAL_RCC_OscConfig+0x3f8>
 804403e:	687b      	ldr	r3, [r7, #4]
 8044040:	68db      	ldr	r3, [r3, #12]
 8044042:	2b00      	cmp	r3, #0
 8044044:	d029      	beq.n	804409a <HAL_RCC_OscConfig+0x3ba>
 8044046:	4b54      	ldr	r3, [pc, #336]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044048:	681b      	ldr	r3, [r3, #0]
 804404a:	4a53      	ldr	r2, [pc, #332]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804404c:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8044050:	6013      	str	r3, [r2, #0]
 8044052:	f7fe ffd1 	bl	8042ff8 <HAL_GetTick>
 8044056:	6138      	str	r0, [r7, #16]
 8044058:	e00e      	b.n	8044078 <HAL_RCC_OscConfig+0x398>
 804405a:	f7fe ffcd 	bl	8042ff8 <HAL_GetTick>
 804405e:	4602      	mov	r2, r0
 8044060:	693b      	ldr	r3, [r7, #16]
 8044062:	1ad3      	subs	r3, r2, r3
 8044064:	2b02      	cmp	r3, #2
 8044066:	d907      	bls.n	8044078 <HAL_RCC_OscConfig+0x398>
 8044068:	4b4b      	ldr	r3, [pc, #300]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804406a:	681b      	ldr	r3, [r3, #0]
 804406c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8044070:	2b00      	cmp	r3, #0
 8044072:	d101      	bne.n	8044078 <HAL_RCC_OscConfig+0x398>
 8044074:	2303      	movs	r3, #3
 8044076:	e2ff      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044078:	4b47      	ldr	r3, [pc, #284]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804407a:	681b      	ldr	r3, [r3, #0]
 804407c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8044080:	2b00      	cmp	r3, #0
 8044082:	d0ea      	beq.n	804405a <HAL_RCC_OscConfig+0x37a>
 8044084:	4b44      	ldr	r3, [pc, #272]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044086:	685b      	ldr	r3, [r3, #4]
 8044088:	f023 42fe 	bic.w	r2, r3, #2130706432	@ 0x7f000000
 804408c:	687b      	ldr	r3, [r7, #4]
 804408e:	691b      	ldr	r3, [r3, #16]
 8044090:	061b      	lsls	r3, r3, #24
 8044092:	4941      	ldr	r1, [pc, #260]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044094:	4313      	orrs	r3, r2
 8044096:	604b      	str	r3, [r1, #4]
 8044098:	e01e      	b.n	80440d8 <HAL_RCC_OscConfig+0x3f8>
 804409a:	4b3f      	ldr	r3, [pc, #252]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804409c:	681b      	ldr	r3, [r3, #0]
 804409e:	4a3e      	ldr	r2, [pc, #248]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 80440a0:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80440a4:	6013      	str	r3, [r2, #0]
 80440a6:	f7fe ffa7 	bl	8042ff8 <HAL_GetTick>
 80440aa:	6138      	str	r0, [r7, #16]
 80440ac:	e00e      	b.n	80440cc <HAL_RCC_OscConfig+0x3ec>
 80440ae:	f7fe ffa3 	bl	8042ff8 <HAL_GetTick>
 80440b2:	4602      	mov	r2, r0
 80440b4:	693b      	ldr	r3, [r7, #16]
 80440b6:	1ad3      	subs	r3, r2, r3
 80440b8:	2b02      	cmp	r3, #2
 80440ba:	d907      	bls.n	80440cc <HAL_RCC_OscConfig+0x3ec>
 80440bc:	4b36      	ldr	r3, [pc, #216]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 80440be:	681b      	ldr	r3, [r3, #0]
 80440c0:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80440c4:	2b00      	cmp	r3, #0
 80440c6:	d001      	beq.n	80440cc <HAL_RCC_OscConfig+0x3ec>
 80440c8:	2303      	movs	r3, #3
 80440ca:	e2d5      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80440cc:	4b32      	ldr	r3, [pc, #200]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 80440ce:	681b      	ldr	r3, [r3, #0]
 80440d0:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80440d4:	2b00      	cmp	r3, #0
 80440d6:	d1ea      	bne.n	80440ae <HAL_RCC_OscConfig+0x3ce>
 80440d8:	687b      	ldr	r3, [r7, #4]
 80440da:	681b      	ldr	r3, [r3, #0]
 80440dc:	f003 0308 	and.w	r3, r3, #8
 80440e0:	2b00      	cmp	r3, #0
 80440e2:	d062      	beq.n	80441aa <HAL_RCC_OscConfig+0x4ca>
 80440e4:	687b      	ldr	r3, [r7, #4]
 80440e6:	695b      	ldr	r3, [r3, #20]
 80440e8:	2b00      	cmp	r3, #0
 80440ea:	d038      	beq.n	804415e <HAL_RCC_OscConfig+0x47e>
 80440ec:	687b      	ldr	r3, [r7, #4]
 80440ee:	699b      	ldr	r3, [r3, #24]
 80440f0:	2b00      	cmp	r3, #0
 80440f2:	d108      	bne.n	8044106 <HAL_RCC_OscConfig+0x426>
 80440f4:	4b28      	ldr	r3, [pc, #160]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 80440f6:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80440fa:	4a27      	ldr	r2, [pc, #156]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 80440fc:	f023 0310 	bic.w	r3, r3, #16
 8044100:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8044104:	e007      	b.n	8044116 <HAL_RCC_OscConfig+0x436>
 8044106:	4b24      	ldr	r3, [pc, #144]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044108:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 804410c:	4a22      	ldr	r2, [pc, #136]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804410e:	f043 0310 	orr.w	r3, r3, #16
 8044112:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8044116:	4b20      	ldr	r3, [pc, #128]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044118:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 804411c:	4a1e      	ldr	r2, [pc, #120]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804411e:	f043 0301 	orr.w	r3, r3, #1
 8044122:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8044126:	f7fe ff67 	bl	8042ff8 <HAL_GetTick>
 804412a:	6138      	str	r0, [r7, #16]
 804412c:	e00f      	b.n	804414e <HAL_RCC_OscConfig+0x46e>
 804412e:	f7fe ff63 	bl	8042ff8 <HAL_GetTick>
 8044132:	4602      	mov	r2, r0
 8044134:	693b      	ldr	r3, [r7, #16]
 8044136:	1ad3      	subs	r3, r2, r3
 8044138:	2b07      	cmp	r3, #7
 804413a:	d908      	bls.n	804414e <HAL_RCC_OscConfig+0x46e>
 804413c:	4b16      	ldr	r3, [pc, #88]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 804413e:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8044142:	f003 0302 	and.w	r3, r3, #2
 8044146:	2b00      	cmp	r3, #0
 8044148:	d101      	bne.n	804414e <HAL_RCC_OscConfig+0x46e>
 804414a:	2303      	movs	r3, #3
 804414c:	e294      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 804414e:	4b12      	ldr	r3, [pc, #72]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044150:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8044154:	f003 0302 	and.w	r3, r3, #2
 8044158:	2b00      	cmp	r3, #0
 804415a:	d0e8      	beq.n	804412e <HAL_RCC_OscConfig+0x44e>
 804415c:	e025      	b.n	80441aa <HAL_RCC_OscConfig+0x4ca>
 804415e:	4b0e      	ldr	r3, [pc, #56]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044160:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8044164:	4a0c      	ldr	r2, [pc, #48]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044166:	f023 0301 	bic.w	r3, r3, #1
 804416a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 804416e:	f7fe ff43 	bl	8042ff8 <HAL_GetTick>
 8044172:	6138      	str	r0, [r7, #16]
 8044174:	e012      	b.n	804419c <HAL_RCC_OscConfig+0x4bc>
 8044176:	f7fe ff3f 	bl	8042ff8 <HAL_GetTick>
 804417a:	4602      	mov	r2, r0
 804417c:	693b      	ldr	r3, [r7, #16]
 804417e:	1ad3      	subs	r3, r2, r3
 8044180:	2b07      	cmp	r3, #7
 8044182:	d90b      	bls.n	804419c <HAL_RCC_OscConfig+0x4bc>
 8044184:	4b04      	ldr	r3, [pc, #16]	@ (8044198 <HAL_RCC_OscConfig+0x4b8>)
 8044186:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 804418a:	f003 0302 	and.w	r3, r3, #2
 804418e:	2b00      	cmp	r3, #0
 8044190:	d004      	beq.n	804419c <HAL_RCC_OscConfig+0x4bc>
 8044192:	2303      	movs	r3, #3
 8044194:	e270      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044196:	bf00      	nop
 8044198:	40021000 	.word	0x40021000
 804419c:	4ba8      	ldr	r3, [pc, #672]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804419e:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80441a2:	f003 0302 	and.w	r3, r3, #2
 80441a6:	2b00      	cmp	r3, #0
 80441a8:	d1e5      	bne.n	8044176 <HAL_RCC_OscConfig+0x496>
 80441aa:	687b      	ldr	r3, [r7, #4]
 80441ac:	681b      	ldr	r3, [r3, #0]
 80441ae:	f003 0304 	and.w	r3, r3, #4
 80441b2:	2b00      	cmp	r3, #0
 80441b4:	f000 812d 	beq.w	8044412 <HAL_RCC_OscConfig+0x732>
 80441b8:	2300      	movs	r3, #0
 80441ba:	77fb      	strb	r3, [r7, #31]
 80441bc:	4ba0      	ldr	r3, [pc, #640]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80441be:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80441c0:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80441c4:	2b00      	cmp	r3, #0
 80441c6:	d10d      	bne.n	80441e4 <HAL_RCC_OscConfig+0x504>
 80441c8:	4b9d      	ldr	r3, [pc, #628]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80441ca:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80441cc:	4a9c      	ldr	r2, [pc, #624]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80441ce:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 80441d2:	6593      	str	r3, [r2, #88]	@ 0x58
 80441d4:	4b9a      	ldr	r3, [pc, #616]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80441d6:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80441d8:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80441dc:	60bb      	str	r3, [r7, #8]
 80441de:	68bb      	ldr	r3, [r7, #8]
 80441e0:	2301      	movs	r3, #1
 80441e2:	77fb      	strb	r3, [r7, #31]
 80441e4:	4b97      	ldr	r3, [pc, #604]	@ (8044444 <HAL_RCC_OscConfig+0x764>)
 80441e6:	681b      	ldr	r3, [r3, #0]
 80441e8:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80441ec:	2b00      	cmp	r3, #0
 80441ee:	d11e      	bne.n	804422e <HAL_RCC_OscConfig+0x54e>
 80441f0:	4b94      	ldr	r3, [pc, #592]	@ (8044444 <HAL_RCC_OscConfig+0x764>)
 80441f2:	681b      	ldr	r3, [r3, #0]
 80441f4:	4a93      	ldr	r2, [pc, #588]	@ (8044444 <HAL_RCC_OscConfig+0x764>)
 80441f6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80441fa:	6013      	str	r3, [r2, #0]
 80441fc:	f7fe fefc 	bl	8042ff8 <HAL_GetTick>
 8044200:	6138      	str	r0, [r7, #16]
 8044202:	e00e      	b.n	8044222 <HAL_RCC_OscConfig+0x542>
 8044204:	f7fe fef8 	bl	8042ff8 <HAL_GetTick>
 8044208:	4602      	mov	r2, r0
 804420a:	693b      	ldr	r3, [r7, #16]
 804420c:	1ad3      	subs	r3, r2, r3
 804420e:	2b02      	cmp	r3, #2
 8044210:	d907      	bls.n	8044222 <HAL_RCC_OscConfig+0x542>
 8044212:	4b8c      	ldr	r3, [pc, #560]	@ (8044444 <HAL_RCC_OscConfig+0x764>)
 8044214:	681b      	ldr	r3, [r3, #0]
 8044216:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 804421a:	2b00      	cmp	r3, #0
 804421c:	d101      	bne.n	8044222 <HAL_RCC_OscConfig+0x542>
 804421e:	2303      	movs	r3, #3
 8044220:	e22a      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044222:	4b88      	ldr	r3, [pc, #544]	@ (8044444 <HAL_RCC_OscConfig+0x764>)
 8044224:	681b      	ldr	r3, [r3, #0]
 8044226:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 804422a:	2b00      	cmp	r3, #0
 804422c:	d0ea      	beq.n	8044204 <HAL_RCC_OscConfig+0x524>
 804422e:	687b      	ldr	r3, [r7, #4]
 8044230:	689b      	ldr	r3, [r3, #8]
 8044232:	f003 0301 	and.w	r3, r3, #1
 8044236:	2b00      	cmp	r3, #0
 8044238:	d01f      	beq.n	804427a <HAL_RCC_OscConfig+0x59a>
 804423a:	687b      	ldr	r3, [r7, #4]
 804423c:	689b      	ldr	r3, [r3, #8]
 804423e:	f003 0304 	and.w	r3, r3, #4
 8044242:	2b00      	cmp	r3, #0
 8044244:	d010      	beq.n	8044268 <HAL_RCC_OscConfig+0x588>
 8044246:	4b7e      	ldr	r3, [pc, #504]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044248:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804424c:	4a7c      	ldr	r2, [pc, #496]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804424e:	f043 0304 	orr.w	r3, r3, #4
 8044252:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044256:	4b7a      	ldr	r3, [pc, #488]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044258:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804425c:	4a78      	ldr	r2, [pc, #480]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804425e:	f043 0301 	orr.w	r3, r3, #1
 8044262:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044266:	e018      	b.n	804429a <HAL_RCC_OscConfig+0x5ba>
 8044268:	4b75      	ldr	r3, [pc, #468]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804426a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804426e:	4a74      	ldr	r2, [pc, #464]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044270:	f043 0301 	orr.w	r3, r3, #1
 8044274:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044278:	e00f      	b.n	804429a <HAL_RCC_OscConfig+0x5ba>
 804427a:	4b71      	ldr	r3, [pc, #452]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804427c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044280:	4a6f      	ldr	r2, [pc, #444]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044282:	f023 0301 	bic.w	r3, r3, #1
 8044286:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 804428a:	4b6d      	ldr	r3, [pc, #436]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804428c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044290:	4a6b      	ldr	r2, [pc, #428]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044292:	f023 0304 	bic.w	r3, r3, #4
 8044296:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 804429a:	687b      	ldr	r3, [r7, #4]
 804429c:	689b      	ldr	r3, [r3, #8]
 804429e:	2b00      	cmp	r3, #0
 80442a0:	d068      	beq.n	8044374 <HAL_RCC_OscConfig+0x694>
 80442a2:	f7fe fea9 	bl	8042ff8 <HAL_GetTick>
 80442a6:	6138      	str	r0, [r7, #16]
 80442a8:	e011      	b.n	80442ce <HAL_RCC_OscConfig+0x5ee>
 80442aa:	f7fe fea5 	bl	8042ff8 <HAL_GetTick>
 80442ae:	4602      	mov	r2, r0
 80442b0:	693b      	ldr	r3, [r7, #16]
 80442b2:	1ad3      	subs	r3, r2, r3
 80442b4:	f241 3288 	movw	r2, #5000	@ 0x1388
 80442b8:	4293      	cmp	r3, r2
 80442ba:	d908      	bls.n	80442ce <HAL_RCC_OscConfig+0x5ee>
 80442bc:	4b60      	ldr	r3, [pc, #384]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80442be:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80442c2:	f003 0302 	and.w	r3, r3, #2
 80442c6:	2b00      	cmp	r3, #0
 80442c8:	d101      	bne.n	80442ce <HAL_RCC_OscConfig+0x5ee>
 80442ca:	2303      	movs	r3, #3
 80442cc:	e1d4      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80442ce:	4b5c      	ldr	r3, [pc, #368]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80442d0:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80442d4:	f003 0302 	and.w	r3, r3, #2
 80442d8:	2b00      	cmp	r3, #0
 80442da:	d0e6      	beq.n	80442aa <HAL_RCC_OscConfig+0x5ca>
 80442dc:	687b      	ldr	r3, [r7, #4]
 80442de:	689b      	ldr	r3, [r3, #8]
 80442e0:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80442e4:	2b00      	cmp	r3, #0
 80442e6:	d022      	beq.n	804432e <HAL_RCC_OscConfig+0x64e>
 80442e8:	4b55      	ldr	r3, [pc, #340]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80442ea:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80442ee:	4a54      	ldr	r2, [pc, #336]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80442f0:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 80442f4:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80442f8:	e011      	b.n	804431e <HAL_RCC_OscConfig+0x63e>
 80442fa:	f7fe fe7d 	bl	8042ff8 <HAL_GetTick>
 80442fe:	4602      	mov	r2, r0
 8044300:	693b      	ldr	r3, [r7, #16]
 8044302:	1ad3      	subs	r3, r2, r3
 8044304:	f241 3288 	movw	r2, #5000	@ 0x1388
 8044308:	4293      	cmp	r3, r2
 804430a:	d908      	bls.n	804431e <HAL_RCC_OscConfig+0x63e>
 804430c:	4b4c      	ldr	r3, [pc, #304]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804430e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044312:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8044316:	2b00      	cmp	r3, #0
 8044318:	d101      	bne.n	804431e <HAL_RCC_OscConfig+0x63e>
 804431a:	2303      	movs	r3, #3
 804431c:	e1ac      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 804431e:	4b48      	ldr	r3, [pc, #288]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044320:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044324:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8044328:	2b00      	cmp	r3, #0
 804432a:	d0e6      	beq.n	80442fa <HAL_RCC_OscConfig+0x61a>
 804432c:	e068      	b.n	8044400 <HAL_RCC_OscConfig+0x720>
 804432e:	4b44      	ldr	r3, [pc, #272]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044330:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044334:	4a42      	ldr	r2, [pc, #264]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044336:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 804433a:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 804433e:	e011      	b.n	8044364 <HAL_RCC_OscConfig+0x684>
 8044340:	f7fe fe5a 	bl	8042ff8 <HAL_GetTick>
 8044344:	4602      	mov	r2, r0
 8044346:	693b      	ldr	r3, [r7, #16]
 8044348:	1ad3      	subs	r3, r2, r3
 804434a:	f241 3288 	movw	r2, #5000	@ 0x1388
 804434e:	4293      	cmp	r3, r2
 8044350:	d908      	bls.n	8044364 <HAL_RCC_OscConfig+0x684>
 8044352:	4b3b      	ldr	r3, [pc, #236]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044354:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044358:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 804435c:	2b00      	cmp	r3, #0
 804435e:	d001      	beq.n	8044364 <HAL_RCC_OscConfig+0x684>
 8044360:	2303      	movs	r3, #3
 8044362:	e189      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044364:	4b36      	ldr	r3, [pc, #216]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044366:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804436a:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 804436e:	2b00      	cmp	r3, #0
 8044370:	d1e6      	bne.n	8044340 <HAL_RCC_OscConfig+0x660>
 8044372:	e045      	b.n	8044400 <HAL_RCC_OscConfig+0x720>
 8044374:	f7fe fe40 	bl	8042ff8 <HAL_GetTick>
 8044378:	6138      	str	r0, [r7, #16]
 804437a:	e011      	b.n	80443a0 <HAL_RCC_OscConfig+0x6c0>
 804437c:	f7fe fe3c 	bl	8042ff8 <HAL_GetTick>
 8044380:	4602      	mov	r2, r0
 8044382:	693b      	ldr	r3, [r7, #16]
 8044384:	1ad3      	subs	r3, r2, r3
 8044386:	f241 3288 	movw	r2, #5000	@ 0x1388
 804438a:	4293      	cmp	r3, r2
 804438c:	d908      	bls.n	80443a0 <HAL_RCC_OscConfig+0x6c0>
 804438e:	4b2c      	ldr	r3, [pc, #176]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044390:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044394:	f003 0302 	and.w	r3, r3, #2
 8044398:	2b00      	cmp	r3, #0
 804439a:	d001      	beq.n	80443a0 <HAL_RCC_OscConfig+0x6c0>
 804439c:	2303      	movs	r3, #3
 804439e:	e16b      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80443a0:	4b27      	ldr	r3, [pc, #156]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443a2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80443a6:	f003 0302 	and.w	r3, r3, #2
 80443aa:	2b00      	cmp	r3, #0
 80443ac:	d1e6      	bne.n	804437c <HAL_RCC_OscConfig+0x69c>
 80443ae:	4b24      	ldr	r3, [pc, #144]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443b0:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80443b4:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80443b8:	2b00      	cmp	r3, #0
 80443ba:	d021      	beq.n	8044400 <HAL_RCC_OscConfig+0x720>
 80443bc:	4b20      	ldr	r3, [pc, #128]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443be:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80443c2:	4a1f      	ldr	r2, [pc, #124]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443c4:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80443c8:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80443cc:	e011      	b.n	80443f2 <HAL_RCC_OscConfig+0x712>
 80443ce:	f7fe fe13 	bl	8042ff8 <HAL_GetTick>
 80443d2:	4602      	mov	r2, r0
 80443d4:	693b      	ldr	r3, [r7, #16]
 80443d6:	1ad3      	subs	r3, r2, r3
 80443d8:	f241 3288 	movw	r2, #5000	@ 0x1388
 80443dc:	4293      	cmp	r3, r2
 80443de:	d908      	bls.n	80443f2 <HAL_RCC_OscConfig+0x712>
 80443e0:	4b17      	ldr	r3, [pc, #92]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443e2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80443e6:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 80443ea:	2b00      	cmp	r3, #0
 80443ec:	d001      	beq.n	80443f2 <HAL_RCC_OscConfig+0x712>
 80443ee:	2303      	movs	r3, #3
 80443f0:	e142      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80443f2:	4b13      	ldr	r3, [pc, #76]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 80443f4:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80443f8:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 80443fc:	2b00      	cmp	r3, #0
 80443fe:	d1e6      	bne.n	80443ce <HAL_RCC_OscConfig+0x6ee>
 8044400:	7ffb      	ldrb	r3, [r7, #31]
 8044402:	2b01      	cmp	r3, #1
 8044404:	d105      	bne.n	8044412 <HAL_RCC_OscConfig+0x732>
 8044406:	4b0e      	ldr	r3, [pc, #56]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044408:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 804440a:	4a0d      	ldr	r2, [pc, #52]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804440c:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8044410:	6593      	str	r3, [r2, #88]	@ 0x58
 8044412:	687b      	ldr	r3, [r7, #4]
 8044414:	681b      	ldr	r3, [r3, #0]
 8044416:	f003 0320 	and.w	r3, r3, #32
 804441a:	2b00      	cmp	r3, #0
 804441c:	d04f      	beq.n	80444be <HAL_RCC_OscConfig+0x7de>
 804441e:	687b      	ldr	r3, [r7, #4]
 8044420:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044422:	2b00      	cmp	r3, #0
 8044424:	d028      	beq.n	8044478 <HAL_RCC_OscConfig+0x798>
 8044426:	4b06      	ldr	r3, [pc, #24]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 8044428:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 804442c:	4a04      	ldr	r2, [pc, #16]	@ (8044440 <HAL_RCC_OscConfig+0x760>)
 804442e:	f043 0301 	orr.w	r3, r3, #1
 8044432:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
 8044436:	f7fe fddf 	bl	8042ff8 <HAL_GetTick>
 804443a:	6138      	str	r0, [r7, #16]
 804443c:	e014      	b.n	8044468 <HAL_RCC_OscConfig+0x788>
 804443e:	bf00      	nop
 8044440:	40021000 	.word	0x40021000
 8044444:	40007000 	.word	0x40007000
 8044448:	f7fe fdd6 	bl	8042ff8 <HAL_GetTick>
 804444c:	4602      	mov	r2, r0
 804444e:	693b      	ldr	r3, [r7, #16]
 8044450:	1ad3      	subs	r3, r2, r3
 8044452:	2b02      	cmp	r3, #2
 8044454:	d908      	bls.n	8044468 <HAL_RCC_OscConfig+0x788>
 8044456:	4b8a      	ldr	r3, [pc, #552]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044458:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 804445c:	f003 0302 	and.w	r3, r3, #2
 8044460:	2b00      	cmp	r3, #0
 8044462:	d101      	bne.n	8044468 <HAL_RCC_OscConfig+0x788>
 8044464:	2303      	movs	r3, #3
 8044466:	e107      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044468:	4b85      	ldr	r3, [pc, #532]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 804446a:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 804446e:	f003 0302 	and.w	r3, r3, #2
 8044472:	2b00      	cmp	r3, #0
 8044474:	d0e8      	beq.n	8044448 <HAL_RCC_OscConfig+0x768>
 8044476:	e022      	b.n	80444be <HAL_RCC_OscConfig+0x7de>
 8044478:	4b81      	ldr	r3, [pc, #516]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 804447a:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 804447e:	4a80      	ldr	r2, [pc, #512]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044480:	f023 0301 	bic.w	r3, r3, #1
 8044484:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
 8044488:	f7fe fdb6 	bl	8042ff8 <HAL_GetTick>
 804448c:	6138      	str	r0, [r7, #16]
 804448e:	e00f      	b.n	80444b0 <HAL_RCC_OscConfig+0x7d0>
 8044490:	f7fe fdb2 	bl	8042ff8 <HAL_GetTick>
 8044494:	4602      	mov	r2, r0
 8044496:	693b      	ldr	r3, [r7, #16]
 8044498:	1ad3      	subs	r3, r2, r3
 804449a:	2b02      	cmp	r3, #2
 804449c:	d908      	bls.n	80444b0 <HAL_RCC_OscConfig+0x7d0>
 804449e:	4b78      	ldr	r3, [pc, #480]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80444a0:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80444a4:	f003 0302 	and.w	r3, r3, #2
 80444a8:	2b00      	cmp	r3, #0
 80444aa:	d001      	beq.n	80444b0 <HAL_RCC_OscConfig+0x7d0>
 80444ac:	2303      	movs	r3, #3
 80444ae:	e0e3      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80444b0:	4b73      	ldr	r3, [pc, #460]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80444b2:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80444b6:	f003 0302 	and.w	r3, r3, #2
 80444ba:	2b00      	cmp	r3, #0
 80444bc:	d1e8      	bne.n	8044490 <HAL_RCC_OscConfig+0x7b0>
 80444be:	687b      	ldr	r3, [r7, #4]
 80444c0:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80444c2:	2b00      	cmp	r3, #0
 80444c4:	f000 80d7 	beq.w	8044676 <HAL_RCC_OscConfig+0x996>
 80444c8:	4b6d      	ldr	r3, [pc, #436]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80444ca:	689b      	ldr	r3, [r3, #8]
 80444cc:	f003 030c 	and.w	r3, r3, #12
 80444d0:	2b0c      	cmp	r3, #12
 80444d2:	f000 8091 	beq.w	80445f8 <HAL_RCC_OscConfig+0x918>
 80444d6:	687b      	ldr	r3, [r7, #4]
 80444d8:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80444da:	2b02      	cmp	r3, #2
 80444dc:	d166      	bne.n	80445ac <HAL_RCC_OscConfig+0x8cc>
 80444de:	4b68      	ldr	r3, [pc, #416]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80444e0:	681b      	ldr	r3, [r3, #0]
 80444e2:	4a67      	ldr	r2, [pc, #412]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80444e4:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80444e8:	6013      	str	r3, [r2, #0]
 80444ea:	f7fe fd85 	bl	8042ff8 <HAL_GetTick>
 80444ee:	6138      	str	r0, [r7, #16]
 80444f0:	e00e      	b.n	8044510 <HAL_RCC_OscConfig+0x830>
 80444f2:	f7fe fd81 	bl	8042ff8 <HAL_GetTick>
 80444f6:	4602      	mov	r2, r0
 80444f8:	693b      	ldr	r3, [r7, #16]
 80444fa:	1ad3      	subs	r3, r2, r3
 80444fc:	2b02      	cmp	r3, #2
 80444fe:	d907      	bls.n	8044510 <HAL_RCC_OscConfig+0x830>
 8044500:	4b5f      	ldr	r3, [pc, #380]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044502:	681b      	ldr	r3, [r3, #0]
 8044504:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8044508:	2b00      	cmp	r3, #0
 804450a:	d001      	beq.n	8044510 <HAL_RCC_OscConfig+0x830>
 804450c:	2303      	movs	r3, #3
 804450e:	e0b3      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044510:	4b5b      	ldr	r3, [pc, #364]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044512:	681b      	ldr	r3, [r3, #0]
 8044514:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8044518:	2b00      	cmp	r3, #0
 804451a:	d1ea      	bne.n	80444f2 <HAL_RCC_OscConfig+0x812>
 804451c:	4b58      	ldr	r3, [pc, #352]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 804451e:	68da      	ldr	r2, [r3, #12]
 8044520:	4b58      	ldr	r3, [pc, #352]	@ (8044684 <HAL_RCC_OscConfig+0x9a4>)
 8044522:	4013      	ands	r3, r2
 8044524:	687a      	ldr	r2, [r7, #4]
 8044526:	6b11      	ldr	r1, [r2, #48]	@ 0x30
 8044528:	687a      	ldr	r2, [r7, #4]
 804452a:	6b52      	ldr	r2, [r2, #52]	@ 0x34
 804452c:	3a01      	subs	r2, #1
 804452e:	0112      	lsls	r2, r2, #4
 8044530:	4311      	orrs	r1, r2
 8044532:	687a      	ldr	r2, [r7, #4]
 8044534:	6b92      	ldr	r2, [r2, #56]	@ 0x38
 8044536:	0212      	lsls	r2, r2, #8
 8044538:	4311      	orrs	r1, r2
 804453a:	687a      	ldr	r2, [r7, #4]
 804453c:	6c12      	ldr	r2, [r2, #64]	@ 0x40
 804453e:	0852      	lsrs	r2, r2, #1
 8044540:	3a01      	subs	r2, #1
 8044542:	0552      	lsls	r2, r2, #21
 8044544:	4311      	orrs	r1, r2
 8044546:	687a      	ldr	r2, [r7, #4]
 8044548:	6c52      	ldr	r2, [r2, #68]	@ 0x44
 804454a:	0852      	lsrs	r2, r2, #1
 804454c:	3a01      	subs	r2, #1
 804454e:	0652      	lsls	r2, r2, #25
 8044550:	4311      	orrs	r1, r2
 8044552:	687a      	ldr	r2, [r7, #4]
 8044554:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
 8044556:	06d2      	lsls	r2, r2, #27
 8044558:	430a      	orrs	r2, r1
 804455a:	4949      	ldr	r1, [pc, #292]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 804455c:	4313      	orrs	r3, r2
 804455e:	60cb      	str	r3, [r1, #12]
 8044560:	4b47      	ldr	r3, [pc, #284]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044562:	681b      	ldr	r3, [r3, #0]
 8044564:	4a46      	ldr	r2, [pc, #280]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044566:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 804456a:	6013      	str	r3, [r2, #0]
 804456c:	4b44      	ldr	r3, [pc, #272]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 804456e:	68db      	ldr	r3, [r3, #12]
 8044570:	4a43      	ldr	r2, [pc, #268]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044572:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8044576:	60d3      	str	r3, [r2, #12]
 8044578:	f7fe fd3e 	bl	8042ff8 <HAL_GetTick>
 804457c:	6138      	str	r0, [r7, #16]
 804457e:	e00e      	b.n	804459e <HAL_RCC_OscConfig+0x8be>
 8044580:	f7fe fd3a 	bl	8042ff8 <HAL_GetTick>
 8044584:	4602      	mov	r2, r0
 8044586:	693b      	ldr	r3, [r7, #16]
 8044588:	1ad3      	subs	r3, r2, r3
 804458a:	2b02      	cmp	r3, #2
 804458c:	d907      	bls.n	804459e <HAL_RCC_OscConfig+0x8be>
 804458e:	4b3c      	ldr	r3, [pc, #240]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044590:	681b      	ldr	r3, [r3, #0]
 8044592:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8044596:	2b00      	cmp	r3, #0
 8044598:	d101      	bne.n	804459e <HAL_RCC_OscConfig+0x8be>
 804459a:	2303      	movs	r3, #3
 804459c:	e06c      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 804459e:	4b38      	ldr	r3, [pc, #224]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445a0:	681b      	ldr	r3, [r3, #0]
 80445a2:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80445a6:	2b00      	cmp	r3, #0
 80445a8:	d0ea      	beq.n	8044580 <HAL_RCC_OscConfig+0x8a0>
 80445aa:	e064      	b.n	8044676 <HAL_RCC_OscConfig+0x996>
 80445ac:	4b34      	ldr	r3, [pc, #208]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445ae:	681b      	ldr	r3, [r3, #0]
 80445b0:	4a33      	ldr	r2, [pc, #204]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445b2:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80445b6:	6013      	str	r3, [r2, #0]
 80445b8:	f7fe fd1e 	bl	8042ff8 <HAL_GetTick>
 80445bc:	6138      	str	r0, [r7, #16]
 80445be:	e00e      	b.n	80445de <HAL_RCC_OscConfig+0x8fe>
 80445c0:	f7fe fd1a 	bl	8042ff8 <HAL_GetTick>
 80445c4:	4602      	mov	r2, r0
 80445c6:	693b      	ldr	r3, [r7, #16]
 80445c8:	1ad3      	subs	r3, r2, r3
 80445ca:	2b02      	cmp	r3, #2
 80445cc:	d907      	bls.n	80445de <HAL_RCC_OscConfig+0x8fe>
 80445ce:	4b2c      	ldr	r3, [pc, #176]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445d0:	681b      	ldr	r3, [r3, #0]
 80445d2:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80445d6:	2b00      	cmp	r3, #0
 80445d8:	d001      	beq.n	80445de <HAL_RCC_OscConfig+0x8fe>
 80445da:	2303      	movs	r3, #3
 80445dc:	e04c      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 80445de:	4b28      	ldr	r3, [pc, #160]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445e0:	681b      	ldr	r3, [r3, #0]
 80445e2:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80445e6:	2b00      	cmp	r3, #0
 80445e8:	d1ea      	bne.n	80445c0 <HAL_RCC_OscConfig+0x8e0>
 80445ea:	4b25      	ldr	r3, [pc, #148]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445ec:	68da      	ldr	r2, [r3, #12]
 80445ee:	4924      	ldr	r1, [pc, #144]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 80445f0:	4b25      	ldr	r3, [pc, #148]	@ (8044688 <HAL_RCC_OscConfig+0x9a8>)
 80445f2:	4013      	ands	r3, r2
 80445f4:	60cb      	str	r3, [r1, #12]
 80445f6:	e03e      	b.n	8044676 <HAL_RCC_OscConfig+0x996>
 80445f8:	687b      	ldr	r3, [r7, #4]
 80445fa:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80445fc:	2b01      	cmp	r3, #1
 80445fe:	d101      	bne.n	8044604 <HAL_RCC_OscConfig+0x924>
 8044600:	2301      	movs	r3, #1
 8044602:	e039      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044604:	4b1e      	ldr	r3, [pc, #120]	@ (8044680 <HAL_RCC_OscConfig+0x9a0>)
 8044606:	68db      	ldr	r3, [r3, #12]
 8044608:	617b      	str	r3, [r7, #20]
 804460a:	697b      	ldr	r3, [r7, #20]
 804460c:	f003 0203 	and.w	r2, r3, #3
 8044610:	687b      	ldr	r3, [r7, #4]
 8044612:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8044614:	429a      	cmp	r2, r3
 8044616:	d12c      	bne.n	8044672 <HAL_RCC_OscConfig+0x992>
 8044618:	697b      	ldr	r3, [r7, #20]
 804461a:	f003 02f0 	and.w	r2, r3, #240	@ 0xf0
 804461e:	687b      	ldr	r3, [r7, #4]
 8044620:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8044622:	3b01      	subs	r3, #1
 8044624:	011b      	lsls	r3, r3, #4
 8044626:	429a      	cmp	r2, r3
 8044628:	d123      	bne.n	8044672 <HAL_RCC_OscConfig+0x992>
 804462a:	697b      	ldr	r3, [r7, #20]
 804462c:	f403 42fe 	and.w	r2, r3, #32512	@ 0x7f00
 8044630:	687b      	ldr	r3, [r7, #4]
 8044632:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8044634:	021b      	lsls	r3, r3, #8
 8044636:	429a      	cmp	r2, r3
 8044638:	d11b      	bne.n	8044672 <HAL_RCC_OscConfig+0x992>
 804463a:	697b      	ldr	r3, [r7, #20]
 804463c:	f003 4278 	and.w	r2, r3, #4160749568	@ 0xf8000000
 8044640:	687b      	ldr	r3, [r7, #4]
 8044642:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8044644:	06db      	lsls	r3, r3, #27
 8044646:	429a      	cmp	r2, r3
 8044648:	d113      	bne.n	8044672 <HAL_RCC_OscConfig+0x992>
 804464a:	697b      	ldr	r3, [r7, #20]
 804464c:	f403 02c0 	and.w	r2, r3, #6291456	@ 0x600000
 8044650:	687b      	ldr	r3, [r7, #4]
 8044652:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8044654:	085b      	lsrs	r3, r3, #1
 8044656:	3b01      	subs	r3, #1
 8044658:	055b      	lsls	r3, r3, #21
 804465a:	429a      	cmp	r2, r3
 804465c:	d109      	bne.n	8044672 <HAL_RCC_OscConfig+0x992>
 804465e:	697b      	ldr	r3, [r7, #20]
 8044660:	f003 62c0 	and.w	r2, r3, #100663296	@ 0x6000000
 8044664:	687b      	ldr	r3, [r7, #4]
 8044666:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8044668:	085b      	lsrs	r3, r3, #1
 804466a:	3b01      	subs	r3, #1
 804466c:	065b      	lsls	r3, r3, #25
 804466e:	429a      	cmp	r2, r3
 8044670:	d001      	beq.n	8044676 <HAL_RCC_OscConfig+0x996>
 8044672:	2301      	movs	r3, #1
 8044674:	e000      	b.n	8044678 <HAL_RCC_OscConfig+0x998>
 8044676:	2300      	movs	r3, #0
 8044678:	4618      	mov	r0, r3
 804467a:	3720      	adds	r7, #32
 804467c:	46bd      	mov	sp, r7
 804467e:	bd80      	pop	{r7, pc}
 8044680:	40021000 	.word	0x40021000
 8044684:	019f800c 	.word	0x019f800c
 8044688:	feeefffc 	.word	0xfeeefffc

0804468c <HAL_RCC_ClockConfig>:
 804468c:	b580      	push	{r7, lr}
 804468e:	b086      	sub	sp, #24
 8044690:	af00      	add	r7, sp, #0
 8044692:	6078      	str	r0, [r7, #4]
 8044694:	6039      	str	r1, [r7, #0]
 8044696:	2300      	movs	r3, #0
 8044698:	617b      	str	r3, [r7, #20]
 804469a:	687b      	ldr	r3, [r7, #4]
 804469c:	2b00      	cmp	r3, #0
 804469e:	d101      	bne.n	80446a4 <HAL_RCC_ClockConfig+0x18>
 80446a0:	2301      	movs	r3, #1
 80446a2:	e11c      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 80446a4:	4b90      	ldr	r3, [pc, #576]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 80446a6:	681b      	ldr	r3, [r3, #0]
 80446a8:	f003 030f 	and.w	r3, r3, #15
 80446ac:	683a      	ldr	r2, [r7, #0]
 80446ae:	429a      	cmp	r2, r3
 80446b0:	d910      	bls.n	80446d4 <HAL_RCC_ClockConfig+0x48>
 80446b2:	4b8d      	ldr	r3, [pc, #564]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 80446b4:	681b      	ldr	r3, [r3, #0]
 80446b6:	f023 020f 	bic.w	r2, r3, #15
 80446ba:	498b      	ldr	r1, [pc, #556]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 80446bc:	683b      	ldr	r3, [r7, #0]
 80446be:	4313      	orrs	r3, r2
 80446c0:	600b      	str	r3, [r1, #0]
 80446c2:	4b89      	ldr	r3, [pc, #548]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 80446c4:	681b      	ldr	r3, [r3, #0]
 80446c6:	f003 030f 	and.w	r3, r3, #15
 80446ca:	683a      	ldr	r2, [r7, #0]
 80446cc:	429a      	cmp	r2, r3
 80446ce:	d001      	beq.n	80446d4 <HAL_RCC_ClockConfig+0x48>
 80446d0:	2301      	movs	r3, #1
 80446d2:	e104      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 80446d4:	687b      	ldr	r3, [r7, #4]
 80446d6:	681b      	ldr	r3, [r3, #0]
 80446d8:	f003 0302 	and.w	r3, r3, #2
 80446dc:	2b00      	cmp	r3, #0
 80446de:	d010      	beq.n	8044702 <HAL_RCC_ClockConfig+0x76>
 80446e0:	687b      	ldr	r3, [r7, #4]
 80446e2:	689a      	ldr	r2, [r3, #8]
 80446e4:	4b81      	ldr	r3, [pc, #516]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80446e6:	689b      	ldr	r3, [r3, #8]
 80446e8:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 80446ec:	429a      	cmp	r2, r3
 80446ee:	d908      	bls.n	8044702 <HAL_RCC_ClockConfig+0x76>
 80446f0:	4b7e      	ldr	r3, [pc, #504]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80446f2:	689b      	ldr	r3, [r3, #8]
 80446f4:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 80446f8:	687b      	ldr	r3, [r7, #4]
 80446fa:	689b      	ldr	r3, [r3, #8]
 80446fc:	497b      	ldr	r1, [pc, #492]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80446fe:	4313      	orrs	r3, r2
 8044700:	608b      	str	r3, [r1, #8]
 8044702:	687b      	ldr	r3, [r7, #4]
 8044704:	681b      	ldr	r3, [r3, #0]
 8044706:	f003 0301 	and.w	r3, r3, #1
 804470a:	2b00      	cmp	r3, #0
 804470c:	f000 8085 	beq.w	804481a <HAL_RCC_ClockConfig+0x18e>
 8044710:	687b      	ldr	r3, [r7, #4]
 8044712:	685b      	ldr	r3, [r3, #4]
 8044714:	2b03      	cmp	r3, #3
 8044716:	d11f      	bne.n	8044758 <HAL_RCC_ClockConfig+0xcc>
 8044718:	4b74      	ldr	r3, [pc, #464]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804471a:	681b      	ldr	r3, [r3, #0]
 804471c:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8044720:	2b00      	cmp	r3, #0
 8044722:	d101      	bne.n	8044728 <HAL_RCC_ClockConfig+0x9c>
 8044724:	2301      	movs	r3, #1
 8044726:	e0da      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 8044728:	f000 fa24 	bl	8044b74 <RCC_GetSysClockFreqFromPLLSource>
 804472c:	6138      	str	r0, [r7, #16]
 804472e:	693b      	ldr	r3, [r7, #16]
 8044730:	4a6f      	ldr	r2, [pc, #444]	@ (80448f0 <HAL_RCC_ClockConfig+0x264>)
 8044732:	4293      	cmp	r3, r2
 8044734:	d947      	bls.n	80447c6 <HAL_RCC_ClockConfig+0x13a>
 8044736:	4b6d      	ldr	r3, [pc, #436]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044738:	689b      	ldr	r3, [r3, #8]
 804473a:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 804473e:	2b00      	cmp	r3, #0
 8044740:	d141      	bne.n	80447c6 <HAL_RCC_ClockConfig+0x13a>
 8044742:	4b6a      	ldr	r3, [pc, #424]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044744:	689b      	ldr	r3, [r3, #8]
 8044746:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 804474a:	4a68      	ldr	r2, [pc, #416]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804474c:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8044750:	6093      	str	r3, [r2, #8]
 8044752:	2380      	movs	r3, #128	@ 0x80
 8044754:	617b      	str	r3, [r7, #20]
 8044756:	e036      	b.n	80447c6 <HAL_RCC_ClockConfig+0x13a>
 8044758:	687b      	ldr	r3, [r7, #4]
 804475a:	685b      	ldr	r3, [r3, #4]
 804475c:	2b02      	cmp	r3, #2
 804475e:	d107      	bne.n	8044770 <HAL_RCC_ClockConfig+0xe4>
 8044760:	4b62      	ldr	r3, [pc, #392]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044762:	681b      	ldr	r3, [r3, #0]
 8044764:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8044768:	2b00      	cmp	r3, #0
 804476a:	d115      	bne.n	8044798 <HAL_RCC_ClockConfig+0x10c>
 804476c:	2301      	movs	r3, #1
 804476e:	e0b6      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 8044770:	687b      	ldr	r3, [r7, #4]
 8044772:	685b      	ldr	r3, [r3, #4]
 8044774:	2b00      	cmp	r3, #0
 8044776:	d107      	bne.n	8044788 <HAL_RCC_ClockConfig+0xfc>
 8044778:	4b5c      	ldr	r3, [pc, #368]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804477a:	681b      	ldr	r3, [r3, #0]
 804477c:	f003 0302 	and.w	r3, r3, #2
 8044780:	2b00      	cmp	r3, #0
 8044782:	d109      	bne.n	8044798 <HAL_RCC_ClockConfig+0x10c>
 8044784:	2301      	movs	r3, #1
 8044786:	e0aa      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 8044788:	4b58      	ldr	r3, [pc, #352]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804478a:	681b      	ldr	r3, [r3, #0]
 804478c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8044790:	2b00      	cmp	r3, #0
 8044792:	d101      	bne.n	8044798 <HAL_RCC_ClockConfig+0x10c>
 8044794:	2301      	movs	r3, #1
 8044796:	e0a2      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 8044798:	f000 f8b0 	bl	80448fc <HAL_RCC_GetSysClockFreq>
 804479c:	6138      	str	r0, [r7, #16]
 804479e:	693b      	ldr	r3, [r7, #16]
 80447a0:	4a53      	ldr	r2, [pc, #332]	@ (80448f0 <HAL_RCC_ClockConfig+0x264>)
 80447a2:	4293      	cmp	r3, r2
 80447a4:	d90f      	bls.n	80447c6 <HAL_RCC_ClockConfig+0x13a>
 80447a6:	4b51      	ldr	r3, [pc, #324]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447a8:	689b      	ldr	r3, [r3, #8]
 80447aa:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 80447ae:	2b00      	cmp	r3, #0
 80447b0:	d109      	bne.n	80447c6 <HAL_RCC_ClockConfig+0x13a>
 80447b2:	4b4e      	ldr	r3, [pc, #312]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447b4:	689b      	ldr	r3, [r3, #8]
 80447b6:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80447ba:	4a4c      	ldr	r2, [pc, #304]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447bc:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 80447c0:	6093      	str	r3, [r2, #8]
 80447c2:	2380      	movs	r3, #128	@ 0x80
 80447c4:	617b      	str	r3, [r7, #20]
 80447c6:	4b49      	ldr	r3, [pc, #292]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447c8:	689b      	ldr	r3, [r3, #8]
 80447ca:	f023 0203 	bic.w	r2, r3, #3
 80447ce:	687b      	ldr	r3, [r7, #4]
 80447d0:	685b      	ldr	r3, [r3, #4]
 80447d2:	4946      	ldr	r1, [pc, #280]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447d4:	4313      	orrs	r3, r2
 80447d6:	608b      	str	r3, [r1, #8]
 80447d8:	f7fe fc0e 	bl	8042ff8 <HAL_GetTick>
 80447dc:	60f8      	str	r0, [r7, #12]
 80447de:	e013      	b.n	8044808 <HAL_RCC_ClockConfig+0x17c>
 80447e0:	f7fe fc0a 	bl	8042ff8 <HAL_GetTick>
 80447e4:	4602      	mov	r2, r0
 80447e6:	68fb      	ldr	r3, [r7, #12]
 80447e8:	1ad3      	subs	r3, r2, r3
 80447ea:	f241 3288 	movw	r2, #5000	@ 0x1388
 80447ee:	4293      	cmp	r3, r2
 80447f0:	d90a      	bls.n	8044808 <HAL_RCC_ClockConfig+0x17c>
 80447f2:	4b3e      	ldr	r3, [pc, #248]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80447f4:	689b      	ldr	r3, [r3, #8]
 80447f6:	f003 020c 	and.w	r2, r3, #12
 80447fa:	687b      	ldr	r3, [r7, #4]
 80447fc:	685b      	ldr	r3, [r3, #4]
 80447fe:	009b      	lsls	r3, r3, #2
 8044800:	429a      	cmp	r2, r3
 8044802:	d001      	beq.n	8044808 <HAL_RCC_ClockConfig+0x17c>
 8044804:	2303      	movs	r3, #3
 8044806:	e06a      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 8044808:	4b38      	ldr	r3, [pc, #224]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804480a:	689b      	ldr	r3, [r3, #8]
 804480c:	f003 020c 	and.w	r2, r3, #12
 8044810:	687b      	ldr	r3, [r7, #4]
 8044812:	685b      	ldr	r3, [r3, #4]
 8044814:	009b      	lsls	r3, r3, #2
 8044816:	429a      	cmp	r2, r3
 8044818:	d1e2      	bne.n	80447e0 <HAL_RCC_ClockConfig+0x154>
 804481a:	697b      	ldr	r3, [r7, #20]
 804481c:	2b80      	cmp	r3, #128	@ 0x80
 804481e:	d105      	bne.n	804482c <HAL_RCC_ClockConfig+0x1a0>
 8044820:	4b32      	ldr	r3, [pc, #200]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044822:	689b      	ldr	r3, [r3, #8]
 8044824:	4a31      	ldr	r2, [pc, #196]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044826:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 804482a:	6093      	str	r3, [r2, #8]
 804482c:	687b      	ldr	r3, [r7, #4]
 804482e:	681b      	ldr	r3, [r3, #0]
 8044830:	f003 0302 	and.w	r3, r3, #2
 8044834:	2b00      	cmp	r3, #0
 8044836:	d010      	beq.n	804485a <HAL_RCC_ClockConfig+0x1ce>
 8044838:	687b      	ldr	r3, [r7, #4]
 804483a:	689a      	ldr	r2, [r3, #8]
 804483c:	4b2b      	ldr	r3, [pc, #172]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804483e:	689b      	ldr	r3, [r3, #8]
 8044840:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8044844:	429a      	cmp	r2, r3
 8044846:	d208      	bcs.n	804485a <HAL_RCC_ClockConfig+0x1ce>
 8044848:	4b28      	ldr	r3, [pc, #160]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 804484a:	689b      	ldr	r3, [r3, #8]
 804484c:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8044850:	687b      	ldr	r3, [r7, #4]
 8044852:	689b      	ldr	r3, [r3, #8]
 8044854:	4925      	ldr	r1, [pc, #148]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044856:	4313      	orrs	r3, r2
 8044858:	608b      	str	r3, [r1, #8]
 804485a:	4b23      	ldr	r3, [pc, #140]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 804485c:	681b      	ldr	r3, [r3, #0]
 804485e:	f003 030f 	and.w	r3, r3, #15
 8044862:	683a      	ldr	r2, [r7, #0]
 8044864:	429a      	cmp	r2, r3
 8044866:	d210      	bcs.n	804488a <HAL_RCC_ClockConfig+0x1fe>
 8044868:	4b1f      	ldr	r3, [pc, #124]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 804486a:	681b      	ldr	r3, [r3, #0]
 804486c:	f023 020f 	bic.w	r2, r3, #15
 8044870:	491d      	ldr	r1, [pc, #116]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 8044872:	683b      	ldr	r3, [r7, #0]
 8044874:	4313      	orrs	r3, r2
 8044876:	600b      	str	r3, [r1, #0]
 8044878:	4b1b      	ldr	r3, [pc, #108]	@ (80448e8 <HAL_RCC_ClockConfig+0x25c>)
 804487a:	681b      	ldr	r3, [r3, #0]
 804487c:	f003 030f 	and.w	r3, r3, #15
 8044880:	683a      	ldr	r2, [r7, #0]
 8044882:	429a      	cmp	r2, r3
 8044884:	d001      	beq.n	804488a <HAL_RCC_ClockConfig+0x1fe>
 8044886:	2301      	movs	r3, #1
 8044888:	e029      	b.n	80448de <HAL_RCC_ClockConfig+0x252>
 804488a:	687b      	ldr	r3, [r7, #4]
 804488c:	681b      	ldr	r3, [r3, #0]
 804488e:	f003 0304 	and.w	r3, r3, #4
 8044892:	2b00      	cmp	r3, #0
 8044894:	d008      	beq.n	80448a8 <HAL_RCC_ClockConfig+0x21c>
 8044896:	4b15      	ldr	r3, [pc, #84]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 8044898:	689b      	ldr	r3, [r3, #8]
 804489a:	f423 62e0 	bic.w	r2, r3, #1792	@ 0x700
 804489e:	687b      	ldr	r3, [r7, #4]
 80448a0:	68db      	ldr	r3, [r3, #12]
 80448a2:	4912      	ldr	r1, [pc, #72]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80448a4:	4313      	orrs	r3, r2
 80448a6:	608b      	str	r3, [r1, #8]
 80448a8:	687b      	ldr	r3, [r7, #4]
 80448aa:	681b      	ldr	r3, [r3, #0]
 80448ac:	f003 0308 	and.w	r3, r3, #8
 80448b0:	2b00      	cmp	r3, #0
 80448b2:	d009      	beq.n	80448c8 <HAL_RCC_ClockConfig+0x23c>
 80448b4:	4b0d      	ldr	r3, [pc, #52]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80448b6:	689b      	ldr	r3, [r3, #8]
 80448b8:	f423 5260 	bic.w	r2, r3, #14336	@ 0x3800
 80448bc:	687b      	ldr	r3, [r7, #4]
 80448be:	691b      	ldr	r3, [r3, #16]
 80448c0:	00db      	lsls	r3, r3, #3
 80448c2:	490a      	ldr	r1, [pc, #40]	@ (80448ec <HAL_RCC_ClockConfig+0x260>)
 80448c4:	4313      	orrs	r3, r2
 80448c6:	608b      	str	r3, [r1, #8]
 80448c8:	f000 f8b4 	bl	8044a34 <HAL_RCC_GetHCLKFreq>
 80448cc:	4603      	mov	r3, r0
 80448ce:	4a09      	ldr	r2, [pc, #36]	@ (80448f4 <HAL_RCC_ClockConfig+0x268>)
 80448d0:	6013      	str	r3, [r2, #0]
 80448d2:	4b09      	ldr	r3, [pc, #36]	@ (80448f8 <HAL_RCC_ClockConfig+0x26c>)
 80448d4:	681b      	ldr	r3, [r3, #0]
 80448d6:	4618      	mov	r0, r3
 80448d8:	f7fe fb3e 	bl	8042f58 <HAL_InitTick>
 80448dc:	4603      	mov	r3, r0
 80448de:	4618      	mov	r0, r3
 80448e0:	3718      	adds	r7, #24
 80448e2:	46bd      	mov	sp, r7
 80448e4:	bd80      	pop	{r7, pc}
 80448e6:	bf00      	nop
 80448e8:	40022000 	.word	0x40022000
 80448ec:	40021000 	.word	0x40021000
 80448f0:	04c4b400 	.word	0x04c4b400
 80448f4:	20018120 	.word	0x20018120
 80448f8:	20018124 	.word	0x20018124

080448fc <HAL_RCC_GetSysClockFreq>:
 80448fc:	b480      	push	{r7}
 80448fe:	b089      	sub	sp, #36	@ 0x24
 8044900:	af00      	add	r7, sp, #0
 8044902:	2300      	movs	r3, #0
 8044904:	61fb      	str	r3, [r7, #28]
 8044906:	2300      	movs	r3, #0
 8044908:	61bb      	str	r3, [r7, #24]
 804490a:	4b47      	ldr	r3, [pc, #284]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 804490c:	689b      	ldr	r3, [r3, #8]
 804490e:	f003 030c 	and.w	r3, r3, #12
 8044912:	613b      	str	r3, [r7, #16]
 8044914:	4b44      	ldr	r3, [pc, #272]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 8044916:	68db      	ldr	r3, [r3, #12]
 8044918:	f003 0303 	and.w	r3, r3, #3
 804491c:	60fb      	str	r3, [r7, #12]
 804491e:	693b      	ldr	r3, [r7, #16]
 8044920:	2b00      	cmp	r3, #0
 8044922:	d005      	beq.n	8044930 <HAL_RCC_GetSysClockFreq+0x34>
 8044924:	693b      	ldr	r3, [r7, #16]
 8044926:	2b0c      	cmp	r3, #12
 8044928:	d121      	bne.n	804496e <HAL_RCC_GetSysClockFreq+0x72>
 804492a:	68fb      	ldr	r3, [r7, #12]
 804492c:	2b01      	cmp	r3, #1
 804492e:	d11e      	bne.n	804496e <HAL_RCC_GetSysClockFreq+0x72>
 8044930:	4b3d      	ldr	r3, [pc, #244]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 8044932:	681b      	ldr	r3, [r3, #0]
 8044934:	f003 0308 	and.w	r3, r3, #8
 8044938:	2b00      	cmp	r3, #0
 804493a:	d107      	bne.n	804494c <HAL_RCC_GetSysClockFreq+0x50>
 804493c:	4b3a      	ldr	r3, [pc, #232]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 804493e:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8044942:	0a1b      	lsrs	r3, r3, #8
 8044944:	f003 030f 	and.w	r3, r3, #15
 8044948:	61fb      	str	r3, [r7, #28]
 804494a:	e005      	b.n	8044958 <HAL_RCC_GetSysClockFreq+0x5c>
 804494c:	4b36      	ldr	r3, [pc, #216]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 804494e:	681b      	ldr	r3, [r3, #0]
 8044950:	091b      	lsrs	r3, r3, #4
 8044952:	f003 030f 	and.w	r3, r3, #15
 8044956:	61fb      	str	r3, [r7, #28]
 8044958:	4a34      	ldr	r2, [pc, #208]	@ (8044a2c <HAL_RCC_GetSysClockFreq+0x130>)
 804495a:	69fb      	ldr	r3, [r7, #28]
 804495c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8044960:	61fb      	str	r3, [r7, #28]
 8044962:	693b      	ldr	r3, [r7, #16]
 8044964:	2b00      	cmp	r3, #0
 8044966:	d10d      	bne.n	8044984 <HAL_RCC_GetSysClockFreq+0x88>
 8044968:	69fb      	ldr	r3, [r7, #28]
 804496a:	61bb      	str	r3, [r7, #24]
 804496c:	e00a      	b.n	8044984 <HAL_RCC_GetSysClockFreq+0x88>
 804496e:	693b      	ldr	r3, [r7, #16]
 8044970:	2b04      	cmp	r3, #4
 8044972:	d102      	bne.n	804497a <HAL_RCC_GetSysClockFreq+0x7e>
 8044974:	4b2e      	ldr	r3, [pc, #184]	@ (8044a30 <HAL_RCC_GetSysClockFreq+0x134>)
 8044976:	61bb      	str	r3, [r7, #24]
 8044978:	e004      	b.n	8044984 <HAL_RCC_GetSysClockFreq+0x88>
 804497a:	693b      	ldr	r3, [r7, #16]
 804497c:	2b08      	cmp	r3, #8
 804497e:	d101      	bne.n	8044984 <HAL_RCC_GetSysClockFreq+0x88>
 8044980:	4b2b      	ldr	r3, [pc, #172]	@ (8044a30 <HAL_RCC_GetSysClockFreq+0x134>)
 8044982:	61bb      	str	r3, [r7, #24]
 8044984:	693b      	ldr	r3, [r7, #16]
 8044986:	2b0c      	cmp	r3, #12
 8044988:	d146      	bne.n	8044a18 <HAL_RCC_GetSysClockFreq+0x11c>
 804498a:	4b27      	ldr	r3, [pc, #156]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 804498c:	68db      	ldr	r3, [r3, #12]
 804498e:	f003 0303 	and.w	r3, r3, #3
 8044992:	60bb      	str	r3, [r7, #8]
 8044994:	4b24      	ldr	r3, [pc, #144]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 8044996:	68db      	ldr	r3, [r3, #12]
 8044998:	091b      	lsrs	r3, r3, #4
 804499a:	f003 030f 	and.w	r3, r3, #15
 804499e:	3301      	adds	r3, #1
 80449a0:	607b      	str	r3, [r7, #4]
 80449a2:	68bb      	ldr	r3, [r7, #8]
 80449a4:	2b02      	cmp	r3, #2
 80449a6:	d003      	beq.n	80449b0 <HAL_RCC_GetSysClockFreq+0xb4>
 80449a8:	68bb      	ldr	r3, [r7, #8]
 80449aa:	2b03      	cmp	r3, #3
 80449ac:	d00d      	beq.n	80449ca <HAL_RCC_GetSysClockFreq+0xce>
 80449ae:	e019      	b.n	80449e4 <HAL_RCC_GetSysClockFreq+0xe8>
 80449b0:	4a1f      	ldr	r2, [pc, #124]	@ (8044a30 <HAL_RCC_GetSysClockFreq+0x134>)
 80449b2:	687b      	ldr	r3, [r7, #4]
 80449b4:	fbb2 f3f3 	udiv	r3, r2, r3
 80449b8:	4a1b      	ldr	r2, [pc, #108]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 80449ba:	68d2      	ldr	r2, [r2, #12]
 80449bc:	0a12      	lsrs	r2, r2, #8
 80449be:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 80449c2:	fb02 f303 	mul.w	r3, r2, r3
 80449c6:	617b      	str	r3, [r7, #20]
 80449c8:	e019      	b.n	80449fe <HAL_RCC_GetSysClockFreq+0x102>
 80449ca:	4a19      	ldr	r2, [pc, #100]	@ (8044a30 <HAL_RCC_GetSysClockFreq+0x134>)
 80449cc:	687b      	ldr	r3, [r7, #4]
 80449ce:	fbb2 f3f3 	udiv	r3, r2, r3
 80449d2:	4a15      	ldr	r2, [pc, #84]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 80449d4:	68d2      	ldr	r2, [r2, #12]
 80449d6:	0a12      	lsrs	r2, r2, #8
 80449d8:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 80449dc:	fb02 f303 	mul.w	r3, r2, r3
 80449e0:	617b      	str	r3, [r7, #20]
 80449e2:	e00c      	b.n	80449fe <HAL_RCC_GetSysClockFreq+0x102>
 80449e4:	69fa      	ldr	r2, [r7, #28]
 80449e6:	687b      	ldr	r3, [r7, #4]
 80449e8:	fbb2 f3f3 	udiv	r3, r2, r3
 80449ec:	4a0e      	ldr	r2, [pc, #56]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 80449ee:	68d2      	ldr	r2, [r2, #12]
 80449f0:	0a12      	lsrs	r2, r2, #8
 80449f2:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 80449f6:	fb02 f303 	mul.w	r3, r2, r3
 80449fa:	617b      	str	r3, [r7, #20]
 80449fc:	bf00      	nop
 80449fe:	4b0a      	ldr	r3, [pc, #40]	@ (8044a28 <HAL_RCC_GetSysClockFreq+0x12c>)
 8044a00:	68db      	ldr	r3, [r3, #12]
 8044a02:	0e5b      	lsrs	r3, r3, #25
 8044a04:	f003 0303 	and.w	r3, r3, #3
 8044a08:	3301      	adds	r3, #1
 8044a0a:	005b      	lsls	r3, r3, #1
 8044a0c:	603b      	str	r3, [r7, #0]
 8044a0e:	697a      	ldr	r2, [r7, #20]
 8044a10:	683b      	ldr	r3, [r7, #0]
 8044a12:	fbb2 f3f3 	udiv	r3, r2, r3
 8044a16:	61bb      	str	r3, [r7, #24]
 8044a18:	69bb      	ldr	r3, [r7, #24]
 8044a1a:	4618      	mov	r0, r3
 8044a1c:	3724      	adds	r7, #36	@ 0x24
 8044a1e:	46bd      	mov	sp, r7
 8044a20:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044a24:	4770      	bx	lr
 8044a26:	bf00      	nop
 8044a28:	40021000 	.word	0x40021000
 8044a2c:	08048778 	.word	0x08048778
 8044a30:	00f42400 	.word	0x00f42400

08044a34 <HAL_RCC_GetHCLKFreq>:
 8044a34:	b580      	push	{r7, lr}
 8044a36:	af00      	add	r7, sp, #0
 8044a38:	f7ff ff60 	bl	80448fc <HAL_RCC_GetSysClockFreq>
 8044a3c:	4602      	mov	r2, r0
 8044a3e:	4b05      	ldr	r3, [pc, #20]	@ (8044a54 <HAL_RCC_GetHCLKFreq+0x20>)
 8044a40:	689b      	ldr	r3, [r3, #8]
 8044a42:	091b      	lsrs	r3, r3, #4
 8044a44:	f003 030f 	and.w	r3, r3, #15
 8044a48:	4903      	ldr	r1, [pc, #12]	@ (8044a58 <HAL_RCC_GetHCLKFreq+0x24>)
 8044a4a:	5ccb      	ldrb	r3, [r1, r3]
 8044a4c:	fa22 f303 	lsr.w	r3, r2, r3
 8044a50:	4618      	mov	r0, r3
 8044a52:	bd80      	pop	{r7, pc}
 8044a54:	40021000 	.word	0x40021000
 8044a58:	08048760 	.word	0x08048760

08044a5c <HAL_RCC_GetPCLK1Freq>:
 8044a5c:	b580      	push	{r7, lr}
 8044a5e:	af00      	add	r7, sp, #0
 8044a60:	f7ff ffe8 	bl	8044a34 <HAL_RCC_GetHCLKFreq>
 8044a64:	4602      	mov	r2, r0
 8044a66:	4b05      	ldr	r3, [pc, #20]	@ (8044a7c <HAL_RCC_GetPCLK1Freq+0x20>)
 8044a68:	689b      	ldr	r3, [r3, #8]
 8044a6a:	0a1b      	lsrs	r3, r3, #8
 8044a6c:	f003 0307 	and.w	r3, r3, #7
 8044a70:	4903      	ldr	r1, [pc, #12]	@ (8044a80 <HAL_RCC_GetPCLK1Freq+0x24>)
 8044a72:	5ccb      	ldrb	r3, [r1, r3]
 8044a74:	fa22 f303 	lsr.w	r3, r2, r3
 8044a78:	4618      	mov	r0, r3
 8044a7a:	bd80      	pop	{r7, pc}
 8044a7c:	40021000 	.word	0x40021000
 8044a80:	08048770 	.word	0x08048770

08044a84 <HAL_RCC_GetPCLK2Freq>:
 8044a84:	b580      	push	{r7, lr}
 8044a86:	af00      	add	r7, sp, #0
 8044a88:	f7ff ffd4 	bl	8044a34 <HAL_RCC_GetHCLKFreq>
 8044a8c:	4602      	mov	r2, r0
 8044a8e:	4b05      	ldr	r3, [pc, #20]	@ (8044aa4 <HAL_RCC_GetPCLK2Freq+0x20>)
 8044a90:	689b      	ldr	r3, [r3, #8]
 8044a92:	0adb      	lsrs	r3, r3, #11
 8044a94:	f003 0307 	and.w	r3, r3, #7
 8044a98:	4903      	ldr	r1, [pc, #12]	@ (8044aa8 <HAL_RCC_GetPCLK2Freq+0x24>)
 8044a9a:	5ccb      	ldrb	r3, [r1, r3]
 8044a9c:	fa22 f303 	lsr.w	r3, r2, r3
 8044aa0:	4618      	mov	r0, r3
 8044aa2:	bd80      	pop	{r7, pc}
 8044aa4:	40021000 	.word	0x40021000
 8044aa8:	08048770 	.word	0x08048770

08044aac <RCC_SetFlashLatencyFromMSIRange>:
 8044aac:	b580      	push	{r7, lr}
 8044aae:	b086      	sub	sp, #24
 8044ab0:	af00      	add	r7, sp, #0
 8044ab2:	6078      	str	r0, [r7, #4]
 8044ab4:	2300      	movs	r3, #0
 8044ab6:	617b      	str	r3, [r7, #20]
 8044ab8:	4b2c      	ldr	r3, [pc, #176]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044aba:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044abc:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8044ac0:	2b00      	cmp	r3, #0
 8044ac2:	d003      	beq.n	8044acc <RCC_SetFlashLatencyFromMSIRange+0x20>
 8044ac4:	f7ff f86e 	bl	8043ba4 <HAL_PWREx_GetVoltageRange>
 8044ac8:	6138      	str	r0, [r7, #16]
 8044aca:	e014      	b.n	8044af6 <RCC_SetFlashLatencyFromMSIRange+0x4a>
 8044acc:	4b27      	ldr	r3, [pc, #156]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044ace:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044ad0:	4a26      	ldr	r2, [pc, #152]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044ad2:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8044ad6:	6593      	str	r3, [r2, #88]	@ 0x58
 8044ad8:	4b24      	ldr	r3, [pc, #144]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044ada:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044adc:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8044ae0:	60fb      	str	r3, [r7, #12]
 8044ae2:	68fb      	ldr	r3, [r7, #12]
 8044ae4:	f7ff f85e 	bl	8043ba4 <HAL_PWREx_GetVoltageRange>
 8044ae8:	6138      	str	r0, [r7, #16]
 8044aea:	4b20      	ldr	r3, [pc, #128]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044aec:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044aee:	4a1f      	ldr	r2, [pc, #124]	@ (8044b6c <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8044af0:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8044af4:	6593      	str	r3, [r2, #88]	@ 0x58
 8044af6:	693b      	ldr	r3, [r7, #16]
 8044af8:	2b00      	cmp	r3, #0
 8044afa:	d003      	beq.n	8044b04 <RCC_SetFlashLatencyFromMSIRange+0x58>
 8044afc:	693b      	ldr	r3, [r7, #16]
 8044afe:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8044b02:	d10b      	bne.n	8044b1c <RCC_SetFlashLatencyFromMSIRange+0x70>
 8044b04:	687b      	ldr	r3, [r7, #4]
 8044b06:	2b80      	cmp	r3, #128	@ 0x80
 8044b08:	d919      	bls.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b0a:	687b      	ldr	r3, [r7, #4]
 8044b0c:	2ba0      	cmp	r3, #160	@ 0xa0
 8044b0e:	d902      	bls.n	8044b16 <RCC_SetFlashLatencyFromMSIRange+0x6a>
 8044b10:	2302      	movs	r3, #2
 8044b12:	617b      	str	r3, [r7, #20]
 8044b14:	e013      	b.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b16:	2301      	movs	r3, #1
 8044b18:	617b      	str	r3, [r7, #20]
 8044b1a:	e010      	b.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b1c:	687b      	ldr	r3, [r7, #4]
 8044b1e:	2b80      	cmp	r3, #128	@ 0x80
 8044b20:	d902      	bls.n	8044b28 <RCC_SetFlashLatencyFromMSIRange+0x7c>
 8044b22:	2303      	movs	r3, #3
 8044b24:	617b      	str	r3, [r7, #20]
 8044b26:	e00a      	b.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b28:	687b      	ldr	r3, [r7, #4]
 8044b2a:	2b80      	cmp	r3, #128	@ 0x80
 8044b2c:	d102      	bne.n	8044b34 <RCC_SetFlashLatencyFromMSIRange+0x88>
 8044b2e:	2302      	movs	r3, #2
 8044b30:	617b      	str	r3, [r7, #20]
 8044b32:	e004      	b.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b34:	687b      	ldr	r3, [r7, #4]
 8044b36:	2b70      	cmp	r3, #112	@ 0x70
 8044b38:	d101      	bne.n	8044b3e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8044b3a:	2301      	movs	r3, #1
 8044b3c:	617b      	str	r3, [r7, #20]
 8044b3e:	4b0c      	ldr	r3, [pc, #48]	@ (8044b70 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8044b40:	681b      	ldr	r3, [r3, #0]
 8044b42:	f023 020f 	bic.w	r2, r3, #15
 8044b46:	490a      	ldr	r1, [pc, #40]	@ (8044b70 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8044b48:	697b      	ldr	r3, [r7, #20]
 8044b4a:	4313      	orrs	r3, r2
 8044b4c:	600b      	str	r3, [r1, #0]
 8044b4e:	4b08      	ldr	r3, [pc, #32]	@ (8044b70 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8044b50:	681b      	ldr	r3, [r3, #0]
 8044b52:	f003 030f 	and.w	r3, r3, #15
 8044b56:	697a      	ldr	r2, [r7, #20]
 8044b58:	429a      	cmp	r2, r3
 8044b5a:	d001      	beq.n	8044b60 <RCC_SetFlashLatencyFromMSIRange+0xb4>
 8044b5c:	2301      	movs	r3, #1
 8044b5e:	e000      	b.n	8044b62 <RCC_SetFlashLatencyFromMSIRange+0xb6>
 8044b60:	2300      	movs	r3, #0
 8044b62:	4618      	mov	r0, r3
 8044b64:	3718      	adds	r7, #24
 8044b66:	46bd      	mov	sp, r7
 8044b68:	bd80      	pop	{r7, pc}
 8044b6a:	bf00      	nop
 8044b6c:	40021000 	.word	0x40021000
 8044b70:	40022000 	.word	0x40022000

08044b74 <RCC_GetSysClockFreqFromPLLSource>:
 8044b74:	b480      	push	{r7}
 8044b76:	b087      	sub	sp, #28
 8044b78:	af00      	add	r7, sp, #0
 8044b7a:	4b31      	ldr	r3, [pc, #196]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044b7c:	68db      	ldr	r3, [r3, #12]
 8044b7e:	f003 0303 	and.w	r3, r3, #3
 8044b82:	60fb      	str	r3, [r7, #12]
 8044b84:	4b2e      	ldr	r3, [pc, #184]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044b86:	68db      	ldr	r3, [r3, #12]
 8044b88:	091b      	lsrs	r3, r3, #4
 8044b8a:	f003 030f 	and.w	r3, r3, #15
 8044b8e:	3301      	adds	r3, #1
 8044b90:	60bb      	str	r3, [r7, #8]
 8044b92:	68fb      	ldr	r3, [r7, #12]
 8044b94:	2b03      	cmp	r3, #3
 8044b96:	d015      	beq.n	8044bc4 <RCC_GetSysClockFreqFromPLLSource+0x50>
 8044b98:	68fb      	ldr	r3, [r7, #12]
 8044b9a:	2b03      	cmp	r3, #3
 8044b9c:	d839      	bhi.n	8044c12 <RCC_GetSysClockFreqFromPLLSource+0x9e>
 8044b9e:	68fb      	ldr	r3, [r7, #12]
 8044ba0:	2b01      	cmp	r3, #1
 8044ba2:	d01c      	beq.n	8044bde <RCC_GetSysClockFreqFromPLLSource+0x6a>
 8044ba4:	68fb      	ldr	r3, [r7, #12]
 8044ba6:	2b02      	cmp	r3, #2
 8044ba8:	d133      	bne.n	8044c12 <RCC_GetSysClockFreqFromPLLSource+0x9e>
 8044baa:	4a26      	ldr	r2, [pc, #152]	@ (8044c44 <RCC_GetSysClockFreqFromPLLSource+0xd0>)
 8044bac:	68bb      	ldr	r3, [r7, #8]
 8044bae:	fbb2 f3f3 	udiv	r3, r2, r3
 8044bb2:	4a23      	ldr	r2, [pc, #140]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044bb4:	68d2      	ldr	r2, [r2, #12]
 8044bb6:	0a12      	lsrs	r2, r2, #8
 8044bb8:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8044bbc:	fb02 f303 	mul.w	r3, r2, r3
 8044bc0:	613b      	str	r3, [r7, #16]
 8044bc2:	e029      	b.n	8044c18 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 8044bc4:	4a1f      	ldr	r2, [pc, #124]	@ (8044c44 <RCC_GetSysClockFreqFromPLLSource+0xd0>)
 8044bc6:	68bb      	ldr	r3, [r7, #8]
 8044bc8:	fbb2 f3f3 	udiv	r3, r2, r3
 8044bcc:	4a1c      	ldr	r2, [pc, #112]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044bce:	68d2      	ldr	r2, [r2, #12]
 8044bd0:	0a12      	lsrs	r2, r2, #8
 8044bd2:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8044bd6:	fb02 f303 	mul.w	r3, r2, r3
 8044bda:	613b      	str	r3, [r7, #16]
 8044bdc:	e01c      	b.n	8044c18 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 8044bde:	4b18      	ldr	r3, [pc, #96]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044be0:	681b      	ldr	r3, [r3, #0]
 8044be2:	f003 0308 	and.w	r3, r3, #8
 8044be6:	2b00      	cmp	r3, #0
 8044be8:	d107      	bne.n	8044bfa <RCC_GetSysClockFreqFromPLLSource+0x86>
 8044bea:	4b15      	ldr	r3, [pc, #84]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044bec:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8044bf0:	0a1b      	lsrs	r3, r3, #8
 8044bf2:	f003 030f 	and.w	r3, r3, #15
 8044bf6:	617b      	str	r3, [r7, #20]
 8044bf8:	e005      	b.n	8044c06 <RCC_GetSysClockFreqFromPLLSource+0x92>
 8044bfa:	4b11      	ldr	r3, [pc, #68]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044bfc:	681b      	ldr	r3, [r3, #0]
 8044bfe:	091b      	lsrs	r3, r3, #4
 8044c00:	f003 030f 	and.w	r3, r3, #15
 8044c04:	617b      	str	r3, [r7, #20]
 8044c06:	4a10      	ldr	r2, [pc, #64]	@ (8044c48 <RCC_GetSysClockFreqFromPLLSource+0xd4>)
 8044c08:	697b      	ldr	r3, [r7, #20]
 8044c0a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8044c0e:	613b      	str	r3, [r7, #16]
 8044c10:	e002      	b.n	8044c18 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 8044c12:	2300      	movs	r3, #0
 8044c14:	613b      	str	r3, [r7, #16]
 8044c16:	bf00      	nop
 8044c18:	4b09      	ldr	r3, [pc, #36]	@ (8044c40 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8044c1a:	68db      	ldr	r3, [r3, #12]
 8044c1c:	0e5b      	lsrs	r3, r3, #25
 8044c1e:	f003 0303 	and.w	r3, r3, #3
 8044c22:	3301      	adds	r3, #1
 8044c24:	005b      	lsls	r3, r3, #1
 8044c26:	607b      	str	r3, [r7, #4]
 8044c28:	693a      	ldr	r2, [r7, #16]
 8044c2a:	687b      	ldr	r3, [r7, #4]
 8044c2c:	fbb2 f3f3 	udiv	r3, r2, r3
 8044c30:	603b      	str	r3, [r7, #0]
 8044c32:	683b      	ldr	r3, [r7, #0]
 8044c34:	4618      	mov	r0, r3
 8044c36:	371c      	adds	r7, #28
 8044c38:	46bd      	mov	sp, r7
 8044c3a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044c3e:	4770      	bx	lr
 8044c40:	40021000 	.word	0x40021000
 8044c44:	00f42400 	.word	0x00f42400
 8044c48:	08048778 	.word	0x08048778

08044c4c <HAL_RCCEx_PeriphCLKConfig>:
 8044c4c:	b580      	push	{r7, lr}
 8044c4e:	b088      	sub	sp, #32
 8044c50:	af00      	add	r7, sp, #0
 8044c52:	6078      	str	r0, [r7, #4]
 8044c54:	2300      	movs	r3, #0
 8044c56:	77fb      	strb	r3, [r7, #31]
 8044c58:	2300      	movs	r3, #0
 8044c5a:	77bb      	strb	r3, [r7, #30]
 8044c5c:	687b      	ldr	r3, [r7, #4]
 8044c5e:	681b      	ldr	r3, [r3, #0]
 8044c60:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8044c64:	2b00      	cmp	r3, #0
 8044c66:	d040      	beq.n	8044cea <HAL_RCCEx_PeriphCLKConfig+0x9e>
 8044c68:	687b      	ldr	r3, [r7, #4]
 8044c6a:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8044c6c:	2b80      	cmp	r3, #128	@ 0x80
 8044c6e:	d02a      	beq.n	8044cc6 <HAL_RCCEx_PeriphCLKConfig+0x7a>
 8044c70:	2b80      	cmp	r3, #128	@ 0x80
 8044c72:	d825      	bhi.n	8044cc0 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8044c74:	2b60      	cmp	r3, #96	@ 0x60
 8044c76:	d026      	beq.n	8044cc6 <HAL_RCCEx_PeriphCLKConfig+0x7a>
 8044c78:	2b60      	cmp	r3, #96	@ 0x60
 8044c7a:	d821      	bhi.n	8044cc0 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8044c7c:	2b40      	cmp	r3, #64	@ 0x40
 8044c7e:	d006      	beq.n	8044c8e <HAL_RCCEx_PeriphCLKConfig+0x42>
 8044c80:	2b40      	cmp	r3, #64	@ 0x40
 8044c82:	d81d      	bhi.n	8044cc0 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8044c84:	2b00      	cmp	r3, #0
 8044c86:	d009      	beq.n	8044c9c <HAL_RCCEx_PeriphCLKConfig+0x50>
 8044c88:	2b20      	cmp	r3, #32
 8044c8a:	d010      	beq.n	8044cae <HAL_RCCEx_PeriphCLKConfig+0x62>
 8044c8c:	e018      	b.n	8044cc0 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8044c8e:	4b8f      	ldr	r3, [pc, #572]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044c90:	68db      	ldr	r3, [r3, #12]
 8044c92:	4a8e      	ldr	r2, [pc, #568]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044c94:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8044c98:	60d3      	str	r3, [r2, #12]
 8044c9a:	e015      	b.n	8044cc8 <HAL_RCCEx_PeriphCLKConfig+0x7c>
 8044c9c:	687b      	ldr	r3, [r7, #4]
 8044c9e:	3304      	adds	r3, #4
 8044ca0:	2100      	movs	r1, #0
 8044ca2:	4618      	mov	r0, r3
 8044ca4:	f000 fb56 	bl	8045354 <RCCEx_PLLSAI1_Config>
 8044ca8:	4603      	mov	r3, r0
 8044caa:	77fb      	strb	r3, [r7, #31]
 8044cac:	e00c      	b.n	8044cc8 <HAL_RCCEx_PeriphCLKConfig+0x7c>
 8044cae:	687b      	ldr	r3, [r7, #4]
 8044cb0:	3320      	adds	r3, #32
 8044cb2:	2100      	movs	r1, #0
 8044cb4:	4618      	mov	r0, r3
 8044cb6:	f000 fc33 	bl	8045520 <RCCEx_PLLSAI2_Config>
 8044cba:	4603      	mov	r3, r0
 8044cbc:	77fb      	strb	r3, [r7, #31]
 8044cbe:	e003      	b.n	8044cc8 <HAL_RCCEx_PeriphCLKConfig+0x7c>
 8044cc0:	2301      	movs	r3, #1
 8044cc2:	77fb      	strb	r3, [r7, #31]
 8044cc4:	e000      	b.n	8044cc8 <HAL_RCCEx_PeriphCLKConfig+0x7c>
 8044cc6:	bf00      	nop
 8044cc8:	7ffb      	ldrb	r3, [r7, #31]
 8044cca:	2b00      	cmp	r3, #0
 8044ccc:	d10b      	bne.n	8044ce6 <HAL_RCCEx_PeriphCLKConfig+0x9a>
 8044cce:	4b7f      	ldr	r3, [pc, #508]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044cd0:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8044cd4:	f023 02e0 	bic.w	r2, r3, #224	@ 0xe0
 8044cd8:	687b      	ldr	r3, [r7, #4]
 8044cda:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8044cdc:	497b      	ldr	r1, [pc, #492]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044cde:	4313      	orrs	r3, r2
 8044ce0:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8044ce4:	e001      	b.n	8044cea <HAL_RCCEx_PeriphCLKConfig+0x9e>
 8044ce6:	7ffb      	ldrb	r3, [r7, #31]
 8044ce8:	77bb      	strb	r3, [r7, #30]
 8044cea:	687b      	ldr	r3, [r7, #4]
 8044cec:	681b      	ldr	r3, [r3, #0]
 8044cee:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 8044cf2:	2b00      	cmp	r3, #0
 8044cf4:	d047      	beq.n	8044d86 <HAL_RCCEx_PeriphCLKConfig+0x13a>
 8044cf6:	687b      	ldr	r3, [r7, #4]
 8044cf8:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8044cfa:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8044cfe:	d030      	beq.n	8044d62 <HAL_RCCEx_PeriphCLKConfig+0x116>
 8044d00:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8044d04:	d82a      	bhi.n	8044d5c <HAL_RCCEx_PeriphCLKConfig+0x110>
 8044d06:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8044d0a:	d02a      	beq.n	8044d62 <HAL_RCCEx_PeriphCLKConfig+0x116>
 8044d0c:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8044d10:	d824      	bhi.n	8044d5c <HAL_RCCEx_PeriphCLKConfig+0x110>
 8044d12:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8044d16:	d008      	beq.n	8044d2a <HAL_RCCEx_PeriphCLKConfig+0xde>
 8044d18:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8044d1c:	d81e      	bhi.n	8044d5c <HAL_RCCEx_PeriphCLKConfig+0x110>
 8044d1e:	2b00      	cmp	r3, #0
 8044d20:	d00a      	beq.n	8044d38 <HAL_RCCEx_PeriphCLKConfig+0xec>
 8044d22:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8044d26:	d010      	beq.n	8044d4a <HAL_RCCEx_PeriphCLKConfig+0xfe>
 8044d28:	e018      	b.n	8044d5c <HAL_RCCEx_PeriphCLKConfig+0x110>
 8044d2a:	4b68      	ldr	r3, [pc, #416]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044d2c:	68db      	ldr	r3, [r3, #12]
 8044d2e:	4a67      	ldr	r2, [pc, #412]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044d30:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8044d34:	60d3      	str	r3, [r2, #12]
 8044d36:	e015      	b.n	8044d64 <HAL_RCCEx_PeriphCLKConfig+0x118>
 8044d38:	687b      	ldr	r3, [r7, #4]
 8044d3a:	3304      	adds	r3, #4
 8044d3c:	2100      	movs	r1, #0
 8044d3e:	4618      	mov	r0, r3
 8044d40:	f000 fb08 	bl	8045354 <RCCEx_PLLSAI1_Config>
 8044d44:	4603      	mov	r3, r0
 8044d46:	77fb      	strb	r3, [r7, #31]
 8044d48:	e00c      	b.n	8044d64 <HAL_RCCEx_PeriphCLKConfig+0x118>
 8044d4a:	687b      	ldr	r3, [r7, #4]
 8044d4c:	3320      	adds	r3, #32
 8044d4e:	2100      	movs	r1, #0
 8044d50:	4618      	mov	r0, r3
 8044d52:	f000 fbe5 	bl	8045520 <RCCEx_PLLSAI2_Config>
 8044d56:	4603      	mov	r3, r0
 8044d58:	77fb      	strb	r3, [r7, #31]
 8044d5a:	e003      	b.n	8044d64 <HAL_RCCEx_PeriphCLKConfig+0x118>
 8044d5c:	2301      	movs	r3, #1
 8044d5e:	77fb      	strb	r3, [r7, #31]
 8044d60:	e000      	b.n	8044d64 <HAL_RCCEx_PeriphCLKConfig+0x118>
 8044d62:	bf00      	nop
 8044d64:	7ffb      	ldrb	r3, [r7, #31]
 8044d66:	2b00      	cmp	r3, #0
 8044d68:	d10b      	bne.n	8044d82 <HAL_RCCEx_PeriphCLKConfig+0x136>
 8044d6a:	4b58      	ldr	r3, [pc, #352]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044d6c:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8044d70:	f423 62e0 	bic.w	r2, r3, #1792	@ 0x700
 8044d74:	687b      	ldr	r3, [r7, #4]
 8044d76:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8044d78:	4954      	ldr	r1, [pc, #336]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044d7a:	4313      	orrs	r3, r2
 8044d7c:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8044d80:	e001      	b.n	8044d86 <HAL_RCCEx_PeriphCLKConfig+0x13a>
 8044d82:	7ffb      	ldrb	r3, [r7, #31]
 8044d84:	77bb      	strb	r3, [r7, #30]
 8044d86:	687b      	ldr	r3, [r7, #4]
 8044d88:	681b      	ldr	r3, [r3, #0]
 8044d8a:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8044d8e:	2b00      	cmp	r3, #0
 8044d90:	f000 80ab 	beq.w	8044eea <HAL_RCCEx_PeriphCLKConfig+0x29e>
 8044d94:	2300      	movs	r3, #0
 8044d96:	75fb      	strb	r3, [r7, #23]
 8044d98:	4b4c      	ldr	r3, [pc, #304]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044d9a:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044d9c:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8044da0:	2b00      	cmp	r3, #0
 8044da2:	d10d      	bne.n	8044dc0 <HAL_RCCEx_PeriphCLKConfig+0x174>
 8044da4:	4b49      	ldr	r3, [pc, #292]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044da6:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044da8:	4a48      	ldr	r2, [pc, #288]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044daa:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8044dae:	6593      	str	r3, [r2, #88]	@ 0x58
 8044db0:	4b46      	ldr	r3, [pc, #280]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044db2:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044db4:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8044db8:	60fb      	str	r3, [r7, #12]
 8044dba:	68fb      	ldr	r3, [r7, #12]
 8044dbc:	2301      	movs	r3, #1
 8044dbe:	75fb      	strb	r3, [r7, #23]
 8044dc0:	4b43      	ldr	r3, [pc, #268]	@ (8044ed0 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8044dc2:	681b      	ldr	r3, [r3, #0]
 8044dc4:	4a42      	ldr	r2, [pc, #264]	@ (8044ed0 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8044dc6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8044dca:	6013      	str	r3, [r2, #0]
 8044dcc:	f7fe f914 	bl	8042ff8 <HAL_GetTick>
 8044dd0:	6138      	str	r0, [r7, #16]
 8044dd2:	e00f      	b.n	8044df4 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8044dd4:	f7fe f910 	bl	8042ff8 <HAL_GetTick>
 8044dd8:	4602      	mov	r2, r0
 8044dda:	693b      	ldr	r3, [r7, #16]
 8044ddc:	1ad3      	subs	r3, r2, r3
 8044dde:	2b02      	cmp	r3, #2
 8044de0:	d908      	bls.n	8044df4 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8044de2:	4b3b      	ldr	r3, [pc, #236]	@ (8044ed0 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8044de4:	681b      	ldr	r3, [r3, #0]
 8044de6:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8044dea:	2b00      	cmp	r3, #0
 8044dec:	d109      	bne.n	8044e02 <HAL_RCCEx_PeriphCLKConfig+0x1b6>
 8044dee:	2303      	movs	r3, #3
 8044df0:	77fb      	strb	r3, [r7, #31]
 8044df2:	e006      	b.n	8044e02 <HAL_RCCEx_PeriphCLKConfig+0x1b6>
 8044df4:	4b36      	ldr	r3, [pc, #216]	@ (8044ed0 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8044df6:	681b      	ldr	r3, [r3, #0]
 8044df8:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8044dfc:	2b00      	cmp	r3, #0
 8044dfe:	d0e9      	beq.n	8044dd4 <HAL_RCCEx_PeriphCLKConfig+0x188>
 8044e00:	e000      	b.n	8044e04 <HAL_RCCEx_PeriphCLKConfig+0x1b8>
 8044e02:	bf00      	nop
 8044e04:	7ffb      	ldrb	r3, [r7, #31]
 8044e06:	2b00      	cmp	r3, #0
 8044e08:	d164      	bne.n	8044ed4 <HAL_RCCEx_PeriphCLKConfig+0x288>
 8044e0a:	4b30      	ldr	r3, [pc, #192]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e0c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e10:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8044e14:	61bb      	str	r3, [r7, #24]
 8044e16:	69bb      	ldr	r3, [r7, #24]
 8044e18:	2b00      	cmp	r3, #0
 8044e1a:	d01f      	beq.n	8044e5c <HAL_RCCEx_PeriphCLKConfig+0x210>
 8044e1c:	687b      	ldr	r3, [r7, #4]
 8044e1e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e22:	69ba      	ldr	r2, [r7, #24]
 8044e24:	429a      	cmp	r2, r3
 8044e26:	d019      	beq.n	8044e5c <HAL_RCCEx_PeriphCLKConfig+0x210>
 8044e28:	4b28      	ldr	r3, [pc, #160]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e2a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e2e:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8044e32:	61bb      	str	r3, [r7, #24]
 8044e34:	4b25      	ldr	r3, [pc, #148]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e36:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e3a:	4a24      	ldr	r2, [pc, #144]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e3c:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8044e40:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044e44:	4b21      	ldr	r3, [pc, #132]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e46:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e4a:	4a20      	ldr	r2, [pc, #128]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e4c:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8044e50:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044e54:	4a1d      	ldr	r2, [pc, #116]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e56:	69bb      	ldr	r3, [r7, #24]
 8044e58:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8044e5c:	69bb      	ldr	r3, [r7, #24]
 8044e5e:	f003 0301 	and.w	r3, r3, #1
 8044e62:	2b00      	cmp	r3, #0
 8044e64:	d01f      	beq.n	8044ea6 <HAL_RCCEx_PeriphCLKConfig+0x25a>
 8044e66:	f7fe f8c7 	bl	8042ff8 <HAL_GetTick>
 8044e6a:	6138      	str	r0, [r7, #16]
 8044e6c:	e012      	b.n	8044e94 <HAL_RCCEx_PeriphCLKConfig+0x248>
 8044e6e:	f7fe f8c3 	bl	8042ff8 <HAL_GetTick>
 8044e72:	4602      	mov	r2, r0
 8044e74:	693b      	ldr	r3, [r7, #16]
 8044e76:	1ad3      	subs	r3, r2, r3
 8044e78:	f241 3288 	movw	r2, #5000	@ 0x1388
 8044e7c:	4293      	cmp	r3, r2
 8044e7e:	d909      	bls.n	8044e94 <HAL_RCCEx_PeriphCLKConfig+0x248>
 8044e80:	4b12      	ldr	r3, [pc, #72]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e82:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e86:	f003 0302 	and.w	r3, r3, #2
 8044e8a:	2b00      	cmp	r3, #0
 8044e8c:	d10a      	bne.n	8044ea4 <HAL_RCCEx_PeriphCLKConfig+0x258>
 8044e8e:	2303      	movs	r3, #3
 8044e90:	77fb      	strb	r3, [r7, #31]
 8044e92:	e007      	b.n	8044ea4 <HAL_RCCEx_PeriphCLKConfig+0x258>
 8044e94:	4b0d      	ldr	r3, [pc, #52]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044e96:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044e9a:	f003 0302 	and.w	r3, r3, #2
 8044e9e:	2b00      	cmp	r3, #0
 8044ea0:	d0e5      	beq.n	8044e6e <HAL_RCCEx_PeriphCLKConfig+0x222>
 8044ea2:	e000      	b.n	8044ea6 <HAL_RCCEx_PeriphCLKConfig+0x25a>
 8044ea4:	bf00      	nop
 8044ea6:	7ffb      	ldrb	r3, [r7, #31]
 8044ea8:	2b00      	cmp	r3, #0
 8044eaa:	d10c      	bne.n	8044ec6 <HAL_RCCEx_PeriphCLKConfig+0x27a>
 8044eac:	4b07      	ldr	r3, [pc, #28]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044eae:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044eb2:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 8044eb6:	687b      	ldr	r3, [r7, #4]
 8044eb8:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8044ebc:	4903      	ldr	r1, [pc, #12]	@ (8044ecc <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8044ebe:	4313      	orrs	r3, r2
 8044ec0:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8044ec4:	e008      	b.n	8044ed8 <HAL_RCCEx_PeriphCLKConfig+0x28c>
 8044ec6:	7ffb      	ldrb	r3, [r7, #31]
 8044ec8:	77bb      	strb	r3, [r7, #30]
 8044eca:	e005      	b.n	8044ed8 <HAL_RCCEx_PeriphCLKConfig+0x28c>
 8044ecc:	40021000 	.word	0x40021000
 8044ed0:	40007000 	.word	0x40007000
 8044ed4:	7ffb      	ldrb	r3, [r7, #31]
 8044ed6:	77bb      	strb	r3, [r7, #30]
 8044ed8:	7dfb      	ldrb	r3, [r7, #23]
 8044eda:	2b01      	cmp	r3, #1
 8044edc:	d105      	bne.n	8044eea <HAL_RCCEx_PeriphCLKConfig+0x29e>
 8044ede:	4b9c      	ldr	r3, [pc, #624]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044ee0:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8044ee2:	4a9b      	ldr	r2, [pc, #620]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044ee4:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8044ee8:	6593      	str	r3, [r2, #88]	@ 0x58
 8044eea:	687b      	ldr	r3, [r7, #4]
 8044eec:	681b      	ldr	r3, [r3, #0]
 8044eee:	f003 0301 	and.w	r3, r3, #1
 8044ef2:	2b00      	cmp	r3, #0
 8044ef4:	d00a      	beq.n	8044f0c <HAL_RCCEx_PeriphCLKConfig+0x2c0>
 8044ef6:	4b96      	ldr	r3, [pc, #600]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044ef8:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044efc:	f023 0203 	bic.w	r2, r3, #3
 8044f00:	687b      	ldr	r3, [r7, #4]
 8044f02:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8044f04:	4992      	ldr	r1, [pc, #584]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f06:	4313      	orrs	r3, r2
 8044f08:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044f0c:	687b      	ldr	r3, [r7, #4]
 8044f0e:	681b      	ldr	r3, [r3, #0]
 8044f10:	f003 0302 	and.w	r3, r3, #2
 8044f14:	2b00      	cmp	r3, #0
 8044f16:	d00a      	beq.n	8044f2e <HAL_RCCEx_PeriphCLKConfig+0x2e2>
 8044f18:	4b8d      	ldr	r3, [pc, #564]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f1a:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044f1e:	f023 020c 	bic.w	r2, r3, #12
 8044f22:	687b      	ldr	r3, [r7, #4]
 8044f24:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8044f26:	498a      	ldr	r1, [pc, #552]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f28:	4313      	orrs	r3, r2
 8044f2a:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044f2e:	687b      	ldr	r3, [r7, #4]
 8044f30:	681b      	ldr	r3, [r3, #0]
 8044f32:	f003 0304 	and.w	r3, r3, #4
 8044f36:	2b00      	cmp	r3, #0
 8044f38:	d00a      	beq.n	8044f50 <HAL_RCCEx_PeriphCLKConfig+0x304>
 8044f3a:	4b85      	ldr	r3, [pc, #532]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f3c:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044f40:	f023 0230 	bic.w	r2, r3, #48	@ 0x30
 8044f44:	687b      	ldr	r3, [r7, #4]
 8044f46:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8044f48:	4981      	ldr	r1, [pc, #516]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f4a:	4313      	orrs	r3, r2
 8044f4c:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044f50:	687b      	ldr	r3, [r7, #4]
 8044f52:	681b      	ldr	r3, [r3, #0]
 8044f54:	f003 0308 	and.w	r3, r3, #8
 8044f58:	2b00      	cmp	r3, #0
 8044f5a:	d00a      	beq.n	8044f72 <HAL_RCCEx_PeriphCLKConfig+0x326>
 8044f5c:	4b7c      	ldr	r3, [pc, #496]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f5e:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044f62:	f023 02c0 	bic.w	r2, r3, #192	@ 0xc0
 8044f66:	687b      	ldr	r3, [r7, #4]
 8044f68:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8044f6a:	4979      	ldr	r1, [pc, #484]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f6c:	4313      	orrs	r3, r2
 8044f6e:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044f72:	687b      	ldr	r3, [r7, #4]
 8044f74:	681b      	ldr	r3, [r3, #0]
 8044f76:	f003 0310 	and.w	r3, r3, #16
 8044f7a:	2b00      	cmp	r3, #0
 8044f7c:	d00a      	beq.n	8044f94 <HAL_RCCEx_PeriphCLKConfig+0x348>
 8044f7e:	4b74      	ldr	r3, [pc, #464]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f80:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044f84:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 8044f88:	687b      	ldr	r3, [r7, #4]
 8044f8a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8044f8c:	4970      	ldr	r1, [pc, #448]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044f8e:	4313      	orrs	r3, r2
 8044f90:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044f94:	687b      	ldr	r3, [r7, #4]
 8044f96:	681b      	ldr	r3, [r3, #0]
 8044f98:	f003 0320 	and.w	r3, r3, #32
 8044f9c:	2b00      	cmp	r3, #0
 8044f9e:	d00a      	beq.n	8044fb6 <HAL_RCCEx_PeriphCLKConfig+0x36a>
 8044fa0:	4b6b      	ldr	r3, [pc, #428]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044fa2:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044fa6:	f423 6240 	bic.w	r2, r3, #3072	@ 0xc00
 8044faa:	687b      	ldr	r3, [r7, #4]
 8044fac:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8044fae:	4968      	ldr	r1, [pc, #416]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044fb0:	4313      	orrs	r3, r2
 8044fb2:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044fb6:	687b      	ldr	r3, [r7, #4]
 8044fb8:	681b      	ldr	r3, [r3, #0]
 8044fba:	f403 7300 	and.w	r3, r3, #512	@ 0x200
 8044fbe:	2b00      	cmp	r3, #0
 8044fc0:	d00a      	beq.n	8044fd8 <HAL_RCCEx_PeriphCLKConfig+0x38c>
 8044fc2:	4b63      	ldr	r3, [pc, #396]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044fc4:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044fc8:	f423 2240 	bic.w	r2, r3, #786432	@ 0xc0000
 8044fcc:	687b      	ldr	r3, [r7, #4]
 8044fce:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8044fd0:	495f      	ldr	r1, [pc, #380]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044fd2:	4313      	orrs	r3, r2
 8044fd4:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044fd8:	687b      	ldr	r3, [r7, #4]
 8044fda:	681b      	ldr	r3, [r3, #0]
 8044fdc:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8044fe0:	2b00      	cmp	r3, #0
 8044fe2:	d00a      	beq.n	8044ffa <HAL_RCCEx_PeriphCLKConfig+0x3ae>
 8044fe4:	4b5a      	ldr	r3, [pc, #360]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044fe6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044fea:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 8044fee:	687b      	ldr	r3, [r7, #4]
 8044ff0:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8044ff2:	4957      	ldr	r1, [pc, #348]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8044ff4:	4313      	orrs	r3, r2
 8044ff6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8044ffa:	687b      	ldr	r3, [r7, #4]
 8044ffc:	681b      	ldr	r3, [r3, #0]
 8044ffe:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8045002:	2b00      	cmp	r3, #0
 8045004:	d00a      	beq.n	804501c <HAL_RCCEx_PeriphCLKConfig+0x3d0>
 8045006:	4b52      	ldr	r3, [pc, #328]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045008:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804500c:	f423 0240 	bic.w	r2, r3, #12582912	@ 0xc00000
 8045010:	687b      	ldr	r3, [r7, #4]
 8045012:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 8045014:	494e      	ldr	r1, [pc, #312]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045016:	4313      	orrs	r3, r2
 8045018:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804501c:	687b      	ldr	r3, [r7, #4]
 804501e:	681b      	ldr	r3, [r3, #0]
 8045020:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8045024:	2b00      	cmp	r3, #0
 8045026:	d031      	beq.n	804508c <HAL_RCCEx_PeriphCLKConfig+0x440>
 8045028:	687b      	ldr	r3, [r7, #4]
 804502a:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 804502c:	f1b3 7f00 	cmp.w	r3, #33554432	@ 0x2000000
 8045030:	d00e      	beq.n	8045050 <HAL_RCCEx_PeriphCLKConfig+0x404>
 8045032:	f1b3 7f00 	cmp.w	r3, #33554432	@ 0x2000000
 8045036:	d814      	bhi.n	8045062 <HAL_RCCEx_PeriphCLKConfig+0x416>
 8045038:	2b00      	cmp	r3, #0
 804503a:	d015      	beq.n	8045068 <HAL_RCCEx_PeriphCLKConfig+0x41c>
 804503c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8045040:	d10f      	bne.n	8045062 <HAL_RCCEx_PeriphCLKConfig+0x416>
 8045042:	4b43      	ldr	r3, [pc, #268]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045044:	68db      	ldr	r3, [r3, #12]
 8045046:	4a42      	ldr	r2, [pc, #264]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045048:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 804504c:	60d3      	str	r3, [r2, #12]
 804504e:	e00c      	b.n	804506a <HAL_RCCEx_PeriphCLKConfig+0x41e>
 8045050:	687b      	ldr	r3, [r7, #4]
 8045052:	3304      	adds	r3, #4
 8045054:	2100      	movs	r1, #0
 8045056:	4618      	mov	r0, r3
 8045058:	f000 f97c 	bl	8045354 <RCCEx_PLLSAI1_Config>
 804505c:	4603      	mov	r3, r0
 804505e:	77fb      	strb	r3, [r7, #31]
 8045060:	e003      	b.n	804506a <HAL_RCCEx_PeriphCLKConfig+0x41e>
 8045062:	2301      	movs	r3, #1
 8045064:	77fb      	strb	r3, [r7, #31]
 8045066:	e000      	b.n	804506a <HAL_RCCEx_PeriphCLKConfig+0x41e>
 8045068:	bf00      	nop
 804506a:	7ffb      	ldrb	r3, [r7, #31]
 804506c:	2b00      	cmp	r3, #0
 804506e:	d10b      	bne.n	8045088 <HAL_RCCEx_PeriphCLKConfig+0x43c>
 8045070:	4b37      	ldr	r3, [pc, #220]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045072:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8045076:	f023 7240 	bic.w	r2, r3, #50331648	@ 0x3000000
 804507a:	687b      	ldr	r3, [r7, #4]
 804507c:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 804507e:	4934      	ldr	r1, [pc, #208]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045080:	4313      	orrs	r3, r2
 8045082:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8045086:	e001      	b.n	804508c <HAL_RCCEx_PeriphCLKConfig+0x440>
 8045088:	7ffb      	ldrb	r3, [r7, #31]
 804508a:	77bb      	strb	r3, [r7, #30]
 804508c:	687b      	ldr	r3, [r7, #4]
 804508e:	681b      	ldr	r3, [r3, #0]
 8045090:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8045094:	2b00      	cmp	r3, #0
 8045096:	d00a      	beq.n	80450ae <HAL_RCCEx_PeriphCLKConfig+0x462>
 8045098:	4b2d      	ldr	r3, [pc, #180]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804509a:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804509e:	f423 5240 	bic.w	r2, r3, #12288	@ 0x3000
 80450a2:	687b      	ldr	r3, [r7, #4]
 80450a4:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80450a6:	492a      	ldr	r1, [pc, #168]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80450a8:	4313      	orrs	r3, r2
 80450aa:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80450ae:	687b      	ldr	r3, [r7, #4]
 80450b0:	681b      	ldr	r3, [r3, #0]
 80450b2:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80450b6:	2b00      	cmp	r3, #0
 80450b8:	d00a      	beq.n	80450d0 <HAL_RCCEx_PeriphCLKConfig+0x484>
 80450ba:	4b25      	ldr	r3, [pc, #148]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80450bc:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80450c0:	f423 4240 	bic.w	r2, r3, #49152	@ 0xc000
 80450c4:	687b      	ldr	r3, [r7, #4]
 80450c6:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80450c8:	4921      	ldr	r1, [pc, #132]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80450ca:	4313      	orrs	r3, r2
 80450cc:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80450d0:	687b      	ldr	r3, [r7, #4]
 80450d2:	681b      	ldr	r3, [r3, #0]
 80450d4:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80450d8:	2b00      	cmp	r3, #0
 80450da:	d00a      	beq.n	80450f2 <HAL_RCCEx_PeriphCLKConfig+0x4a6>
 80450dc:	4b1c      	ldr	r3, [pc, #112]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80450de:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80450e2:	f423 3240 	bic.w	r2, r3, #196608	@ 0x30000
 80450e6:	687b      	ldr	r3, [r7, #4]
 80450e8:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80450ea:	4919      	ldr	r1, [pc, #100]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80450ec:	4313      	orrs	r3, r2
 80450ee:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80450f2:	687b      	ldr	r3, [r7, #4]
 80450f4:	681b      	ldr	r3, [r3, #0]
 80450f6:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 80450fa:	2b00      	cmp	r3, #0
 80450fc:	d00a      	beq.n	8045114 <HAL_RCCEx_PeriphCLKConfig+0x4c8>
 80450fe:	4b14      	ldr	r3, [pc, #80]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045100:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8045104:	f023 0203 	bic.w	r2, r3, #3
 8045108:	687b      	ldr	r3, [r7, #4]
 804510a:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 804510c:	4910      	ldr	r1, [pc, #64]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804510e:	4313      	orrs	r3, r2
 8045110:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8045114:	687b      	ldr	r3, [r7, #4]
 8045116:	681b      	ldr	r3, [r3, #0]
 8045118:	f403 5300 	and.w	r3, r3, #8192	@ 0x2000
 804511c:	2b00      	cmp	r3, #0
 804511e:	d02b      	beq.n	8045178 <HAL_RCCEx_PeriphCLKConfig+0x52c>
 8045120:	4b0b      	ldr	r3, [pc, #44]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045122:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8045126:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 804512a:	687b      	ldr	r3, [r7, #4]
 804512c:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 804512e:	4908      	ldr	r1, [pc, #32]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045130:	4313      	orrs	r3, r2
 8045132:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8045136:	687b      	ldr	r3, [r7, #4]
 8045138:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 804513a:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 804513e:	d109      	bne.n	8045154 <HAL_RCCEx_PeriphCLKConfig+0x508>
 8045140:	4b03      	ldr	r3, [pc, #12]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045142:	68db      	ldr	r3, [r3, #12]
 8045144:	4a02      	ldr	r2, [pc, #8]	@ (8045150 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8045146:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 804514a:	60d3      	str	r3, [r2, #12]
 804514c:	e014      	b.n	8045178 <HAL_RCCEx_PeriphCLKConfig+0x52c>
 804514e:	bf00      	nop
 8045150:	40021000 	.word	0x40021000
 8045154:	687b      	ldr	r3, [r7, #4]
 8045156:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8045158:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 804515c:	d10c      	bne.n	8045178 <HAL_RCCEx_PeriphCLKConfig+0x52c>
 804515e:	687b      	ldr	r3, [r7, #4]
 8045160:	3304      	adds	r3, #4
 8045162:	2101      	movs	r1, #1
 8045164:	4618      	mov	r0, r3
 8045166:	f000 f8f5 	bl	8045354 <RCCEx_PLLSAI1_Config>
 804516a:	4603      	mov	r3, r0
 804516c:	77fb      	strb	r3, [r7, #31]
 804516e:	7ffb      	ldrb	r3, [r7, #31]
 8045170:	2b00      	cmp	r3, #0
 8045172:	d001      	beq.n	8045178 <HAL_RCCEx_PeriphCLKConfig+0x52c>
 8045174:	7ffb      	ldrb	r3, [r7, #31]
 8045176:	77bb      	strb	r3, [r7, #30]
 8045178:	687b      	ldr	r3, [r7, #4]
 804517a:	681b      	ldr	r3, [r3, #0]
 804517c:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 8045180:	2b00      	cmp	r3, #0
 8045182:	d04a      	beq.n	804521a <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 8045184:	687b      	ldr	r3, [r7, #4]
 8045186:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 8045188:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 804518c:	d108      	bne.n	80451a0 <HAL_RCCEx_PeriphCLKConfig+0x554>
 804518e:	4b70      	ldr	r3, [pc, #448]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045190:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8045194:	4a6e      	ldr	r2, [pc, #440]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045196:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 804519a:	f8c2 309c 	str.w	r3, [r2, #156]	@ 0x9c
 804519e:	e012      	b.n	80451c6 <HAL_RCCEx_PeriphCLKConfig+0x57a>
 80451a0:	4b6b      	ldr	r3, [pc, #428]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451a2:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80451a6:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 80451aa:	687b      	ldr	r3, [r7, #4]
 80451ac:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 80451ae:	4968      	ldr	r1, [pc, #416]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451b0:	4313      	orrs	r3, r2
 80451b2:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80451b6:	4b66      	ldr	r3, [pc, #408]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451b8:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 80451bc:	4a64      	ldr	r2, [pc, #400]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451be:	f423 4380 	bic.w	r3, r3, #16384	@ 0x4000
 80451c2:	f8c2 309c 	str.w	r3, [r2, #156]	@ 0x9c
 80451c6:	687b      	ldr	r3, [r7, #4]
 80451c8:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 80451ca:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 80451ce:	d10d      	bne.n	80451ec <HAL_RCCEx_PeriphCLKConfig+0x5a0>
 80451d0:	687b      	ldr	r3, [r7, #4]
 80451d2:	3304      	adds	r3, #4
 80451d4:	2101      	movs	r1, #1
 80451d6:	4618      	mov	r0, r3
 80451d8:	f000 f8bc 	bl	8045354 <RCCEx_PLLSAI1_Config>
 80451dc:	4603      	mov	r3, r0
 80451de:	77fb      	strb	r3, [r7, #31]
 80451e0:	7ffb      	ldrb	r3, [r7, #31]
 80451e2:	2b00      	cmp	r3, #0
 80451e4:	d019      	beq.n	804521a <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 80451e6:	7ffb      	ldrb	r3, [r7, #31]
 80451e8:	77bb      	strb	r3, [r7, #30]
 80451ea:	e016      	b.n	804521a <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 80451ec:	687b      	ldr	r3, [r7, #4]
 80451ee:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 80451f0:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 80451f4:	d106      	bne.n	8045204 <HAL_RCCEx_PeriphCLKConfig+0x5b8>
 80451f6:	4b56      	ldr	r3, [pc, #344]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451f8:	68db      	ldr	r3, [r3, #12]
 80451fa:	4a55      	ldr	r2, [pc, #340]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80451fc:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8045200:	60d3      	str	r3, [r2, #12]
 8045202:	e00a      	b.n	804521a <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 8045204:	687b      	ldr	r3, [r7, #4]
 8045206:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 8045208:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 804520c:	d105      	bne.n	804521a <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 804520e:	4b50      	ldr	r3, [pc, #320]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045210:	68db      	ldr	r3, [r3, #12]
 8045212:	4a4f      	ldr	r2, [pc, #316]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045214:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8045218:	60d3      	str	r3, [r2, #12]
 804521a:	687b      	ldr	r3, [r7, #4]
 804521c:	681b      	ldr	r3, [r3, #0]
 804521e:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 8045222:	2b00      	cmp	r3, #0
 8045224:	d028      	beq.n	8045278 <HAL_RCCEx_PeriphCLKConfig+0x62c>
 8045226:	4b4a      	ldr	r3, [pc, #296]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045228:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804522c:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 8045230:	687b      	ldr	r3, [r7, #4]
 8045232:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8045234:	4946      	ldr	r1, [pc, #280]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045236:	4313      	orrs	r3, r2
 8045238:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804523c:	687b      	ldr	r3, [r7, #4]
 804523e:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8045240:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 8045244:	d106      	bne.n	8045254 <HAL_RCCEx_PeriphCLKConfig+0x608>
 8045246:	4b42      	ldr	r3, [pc, #264]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045248:	68db      	ldr	r3, [r3, #12]
 804524a:	4a41      	ldr	r2, [pc, #260]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804524c:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8045250:	60d3      	str	r3, [r2, #12]
 8045252:	e011      	b.n	8045278 <HAL_RCCEx_PeriphCLKConfig+0x62c>
 8045254:	687b      	ldr	r3, [r7, #4]
 8045256:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8045258:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 804525c:	d10c      	bne.n	8045278 <HAL_RCCEx_PeriphCLKConfig+0x62c>
 804525e:	687b      	ldr	r3, [r7, #4]
 8045260:	3304      	adds	r3, #4
 8045262:	2101      	movs	r1, #1
 8045264:	4618      	mov	r0, r3
 8045266:	f000 f875 	bl	8045354 <RCCEx_PLLSAI1_Config>
 804526a:	4603      	mov	r3, r0
 804526c:	77fb      	strb	r3, [r7, #31]
 804526e:	7ffb      	ldrb	r3, [r7, #31]
 8045270:	2b00      	cmp	r3, #0
 8045272:	d001      	beq.n	8045278 <HAL_RCCEx_PeriphCLKConfig+0x62c>
 8045274:	7ffb      	ldrb	r3, [r7, #31]
 8045276:	77bb      	strb	r3, [r7, #30]
 8045278:	687b      	ldr	r3, [r7, #4]
 804527a:	681b      	ldr	r3, [r3, #0]
 804527c:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8045280:	2b00      	cmp	r3, #0
 8045282:	d01e      	beq.n	80452c2 <HAL_RCCEx_PeriphCLKConfig+0x676>
 8045284:	4b32      	ldr	r3, [pc, #200]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045286:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804528a:	f023 5240 	bic.w	r2, r3, #805306368	@ 0x30000000
 804528e:	687b      	ldr	r3, [r7, #4]
 8045290:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 8045294:	492e      	ldr	r1, [pc, #184]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045296:	4313      	orrs	r3, r2
 8045298:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804529c:	687b      	ldr	r3, [r7, #4]
 804529e:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 80452a2:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 80452a6:	d10c      	bne.n	80452c2 <HAL_RCCEx_PeriphCLKConfig+0x676>
 80452a8:	687b      	ldr	r3, [r7, #4]
 80452aa:	3304      	adds	r3, #4
 80452ac:	2102      	movs	r1, #2
 80452ae:	4618      	mov	r0, r3
 80452b0:	f000 f850 	bl	8045354 <RCCEx_PLLSAI1_Config>
 80452b4:	4603      	mov	r3, r0
 80452b6:	77fb      	strb	r3, [r7, #31]
 80452b8:	7ffb      	ldrb	r3, [r7, #31]
 80452ba:	2b00      	cmp	r3, #0
 80452bc:	d001      	beq.n	80452c2 <HAL_RCCEx_PeriphCLKConfig+0x676>
 80452be:	7ffb      	ldrb	r3, [r7, #31]
 80452c0:	77bb      	strb	r3, [r7, #30]
 80452c2:	687b      	ldr	r3, [r7, #4]
 80452c4:	681b      	ldr	r3, [r3, #0]
 80452c6:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 80452ca:	2b00      	cmp	r3, #0
 80452cc:	d00b      	beq.n	80452e6 <HAL_RCCEx_PeriphCLKConfig+0x69a>
 80452ce:	4b20      	ldr	r3, [pc, #128]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80452d0:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 80452d4:	f023 0204 	bic.w	r2, r3, #4
 80452d8:	687b      	ldr	r3, [r7, #4]
 80452da:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 80452de:	491c      	ldr	r1, [pc, #112]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80452e0:	4313      	orrs	r3, r2
 80452e2:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 80452e6:	687b      	ldr	r3, [r7, #4]
 80452e8:	681b      	ldr	r3, [r3, #0]
 80452ea:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80452ee:	2b00      	cmp	r3, #0
 80452f0:	d00b      	beq.n	804530a <HAL_RCCEx_PeriphCLKConfig+0x6be>
 80452f2:	4b17      	ldr	r3, [pc, #92]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80452f4:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 80452f8:	f023 0218 	bic.w	r2, r3, #24
 80452fc:	687b      	ldr	r3, [r7, #4]
 80452fe:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8045302:	4913      	ldr	r1, [pc, #76]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045304:	4313      	orrs	r3, r2
 8045306:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 804530a:	687b      	ldr	r3, [r7, #4]
 804530c:	681b      	ldr	r3, [r3, #0]
 804530e:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8045312:	2b00      	cmp	r3, #0
 8045314:	d017      	beq.n	8045346 <HAL_RCCEx_PeriphCLKConfig+0x6fa>
 8045316:	4b0e      	ldr	r3, [pc, #56]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045318:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 804531c:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 8045320:	687b      	ldr	r3, [r7, #4]
 8045322:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8045326:	490a      	ldr	r1, [pc, #40]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045328:	4313      	orrs	r3, r2
 804532a:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 804532e:	687b      	ldr	r3, [r7, #4]
 8045330:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8045334:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 8045338:	d105      	bne.n	8045346 <HAL_RCCEx_PeriphCLKConfig+0x6fa>
 804533a:	4b05      	ldr	r3, [pc, #20]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804533c:	68db      	ldr	r3, [r3, #12]
 804533e:	4a04      	ldr	r2, [pc, #16]	@ (8045350 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8045340:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8045344:	60d3      	str	r3, [r2, #12]
 8045346:	7fbb      	ldrb	r3, [r7, #30]
 8045348:	4618      	mov	r0, r3
 804534a:	3720      	adds	r7, #32
 804534c:	46bd      	mov	sp, r7
 804534e:	bd80      	pop	{r7, pc}
 8045350:	40021000 	.word	0x40021000

08045354 <RCCEx_PLLSAI1_Config>:
 8045354:	b580      	push	{r7, lr}
 8045356:	b084      	sub	sp, #16
 8045358:	af00      	add	r7, sp, #0
 804535a:	6078      	str	r0, [r7, #4]
 804535c:	6039      	str	r1, [r7, #0]
 804535e:	2300      	movs	r3, #0
 8045360:	73fb      	strb	r3, [r7, #15]
 8045362:	687b      	ldr	r3, [r7, #4]
 8045364:	681b      	ldr	r3, [r3, #0]
 8045366:	2b03      	cmp	r3, #3
 8045368:	d018      	beq.n	804539c <RCCEx_PLLSAI1_Config+0x48>
 804536a:	2b03      	cmp	r3, #3
 804536c:	d81f      	bhi.n	80453ae <RCCEx_PLLSAI1_Config+0x5a>
 804536e:	2b01      	cmp	r3, #1
 8045370:	d002      	beq.n	8045378 <RCCEx_PLLSAI1_Config+0x24>
 8045372:	2b02      	cmp	r3, #2
 8045374:	d009      	beq.n	804538a <RCCEx_PLLSAI1_Config+0x36>
 8045376:	e01a      	b.n	80453ae <RCCEx_PLLSAI1_Config+0x5a>
 8045378:	4b65      	ldr	r3, [pc, #404]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804537a:	681b      	ldr	r3, [r3, #0]
 804537c:	f003 0302 	and.w	r3, r3, #2
 8045380:	2b00      	cmp	r3, #0
 8045382:	d117      	bne.n	80453b4 <RCCEx_PLLSAI1_Config+0x60>
 8045384:	2301      	movs	r3, #1
 8045386:	73fb      	strb	r3, [r7, #15]
 8045388:	e014      	b.n	80453b4 <RCCEx_PLLSAI1_Config+0x60>
 804538a:	4b61      	ldr	r3, [pc, #388]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804538c:	681b      	ldr	r3, [r3, #0]
 804538e:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8045392:	2b00      	cmp	r3, #0
 8045394:	d110      	bne.n	80453b8 <RCCEx_PLLSAI1_Config+0x64>
 8045396:	2301      	movs	r3, #1
 8045398:	73fb      	strb	r3, [r7, #15]
 804539a:	e00d      	b.n	80453b8 <RCCEx_PLLSAI1_Config+0x64>
 804539c:	4b5c      	ldr	r3, [pc, #368]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804539e:	681b      	ldr	r3, [r3, #0]
 80453a0:	f403 23c0 	and.w	r3, r3, #393216	@ 0x60000
 80453a4:	2b00      	cmp	r3, #0
 80453a6:	d109      	bne.n	80453bc <RCCEx_PLLSAI1_Config+0x68>
 80453a8:	2301      	movs	r3, #1
 80453aa:	73fb      	strb	r3, [r7, #15]
 80453ac:	e006      	b.n	80453bc <RCCEx_PLLSAI1_Config+0x68>
 80453ae:	2301      	movs	r3, #1
 80453b0:	73fb      	strb	r3, [r7, #15]
 80453b2:	e004      	b.n	80453be <RCCEx_PLLSAI1_Config+0x6a>
 80453b4:	bf00      	nop
 80453b6:	e002      	b.n	80453be <RCCEx_PLLSAI1_Config+0x6a>
 80453b8:	bf00      	nop
 80453ba:	e000      	b.n	80453be <RCCEx_PLLSAI1_Config+0x6a>
 80453bc:	bf00      	nop
 80453be:	7bfb      	ldrb	r3, [r7, #15]
 80453c0:	2b00      	cmp	r3, #0
 80453c2:	f040 809f 	bne.w	8045504 <RCCEx_PLLSAI1_Config+0x1b0>
 80453c6:	4b52      	ldr	r3, [pc, #328]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80453c8:	681b      	ldr	r3, [r3, #0]
 80453ca:	4a51      	ldr	r2, [pc, #324]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80453cc:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 80453d0:	6013      	str	r3, [r2, #0]
 80453d2:	f7fd fe11 	bl	8042ff8 <HAL_GetTick>
 80453d6:	60b8      	str	r0, [r7, #8]
 80453d8:	e00f      	b.n	80453fa <RCCEx_PLLSAI1_Config+0xa6>
 80453da:	f7fd fe0d 	bl	8042ff8 <HAL_GetTick>
 80453de:	4602      	mov	r2, r0
 80453e0:	68bb      	ldr	r3, [r7, #8]
 80453e2:	1ad3      	subs	r3, r2, r3
 80453e4:	2b02      	cmp	r3, #2
 80453e6:	d908      	bls.n	80453fa <RCCEx_PLLSAI1_Config+0xa6>
 80453e8:	4b49      	ldr	r3, [pc, #292]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80453ea:	681b      	ldr	r3, [r3, #0]
 80453ec:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 80453f0:	2b00      	cmp	r3, #0
 80453f2:	d009      	beq.n	8045408 <RCCEx_PLLSAI1_Config+0xb4>
 80453f4:	2303      	movs	r3, #3
 80453f6:	73fb      	strb	r3, [r7, #15]
 80453f8:	e006      	b.n	8045408 <RCCEx_PLLSAI1_Config+0xb4>
 80453fa:	4b45      	ldr	r3, [pc, #276]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80453fc:	681b      	ldr	r3, [r3, #0]
 80453fe:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8045402:	2b00      	cmp	r3, #0
 8045404:	d1e9      	bne.n	80453da <RCCEx_PLLSAI1_Config+0x86>
 8045406:	e000      	b.n	804540a <RCCEx_PLLSAI1_Config+0xb6>
 8045408:	bf00      	nop
 804540a:	7bfb      	ldrb	r3, [r7, #15]
 804540c:	2b00      	cmp	r3, #0
 804540e:	d179      	bne.n	8045504 <RCCEx_PLLSAI1_Config+0x1b0>
 8045410:	683b      	ldr	r3, [r7, #0]
 8045412:	2b00      	cmp	r3, #0
 8045414:	d116      	bne.n	8045444 <RCCEx_PLLSAI1_Config+0xf0>
 8045416:	4b3e      	ldr	r3, [pc, #248]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 8045418:	691a      	ldr	r2, [r3, #16]
 804541a:	4b3e      	ldr	r3, [pc, #248]	@ (8045514 <RCCEx_PLLSAI1_Config+0x1c0>)
 804541c:	4013      	ands	r3, r2
 804541e:	687a      	ldr	r2, [r7, #4]
 8045420:	6892      	ldr	r2, [r2, #8]
 8045422:	0211      	lsls	r1, r2, #8
 8045424:	687a      	ldr	r2, [r7, #4]
 8045426:	68d2      	ldr	r2, [r2, #12]
 8045428:	06d2      	lsls	r2, r2, #27
 804542a:	4311      	orrs	r1, r2
 804542c:	687a      	ldr	r2, [r7, #4]
 804542e:	6852      	ldr	r2, [r2, #4]
 8045430:	3a01      	subs	r2, #1
 8045432:	0112      	lsls	r2, r2, #4
 8045434:	4311      	orrs	r1, r2
 8045436:	687a      	ldr	r2, [r7, #4]
 8045438:	6812      	ldr	r2, [r2, #0]
 804543a:	430a      	orrs	r2, r1
 804543c:	4934      	ldr	r1, [pc, #208]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804543e:	4313      	orrs	r3, r2
 8045440:	610b      	str	r3, [r1, #16]
 8045442:	e033      	b.n	80454ac <RCCEx_PLLSAI1_Config+0x158>
 8045444:	683b      	ldr	r3, [r7, #0]
 8045446:	2b01      	cmp	r3, #1
 8045448:	d118      	bne.n	804547c <RCCEx_PLLSAI1_Config+0x128>
 804544a:	4b31      	ldr	r3, [pc, #196]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804544c:	691a      	ldr	r2, [r3, #16]
 804544e:	4b32      	ldr	r3, [pc, #200]	@ (8045518 <RCCEx_PLLSAI1_Config+0x1c4>)
 8045450:	4013      	ands	r3, r2
 8045452:	687a      	ldr	r2, [r7, #4]
 8045454:	6892      	ldr	r2, [r2, #8]
 8045456:	0211      	lsls	r1, r2, #8
 8045458:	687a      	ldr	r2, [r7, #4]
 804545a:	6912      	ldr	r2, [r2, #16]
 804545c:	0852      	lsrs	r2, r2, #1
 804545e:	3a01      	subs	r2, #1
 8045460:	0552      	lsls	r2, r2, #21
 8045462:	4311      	orrs	r1, r2
 8045464:	687a      	ldr	r2, [r7, #4]
 8045466:	6852      	ldr	r2, [r2, #4]
 8045468:	3a01      	subs	r2, #1
 804546a:	0112      	lsls	r2, r2, #4
 804546c:	4311      	orrs	r1, r2
 804546e:	687a      	ldr	r2, [r7, #4]
 8045470:	6812      	ldr	r2, [r2, #0]
 8045472:	430a      	orrs	r2, r1
 8045474:	4926      	ldr	r1, [pc, #152]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 8045476:	4313      	orrs	r3, r2
 8045478:	610b      	str	r3, [r1, #16]
 804547a:	e017      	b.n	80454ac <RCCEx_PLLSAI1_Config+0x158>
 804547c:	4b24      	ldr	r3, [pc, #144]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 804547e:	691a      	ldr	r2, [r3, #16]
 8045480:	4b26      	ldr	r3, [pc, #152]	@ (804551c <RCCEx_PLLSAI1_Config+0x1c8>)
 8045482:	4013      	ands	r3, r2
 8045484:	687a      	ldr	r2, [r7, #4]
 8045486:	6892      	ldr	r2, [r2, #8]
 8045488:	0211      	lsls	r1, r2, #8
 804548a:	687a      	ldr	r2, [r7, #4]
 804548c:	6952      	ldr	r2, [r2, #20]
 804548e:	0852      	lsrs	r2, r2, #1
 8045490:	3a01      	subs	r2, #1
 8045492:	0652      	lsls	r2, r2, #25
 8045494:	4311      	orrs	r1, r2
 8045496:	687a      	ldr	r2, [r7, #4]
 8045498:	6852      	ldr	r2, [r2, #4]
 804549a:	3a01      	subs	r2, #1
 804549c:	0112      	lsls	r2, r2, #4
 804549e:	4311      	orrs	r1, r2
 80454a0:	687a      	ldr	r2, [r7, #4]
 80454a2:	6812      	ldr	r2, [r2, #0]
 80454a4:	430a      	orrs	r2, r1
 80454a6:	491a      	ldr	r1, [pc, #104]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454a8:	4313      	orrs	r3, r2
 80454aa:	610b      	str	r3, [r1, #16]
 80454ac:	4b18      	ldr	r3, [pc, #96]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454ae:	681b      	ldr	r3, [r3, #0]
 80454b0:	4a17      	ldr	r2, [pc, #92]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454b2:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 80454b6:	6013      	str	r3, [r2, #0]
 80454b8:	f7fd fd9e 	bl	8042ff8 <HAL_GetTick>
 80454bc:	60b8      	str	r0, [r7, #8]
 80454be:	e00f      	b.n	80454e0 <RCCEx_PLLSAI1_Config+0x18c>
 80454c0:	f7fd fd9a 	bl	8042ff8 <HAL_GetTick>
 80454c4:	4602      	mov	r2, r0
 80454c6:	68bb      	ldr	r3, [r7, #8]
 80454c8:	1ad3      	subs	r3, r2, r3
 80454ca:	2b02      	cmp	r3, #2
 80454cc:	d908      	bls.n	80454e0 <RCCEx_PLLSAI1_Config+0x18c>
 80454ce:	4b10      	ldr	r3, [pc, #64]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454d0:	681b      	ldr	r3, [r3, #0]
 80454d2:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 80454d6:	2b00      	cmp	r3, #0
 80454d8:	d109      	bne.n	80454ee <RCCEx_PLLSAI1_Config+0x19a>
 80454da:	2303      	movs	r3, #3
 80454dc:	73fb      	strb	r3, [r7, #15]
 80454de:	e006      	b.n	80454ee <RCCEx_PLLSAI1_Config+0x19a>
 80454e0:	4b0b      	ldr	r3, [pc, #44]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454e2:	681b      	ldr	r3, [r3, #0]
 80454e4:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 80454e8:	2b00      	cmp	r3, #0
 80454ea:	d0e9      	beq.n	80454c0 <RCCEx_PLLSAI1_Config+0x16c>
 80454ec:	e000      	b.n	80454f0 <RCCEx_PLLSAI1_Config+0x19c>
 80454ee:	bf00      	nop
 80454f0:	7bfb      	ldrb	r3, [r7, #15]
 80454f2:	2b00      	cmp	r3, #0
 80454f4:	d106      	bne.n	8045504 <RCCEx_PLLSAI1_Config+0x1b0>
 80454f6:	4b06      	ldr	r3, [pc, #24]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 80454f8:	691a      	ldr	r2, [r3, #16]
 80454fa:	687b      	ldr	r3, [r7, #4]
 80454fc:	699b      	ldr	r3, [r3, #24]
 80454fe:	4904      	ldr	r1, [pc, #16]	@ (8045510 <RCCEx_PLLSAI1_Config+0x1bc>)
 8045500:	4313      	orrs	r3, r2
 8045502:	610b      	str	r3, [r1, #16]
 8045504:	7bfb      	ldrb	r3, [r7, #15]
 8045506:	4618      	mov	r0, r3
 8045508:	3710      	adds	r7, #16
 804550a:	46bd      	mov	sp, r7
 804550c:	bd80      	pop	{r7, pc}
 804550e:	bf00      	nop
 8045510:	40021000 	.word	0x40021000
 8045514:	07ff800c 	.word	0x07ff800c
 8045518:	ff9f800c 	.word	0xff9f800c
 804551c:	f9ff800c 	.word	0xf9ff800c

08045520 <RCCEx_PLLSAI2_Config>:
 8045520:	b580      	push	{r7, lr}
 8045522:	b084      	sub	sp, #16
 8045524:	af00      	add	r7, sp, #0
 8045526:	6078      	str	r0, [r7, #4]
 8045528:	6039      	str	r1, [r7, #0]
 804552a:	2300      	movs	r3, #0
 804552c:	73fb      	strb	r3, [r7, #15]
 804552e:	687b      	ldr	r3, [r7, #4]
 8045530:	681b      	ldr	r3, [r3, #0]
 8045532:	2b03      	cmp	r3, #3
 8045534:	d018      	beq.n	8045568 <RCCEx_PLLSAI2_Config+0x48>
 8045536:	2b03      	cmp	r3, #3
 8045538:	d81f      	bhi.n	804557a <RCCEx_PLLSAI2_Config+0x5a>
 804553a:	2b01      	cmp	r3, #1
 804553c:	d002      	beq.n	8045544 <RCCEx_PLLSAI2_Config+0x24>
 804553e:	2b02      	cmp	r3, #2
 8045540:	d009      	beq.n	8045556 <RCCEx_PLLSAI2_Config+0x36>
 8045542:	e01a      	b.n	804557a <RCCEx_PLLSAI2_Config+0x5a>
 8045544:	4b4a      	ldr	r3, [pc, #296]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045546:	681b      	ldr	r3, [r3, #0]
 8045548:	f003 0302 	and.w	r3, r3, #2
 804554c:	2b00      	cmp	r3, #0
 804554e:	d117      	bne.n	8045580 <RCCEx_PLLSAI2_Config+0x60>
 8045550:	2301      	movs	r3, #1
 8045552:	73fb      	strb	r3, [r7, #15]
 8045554:	e014      	b.n	8045580 <RCCEx_PLLSAI2_Config+0x60>
 8045556:	4b46      	ldr	r3, [pc, #280]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045558:	681b      	ldr	r3, [r3, #0]
 804555a:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 804555e:	2b00      	cmp	r3, #0
 8045560:	d110      	bne.n	8045584 <RCCEx_PLLSAI2_Config+0x64>
 8045562:	2301      	movs	r3, #1
 8045564:	73fb      	strb	r3, [r7, #15]
 8045566:	e00d      	b.n	8045584 <RCCEx_PLLSAI2_Config+0x64>
 8045568:	4b41      	ldr	r3, [pc, #260]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 804556a:	681b      	ldr	r3, [r3, #0]
 804556c:	f403 23c0 	and.w	r3, r3, #393216	@ 0x60000
 8045570:	2b00      	cmp	r3, #0
 8045572:	d109      	bne.n	8045588 <RCCEx_PLLSAI2_Config+0x68>
 8045574:	2301      	movs	r3, #1
 8045576:	73fb      	strb	r3, [r7, #15]
 8045578:	e006      	b.n	8045588 <RCCEx_PLLSAI2_Config+0x68>
 804557a:	2301      	movs	r3, #1
 804557c:	73fb      	strb	r3, [r7, #15]
 804557e:	e004      	b.n	804558a <RCCEx_PLLSAI2_Config+0x6a>
 8045580:	bf00      	nop
 8045582:	e002      	b.n	804558a <RCCEx_PLLSAI2_Config+0x6a>
 8045584:	bf00      	nop
 8045586:	e000      	b.n	804558a <RCCEx_PLLSAI2_Config+0x6a>
 8045588:	bf00      	nop
 804558a:	7bfb      	ldrb	r3, [r7, #15]
 804558c:	2b00      	cmp	r3, #0
 804558e:	d169      	bne.n	8045664 <RCCEx_PLLSAI2_Config+0x144>
 8045590:	4b37      	ldr	r3, [pc, #220]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045592:	681b      	ldr	r3, [r3, #0]
 8045594:	4a36      	ldr	r2, [pc, #216]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045596:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 804559a:	6013      	str	r3, [r2, #0]
 804559c:	f7fd fd2c 	bl	8042ff8 <HAL_GetTick>
 80455a0:	60b8      	str	r0, [r7, #8]
 80455a2:	e00f      	b.n	80455c4 <RCCEx_PLLSAI2_Config+0xa4>
 80455a4:	f7fd fd28 	bl	8042ff8 <HAL_GetTick>
 80455a8:	4602      	mov	r2, r0
 80455aa:	68bb      	ldr	r3, [r7, #8]
 80455ac:	1ad3      	subs	r3, r2, r3
 80455ae:	2b02      	cmp	r3, #2
 80455b0:	d908      	bls.n	80455c4 <RCCEx_PLLSAI2_Config+0xa4>
 80455b2:	4b2f      	ldr	r3, [pc, #188]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 80455b4:	681b      	ldr	r3, [r3, #0]
 80455b6:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 80455ba:	2b00      	cmp	r3, #0
 80455bc:	d009      	beq.n	80455d2 <RCCEx_PLLSAI2_Config+0xb2>
 80455be:	2303      	movs	r3, #3
 80455c0:	73fb      	strb	r3, [r7, #15]
 80455c2:	e006      	b.n	80455d2 <RCCEx_PLLSAI2_Config+0xb2>
 80455c4:	4b2a      	ldr	r3, [pc, #168]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 80455c6:	681b      	ldr	r3, [r3, #0]
 80455c8:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 80455cc:	2b00      	cmp	r3, #0
 80455ce:	d1e9      	bne.n	80455a4 <RCCEx_PLLSAI2_Config+0x84>
 80455d0:	e000      	b.n	80455d4 <RCCEx_PLLSAI2_Config+0xb4>
 80455d2:	bf00      	nop
 80455d4:	7bfb      	ldrb	r3, [r7, #15]
 80455d6:	2b00      	cmp	r3, #0
 80455d8:	d144      	bne.n	8045664 <RCCEx_PLLSAI2_Config+0x144>
 80455da:	683b      	ldr	r3, [r7, #0]
 80455dc:	2b00      	cmp	r3, #0
 80455de:	d115      	bne.n	804560c <RCCEx_PLLSAI2_Config+0xec>
 80455e0:	4b23      	ldr	r3, [pc, #140]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 80455e2:	695a      	ldr	r2, [r3, #20]
 80455e4:	4b23      	ldr	r3, [pc, #140]	@ (8045674 <RCCEx_PLLSAI2_Config+0x154>)
 80455e6:	4013      	ands	r3, r2
 80455e8:	687a      	ldr	r2, [r7, #4]
 80455ea:	6892      	ldr	r2, [r2, #8]
 80455ec:	0211      	lsls	r1, r2, #8
 80455ee:	687a      	ldr	r2, [r7, #4]
 80455f0:	68d2      	ldr	r2, [r2, #12]
 80455f2:	06d2      	lsls	r2, r2, #27
 80455f4:	4311      	orrs	r1, r2
 80455f6:	687a      	ldr	r2, [r7, #4]
 80455f8:	6852      	ldr	r2, [r2, #4]
 80455fa:	3a01      	subs	r2, #1
 80455fc:	0112      	lsls	r2, r2, #4
 80455fe:	4311      	orrs	r1, r2
 8045600:	687a      	ldr	r2, [r7, #4]
 8045602:	6812      	ldr	r2, [r2, #0]
 8045604:	430a      	orrs	r2, r1
 8045606:	491a      	ldr	r1, [pc, #104]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045608:	4313      	orrs	r3, r2
 804560a:	614b      	str	r3, [r1, #20]
 804560c:	4b18      	ldr	r3, [pc, #96]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 804560e:	681b      	ldr	r3, [r3, #0]
 8045610:	4a17      	ldr	r2, [pc, #92]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045612:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8045616:	6013      	str	r3, [r2, #0]
 8045618:	f7fd fcee 	bl	8042ff8 <HAL_GetTick>
 804561c:	60b8      	str	r0, [r7, #8]
 804561e:	e00f      	b.n	8045640 <RCCEx_PLLSAI2_Config+0x120>
 8045620:	f7fd fcea 	bl	8042ff8 <HAL_GetTick>
 8045624:	4602      	mov	r2, r0
 8045626:	68bb      	ldr	r3, [r7, #8]
 8045628:	1ad3      	subs	r3, r2, r3
 804562a:	2b02      	cmp	r3, #2
 804562c:	d908      	bls.n	8045640 <RCCEx_PLLSAI2_Config+0x120>
 804562e:	4b10      	ldr	r3, [pc, #64]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045630:	681b      	ldr	r3, [r3, #0]
 8045632:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8045636:	2b00      	cmp	r3, #0
 8045638:	d109      	bne.n	804564e <RCCEx_PLLSAI2_Config+0x12e>
 804563a:	2303      	movs	r3, #3
 804563c:	73fb      	strb	r3, [r7, #15]
 804563e:	e006      	b.n	804564e <RCCEx_PLLSAI2_Config+0x12e>
 8045640:	4b0b      	ldr	r3, [pc, #44]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045642:	681b      	ldr	r3, [r3, #0]
 8045644:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8045648:	2b00      	cmp	r3, #0
 804564a:	d0e9      	beq.n	8045620 <RCCEx_PLLSAI2_Config+0x100>
 804564c:	e000      	b.n	8045650 <RCCEx_PLLSAI2_Config+0x130>
 804564e:	bf00      	nop
 8045650:	7bfb      	ldrb	r3, [r7, #15]
 8045652:	2b00      	cmp	r3, #0
 8045654:	d106      	bne.n	8045664 <RCCEx_PLLSAI2_Config+0x144>
 8045656:	4b06      	ldr	r3, [pc, #24]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045658:	695a      	ldr	r2, [r3, #20]
 804565a:	687b      	ldr	r3, [r7, #4]
 804565c:	691b      	ldr	r3, [r3, #16]
 804565e:	4904      	ldr	r1, [pc, #16]	@ (8045670 <RCCEx_PLLSAI2_Config+0x150>)
 8045660:	4313      	orrs	r3, r2
 8045662:	614b      	str	r3, [r1, #20]
 8045664:	7bfb      	ldrb	r3, [r7, #15]
 8045666:	4618      	mov	r0, r3
 8045668:	3710      	adds	r7, #16
 804566a:	46bd      	mov	sp, r7
 804566c:	bd80      	pop	{r7, pc}
 804566e:	bf00      	nop
 8045670:	40021000 	.word	0x40021000
 8045674:	07ff800c 	.word	0x07ff800c

08045678 <HAL_TIM_Base_Init>:
 8045678:	b580      	push	{r7, lr}
 804567a:	b082      	sub	sp, #8
 804567c:	af00      	add	r7, sp, #0
 804567e:	6078      	str	r0, [r7, #4]
 8045680:	687b      	ldr	r3, [r7, #4]
 8045682:	2b00      	cmp	r3, #0
 8045684:	d101      	bne.n	804568a <HAL_TIM_Base_Init+0x12>
 8045686:	2301      	movs	r3, #1
 8045688:	e049      	b.n	804571e <HAL_TIM_Base_Init+0xa6>
 804568a:	687b      	ldr	r3, [r7, #4]
 804568c:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8045690:	b2db      	uxtb	r3, r3
 8045692:	2b00      	cmp	r3, #0
 8045694:	d106      	bne.n	80456a4 <HAL_TIM_Base_Init+0x2c>
 8045696:	687b      	ldr	r3, [r7, #4]
 8045698:	2200      	movs	r2, #0
 804569a:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 804569e:	6878      	ldr	r0, [r7, #4]
 80456a0:	f7fd f986 	bl	80429b0 <HAL_TIM_Base_MspInit>
 80456a4:	687b      	ldr	r3, [r7, #4]
 80456a6:	2202      	movs	r2, #2
 80456a8:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80456ac:	687b      	ldr	r3, [r7, #4]
 80456ae:	681a      	ldr	r2, [r3, #0]
 80456b0:	687b      	ldr	r3, [r7, #4]
 80456b2:	3304      	adds	r3, #4
 80456b4:	4619      	mov	r1, r3
 80456b6:	4610      	mov	r0, r2
 80456b8:	f000 fb46 	bl	8045d48 <TIM_Base_SetConfig>
 80456bc:	687b      	ldr	r3, [r7, #4]
 80456be:	2201      	movs	r2, #1
 80456c0:	f883 2048 	strb.w	r2, [r3, #72]	@ 0x48
 80456c4:	687b      	ldr	r3, [r7, #4]
 80456c6:	2201      	movs	r2, #1
 80456c8:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 80456cc:	687b      	ldr	r3, [r7, #4]
 80456ce:	2201      	movs	r2, #1
 80456d0:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 80456d4:	687b      	ldr	r3, [r7, #4]
 80456d6:	2201      	movs	r2, #1
 80456d8:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 80456dc:	687b      	ldr	r3, [r7, #4]
 80456de:	2201      	movs	r2, #1
 80456e0:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 80456e4:	687b      	ldr	r3, [r7, #4]
 80456e6:	2201      	movs	r2, #1
 80456e8:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 80456ec:	687b      	ldr	r3, [r7, #4]
 80456ee:	2201      	movs	r2, #1
 80456f0:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 80456f4:	687b      	ldr	r3, [r7, #4]
 80456f6:	2201      	movs	r2, #1
 80456f8:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 80456fc:	687b      	ldr	r3, [r7, #4]
 80456fe:	2201      	movs	r2, #1
 8045700:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8045704:	687b      	ldr	r3, [r7, #4]
 8045706:	2201      	movs	r2, #1
 8045708:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 804570c:	687b      	ldr	r3, [r7, #4]
 804570e:	2201      	movs	r2, #1
 8045710:	f883 2047 	strb.w	r2, [r3, #71]	@ 0x47
 8045714:	687b      	ldr	r3, [r7, #4]
 8045716:	2201      	movs	r2, #1
 8045718:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 804571c:	2300      	movs	r3, #0
 804571e:	4618      	mov	r0, r3
 8045720:	3708      	adds	r7, #8
 8045722:	46bd      	mov	sp, r7
 8045724:	bd80      	pop	{r7, pc}
	...

08045728 <HAL_TIM_Base_Start>:
 8045728:	b480      	push	{r7}
 804572a:	b085      	sub	sp, #20
 804572c:	af00      	add	r7, sp, #0
 804572e:	6078      	str	r0, [r7, #4]
 8045730:	687b      	ldr	r3, [r7, #4]
 8045732:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8045736:	b2db      	uxtb	r3, r3
 8045738:	2b01      	cmp	r3, #1
 804573a:	d001      	beq.n	8045740 <HAL_TIM_Base_Start+0x18>
 804573c:	2301      	movs	r3, #1
 804573e:	e047      	b.n	80457d0 <HAL_TIM_Base_Start+0xa8>
 8045740:	687b      	ldr	r3, [r7, #4]
 8045742:	2202      	movs	r2, #2
 8045744:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045748:	687b      	ldr	r3, [r7, #4]
 804574a:	681b      	ldr	r3, [r3, #0]
 804574c:	4a23      	ldr	r2, [pc, #140]	@ (80457dc <HAL_TIM_Base_Start+0xb4>)
 804574e:	4293      	cmp	r3, r2
 8045750:	d01d      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 8045752:	687b      	ldr	r3, [r7, #4]
 8045754:	681b      	ldr	r3, [r3, #0]
 8045756:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 804575a:	d018      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 804575c:	687b      	ldr	r3, [r7, #4]
 804575e:	681b      	ldr	r3, [r3, #0]
 8045760:	4a1f      	ldr	r2, [pc, #124]	@ (80457e0 <HAL_TIM_Base_Start+0xb8>)
 8045762:	4293      	cmp	r3, r2
 8045764:	d013      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 8045766:	687b      	ldr	r3, [r7, #4]
 8045768:	681b      	ldr	r3, [r3, #0]
 804576a:	4a1e      	ldr	r2, [pc, #120]	@ (80457e4 <HAL_TIM_Base_Start+0xbc>)
 804576c:	4293      	cmp	r3, r2
 804576e:	d00e      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 8045770:	687b      	ldr	r3, [r7, #4]
 8045772:	681b      	ldr	r3, [r3, #0]
 8045774:	4a1c      	ldr	r2, [pc, #112]	@ (80457e8 <HAL_TIM_Base_Start+0xc0>)
 8045776:	4293      	cmp	r3, r2
 8045778:	d009      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 804577a:	687b      	ldr	r3, [r7, #4]
 804577c:	681b      	ldr	r3, [r3, #0]
 804577e:	4a1b      	ldr	r2, [pc, #108]	@ (80457ec <HAL_TIM_Base_Start+0xc4>)
 8045780:	4293      	cmp	r3, r2
 8045782:	d004      	beq.n	804578e <HAL_TIM_Base_Start+0x66>
 8045784:	687b      	ldr	r3, [r7, #4]
 8045786:	681b      	ldr	r3, [r3, #0]
 8045788:	4a19      	ldr	r2, [pc, #100]	@ (80457f0 <HAL_TIM_Base_Start+0xc8>)
 804578a:	4293      	cmp	r3, r2
 804578c:	d115      	bne.n	80457ba <HAL_TIM_Base_Start+0x92>
 804578e:	687b      	ldr	r3, [r7, #4]
 8045790:	681b      	ldr	r3, [r3, #0]
 8045792:	689a      	ldr	r2, [r3, #8]
 8045794:	4b17      	ldr	r3, [pc, #92]	@ (80457f4 <HAL_TIM_Base_Start+0xcc>)
 8045796:	4013      	ands	r3, r2
 8045798:	60fb      	str	r3, [r7, #12]
 804579a:	68fb      	ldr	r3, [r7, #12]
 804579c:	2b06      	cmp	r3, #6
 804579e:	d015      	beq.n	80457cc <HAL_TIM_Base_Start+0xa4>
 80457a0:	68fb      	ldr	r3, [r7, #12]
 80457a2:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 80457a6:	d011      	beq.n	80457cc <HAL_TIM_Base_Start+0xa4>
 80457a8:	687b      	ldr	r3, [r7, #4]
 80457aa:	681b      	ldr	r3, [r3, #0]
 80457ac:	681a      	ldr	r2, [r3, #0]
 80457ae:	687b      	ldr	r3, [r7, #4]
 80457b0:	681b      	ldr	r3, [r3, #0]
 80457b2:	f042 0201 	orr.w	r2, r2, #1
 80457b6:	601a      	str	r2, [r3, #0]
 80457b8:	e008      	b.n	80457cc <HAL_TIM_Base_Start+0xa4>
 80457ba:	687b      	ldr	r3, [r7, #4]
 80457bc:	681b      	ldr	r3, [r3, #0]
 80457be:	681a      	ldr	r2, [r3, #0]
 80457c0:	687b      	ldr	r3, [r7, #4]
 80457c2:	681b      	ldr	r3, [r3, #0]
 80457c4:	f042 0201 	orr.w	r2, r2, #1
 80457c8:	601a      	str	r2, [r3, #0]
 80457ca:	e000      	b.n	80457ce <HAL_TIM_Base_Start+0xa6>
 80457cc:	bf00      	nop
 80457ce:	2300      	movs	r3, #0
 80457d0:	4618      	mov	r0, r3
 80457d2:	3714      	adds	r7, #20
 80457d4:	46bd      	mov	sp, r7
 80457d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80457da:	4770      	bx	lr
 80457dc:	40012c00 	.word	0x40012c00
 80457e0:	40000400 	.word	0x40000400
 80457e4:	40000800 	.word	0x40000800
 80457e8:	40000c00 	.word	0x40000c00
 80457ec:	40013400 	.word	0x40013400
 80457f0:	40014000 	.word	0x40014000
 80457f4:	00010007 	.word	0x00010007

080457f8 <HAL_TIM_Base_Stop>:
 80457f8:	b480      	push	{r7}
 80457fa:	b083      	sub	sp, #12
 80457fc:	af00      	add	r7, sp, #0
 80457fe:	6078      	str	r0, [r7, #4]
 8045800:	687b      	ldr	r3, [r7, #4]
 8045802:	681b      	ldr	r3, [r3, #0]
 8045804:	6a1a      	ldr	r2, [r3, #32]
 8045806:	f241 1311 	movw	r3, #4369	@ 0x1111
 804580a:	4013      	ands	r3, r2
 804580c:	2b00      	cmp	r3, #0
 804580e:	d10f      	bne.n	8045830 <HAL_TIM_Base_Stop+0x38>
 8045810:	687b      	ldr	r3, [r7, #4]
 8045812:	681b      	ldr	r3, [r3, #0]
 8045814:	6a1a      	ldr	r2, [r3, #32]
 8045816:	f240 4344 	movw	r3, #1092	@ 0x444
 804581a:	4013      	ands	r3, r2
 804581c:	2b00      	cmp	r3, #0
 804581e:	d107      	bne.n	8045830 <HAL_TIM_Base_Stop+0x38>
 8045820:	687b      	ldr	r3, [r7, #4]
 8045822:	681b      	ldr	r3, [r3, #0]
 8045824:	681a      	ldr	r2, [r3, #0]
 8045826:	687b      	ldr	r3, [r7, #4]
 8045828:	681b      	ldr	r3, [r3, #0]
 804582a:	f022 0201 	bic.w	r2, r2, #1
 804582e:	601a      	str	r2, [r3, #0]
 8045830:	687b      	ldr	r3, [r7, #4]
 8045832:	2201      	movs	r2, #1
 8045834:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045838:	2300      	movs	r3, #0
 804583a:	4618      	mov	r0, r3
 804583c:	370c      	adds	r7, #12
 804583e:	46bd      	mov	sp, r7
 8045840:	f85d 7b04 	ldr.w	r7, [sp], #4
 8045844:	4770      	bx	lr

08045846 <HAL_TIM_PWM_Init>:
 8045846:	b580      	push	{r7, lr}
 8045848:	b082      	sub	sp, #8
 804584a:	af00      	add	r7, sp, #0
 804584c:	6078      	str	r0, [r7, #4]
 804584e:	687b      	ldr	r3, [r7, #4]
 8045850:	2b00      	cmp	r3, #0
 8045852:	d101      	bne.n	8045858 <HAL_TIM_PWM_Init+0x12>
 8045854:	2301      	movs	r3, #1
 8045856:	e049      	b.n	80458ec <HAL_TIM_PWM_Init+0xa6>
 8045858:	687b      	ldr	r3, [r7, #4]
 804585a:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 804585e:	b2db      	uxtb	r3, r3
 8045860:	2b00      	cmp	r3, #0
 8045862:	d106      	bne.n	8045872 <HAL_TIM_PWM_Init+0x2c>
 8045864:	687b      	ldr	r3, [r7, #4]
 8045866:	2200      	movs	r2, #0
 8045868:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 804586c:	6878      	ldr	r0, [r7, #4]
 804586e:	f000 f841 	bl	80458f4 <HAL_TIM_PWM_MspInit>
 8045872:	687b      	ldr	r3, [r7, #4]
 8045874:	2202      	movs	r2, #2
 8045876:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 804587a:	687b      	ldr	r3, [r7, #4]
 804587c:	681a      	ldr	r2, [r3, #0]
 804587e:	687b      	ldr	r3, [r7, #4]
 8045880:	3304      	adds	r3, #4
 8045882:	4619      	mov	r1, r3
 8045884:	4610      	mov	r0, r2
 8045886:	f000 fa5f 	bl	8045d48 <TIM_Base_SetConfig>
 804588a:	687b      	ldr	r3, [r7, #4]
 804588c:	2201      	movs	r2, #1
 804588e:	f883 2048 	strb.w	r2, [r3, #72]	@ 0x48
 8045892:	687b      	ldr	r3, [r7, #4]
 8045894:	2201      	movs	r2, #1
 8045896:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 804589a:	687b      	ldr	r3, [r7, #4]
 804589c:	2201      	movs	r2, #1
 804589e:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 80458a2:	687b      	ldr	r3, [r7, #4]
 80458a4:	2201      	movs	r2, #1
 80458a6:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 80458aa:	687b      	ldr	r3, [r7, #4]
 80458ac:	2201      	movs	r2, #1
 80458ae:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 80458b2:	687b      	ldr	r3, [r7, #4]
 80458b4:	2201      	movs	r2, #1
 80458b6:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 80458ba:	687b      	ldr	r3, [r7, #4]
 80458bc:	2201      	movs	r2, #1
 80458be:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 80458c2:	687b      	ldr	r3, [r7, #4]
 80458c4:	2201      	movs	r2, #1
 80458c6:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 80458ca:	687b      	ldr	r3, [r7, #4]
 80458cc:	2201      	movs	r2, #1
 80458ce:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 80458d2:	687b      	ldr	r3, [r7, #4]
 80458d4:	2201      	movs	r2, #1
 80458d6:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 80458da:	687b      	ldr	r3, [r7, #4]
 80458dc:	2201      	movs	r2, #1
 80458de:	f883 2047 	strb.w	r2, [r3, #71]	@ 0x47
 80458e2:	687b      	ldr	r3, [r7, #4]
 80458e4:	2201      	movs	r2, #1
 80458e6:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80458ea:	2300      	movs	r3, #0
 80458ec:	4618      	mov	r0, r3
 80458ee:	3708      	adds	r7, #8
 80458f0:	46bd      	mov	sp, r7
 80458f2:	bd80      	pop	{r7, pc}

080458f4 <HAL_TIM_PWM_MspInit>:
 80458f4:	b480      	push	{r7}
 80458f6:	b083      	sub	sp, #12
 80458f8:	af00      	add	r7, sp, #0
 80458fa:	6078      	str	r0, [r7, #4]
 80458fc:	bf00      	nop
 80458fe:	370c      	adds	r7, #12
 8045900:	46bd      	mov	sp, r7
 8045902:	f85d 7b04 	ldr.w	r7, [sp], #4
 8045906:	4770      	bx	lr

08045908 <HAL_TIM_PWM_ConfigChannel>:
 8045908:	b580      	push	{r7, lr}
 804590a:	b086      	sub	sp, #24
 804590c:	af00      	add	r7, sp, #0
 804590e:	60f8      	str	r0, [r7, #12]
 8045910:	60b9      	str	r1, [r7, #8]
 8045912:	607a      	str	r2, [r7, #4]
 8045914:	2300      	movs	r3, #0
 8045916:	75fb      	strb	r3, [r7, #23]
 8045918:	68fb      	ldr	r3, [r7, #12]
 804591a:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 804591e:	2b01      	cmp	r3, #1
 8045920:	d101      	bne.n	8045926 <HAL_TIM_PWM_ConfigChannel+0x1e>
 8045922:	2302      	movs	r3, #2
 8045924:	e0ff      	b.n	8045b26 <HAL_TIM_PWM_ConfigChannel+0x21e>
 8045926:	68fb      	ldr	r3, [r7, #12]
 8045928:	2201      	movs	r2, #1
 804592a:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 804592e:	687b      	ldr	r3, [r7, #4]
 8045930:	2b14      	cmp	r3, #20
 8045932:	f200 80f0 	bhi.w	8045b16 <HAL_TIM_PWM_ConfigChannel+0x20e>
 8045936:	a201      	add	r2, pc, #4	@ (adr r2, 804593c <HAL_TIM_PWM_ConfigChannel+0x34>)
 8045938:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 804593c:	08045991 	.word	0x08045991
 8045940:	08045b17 	.word	0x08045b17
 8045944:	08045b17 	.word	0x08045b17
 8045948:	08045b17 	.word	0x08045b17
 804594c:	080459d1 	.word	0x080459d1
 8045950:	08045b17 	.word	0x08045b17
 8045954:	08045b17 	.word	0x08045b17
 8045958:	08045b17 	.word	0x08045b17
 804595c:	08045a13 	.word	0x08045a13
 8045960:	08045b17 	.word	0x08045b17
 8045964:	08045b17 	.word	0x08045b17
 8045968:	08045b17 	.word	0x08045b17
 804596c:	08045a53 	.word	0x08045a53
 8045970:	08045b17 	.word	0x08045b17
 8045974:	08045b17 	.word	0x08045b17
 8045978:	08045b17 	.word	0x08045b17
 804597c:	08045a95 	.word	0x08045a95
 8045980:	08045b17 	.word	0x08045b17
 8045984:	08045b17 	.word	0x08045b17
 8045988:	08045b17 	.word	0x08045b17
 804598c:	08045ad5 	.word	0x08045ad5
 8045990:	68fb      	ldr	r3, [r7, #12]
 8045992:	681b      	ldr	r3, [r3, #0]
 8045994:	68b9      	ldr	r1, [r7, #8]
 8045996:	4618      	mov	r0, r3
 8045998:	f000 fa76 	bl	8045e88 <TIM_OC1_SetConfig>
 804599c:	68fb      	ldr	r3, [r7, #12]
 804599e:	681b      	ldr	r3, [r3, #0]
 80459a0:	699a      	ldr	r2, [r3, #24]
 80459a2:	68fb      	ldr	r3, [r7, #12]
 80459a4:	681b      	ldr	r3, [r3, #0]
 80459a6:	f042 0208 	orr.w	r2, r2, #8
 80459aa:	619a      	str	r2, [r3, #24]
 80459ac:	68fb      	ldr	r3, [r7, #12]
 80459ae:	681b      	ldr	r3, [r3, #0]
 80459b0:	699a      	ldr	r2, [r3, #24]
 80459b2:	68fb      	ldr	r3, [r7, #12]
 80459b4:	681b      	ldr	r3, [r3, #0]
 80459b6:	f022 0204 	bic.w	r2, r2, #4
 80459ba:	619a      	str	r2, [r3, #24]
 80459bc:	68fb      	ldr	r3, [r7, #12]
 80459be:	681b      	ldr	r3, [r3, #0]
 80459c0:	6999      	ldr	r1, [r3, #24]
 80459c2:	68bb      	ldr	r3, [r7, #8]
 80459c4:	691a      	ldr	r2, [r3, #16]
 80459c6:	68fb      	ldr	r3, [r7, #12]
 80459c8:	681b      	ldr	r3, [r3, #0]
 80459ca:	430a      	orrs	r2, r1
 80459cc:	619a      	str	r2, [r3, #24]
 80459ce:	e0a5      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 80459d0:	68fb      	ldr	r3, [r7, #12]
 80459d2:	681b      	ldr	r3, [r3, #0]
 80459d4:	68b9      	ldr	r1, [r7, #8]
 80459d6:	4618      	mov	r0, r3
 80459d8:	f000 fae6 	bl	8045fa8 <TIM_OC2_SetConfig>
 80459dc:	68fb      	ldr	r3, [r7, #12]
 80459de:	681b      	ldr	r3, [r3, #0]
 80459e0:	699a      	ldr	r2, [r3, #24]
 80459e2:	68fb      	ldr	r3, [r7, #12]
 80459e4:	681b      	ldr	r3, [r3, #0]
 80459e6:	f442 6200 	orr.w	r2, r2, #2048	@ 0x800
 80459ea:	619a      	str	r2, [r3, #24]
 80459ec:	68fb      	ldr	r3, [r7, #12]
 80459ee:	681b      	ldr	r3, [r3, #0]
 80459f0:	699a      	ldr	r2, [r3, #24]
 80459f2:	68fb      	ldr	r3, [r7, #12]
 80459f4:	681b      	ldr	r3, [r3, #0]
 80459f6:	f422 6280 	bic.w	r2, r2, #1024	@ 0x400
 80459fa:	619a      	str	r2, [r3, #24]
 80459fc:	68fb      	ldr	r3, [r7, #12]
 80459fe:	681b      	ldr	r3, [r3, #0]
 8045a00:	6999      	ldr	r1, [r3, #24]
 8045a02:	68bb      	ldr	r3, [r7, #8]
 8045a04:	691b      	ldr	r3, [r3, #16]
 8045a06:	021a      	lsls	r2, r3, #8
 8045a08:	68fb      	ldr	r3, [r7, #12]
 8045a0a:	681b      	ldr	r3, [r3, #0]
 8045a0c:	430a      	orrs	r2, r1
 8045a0e:	619a      	str	r2, [r3, #24]
 8045a10:	e084      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 8045a12:	68fb      	ldr	r3, [r7, #12]
 8045a14:	681b      	ldr	r3, [r3, #0]
 8045a16:	68b9      	ldr	r1, [r7, #8]
 8045a18:	4618      	mov	r0, r3
 8045a1a:	f000 fb4f 	bl	80460bc <TIM_OC3_SetConfig>
 8045a1e:	68fb      	ldr	r3, [r7, #12]
 8045a20:	681b      	ldr	r3, [r3, #0]
 8045a22:	69da      	ldr	r2, [r3, #28]
 8045a24:	68fb      	ldr	r3, [r7, #12]
 8045a26:	681b      	ldr	r3, [r3, #0]
 8045a28:	f042 0208 	orr.w	r2, r2, #8
 8045a2c:	61da      	str	r2, [r3, #28]
 8045a2e:	68fb      	ldr	r3, [r7, #12]
 8045a30:	681b      	ldr	r3, [r3, #0]
 8045a32:	69da      	ldr	r2, [r3, #28]
 8045a34:	68fb      	ldr	r3, [r7, #12]
 8045a36:	681b      	ldr	r3, [r3, #0]
 8045a38:	f022 0204 	bic.w	r2, r2, #4
 8045a3c:	61da      	str	r2, [r3, #28]
 8045a3e:	68fb      	ldr	r3, [r7, #12]
 8045a40:	681b      	ldr	r3, [r3, #0]
 8045a42:	69d9      	ldr	r1, [r3, #28]
 8045a44:	68bb      	ldr	r3, [r7, #8]
 8045a46:	691a      	ldr	r2, [r3, #16]
 8045a48:	68fb      	ldr	r3, [r7, #12]
 8045a4a:	681b      	ldr	r3, [r3, #0]
 8045a4c:	430a      	orrs	r2, r1
 8045a4e:	61da      	str	r2, [r3, #28]
 8045a50:	e064      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 8045a52:	68fb      	ldr	r3, [r7, #12]
 8045a54:	681b      	ldr	r3, [r3, #0]
 8045a56:	68b9      	ldr	r1, [r7, #8]
 8045a58:	4618      	mov	r0, r3
 8045a5a:	f000 fbb7 	bl	80461cc <TIM_OC4_SetConfig>
 8045a5e:	68fb      	ldr	r3, [r7, #12]
 8045a60:	681b      	ldr	r3, [r3, #0]
 8045a62:	69da      	ldr	r2, [r3, #28]
 8045a64:	68fb      	ldr	r3, [r7, #12]
 8045a66:	681b      	ldr	r3, [r3, #0]
 8045a68:	f442 6200 	orr.w	r2, r2, #2048	@ 0x800
 8045a6c:	61da      	str	r2, [r3, #28]
 8045a6e:	68fb      	ldr	r3, [r7, #12]
 8045a70:	681b      	ldr	r3, [r3, #0]
 8045a72:	69da      	ldr	r2, [r3, #28]
 8045a74:	68fb      	ldr	r3, [r7, #12]
 8045a76:	681b      	ldr	r3, [r3, #0]
 8045a78:	f422 6280 	bic.w	r2, r2, #1024	@ 0x400
 8045a7c:	61da      	str	r2, [r3, #28]
 8045a7e:	68fb      	ldr	r3, [r7, #12]
 8045a80:	681b      	ldr	r3, [r3, #0]
 8045a82:	69d9      	ldr	r1, [r3, #28]
 8045a84:	68bb      	ldr	r3, [r7, #8]
 8045a86:	691b      	ldr	r3, [r3, #16]
 8045a88:	021a      	lsls	r2, r3, #8
 8045a8a:	68fb      	ldr	r3, [r7, #12]
 8045a8c:	681b      	ldr	r3, [r3, #0]
 8045a8e:	430a      	orrs	r2, r1
 8045a90:	61da      	str	r2, [r3, #28]
 8045a92:	e043      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 8045a94:	68fb      	ldr	r3, [r7, #12]
 8045a96:	681b      	ldr	r3, [r3, #0]
 8045a98:	68b9      	ldr	r1, [r7, #8]
 8045a9a:	4618      	mov	r0, r3
 8045a9c:	f000 fc00 	bl	80462a0 <TIM_OC5_SetConfig>
 8045aa0:	68fb      	ldr	r3, [r7, #12]
 8045aa2:	681b      	ldr	r3, [r3, #0]
 8045aa4:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8045aa6:	68fb      	ldr	r3, [r7, #12]
 8045aa8:	681b      	ldr	r3, [r3, #0]
 8045aaa:	f042 0208 	orr.w	r2, r2, #8
 8045aae:	655a      	str	r2, [r3, #84]	@ 0x54
 8045ab0:	68fb      	ldr	r3, [r7, #12]
 8045ab2:	681b      	ldr	r3, [r3, #0]
 8045ab4:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8045ab6:	68fb      	ldr	r3, [r7, #12]
 8045ab8:	681b      	ldr	r3, [r3, #0]
 8045aba:	f022 0204 	bic.w	r2, r2, #4
 8045abe:	655a      	str	r2, [r3, #84]	@ 0x54
 8045ac0:	68fb      	ldr	r3, [r7, #12]
 8045ac2:	681b      	ldr	r3, [r3, #0]
 8045ac4:	6d59      	ldr	r1, [r3, #84]	@ 0x54
 8045ac6:	68bb      	ldr	r3, [r7, #8]
 8045ac8:	691a      	ldr	r2, [r3, #16]
 8045aca:	68fb      	ldr	r3, [r7, #12]
 8045acc:	681b      	ldr	r3, [r3, #0]
 8045ace:	430a      	orrs	r2, r1
 8045ad0:	655a      	str	r2, [r3, #84]	@ 0x54
 8045ad2:	e023      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 8045ad4:	68fb      	ldr	r3, [r7, #12]
 8045ad6:	681b      	ldr	r3, [r3, #0]
 8045ad8:	68b9      	ldr	r1, [r7, #8]
 8045ada:	4618      	mov	r0, r3
 8045adc:	f000 fc44 	bl	8046368 <TIM_OC6_SetConfig>
 8045ae0:	68fb      	ldr	r3, [r7, #12]
 8045ae2:	681b      	ldr	r3, [r3, #0]
 8045ae4:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8045ae6:	68fb      	ldr	r3, [r7, #12]
 8045ae8:	681b      	ldr	r3, [r3, #0]
 8045aea:	f442 6200 	orr.w	r2, r2, #2048	@ 0x800
 8045aee:	655a      	str	r2, [r3, #84]	@ 0x54
 8045af0:	68fb      	ldr	r3, [r7, #12]
 8045af2:	681b      	ldr	r3, [r3, #0]
 8045af4:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8045af6:	68fb      	ldr	r3, [r7, #12]
 8045af8:	681b      	ldr	r3, [r3, #0]
 8045afa:	f422 6280 	bic.w	r2, r2, #1024	@ 0x400
 8045afe:	655a      	str	r2, [r3, #84]	@ 0x54
 8045b00:	68fb      	ldr	r3, [r7, #12]
 8045b02:	681b      	ldr	r3, [r3, #0]
 8045b04:	6d59      	ldr	r1, [r3, #84]	@ 0x54
 8045b06:	68bb      	ldr	r3, [r7, #8]
 8045b08:	691b      	ldr	r3, [r3, #16]
 8045b0a:	021a      	lsls	r2, r3, #8
 8045b0c:	68fb      	ldr	r3, [r7, #12]
 8045b0e:	681b      	ldr	r3, [r3, #0]
 8045b10:	430a      	orrs	r2, r1
 8045b12:	655a      	str	r2, [r3, #84]	@ 0x54
 8045b14:	e002      	b.n	8045b1c <HAL_TIM_PWM_ConfigChannel+0x214>
 8045b16:	2301      	movs	r3, #1
 8045b18:	75fb      	strb	r3, [r7, #23]
 8045b1a:	bf00      	nop
 8045b1c:	68fb      	ldr	r3, [r7, #12]
 8045b1e:	2200      	movs	r2, #0
 8045b20:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045b24:	7dfb      	ldrb	r3, [r7, #23]
 8045b26:	4618      	mov	r0, r3
 8045b28:	3718      	adds	r7, #24
 8045b2a:	46bd      	mov	sp, r7
 8045b2c:	bd80      	pop	{r7, pc}
 8045b2e:	bf00      	nop

08045b30 <HAL_TIM_ConfigClockSource>:
 8045b30:	b580      	push	{r7, lr}
 8045b32:	b084      	sub	sp, #16
 8045b34:	af00      	add	r7, sp, #0
 8045b36:	6078      	str	r0, [r7, #4]
 8045b38:	6039      	str	r1, [r7, #0]
 8045b3a:	2300      	movs	r3, #0
 8045b3c:	73fb      	strb	r3, [r7, #15]
 8045b3e:	687b      	ldr	r3, [r7, #4]
 8045b40:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8045b44:	2b01      	cmp	r3, #1
 8045b46:	d101      	bne.n	8045b4c <HAL_TIM_ConfigClockSource+0x1c>
 8045b48:	2302      	movs	r3, #2
 8045b4a:	e0b6      	b.n	8045cba <HAL_TIM_ConfigClockSource+0x18a>
 8045b4c:	687b      	ldr	r3, [r7, #4]
 8045b4e:	2201      	movs	r2, #1
 8045b50:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045b54:	687b      	ldr	r3, [r7, #4]
 8045b56:	2202      	movs	r2, #2
 8045b58:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045b5c:	687b      	ldr	r3, [r7, #4]
 8045b5e:	681b      	ldr	r3, [r3, #0]
 8045b60:	689b      	ldr	r3, [r3, #8]
 8045b62:	60bb      	str	r3, [r7, #8]
 8045b64:	68bb      	ldr	r3, [r7, #8]
 8045b66:	f423 1344 	bic.w	r3, r3, #3211264	@ 0x310000
 8045b6a:	f023 0377 	bic.w	r3, r3, #119	@ 0x77
 8045b6e:	60bb      	str	r3, [r7, #8]
 8045b70:	68bb      	ldr	r3, [r7, #8]
 8045b72:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8045b76:	60bb      	str	r3, [r7, #8]
 8045b78:	687b      	ldr	r3, [r7, #4]
 8045b7a:	681b      	ldr	r3, [r3, #0]
 8045b7c:	68ba      	ldr	r2, [r7, #8]
 8045b7e:	609a      	str	r2, [r3, #8]
 8045b80:	683b      	ldr	r3, [r7, #0]
 8045b82:	681b      	ldr	r3, [r3, #0]
 8045b84:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8045b88:	d03e      	beq.n	8045c08 <HAL_TIM_ConfigClockSource+0xd8>
 8045b8a:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8045b8e:	f200 8087 	bhi.w	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045b92:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8045b96:	f000 8086 	beq.w	8045ca6 <HAL_TIM_ConfigClockSource+0x176>
 8045b9a:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8045b9e:	d87f      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045ba0:	2b70      	cmp	r3, #112	@ 0x70
 8045ba2:	d01a      	beq.n	8045bda <HAL_TIM_ConfigClockSource+0xaa>
 8045ba4:	2b70      	cmp	r3, #112	@ 0x70
 8045ba6:	d87b      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045ba8:	2b60      	cmp	r3, #96	@ 0x60
 8045baa:	d050      	beq.n	8045c4e <HAL_TIM_ConfigClockSource+0x11e>
 8045bac:	2b60      	cmp	r3, #96	@ 0x60
 8045bae:	d877      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bb0:	2b50      	cmp	r3, #80	@ 0x50
 8045bb2:	d03c      	beq.n	8045c2e <HAL_TIM_ConfigClockSource+0xfe>
 8045bb4:	2b50      	cmp	r3, #80	@ 0x50
 8045bb6:	d873      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bb8:	2b40      	cmp	r3, #64	@ 0x40
 8045bba:	d058      	beq.n	8045c6e <HAL_TIM_ConfigClockSource+0x13e>
 8045bbc:	2b40      	cmp	r3, #64	@ 0x40
 8045bbe:	d86f      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bc0:	2b30      	cmp	r3, #48	@ 0x30
 8045bc2:	d064      	beq.n	8045c8e <HAL_TIM_ConfigClockSource+0x15e>
 8045bc4:	2b30      	cmp	r3, #48	@ 0x30
 8045bc6:	d86b      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bc8:	2b20      	cmp	r3, #32
 8045bca:	d060      	beq.n	8045c8e <HAL_TIM_ConfigClockSource+0x15e>
 8045bcc:	2b20      	cmp	r3, #32
 8045bce:	d867      	bhi.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bd0:	2b00      	cmp	r3, #0
 8045bd2:	d05c      	beq.n	8045c8e <HAL_TIM_ConfigClockSource+0x15e>
 8045bd4:	2b10      	cmp	r3, #16
 8045bd6:	d05a      	beq.n	8045c8e <HAL_TIM_ConfigClockSource+0x15e>
 8045bd8:	e062      	b.n	8045ca0 <HAL_TIM_ConfigClockSource+0x170>
 8045bda:	687b      	ldr	r3, [r7, #4]
 8045bdc:	6818      	ldr	r0, [r3, #0]
 8045bde:	683b      	ldr	r3, [r7, #0]
 8045be0:	6899      	ldr	r1, [r3, #8]
 8045be2:	683b      	ldr	r3, [r7, #0]
 8045be4:	685a      	ldr	r2, [r3, #4]
 8045be6:	683b      	ldr	r3, [r7, #0]
 8045be8:	68db      	ldr	r3, [r3, #12]
 8045bea:	f000 fd34 	bl	8046656 <TIM_ETR_SetConfig>
 8045bee:	687b      	ldr	r3, [r7, #4]
 8045bf0:	681b      	ldr	r3, [r3, #0]
 8045bf2:	689b      	ldr	r3, [r3, #8]
 8045bf4:	60bb      	str	r3, [r7, #8]
 8045bf6:	68bb      	ldr	r3, [r7, #8]
 8045bf8:	f043 0377 	orr.w	r3, r3, #119	@ 0x77
 8045bfc:	60bb      	str	r3, [r7, #8]
 8045bfe:	687b      	ldr	r3, [r7, #4]
 8045c00:	681b      	ldr	r3, [r3, #0]
 8045c02:	68ba      	ldr	r2, [r7, #8]
 8045c04:	609a      	str	r2, [r3, #8]
 8045c06:	e04f      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045c08:	687b      	ldr	r3, [r7, #4]
 8045c0a:	6818      	ldr	r0, [r3, #0]
 8045c0c:	683b      	ldr	r3, [r7, #0]
 8045c0e:	6899      	ldr	r1, [r3, #8]
 8045c10:	683b      	ldr	r3, [r7, #0]
 8045c12:	685a      	ldr	r2, [r3, #4]
 8045c14:	683b      	ldr	r3, [r7, #0]
 8045c16:	68db      	ldr	r3, [r3, #12]
 8045c18:	f000 fd1d 	bl	8046656 <TIM_ETR_SetConfig>
 8045c1c:	687b      	ldr	r3, [r7, #4]
 8045c1e:	681b      	ldr	r3, [r3, #0]
 8045c20:	689a      	ldr	r2, [r3, #8]
 8045c22:	687b      	ldr	r3, [r7, #4]
 8045c24:	681b      	ldr	r3, [r3, #0]
 8045c26:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 8045c2a:	609a      	str	r2, [r3, #8]
 8045c2c:	e03c      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045c2e:	687b      	ldr	r3, [r7, #4]
 8045c30:	6818      	ldr	r0, [r3, #0]
 8045c32:	683b      	ldr	r3, [r7, #0]
 8045c34:	6859      	ldr	r1, [r3, #4]
 8045c36:	683b      	ldr	r3, [r7, #0]
 8045c38:	68db      	ldr	r3, [r3, #12]
 8045c3a:	461a      	mov	r2, r3
 8045c3c:	f000 fc8f 	bl	804655e <TIM_TI1_ConfigInputStage>
 8045c40:	687b      	ldr	r3, [r7, #4]
 8045c42:	681b      	ldr	r3, [r3, #0]
 8045c44:	2150      	movs	r1, #80	@ 0x50
 8045c46:	4618      	mov	r0, r3
 8045c48:	f000 fce8 	bl	804661c <TIM_ITRx_SetConfig>
 8045c4c:	e02c      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045c4e:	687b      	ldr	r3, [r7, #4]
 8045c50:	6818      	ldr	r0, [r3, #0]
 8045c52:	683b      	ldr	r3, [r7, #0]
 8045c54:	6859      	ldr	r1, [r3, #4]
 8045c56:	683b      	ldr	r3, [r7, #0]
 8045c58:	68db      	ldr	r3, [r3, #12]
 8045c5a:	461a      	mov	r2, r3
 8045c5c:	f000 fcae 	bl	80465bc <TIM_TI2_ConfigInputStage>
 8045c60:	687b      	ldr	r3, [r7, #4]
 8045c62:	681b      	ldr	r3, [r3, #0]
 8045c64:	2160      	movs	r1, #96	@ 0x60
 8045c66:	4618      	mov	r0, r3
 8045c68:	f000 fcd8 	bl	804661c <TIM_ITRx_SetConfig>
 8045c6c:	e01c      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045c6e:	687b      	ldr	r3, [r7, #4]
 8045c70:	6818      	ldr	r0, [r3, #0]
 8045c72:	683b      	ldr	r3, [r7, #0]
 8045c74:	6859      	ldr	r1, [r3, #4]
 8045c76:	683b      	ldr	r3, [r7, #0]
 8045c78:	68db      	ldr	r3, [r3, #12]
 8045c7a:	461a      	mov	r2, r3
 8045c7c:	f000 fc6f 	bl	804655e <TIM_TI1_ConfigInputStage>
 8045c80:	687b      	ldr	r3, [r7, #4]
 8045c82:	681b      	ldr	r3, [r3, #0]
 8045c84:	2140      	movs	r1, #64	@ 0x40
 8045c86:	4618      	mov	r0, r3
 8045c88:	f000 fcc8 	bl	804661c <TIM_ITRx_SetConfig>
 8045c8c:	e00c      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045c8e:	687b      	ldr	r3, [r7, #4]
 8045c90:	681a      	ldr	r2, [r3, #0]
 8045c92:	683b      	ldr	r3, [r7, #0]
 8045c94:	681b      	ldr	r3, [r3, #0]
 8045c96:	4619      	mov	r1, r3
 8045c98:	4610      	mov	r0, r2
 8045c9a:	f000 fcbf 	bl	804661c <TIM_ITRx_SetConfig>
 8045c9e:	e003      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045ca0:	2301      	movs	r3, #1
 8045ca2:	73fb      	strb	r3, [r7, #15]
 8045ca4:	e000      	b.n	8045ca8 <HAL_TIM_ConfigClockSource+0x178>
 8045ca6:	bf00      	nop
 8045ca8:	687b      	ldr	r3, [r7, #4]
 8045caa:	2201      	movs	r2, #1
 8045cac:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045cb0:	687b      	ldr	r3, [r7, #4]
 8045cb2:	2200      	movs	r2, #0
 8045cb4:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045cb8:	7bfb      	ldrb	r3, [r7, #15]
 8045cba:	4618      	mov	r0, r3
 8045cbc:	3710      	adds	r7, #16
 8045cbe:	46bd      	mov	sp, r7
 8045cc0:	bd80      	pop	{r7, pc}

08045cc2 <HAL_TIM_SlaveConfigSynchro>:
 8045cc2:	b580      	push	{r7, lr}
 8045cc4:	b082      	sub	sp, #8
 8045cc6:	af00      	add	r7, sp, #0
 8045cc8:	6078      	str	r0, [r7, #4]
 8045cca:	6039      	str	r1, [r7, #0]
 8045ccc:	687b      	ldr	r3, [r7, #4]
 8045cce:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8045cd2:	2b01      	cmp	r3, #1
 8045cd4:	d101      	bne.n	8045cda <HAL_TIM_SlaveConfigSynchro+0x18>
 8045cd6:	2302      	movs	r3, #2
 8045cd8:	e031      	b.n	8045d3e <HAL_TIM_SlaveConfigSynchro+0x7c>
 8045cda:	687b      	ldr	r3, [r7, #4]
 8045cdc:	2201      	movs	r2, #1
 8045cde:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045ce2:	687b      	ldr	r3, [r7, #4]
 8045ce4:	2202      	movs	r2, #2
 8045ce6:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045cea:	6839      	ldr	r1, [r7, #0]
 8045cec:	6878      	ldr	r0, [r7, #4]
 8045cee:	f000 fba1 	bl	8046434 <TIM_SlaveTimer_SetConfig>
 8045cf2:	4603      	mov	r3, r0
 8045cf4:	2b00      	cmp	r3, #0
 8045cf6:	d009      	beq.n	8045d0c <HAL_TIM_SlaveConfigSynchro+0x4a>
 8045cf8:	687b      	ldr	r3, [r7, #4]
 8045cfa:	2201      	movs	r2, #1
 8045cfc:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045d00:	687b      	ldr	r3, [r7, #4]
 8045d02:	2200      	movs	r2, #0
 8045d04:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045d08:	2301      	movs	r3, #1
 8045d0a:	e018      	b.n	8045d3e <HAL_TIM_SlaveConfigSynchro+0x7c>
 8045d0c:	687b      	ldr	r3, [r7, #4]
 8045d0e:	681b      	ldr	r3, [r3, #0]
 8045d10:	68da      	ldr	r2, [r3, #12]
 8045d12:	687b      	ldr	r3, [r7, #4]
 8045d14:	681b      	ldr	r3, [r3, #0]
 8045d16:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8045d1a:	60da      	str	r2, [r3, #12]
 8045d1c:	687b      	ldr	r3, [r7, #4]
 8045d1e:	681b      	ldr	r3, [r3, #0]
 8045d20:	68da      	ldr	r2, [r3, #12]
 8045d22:	687b      	ldr	r3, [r7, #4]
 8045d24:	681b      	ldr	r3, [r3, #0]
 8045d26:	f422 4280 	bic.w	r2, r2, #16384	@ 0x4000
 8045d2a:	60da      	str	r2, [r3, #12]
 8045d2c:	687b      	ldr	r3, [r7, #4]
 8045d2e:	2201      	movs	r2, #1
 8045d30:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8045d34:	687b      	ldr	r3, [r7, #4]
 8045d36:	2200      	movs	r2, #0
 8045d38:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8045d3c:	2300      	movs	r3, #0
 8045d3e:	4618      	mov	r0, r3
 8045d40:	3708      	adds	r7, #8
 8045d42:	46bd      	mov	sp, r7
 8045d44:	bd80      	pop	{r7, pc}
	...

08045d48 <TIM_Base_SetConfig>:
 8045d48:	b480      	push	{r7}
 8045d4a:	b085      	sub	sp, #20
 8045d4c:	af00      	add	r7, sp, #0
 8045d4e:	6078      	str	r0, [r7, #4]
 8045d50:	6039      	str	r1, [r7, #0]
 8045d52:	687b      	ldr	r3, [r7, #4]
 8045d54:	681b      	ldr	r3, [r3, #0]
 8045d56:	60fb      	str	r3, [r7, #12]
 8045d58:	687b      	ldr	r3, [r7, #4]
 8045d5a:	4a43      	ldr	r2, [pc, #268]	@ (8045e68 <TIM_Base_SetConfig+0x120>)
 8045d5c:	4293      	cmp	r3, r2
 8045d5e:	d013      	beq.n	8045d88 <TIM_Base_SetConfig+0x40>
 8045d60:	687b      	ldr	r3, [r7, #4]
 8045d62:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8045d66:	d00f      	beq.n	8045d88 <TIM_Base_SetConfig+0x40>
 8045d68:	687b      	ldr	r3, [r7, #4]
 8045d6a:	4a40      	ldr	r2, [pc, #256]	@ (8045e6c <TIM_Base_SetConfig+0x124>)
 8045d6c:	4293      	cmp	r3, r2
 8045d6e:	d00b      	beq.n	8045d88 <TIM_Base_SetConfig+0x40>
 8045d70:	687b      	ldr	r3, [r7, #4]
 8045d72:	4a3f      	ldr	r2, [pc, #252]	@ (8045e70 <TIM_Base_SetConfig+0x128>)
 8045d74:	4293      	cmp	r3, r2
 8045d76:	d007      	beq.n	8045d88 <TIM_Base_SetConfig+0x40>
 8045d78:	687b      	ldr	r3, [r7, #4]
 8045d7a:	4a3e      	ldr	r2, [pc, #248]	@ (8045e74 <TIM_Base_SetConfig+0x12c>)
 8045d7c:	4293      	cmp	r3, r2
 8045d7e:	d003      	beq.n	8045d88 <TIM_Base_SetConfig+0x40>
 8045d80:	687b      	ldr	r3, [r7, #4]
 8045d82:	4a3d      	ldr	r2, [pc, #244]	@ (8045e78 <TIM_Base_SetConfig+0x130>)
 8045d84:	4293      	cmp	r3, r2
 8045d86:	d108      	bne.n	8045d9a <TIM_Base_SetConfig+0x52>
 8045d88:	68fb      	ldr	r3, [r7, #12]
 8045d8a:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8045d8e:	60fb      	str	r3, [r7, #12]
 8045d90:	683b      	ldr	r3, [r7, #0]
 8045d92:	685b      	ldr	r3, [r3, #4]
 8045d94:	68fa      	ldr	r2, [r7, #12]
 8045d96:	4313      	orrs	r3, r2
 8045d98:	60fb      	str	r3, [r7, #12]
 8045d9a:	687b      	ldr	r3, [r7, #4]
 8045d9c:	4a32      	ldr	r2, [pc, #200]	@ (8045e68 <TIM_Base_SetConfig+0x120>)
 8045d9e:	4293      	cmp	r3, r2
 8045da0:	d01f      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045da2:	687b      	ldr	r3, [r7, #4]
 8045da4:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8045da8:	d01b      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045daa:	687b      	ldr	r3, [r7, #4]
 8045dac:	4a2f      	ldr	r2, [pc, #188]	@ (8045e6c <TIM_Base_SetConfig+0x124>)
 8045dae:	4293      	cmp	r3, r2
 8045db0:	d017      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045db2:	687b      	ldr	r3, [r7, #4]
 8045db4:	4a2e      	ldr	r2, [pc, #184]	@ (8045e70 <TIM_Base_SetConfig+0x128>)
 8045db6:	4293      	cmp	r3, r2
 8045db8:	d013      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045dba:	687b      	ldr	r3, [r7, #4]
 8045dbc:	4a2d      	ldr	r2, [pc, #180]	@ (8045e74 <TIM_Base_SetConfig+0x12c>)
 8045dbe:	4293      	cmp	r3, r2
 8045dc0:	d00f      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045dc2:	687b      	ldr	r3, [r7, #4]
 8045dc4:	4a2c      	ldr	r2, [pc, #176]	@ (8045e78 <TIM_Base_SetConfig+0x130>)
 8045dc6:	4293      	cmp	r3, r2
 8045dc8:	d00b      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045dca:	687b      	ldr	r3, [r7, #4]
 8045dcc:	4a2b      	ldr	r2, [pc, #172]	@ (8045e7c <TIM_Base_SetConfig+0x134>)
 8045dce:	4293      	cmp	r3, r2
 8045dd0:	d007      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045dd2:	687b      	ldr	r3, [r7, #4]
 8045dd4:	4a2a      	ldr	r2, [pc, #168]	@ (8045e80 <TIM_Base_SetConfig+0x138>)
 8045dd6:	4293      	cmp	r3, r2
 8045dd8:	d003      	beq.n	8045de2 <TIM_Base_SetConfig+0x9a>
 8045dda:	687b      	ldr	r3, [r7, #4]
 8045ddc:	4a29      	ldr	r2, [pc, #164]	@ (8045e84 <TIM_Base_SetConfig+0x13c>)
 8045dde:	4293      	cmp	r3, r2
 8045de0:	d108      	bne.n	8045df4 <TIM_Base_SetConfig+0xac>
 8045de2:	68fb      	ldr	r3, [r7, #12]
 8045de4:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8045de8:	60fb      	str	r3, [r7, #12]
 8045dea:	683b      	ldr	r3, [r7, #0]
 8045dec:	68db      	ldr	r3, [r3, #12]
 8045dee:	68fa      	ldr	r2, [r7, #12]
 8045df0:	4313      	orrs	r3, r2
 8045df2:	60fb      	str	r3, [r7, #12]
 8045df4:	68fb      	ldr	r3, [r7, #12]
 8045df6:	f023 0280 	bic.w	r2, r3, #128	@ 0x80
 8045dfa:	683b      	ldr	r3, [r7, #0]
 8045dfc:	695b      	ldr	r3, [r3, #20]
 8045dfe:	4313      	orrs	r3, r2
 8045e00:	60fb      	str	r3, [r7, #12]
 8045e02:	683b      	ldr	r3, [r7, #0]
 8045e04:	689a      	ldr	r2, [r3, #8]
 8045e06:	687b      	ldr	r3, [r7, #4]
 8045e08:	62da      	str	r2, [r3, #44]	@ 0x2c
 8045e0a:	683b      	ldr	r3, [r7, #0]
 8045e0c:	681a      	ldr	r2, [r3, #0]
 8045e0e:	687b      	ldr	r3, [r7, #4]
 8045e10:	629a      	str	r2, [r3, #40]	@ 0x28
 8045e12:	687b      	ldr	r3, [r7, #4]
 8045e14:	4a14      	ldr	r2, [pc, #80]	@ (8045e68 <TIM_Base_SetConfig+0x120>)
 8045e16:	4293      	cmp	r3, r2
 8045e18:	d00f      	beq.n	8045e3a <TIM_Base_SetConfig+0xf2>
 8045e1a:	687b      	ldr	r3, [r7, #4]
 8045e1c:	4a16      	ldr	r2, [pc, #88]	@ (8045e78 <TIM_Base_SetConfig+0x130>)
 8045e1e:	4293      	cmp	r3, r2
 8045e20:	d00b      	beq.n	8045e3a <TIM_Base_SetConfig+0xf2>
 8045e22:	687b      	ldr	r3, [r7, #4]
 8045e24:	4a15      	ldr	r2, [pc, #84]	@ (8045e7c <TIM_Base_SetConfig+0x134>)
 8045e26:	4293      	cmp	r3, r2
 8045e28:	d007      	beq.n	8045e3a <TIM_Base_SetConfig+0xf2>
 8045e2a:	687b      	ldr	r3, [r7, #4]
 8045e2c:	4a14      	ldr	r2, [pc, #80]	@ (8045e80 <TIM_Base_SetConfig+0x138>)
 8045e2e:	4293      	cmp	r3, r2
 8045e30:	d003      	beq.n	8045e3a <TIM_Base_SetConfig+0xf2>
 8045e32:	687b      	ldr	r3, [r7, #4]
 8045e34:	4a13      	ldr	r2, [pc, #76]	@ (8045e84 <TIM_Base_SetConfig+0x13c>)
 8045e36:	4293      	cmp	r3, r2
 8045e38:	d103      	bne.n	8045e42 <TIM_Base_SetConfig+0xfa>
 8045e3a:	683b      	ldr	r3, [r7, #0]
 8045e3c:	691a      	ldr	r2, [r3, #16]
 8045e3e:	687b      	ldr	r3, [r7, #4]
 8045e40:	631a      	str	r2, [r3, #48]	@ 0x30
 8045e42:	687b      	ldr	r3, [r7, #4]
 8045e44:	681b      	ldr	r3, [r3, #0]
 8045e46:	f043 0204 	orr.w	r2, r3, #4
 8045e4a:	687b      	ldr	r3, [r7, #4]
 8045e4c:	601a      	str	r2, [r3, #0]
 8045e4e:	687b      	ldr	r3, [r7, #4]
 8045e50:	2201      	movs	r2, #1
 8045e52:	615a      	str	r2, [r3, #20]
 8045e54:	687b      	ldr	r3, [r7, #4]
 8045e56:	68fa      	ldr	r2, [r7, #12]
 8045e58:	601a      	str	r2, [r3, #0]
 8045e5a:	bf00      	nop
 8045e5c:	3714      	adds	r7, #20
 8045e5e:	46bd      	mov	sp, r7
 8045e60:	f85d 7b04 	ldr.w	r7, [sp], #4
 8045e64:	4770      	bx	lr
 8045e66:	bf00      	nop
 8045e68:	40012c00 	.word	0x40012c00
 8045e6c:	40000400 	.word	0x40000400
 8045e70:	40000800 	.word	0x40000800
 8045e74:	40000c00 	.word	0x40000c00
 8045e78:	40013400 	.word	0x40013400
 8045e7c:	40014000 	.word	0x40014000
 8045e80:	40014400 	.word	0x40014400
 8045e84:	40014800 	.word	0x40014800

08045e88 <TIM_OC1_SetConfig>:
 8045e88:	b480      	push	{r7}
 8045e8a:	b087      	sub	sp, #28
 8045e8c:	af00      	add	r7, sp, #0
 8045e8e:	6078      	str	r0, [r7, #4]
 8045e90:	6039      	str	r1, [r7, #0]
 8045e92:	687b      	ldr	r3, [r7, #4]
 8045e94:	6a1b      	ldr	r3, [r3, #32]
 8045e96:	617b      	str	r3, [r7, #20]
 8045e98:	687b      	ldr	r3, [r7, #4]
 8045e9a:	6a1b      	ldr	r3, [r3, #32]
 8045e9c:	f023 0201 	bic.w	r2, r3, #1
 8045ea0:	687b      	ldr	r3, [r7, #4]
 8045ea2:	621a      	str	r2, [r3, #32]
 8045ea4:	687b      	ldr	r3, [r7, #4]
 8045ea6:	685b      	ldr	r3, [r3, #4]
 8045ea8:	613b      	str	r3, [r7, #16]
 8045eaa:	687b      	ldr	r3, [r7, #4]
 8045eac:	699b      	ldr	r3, [r3, #24]
 8045eae:	60fb      	str	r3, [r7, #12]
 8045eb0:	68fb      	ldr	r3, [r7, #12]
 8045eb2:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8045eb6:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8045eba:	60fb      	str	r3, [r7, #12]
 8045ebc:	68fb      	ldr	r3, [r7, #12]
 8045ebe:	f023 0303 	bic.w	r3, r3, #3
 8045ec2:	60fb      	str	r3, [r7, #12]
 8045ec4:	683b      	ldr	r3, [r7, #0]
 8045ec6:	681b      	ldr	r3, [r3, #0]
 8045ec8:	68fa      	ldr	r2, [r7, #12]
 8045eca:	4313      	orrs	r3, r2
 8045ecc:	60fb      	str	r3, [r7, #12]
 8045ece:	697b      	ldr	r3, [r7, #20]
 8045ed0:	f023 0302 	bic.w	r3, r3, #2
 8045ed4:	617b      	str	r3, [r7, #20]
 8045ed6:	683b      	ldr	r3, [r7, #0]
 8045ed8:	689b      	ldr	r3, [r3, #8]
 8045eda:	697a      	ldr	r2, [r7, #20]
 8045edc:	4313      	orrs	r3, r2
 8045ede:	617b      	str	r3, [r7, #20]
 8045ee0:	687b      	ldr	r3, [r7, #4]
 8045ee2:	4a2c      	ldr	r2, [pc, #176]	@ (8045f94 <TIM_OC1_SetConfig+0x10c>)
 8045ee4:	4293      	cmp	r3, r2
 8045ee6:	d00f      	beq.n	8045f08 <TIM_OC1_SetConfig+0x80>
 8045ee8:	687b      	ldr	r3, [r7, #4]
 8045eea:	4a2b      	ldr	r2, [pc, #172]	@ (8045f98 <TIM_OC1_SetConfig+0x110>)
 8045eec:	4293      	cmp	r3, r2
 8045eee:	d00b      	beq.n	8045f08 <TIM_OC1_SetConfig+0x80>
 8045ef0:	687b      	ldr	r3, [r7, #4]
 8045ef2:	4a2a      	ldr	r2, [pc, #168]	@ (8045f9c <TIM_OC1_SetConfig+0x114>)
 8045ef4:	4293      	cmp	r3, r2
 8045ef6:	d007      	beq.n	8045f08 <TIM_OC1_SetConfig+0x80>
 8045ef8:	687b      	ldr	r3, [r7, #4]
 8045efa:	4a29      	ldr	r2, [pc, #164]	@ (8045fa0 <TIM_OC1_SetConfig+0x118>)
 8045efc:	4293      	cmp	r3, r2
 8045efe:	d003      	beq.n	8045f08 <TIM_OC1_SetConfig+0x80>
 8045f00:	687b      	ldr	r3, [r7, #4]
 8045f02:	4a28      	ldr	r2, [pc, #160]	@ (8045fa4 <TIM_OC1_SetConfig+0x11c>)
 8045f04:	4293      	cmp	r3, r2
 8045f06:	d10c      	bne.n	8045f22 <TIM_OC1_SetConfig+0x9a>
 8045f08:	697b      	ldr	r3, [r7, #20]
 8045f0a:	f023 0308 	bic.w	r3, r3, #8
 8045f0e:	617b      	str	r3, [r7, #20]
 8045f10:	683b      	ldr	r3, [r7, #0]
 8045f12:	68db      	ldr	r3, [r3, #12]
 8045f14:	697a      	ldr	r2, [r7, #20]
 8045f16:	4313      	orrs	r3, r2
 8045f18:	617b      	str	r3, [r7, #20]
 8045f1a:	697b      	ldr	r3, [r7, #20]
 8045f1c:	f023 0304 	bic.w	r3, r3, #4
 8045f20:	617b      	str	r3, [r7, #20]
 8045f22:	687b      	ldr	r3, [r7, #4]
 8045f24:	4a1b      	ldr	r2, [pc, #108]	@ (8045f94 <TIM_OC1_SetConfig+0x10c>)
 8045f26:	4293      	cmp	r3, r2
 8045f28:	d00f      	beq.n	8045f4a <TIM_OC1_SetConfig+0xc2>
 8045f2a:	687b      	ldr	r3, [r7, #4]
 8045f2c:	4a1a      	ldr	r2, [pc, #104]	@ (8045f98 <TIM_OC1_SetConfig+0x110>)
 8045f2e:	4293      	cmp	r3, r2
 8045f30:	d00b      	beq.n	8045f4a <TIM_OC1_SetConfig+0xc2>
 8045f32:	687b      	ldr	r3, [r7, #4]
 8045f34:	4a19      	ldr	r2, [pc, #100]	@ (8045f9c <TIM_OC1_SetConfig+0x114>)
 8045f36:	4293      	cmp	r3, r2
 8045f38:	d007      	beq.n	8045f4a <TIM_OC1_SetConfig+0xc2>
 8045f3a:	687b      	ldr	r3, [r7, #4]
 8045f3c:	4a18      	ldr	r2, [pc, #96]	@ (8045fa0 <TIM_OC1_SetConfig+0x118>)
 8045f3e:	4293      	cmp	r3, r2
 8045f40:	d003      	beq.n	8045f4a <TIM_OC1_SetConfig+0xc2>
 8045f42:	687b      	ldr	r3, [r7, #4]
 8045f44:	4a17      	ldr	r2, [pc, #92]	@ (8045fa4 <TIM_OC1_SetConfig+0x11c>)
 8045f46:	4293      	cmp	r3, r2
 8045f48:	d111      	bne.n	8045f6e <TIM_OC1_SetConfig+0xe6>
 8045f4a:	693b      	ldr	r3, [r7, #16]
 8045f4c:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8045f50:	613b      	str	r3, [r7, #16]
 8045f52:	693b      	ldr	r3, [r7, #16]
 8045f54:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 8045f58:	613b      	str	r3, [r7, #16]
 8045f5a:	683b      	ldr	r3, [r7, #0]
 8045f5c:	695b      	ldr	r3, [r3, #20]
 8045f5e:	693a      	ldr	r2, [r7, #16]
 8045f60:	4313      	orrs	r3, r2
 8045f62:	613b      	str	r3, [r7, #16]
 8045f64:	683b      	ldr	r3, [r7, #0]
 8045f66:	699b      	ldr	r3, [r3, #24]
 8045f68:	693a      	ldr	r2, [r7, #16]
 8045f6a:	4313      	orrs	r3, r2
 8045f6c:	613b      	str	r3, [r7, #16]
 8045f6e:	687b      	ldr	r3, [r7, #4]
 8045f70:	693a      	ldr	r2, [r7, #16]
 8045f72:	605a      	str	r2, [r3, #4]
 8045f74:	687b      	ldr	r3, [r7, #4]
 8045f76:	68fa      	ldr	r2, [r7, #12]
 8045f78:	619a      	str	r2, [r3, #24]
 8045f7a:	683b      	ldr	r3, [r7, #0]
 8045f7c:	685a      	ldr	r2, [r3, #4]
 8045f7e:	687b      	ldr	r3, [r7, #4]
 8045f80:	635a      	str	r2, [r3, #52]	@ 0x34
 8045f82:	687b      	ldr	r3, [r7, #4]
 8045f84:	697a      	ldr	r2, [r7, #20]
 8045f86:	621a      	str	r2, [r3, #32]
 8045f88:	bf00      	nop
 8045f8a:	371c      	adds	r7, #28
 8045f8c:	46bd      	mov	sp, r7
 8045f8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8045f92:	4770      	bx	lr
 8045f94:	40012c00 	.word	0x40012c00
 8045f98:	40013400 	.word	0x40013400
 8045f9c:	40014000 	.word	0x40014000
 8045fa0:	40014400 	.word	0x40014400
 8045fa4:	40014800 	.word	0x40014800

08045fa8 <TIM_OC2_SetConfig>:
 8045fa8:	b480      	push	{r7}
 8045faa:	b087      	sub	sp, #28
 8045fac:	af00      	add	r7, sp, #0
 8045fae:	6078      	str	r0, [r7, #4]
 8045fb0:	6039      	str	r1, [r7, #0]
 8045fb2:	687b      	ldr	r3, [r7, #4]
 8045fb4:	6a1b      	ldr	r3, [r3, #32]
 8045fb6:	617b      	str	r3, [r7, #20]
 8045fb8:	687b      	ldr	r3, [r7, #4]
 8045fba:	6a1b      	ldr	r3, [r3, #32]
 8045fbc:	f023 0210 	bic.w	r2, r3, #16
 8045fc0:	687b      	ldr	r3, [r7, #4]
 8045fc2:	621a      	str	r2, [r3, #32]
 8045fc4:	687b      	ldr	r3, [r7, #4]
 8045fc6:	685b      	ldr	r3, [r3, #4]
 8045fc8:	613b      	str	r3, [r7, #16]
 8045fca:	687b      	ldr	r3, [r7, #4]
 8045fcc:	699b      	ldr	r3, [r3, #24]
 8045fce:	60fb      	str	r3, [r7, #12]
 8045fd0:	68fb      	ldr	r3, [r7, #12]
 8045fd2:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8045fd6:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
 8045fda:	60fb      	str	r3, [r7, #12]
 8045fdc:	68fb      	ldr	r3, [r7, #12]
 8045fde:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8045fe2:	60fb      	str	r3, [r7, #12]
 8045fe4:	683b      	ldr	r3, [r7, #0]
 8045fe6:	681b      	ldr	r3, [r3, #0]
 8045fe8:	021b      	lsls	r3, r3, #8
 8045fea:	68fa      	ldr	r2, [r7, #12]
 8045fec:	4313      	orrs	r3, r2
 8045fee:	60fb      	str	r3, [r7, #12]
 8045ff0:	697b      	ldr	r3, [r7, #20]
 8045ff2:	f023 0320 	bic.w	r3, r3, #32
 8045ff6:	617b      	str	r3, [r7, #20]
 8045ff8:	683b      	ldr	r3, [r7, #0]
 8045ffa:	689b      	ldr	r3, [r3, #8]
 8045ffc:	011b      	lsls	r3, r3, #4
 8045ffe:	697a      	ldr	r2, [r7, #20]
 8046000:	4313      	orrs	r3, r2
 8046002:	617b      	str	r3, [r7, #20]
 8046004:	687b      	ldr	r3, [r7, #4]
 8046006:	4a28      	ldr	r2, [pc, #160]	@ (80460a8 <TIM_OC2_SetConfig+0x100>)
 8046008:	4293      	cmp	r3, r2
 804600a:	d003      	beq.n	8046014 <TIM_OC2_SetConfig+0x6c>
 804600c:	687b      	ldr	r3, [r7, #4]
 804600e:	4a27      	ldr	r2, [pc, #156]	@ (80460ac <TIM_OC2_SetConfig+0x104>)
 8046010:	4293      	cmp	r3, r2
 8046012:	d10d      	bne.n	8046030 <TIM_OC2_SetConfig+0x88>
 8046014:	697b      	ldr	r3, [r7, #20]
 8046016:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 804601a:	617b      	str	r3, [r7, #20]
 804601c:	683b      	ldr	r3, [r7, #0]
 804601e:	68db      	ldr	r3, [r3, #12]
 8046020:	011b      	lsls	r3, r3, #4
 8046022:	697a      	ldr	r2, [r7, #20]
 8046024:	4313      	orrs	r3, r2
 8046026:	617b      	str	r3, [r7, #20]
 8046028:	697b      	ldr	r3, [r7, #20]
 804602a:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 804602e:	617b      	str	r3, [r7, #20]
 8046030:	687b      	ldr	r3, [r7, #4]
 8046032:	4a1d      	ldr	r2, [pc, #116]	@ (80460a8 <TIM_OC2_SetConfig+0x100>)
 8046034:	4293      	cmp	r3, r2
 8046036:	d00f      	beq.n	8046058 <TIM_OC2_SetConfig+0xb0>
 8046038:	687b      	ldr	r3, [r7, #4]
 804603a:	4a1c      	ldr	r2, [pc, #112]	@ (80460ac <TIM_OC2_SetConfig+0x104>)
 804603c:	4293      	cmp	r3, r2
 804603e:	d00b      	beq.n	8046058 <TIM_OC2_SetConfig+0xb0>
 8046040:	687b      	ldr	r3, [r7, #4]
 8046042:	4a1b      	ldr	r2, [pc, #108]	@ (80460b0 <TIM_OC2_SetConfig+0x108>)
 8046044:	4293      	cmp	r3, r2
 8046046:	d007      	beq.n	8046058 <TIM_OC2_SetConfig+0xb0>
 8046048:	687b      	ldr	r3, [r7, #4]
 804604a:	4a1a      	ldr	r2, [pc, #104]	@ (80460b4 <TIM_OC2_SetConfig+0x10c>)
 804604c:	4293      	cmp	r3, r2
 804604e:	d003      	beq.n	8046058 <TIM_OC2_SetConfig+0xb0>
 8046050:	687b      	ldr	r3, [r7, #4]
 8046052:	4a19      	ldr	r2, [pc, #100]	@ (80460b8 <TIM_OC2_SetConfig+0x110>)
 8046054:	4293      	cmp	r3, r2
 8046056:	d113      	bne.n	8046080 <TIM_OC2_SetConfig+0xd8>
 8046058:	693b      	ldr	r3, [r7, #16]
 804605a:	f423 6380 	bic.w	r3, r3, #1024	@ 0x400
 804605e:	613b      	str	r3, [r7, #16]
 8046060:	693b      	ldr	r3, [r7, #16]
 8046062:	f423 6300 	bic.w	r3, r3, #2048	@ 0x800
 8046066:	613b      	str	r3, [r7, #16]
 8046068:	683b      	ldr	r3, [r7, #0]
 804606a:	695b      	ldr	r3, [r3, #20]
 804606c:	009b      	lsls	r3, r3, #2
 804606e:	693a      	ldr	r2, [r7, #16]
 8046070:	4313      	orrs	r3, r2
 8046072:	613b      	str	r3, [r7, #16]
 8046074:	683b      	ldr	r3, [r7, #0]
 8046076:	699b      	ldr	r3, [r3, #24]
 8046078:	009b      	lsls	r3, r3, #2
 804607a:	693a      	ldr	r2, [r7, #16]
 804607c:	4313      	orrs	r3, r2
 804607e:	613b      	str	r3, [r7, #16]
 8046080:	687b      	ldr	r3, [r7, #4]
 8046082:	693a      	ldr	r2, [r7, #16]
 8046084:	605a      	str	r2, [r3, #4]
 8046086:	687b      	ldr	r3, [r7, #4]
 8046088:	68fa      	ldr	r2, [r7, #12]
 804608a:	619a      	str	r2, [r3, #24]
 804608c:	683b      	ldr	r3, [r7, #0]
 804608e:	685a      	ldr	r2, [r3, #4]
 8046090:	687b      	ldr	r3, [r7, #4]
 8046092:	639a      	str	r2, [r3, #56]	@ 0x38
 8046094:	687b      	ldr	r3, [r7, #4]
 8046096:	697a      	ldr	r2, [r7, #20]
 8046098:	621a      	str	r2, [r3, #32]
 804609a:	bf00      	nop
 804609c:	371c      	adds	r7, #28
 804609e:	46bd      	mov	sp, r7
 80460a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80460a4:	4770      	bx	lr
 80460a6:	bf00      	nop
 80460a8:	40012c00 	.word	0x40012c00
 80460ac:	40013400 	.word	0x40013400
 80460b0:	40014000 	.word	0x40014000
 80460b4:	40014400 	.word	0x40014400
 80460b8:	40014800 	.word	0x40014800

080460bc <TIM_OC3_SetConfig>:
 80460bc:	b480      	push	{r7}
 80460be:	b087      	sub	sp, #28
 80460c0:	af00      	add	r7, sp, #0
 80460c2:	6078      	str	r0, [r7, #4]
 80460c4:	6039      	str	r1, [r7, #0]
 80460c6:	687b      	ldr	r3, [r7, #4]
 80460c8:	6a1b      	ldr	r3, [r3, #32]
 80460ca:	617b      	str	r3, [r7, #20]
 80460cc:	687b      	ldr	r3, [r7, #4]
 80460ce:	6a1b      	ldr	r3, [r3, #32]
 80460d0:	f423 7280 	bic.w	r2, r3, #256	@ 0x100
 80460d4:	687b      	ldr	r3, [r7, #4]
 80460d6:	621a      	str	r2, [r3, #32]
 80460d8:	687b      	ldr	r3, [r7, #4]
 80460da:	685b      	ldr	r3, [r3, #4]
 80460dc:	613b      	str	r3, [r7, #16]
 80460de:	687b      	ldr	r3, [r7, #4]
 80460e0:	69db      	ldr	r3, [r3, #28]
 80460e2:	60fb      	str	r3, [r7, #12]
 80460e4:	68fb      	ldr	r3, [r7, #12]
 80460e6:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80460ea:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80460ee:	60fb      	str	r3, [r7, #12]
 80460f0:	68fb      	ldr	r3, [r7, #12]
 80460f2:	f023 0303 	bic.w	r3, r3, #3
 80460f6:	60fb      	str	r3, [r7, #12]
 80460f8:	683b      	ldr	r3, [r7, #0]
 80460fa:	681b      	ldr	r3, [r3, #0]
 80460fc:	68fa      	ldr	r2, [r7, #12]
 80460fe:	4313      	orrs	r3, r2
 8046100:	60fb      	str	r3, [r7, #12]
 8046102:	697b      	ldr	r3, [r7, #20]
 8046104:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 8046108:	617b      	str	r3, [r7, #20]
 804610a:	683b      	ldr	r3, [r7, #0]
 804610c:	689b      	ldr	r3, [r3, #8]
 804610e:	021b      	lsls	r3, r3, #8
 8046110:	697a      	ldr	r2, [r7, #20]
 8046112:	4313      	orrs	r3, r2
 8046114:	617b      	str	r3, [r7, #20]
 8046116:	687b      	ldr	r3, [r7, #4]
 8046118:	4a27      	ldr	r2, [pc, #156]	@ (80461b8 <TIM_OC3_SetConfig+0xfc>)
 804611a:	4293      	cmp	r3, r2
 804611c:	d003      	beq.n	8046126 <TIM_OC3_SetConfig+0x6a>
 804611e:	687b      	ldr	r3, [r7, #4]
 8046120:	4a26      	ldr	r2, [pc, #152]	@ (80461bc <TIM_OC3_SetConfig+0x100>)
 8046122:	4293      	cmp	r3, r2
 8046124:	d10d      	bne.n	8046142 <TIM_OC3_SetConfig+0x86>
 8046126:	697b      	ldr	r3, [r7, #20]
 8046128:	f423 6300 	bic.w	r3, r3, #2048	@ 0x800
 804612c:	617b      	str	r3, [r7, #20]
 804612e:	683b      	ldr	r3, [r7, #0]
 8046130:	68db      	ldr	r3, [r3, #12]
 8046132:	021b      	lsls	r3, r3, #8
 8046134:	697a      	ldr	r2, [r7, #20]
 8046136:	4313      	orrs	r3, r2
 8046138:	617b      	str	r3, [r7, #20]
 804613a:	697b      	ldr	r3, [r7, #20]
 804613c:	f423 6380 	bic.w	r3, r3, #1024	@ 0x400
 8046140:	617b      	str	r3, [r7, #20]
 8046142:	687b      	ldr	r3, [r7, #4]
 8046144:	4a1c      	ldr	r2, [pc, #112]	@ (80461b8 <TIM_OC3_SetConfig+0xfc>)
 8046146:	4293      	cmp	r3, r2
 8046148:	d00f      	beq.n	804616a <TIM_OC3_SetConfig+0xae>
 804614a:	687b      	ldr	r3, [r7, #4]
 804614c:	4a1b      	ldr	r2, [pc, #108]	@ (80461bc <TIM_OC3_SetConfig+0x100>)
 804614e:	4293      	cmp	r3, r2
 8046150:	d00b      	beq.n	804616a <TIM_OC3_SetConfig+0xae>
 8046152:	687b      	ldr	r3, [r7, #4]
 8046154:	4a1a      	ldr	r2, [pc, #104]	@ (80461c0 <TIM_OC3_SetConfig+0x104>)
 8046156:	4293      	cmp	r3, r2
 8046158:	d007      	beq.n	804616a <TIM_OC3_SetConfig+0xae>
 804615a:	687b      	ldr	r3, [r7, #4]
 804615c:	4a19      	ldr	r2, [pc, #100]	@ (80461c4 <TIM_OC3_SetConfig+0x108>)
 804615e:	4293      	cmp	r3, r2
 8046160:	d003      	beq.n	804616a <TIM_OC3_SetConfig+0xae>
 8046162:	687b      	ldr	r3, [r7, #4]
 8046164:	4a18      	ldr	r2, [pc, #96]	@ (80461c8 <TIM_OC3_SetConfig+0x10c>)
 8046166:	4293      	cmp	r3, r2
 8046168:	d113      	bne.n	8046192 <TIM_OC3_SetConfig+0xd6>
 804616a:	693b      	ldr	r3, [r7, #16]
 804616c:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 8046170:	613b      	str	r3, [r7, #16]
 8046172:	693b      	ldr	r3, [r7, #16]
 8046174:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
 8046178:	613b      	str	r3, [r7, #16]
 804617a:	683b      	ldr	r3, [r7, #0]
 804617c:	695b      	ldr	r3, [r3, #20]
 804617e:	011b      	lsls	r3, r3, #4
 8046180:	693a      	ldr	r2, [r7, #16]
 8046182:	4313      	orrs	r3, r2
 8046184:	613b      	str	r3, [r7, #16]
 8046186:	683b      	ldr	r3, [r7, #0]
 8046188:	699b      	ldr	r3, [r3, #24]
 804618a:	011b      	lsls	r3, r3, #4
 804618c:	693a      	ldr	r2, [r7, #16]
 804618e:	4313      	orrs	r3, r2
 8046190:	613b      	str	r3, [r7, #16]
 8046192:	687b      	ldr	r3, [r7, #4]
 8046194:	693a      	ldr	r2, [r7, #16]
 8046196:	605a      	str	r2, [r3, #4]
 8046198:	687b      	ldr	r3, [r7, #4]
 804619a:	68fa      	ldr	r2, [r7, #12]
 804619c:	61da      	str	r2, [r3, #28]
 804619e:	683b      	ldr	r3, [r7, #0]
 80461a0:	685a      	ldr	r2, [r3, #4]
 80461a2:	687b      	ldr	r3, [r7, #4]
 80461a4:	63da      	str	r2, [r3, #60]	@ 0x3c
 80461a6:	687b      	ldr	r3, [r7, #4]
 80461a8:	697a      	ldr	r2, [r7, #20]
 80461aa:	621a      	str	r2, [r3, #32]
 80461ac:	bf00      	nop
 80461ae:	371c      	adds	r7, #28
 80461b0:	46bd      	mov	sp, r7
 80461b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80461b6:	4770      	bx	lr
 80461b8:	40012c00 	.word	0x40012c00
 80461bc:	40013400 	.word	0x40013400
 80461c0:	40014000 	.word	0x40014000
 80461c4:	40014400 	.word	0x40014400
 80461c8:	40014800 	.word	0x40014800

080461cc <TIM_OC4_SetConfig>:
 80461cc:	b480      	push	{r7}
 80461ce:	b087      	sub	sp, #28
 80461d0:	af00      	add	r7, sp, #0
 80461d2:	6078      	str	r0, [r7, #4]
 80461d4:	6039      	str	r1, [r7, #0]
 80461d6:	687b      	ldr	r3, [r7, #4]
 80461d8:	6a1b      	ldr	r3, [r3, #32]
 80461da:	613b      	str	r3, [r7, #16]
 80461dc:	687b      	ldr	r3, [r7, #4]
 80461de:	6a1b      	ldr	r3, [r3, #32]
 80461e0:	f423 5280 	bic.w	r2, r3, #4096	@ 0x1000
 80461e4:	687b      	ldr	r3, [r7, #4]
 80461e6:	621a      	str	r2, [r3, #32]
 80461e8:	687b      	ldr	r3, [r7, #4]
 80461ea:	685b      	ldr	r3, [r3, #4]
 80461ec:	617b      	str	r3, [r7, #20]
 80461ee:	687b      	ldr	r3, [r7, #4]
 80461f0:	69db      	ldr	r3, [r3, #28]
 80461f2:	60fb      	str	r3, [r7, #12]
 80461f4:	68fb      	ldr	r3, [r7, #12]
 80461f6:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80461fa:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
 80461fe:	60fb      	str	r3, [r7, #12]
 8046200:	68fb      	ldr	r3, [r7, #12]
 8046202:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8046206:	60fb      	str	r3, [r7, #12]
 8046208:	683b      	ldr	r3, [r7, #0]
 804620a:	681b      	ldr	r3, [r3, #0]
 804620c:	021b      	lsls	r3, r3, #8
 804620e:	68fa      	ldr	r2, [r7, #12]
 8046210:	4313      	orrs	r3, r2
 8046212:	60fb      	str	r3, [r7, #12]
 8046214:	693b      	ldr	r3, [r7, #16]
 8046216:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
 804621a:	613b      	str	r3, [r7, #16]
 804621c:	683b      	ldr	r3, [r7, #0]
 804621e:	689b      	ldr	r3, [r3, #8]
 8046220:	031b      	lsls	r3, r3, #12
 8046222:	693a      	ldr	r2, [r7, #16]
 8046224:	4313      	orrs	r3, r2
 8046226:	613b      	str	r3, [r7, #16]
 8046228:	687b      	ldr	r3, [r7, #4]
 804622a:	4a18      	ldr	r2, [pc, #96]	@ (804628c <TIM_OC4_SetConfig+0xc0>)
 804622c:	4293      	cmp	r3, r2
 804622e:	d00f      	beq.n	8046250 <TIM_OC4_SetConfig+0x84>
 8046230:	687b      	ldr	r3, [r7, #4]
 8046232:	4a17      	ldr	r2, [pc, #92]	@ (8046290 <TIM_OC4_SetConfig+0xc4>)
 8046234:	4293      	cmp	r3, r2
 8046236:	d00b      	beq.n	8046250 <TIM_OC4_SetConfig+0x84>
 8046238:	687b      	ldr	r3, [r7, #4]
 804623a:	4a16      	ldr	r2, [pc, #88]	@ (8046294 <TIM_OC4_SetConfig+0xc8>)
 804623c:	4293      	cmp	r3, r2
 804623e:	d007      	beq.n	8046250 <TIM_OC4_SetConfig+0x84>
 8046240:	687b      	ldr	r3, [r7, #4]
 8046242:	4a15      	ldr	r2, [pc, #84]	@ (8046298 <TIM_OC4_SetConfig+0xcc>)
 8046244:	4293      	cmp	r3, r2
 8046246:	d003      	beq.n	8046250 <TIM_OC4_SetConfig+0x84>
 8046248:	687b      	ldr	r3, [r7, #4]
 804624a:	4a14      	ldr	r2, [pc, #80]	@ (804629c <TIM_OC4_SetConfig+0xd0>)
 804624c:	4293      	cmp	r3, r2
 804624e:	d109      	bne.n	8046264 <TIM_OC4_SetConfig+0x98>
 8046250:	697b      	ldr	r3, [r7, #20]
 8046252:	f423 4380 	bic.w	r3, r3, #16384	@ 0x4000
 8046256:	617b      	str	r3, [r7, #20]
 8046258:	683b      	ldr	r3, [r7, #0]
 804625a:	695b      	ldr	r3, [r3, #20]
 804625c:	019b      	lsls	r3, r3, #6
 804625e:	697a      	ldr	r2, [r7, #20]
 8046260:	4313      	orrs	r3, r2
 8046262:	617b      	str	r3, [r7, #20]
 8046264:	687b      	ldr	r3, [r7, #4]
 8046266:	697a      	ldr	r2, [r7, #20]
 8046268:	605a      	str	r2, [r3, #4]
 804626a:	687b      	ldr	r3, [r7, #4]
 804626c:	68fa      	ldr	r2, [r7, #12]
 804626e:	61da      	str	r2, [r3, #28]
 8046270:	683b      	ldr	r3, [r7, #0]
 8046272:	685a      	ldr	r2, [r3, #4]
 8046274:	687b      	ldr	r3, [r7, #4]
 8046276:	641a      	str	r2, [r3, #64]	@ 0x40
 8046278:	687b      	ldr	r3, [r7, #4]
 804627a:	693a      	ldr	r2, [r7, #16]
 804627c:	621a      	str	r2, [r3, #32]
 804627e:	bf00      	nop
 8046280:	371c      	adds	r7, #28
 8046282:	46bd      	mov	sp, r7
 8046284:	f85d 7b04 	ldr.w	r7, [sp], #4
 8046288:	4770      	bx	lr
 804628a:	bf00      	nop
 804628c:	40012c00 	.word	0x40012c00
 8046290:	40013400 	.word	0x40013400
 8046294:	40014000 	.word	0x40014000
 8046298:	40014400 	.word	0x40014400
 804629c:	40014800 	.word	0x40014800

080462a0 <TIM_OC5_SetConfig>:
 80462a0:	b480      	push	{r7}
 80462a2:	b087      	sub	sp, #28
 80462a4:	af00      	add	r7, sp, #0
 80462a6:	6078      	str	r0, [r7, #4]
 80462a8:	6039      	str	r1, [r7, #0]
 80462aa:	687b      	ldr	r3, [r7, #4]
 80462ac:	6a1b      	ldr	r3, [r3, #32]
 80462ae:	613b      	str	r3, [r7, #16]
 80462b0:	687b      	ldr	r3, [r7, #4]
 80462b2:	6a1b      	ldr	r3, [r3, #32]
 80462b4:	f423 3280 	bic.w	r2, r3, #65536	@ 0x10000
 80462b8:	687b      	ldr	r3, [r7, #4]
 80462ba:	621a      	str	r2, [r3, #32]
 80462bc:	687b      	ldr	r3, [r7, #4]
 80462be:	685b      	ldr	r3, [r3, #4]
 80462c0:	617b      	str	r3, [r7, #20]
 80462c2:	687b      	ldr	r3, [r7, #4]
 80462c4:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80462c6:	60fb      	str	r3, [r7, #12]
 80462c8:	68fb      	ldr	r3, [r7, #12]
 80462ca:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80462ce:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80462d2:	60fb      	str	r3, [r7, #12]
 80462d4:	683b      	ldr	r3, [r7, #0]
 80462d6:	681b      	ldr	r3, [r3, #0]
 80462d8:	68fa      	ldr	r2, [r7, #12]
 80462da:	4313      	orrs	r3, r2
 80462dc:	60fb      	str	r3, [r7, #12]
 80462de:	693b      	ldr	r3, [r7, #16]
 80462e0:	f423 3300 	bic.w	r3, r3, #131072	@ 0x20000
 80462e4:	613b      	str	r3, [r7, #16]
 80462e6:	683b      	ldr	r3, [r7, #0]
 80462e8:	689b      	ldr	r3, [r3, #8]
 80462ea:	041b      	lsls	r3, r3, #16
 80462ec:	693a      	ldr	r2, [r7, #16]
 80462ee:	4313      	orrs	r3, r2
 80462f0:	613b      	str	r3, [r7, #16]
 80462f2:	687b      	ldr	r3, [r7, #4]
 80462f4:	4a17      	ldr	r2, [pc, #92]	@ (8046354 <TIM_OC5_SetConfig+0xb4>)
 80462f6:	4293      	cmp	r3, r2
 80462f8:	d00f      	beq.n	804631a <TIM_OC5_SetConfig+0x7a>
 80462fa:	687b      	ldr	r3, [r7, #4]
 80462fc:	4a16      	ldr	r2, [pc, #88]	@ (8046358 <TIM_OC5_SetConfig+0xb8>)
 80462fe:	4293      	cmp	r3, r2
 8046300:	d00b      	beq.n	804631a <TIM_OC5_SetConfig+0x7a>
 8046302:	687b      	ldr	r3, [r7, #4]
 8046304:	4a15      	ldr	r2, [pc, #84]	@ (804635c <TIM_OC5_SetConfig+0xbc>)
 8046306:	4293      	cmp	r3, r2
 8046308:	d007      	beq.n	804631a <TIM_OC5_SetConfig+0x7a>
 804630a:	687b      	ldr	r3, [r7, #4]
 804630c:	4a14      	ldr	r2, [pc, #80]	@ (8046360 <TIM_OC5_SetConfig+0xc0>)
 804630e:	4293      	cmp	r3, r2
 8046310:	d003      	beq.n	804631a <TIM_OC5_SetConfig+0x7a>
 8046312:	687b      	ldr	r3, [r7, #4]
 8046314:	4a13      	ldr	r2, [pc, #76]	@ (8046364 <TIM_OC5_SetConfig+0xc4>)
 8046316:	4293      	cmp	r3, r2
 8046318:	d109      	bne.n	804632e <TIM_OC5_SetConfig+0x8e>
 804631a:	697b      	ldr	r3, [r7, #20]
 804631c:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8046320:	617b      	str	r3, [r7, #20]
 8046322:	683b      	ldr	r3, [r7, #0]
 8046324:	695b      	ldr	r3, [r3, #20]
 8046326:	021b      	lsls	r3, r3, #8
 8046328:	697a      	ldr	r2, [r7, #20]
 804632a:	4313      	orrs	r3, r2
 804632c:	617b      	str	r3, [r7, #20]
 804632e:	687b      	ldr	r3, [r7, #4]
 8046330:	697a      	ldr	r2, [r7, #20]
 8046332:	605a      	str	r2, [r3, #4]
 8046334:	687b      	ldr	r3, [r7, #4]
 8046336:	68fa      	ldr	r2, [r7, #12]
 8046338:	655a      	str	r2, [r3, #84]	@ 0x54
 804633a:	683b      	ldr	r3, [r7, #0]
 804633c:	685a      	ldr	r2, [r3, #4]
 804633e:	687b      	ldr	r3, [r7, #4]
 8046340:	659a      	str	r2, [r3, #88]	@ 0x58
 8046342:	687b      	ldr	r3, [r7, #4]
 8046344:	693a      	ldr	r2, [r7, #16]
 8046346:	621a      	str	r2, [r3, #32]
 8046348:	bf00      	nop
 804634a:	371c      	adds	r7, #28
 804634c:	46bd      	mov	sp, r7
 804634e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8046352:	4770      	bx	lr
 8046354:	40012c00 	.word	0x40012c00
 8046358:	40013400 	.word	0x40013400
 804635c:	40014000 	.word	0x40014000
 8046360:	40014400 	.word	0x40014400
 8046364:	40014800 	.word	0x40014800

08046368 <TIM_OC6_SetConfig>:
 8046368:	b480      	push	{r7}
 804636a:	b087      	sub	sp, #28
 804636c:	af00      	add	r7, sp, #0
 804636e:	6078      	str	r0, [r7, #4]
 8046370:	6039      	str	r1, [r7, #0]
 8046372:	687b      	ldr	r3, [r7, #4]
 8046374:	6a1b      	ldr	r3, [r3, #32]
 8046376:	613b      	str	r3, [r7, #16]
 8046378:	687b      	ldr	r3, [r7, #4]
 804637a:	6a1b      	ldr	r3, [r3, #32]
 804637c:	f423 1280 	bic.w	r2, r3, #1048576	@ 0x100000
 8046380:	687b      	ldr	r3, [r7, #4]
 8046382:	621a      	str	r2, [r3, #32]
 8046384:	687b      	ldr	r3, [r7, #4]
 8046386:	685b      	ldr	r3, [r3, #4]
 8046388:	617b      	str	r3, [r7, #20]
 804638a:	687b      	ldr	r3, [r7, #4]
 804638c:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 804638e:	60fb      	str	r3, [r7, #12]
 8046390:	68fb      	ldr	r3, [r7, #12]
 8046392:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8046396:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
 804639a:	60fb      	str	r3, [r7, #12]
 804639c:	683b      	ldr	r3, [r7, #0]
 804639e:	681b      	ldr	r3, [r3, #0]
 80463a0:	021b      	lsls	r3, r3, #8
 80463a2:	68fa      	ldr	r2, [r7, #12]
 80463a4:	4313      	orrs	r3, r2
 80463a6:	60fb      	str	r3, [r7, #12]
 80463a8:	693b      	ldr	r3, [r7, #16]
 80463aa:	f423 1300 	bic.w	r3, r3, #2097152	@ 0x200000
 80463ae:	613b      	str	r3, [r7, #16]
 80463b0:	683b      	ldr	r3, [r7, #0]
 80463b2:	689b      	ldr	r3, [r3, #8]
 80463b4:	051b      	lsls	r3, r3, #20
 80463b6:	693a      	ldr	r2, [r7, #16]
 80463b8:	4313      	orrs	r3, r2
 80463ba:	613b      	str	r3, [r7, #16]
 80463bc:	687b      	ldr	r3, [r7, #4]
 80463be:	4a18      	ldr	r2, [pc, #96]	@ (8046420 <TIM_OC6_SetConfig+0xb8>)
 80463c0:	4293      	cmp	r3, r2
 80463c2:	d00f      	beq.n	80463e4 <TIM_OC6_SetConfig+0x7c>
 80463c4:	687b      	ldr	r3, [r7, #4]
 80463c6:	4a17      	ldr	r2, [pc, #92]	@ (8046424 <TIM_OC6_SetConfig+0xbc>)
 80463c8:	4293      	cmp	r3, r2
 80463ca:	d00b      	beq.n	80463e4 <TIM_OC6_SetConfig+0x7c>
 80463cc:	687b      	ldr	r3, [r7, #4]
 80463ce:	4a16      	ldr	r2, [pc, #88]	@ (8046428 <TIM_OC6_SetConfig+0xc0>)
 80463d0:	4293      	cmp	r3, r2
 80463d2:	d007      	beq.n	80463e4 <TIM_OC6_SetConfig+0x7c>
 80463d4:	687b      	ldr	r3, [r7, #4]
 80463d6:	4a15      	ldr	r2, [pc, #84]	@ (804642c <TIM_OC6_SetConfig+0xc4>)
 80463d8:	4293      	cmp	r3, r2
 80463da:	d003      	beq.n	80463e4 <TIM_OC6_SetConfig+0x7c>
 80463dc:	687b      	ldr	r3, [r7, #4]
 80463de:	4a14      	ldr	r2, [pc, #80]	@ (8046430 <TIM_OC6_SetConfig+0xc8>)
 80463e0:	4293      	cmp	r3, r2
 80463e2:	d109      	bne.n	80463f8 <TIM_OC6_SetConfig+0x90>
 80463e4:	697b      	ldr	r3, [r7, #20]
 80463e6:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 80463ea:	617b      	str	r3, [r7, #20]
 80463ec:	683b      	ldr	r3, [r7, #0]
 80463ee:	695b      	ldr	r3, [r3, #20]
 80463f0:	029b      	lsls	r3, r3, #10
 80463f2:	697a      	ldr	r2, [r7, #20]
 80463f4:	4313      	orrs	r3, r2
 80463f6:	617b      	str	r3, [r7, #20]
 80463f8:	687b      	ldr	r3, [r7, #4]
 80463fa:	697a      	ldr	r2, [r7, #20]
 80463fc:	605a      	str	r2, [r3, #4]
 80463fe:	687b      	ldr	r3, [r7, #4]
 8046400:	68fa      	ldr	r2, [r7, #12]
 8046402:	655a      	str	r2, [r3, #84]	@ 0x54
 8046404:	683b      	ldr	r3, [r7, #0]
 8046406:	685a      	ldr	r2, [r3, #4]
 8046408:	687b      	ldr	r3, [r7, #4]
 804640a:	65da      	str	r2, [r3, #92]	@ 0x5c
 804640c:	687b      	ldr	r3, [r7, #4]
 804640e:	693a      	ldr	r2, [r7, #16]
 8046410:	621a      	str	r2, [r3, #32]
 8046412:	bf00      	nop
 8046414:	371c      	adds	r7, #28
 8046416:	46bd      	mov	sp, r7
 8046418:	f85d 7b04 	ldr.w	r7, [sp], #4
 804641c:	4770      	bx	lr
 804641e:	bf00      	nop
 8046420:	40012c00 	.word	0x40012c00
 8046424:	40013400 	.word	0x40013400
 8046428:	40014000 	.word	0x40014000
 804642c:	40014400 	.word	0x40014400
 8046430:	40014800 	.word	0x40014800

08046434 <TIM_SlaveTimer_SetConfig>:
 8046434:	b580      	push	{r7, lr}
 8046436:	b086      	sub	sp, #24
 8046438:	af00      	add	r7, sp, #0
 804643a:	6078      	str	r0, [r7, #4]
 804643c:	6039      	str	r1, [r7, #0]
 804643e:	2300      	movs	r3, #0
 8046440:	75fb      	strb	r3, [r7, #23]
 8046442:	687b      	ldr	r3, [r7, #4]
 8046444:	681b      	ldr	r3, [r3, #0]
 8046446:	689b      	ldr	r3, [r3, #8]
 8046448:	613b      	str	r3, [r7, #16]
 804644a:	693b      	ldr	r3, [r7, #16]
 804644c:	f423 1340 	bic.w	r3, r3, #3145728	@ 0x300000
 8046450:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8046454:	613b      	str	r3, [r7, #16]
 8046456:	683b      	ldr	r3, [r7, #0]
 8046458:	685b      	ldr	r3, [r3, #4]
 804645a:	693a      	ldr	r2, [r7, #16]
 804645c:	4313      	orrs	r3, r2
 804645e:	613b      	str	r3, [r7, #16]
 8046460:	693b      	ldr	r3, [r7, #16]
 8046462:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8046466:	f023 0307 	bic.w	r3, r3, #7
 804646a:	613b      	str	r3, [r7, #16]
 804646c:	683b      	ldr	r3, [r7, #0]
 804646e:	681b      	ldr	r3, [r3, #0]
 8046470:	693a      	ldr	r2, [r7, #16]
 8046472:	4313      	orrs	r3, r2
 8046474:	613b      	str	r3, [r7, #16]
 8046476:	687b      	ldr	r3, [r7, #4]
 8046478:	681b      	ldr	r3, [r3, #0]
 804647a:	693a      	ldr	r2, [r7, #16]
 804647c:	609a      	str	r2, [r3, #8]
 804647e:	683b      	ldr	r3, [r7, #0]
 8046480:	685b      	ldr	r3, [r3, #4]
 8046482:	2b70      	cmp	r3, #112	@ 0x70
 8046484:	d01a      	beq.n	80464bc <TIM_SlaveTimer_SetConfig+0x88>
 8046486:	2b70      	cmp	r3, #112	@ 0x70
 8046488:	d860      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 804648a:	2b60      	cmp	r3, #96	@ 0x60
 804648c:	d054      	beq.n	8046538 <TIM_SlaveTimer_SetConfig+0x104>
 804648e:	2b60      	cmp	r3, #96	@ 0x60
 8046490:	d85c      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 8046492:	2b50      	cmp	r3, #80	@ 0x50
 8046494:	d046      	beq.n	8046524 <TIM_SlaveTimer_SetConfig+0xf0>
 8046496:	2b50      	cmp	r3, #80	@ 0x50
 8046498:	d858      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 804649a:	2b40      	cmp	r3, #64	@ 0x40
 804649c:	d019      	beq.n	80464d2 <TIM_SlaveTimer_SetConfig+0x9e>
 804649e:	2b40      	cmp	r3, #64	@ 0x40
 80464a0:	d854      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 80464a2:	2b30      	cmp	r3, #48	@ 0x30
 80464a4:	d055      	beq.n	8046552 <TIM_SlaveTimer_SetConfig+0x11e>
 80464a6:	2b30      	cmp	r3, #48	@ 0x30
 80464a8:	d850      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 80464aa:	2b20      	cmp	r3, #32
 80464ac:	d051      	beq.n	8046552 <TIM_SlaveTimer_SetConfig+0x11e>
 80464ae:	2b20      	cmp	r3, #32
 80464b0:	d84c      	bhi.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 80464b2:	2b00      	cmp	r3, #0
 80464b4:	d04d      	beq.n	8046552 <TIM_SlaveTimer_SetConfig+0x11e>
 80464b6:	2b10      	cmp	r3, #16
 80464b8:	d04b      	beq.n	8046552 <TIM_SlaveTimer_SetConfig+0x11e>
 80464ba:	e047      	b.n	804654c <TIM_SlaveTimer_SetConfig+0x118>
 80464bc:	687b      	ldr	r3, [r7, #4]
 80464be:	6818      	ldr	r0, [r3, #0]
 80464c0:	683b      	ldr	r3, [r7, #0]
 80464c2:	68d9      	ldr	r1, [r3, #12]
 80464c4:	683b      	ldr	r3, [r7, #0]
 80464c6:	689a      	ldr	r2, [r3, #8]
 80464c8:	683b      	ldr	r3, [r7, #0]
 80464ca:	691b      	ldr	r3, [r3, #16]
 80464cc:	f000 f8c3 	bl	8046656 <TIM_ETR_SetConfig>
 80464d0:	e040      	b.n	8046554 <TIM_SlaveTimer_SetConfig+0x120>
 80464d2:	683b      	ldr	r3, [r7, #0]
 80464d4:	681b      	ldr	r3, [r3, #0]
 80464d6:	2b05      	cmp	r3, #5
 80464d8:	d101      	bne.n	80464de <TIM_SlaveTimer_SetConfig+0xaa>
 80464da:	2301      	movs	r3, #1
 80464dc:	e03b      	b.n	8046556 <TIM_SlaveTimer_SetConfig+0x122>
 80464de:	687b      	ldr	r3, [r7, #4]
 80464e0:	681b      	ldr	r3, [r3, #0]
 80464e2:	6a1b      	ldr	r3, [r3, #32]
 80464e4:	60fb      	str	r3, [r7, #12]
 80464e6:	687b      	ldr	r3, [r7, #4]
 80464e8:	681b      	ldr	r3, [r3, #0]
 80464ea:	6a1a      	ldr	r2, [r3, #32]
 80464ec:	687b      	ldr	r3, [r7, #4]
 80464ee:	681b      	ldr	r3, [r3, #0]
 80464f0:	f022 0201 	bic.w	r2, r2, #1
 80464f4:	621a      	str	r2, [r3, #32]
 80464f6:	687b      	ldr	r3, [r7, #4]
 80464f8:	681b      	ldr	r3, [r3, #0]
 80464fa:	699b      	ldr	r3, [r3, #24]
 80464fc:	60bb      	str	r3, [r7, #8]
 80464fe:	68bb      	ldr	r3, [r7, #8]
 8046500:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8046504:	60bb      	str	r3, [r7, #8]
 8046506:	683b      	ldr	r3, [r7, #0]
 8046508:	691b      	ldr	r3, [r3, #16]
 804650a:	011b      	lsls	r3, r3, #4
 804650c:	68ba      	ldr	r2, [r7, #8]
 804650e:	4313      	orrs	r3, r2
 8046510:	60bb      	str	r3, [r7, #8]
 8046512:	687b      	ldr	r3, [r7, #4]
 8046514:	681b      	ldr	r3, [r3, #0]
 8046516:	68ba      	ldr	r2, [r7, #8]
 8046518:	619a      	str	r2, [r3, #24]
 804651a:	687b      	ldr	r3, [r7, #4]
 804651c:	681b      	ldr	r3, [r3, #0]
 804651e:	68fa      	ldr	r2, [r7, #12]
 8046520:	621a      	str	r2, [r3, #32]
 8046522:	e017      	b.n	8046554 <TIM_SlaveTimer_SetConfig+0x120>
 8046524:	687b      	ldr	r3, [r7, #4]
 8046526:	6818      	ldr	r0, [r3, #0]
 8046528:	683b      	ldr	r3, [r7, #0]
 804652a:	6899      	ldr	r1, [r3, #8]
 804652c:	683b      	ldr	r3, [r7, #0]
 804652e:	691b      	ldr	r3, [r3, #16]
 8046530:	461a      	mov	r2, r3
 8046532:	f000 f814 	bl	804655e <TIM_TI1_ConfigInputStage>
 8046536:	e00d      	b.n	8046554 <TIM_SlaveTimer_SetConfig+0x120>
 8046538:	687b      	ldr	r3, [r7, #4]
 804653a:	6818      	ldr	r0, [r3, #0]
 804653c:	683b      	ldr	r3, [r7, #0]
 804653e:	6899      	ldr	r1, [r3, #8]
 8046540:	683b      	ldr	r3, [r7, #0]
 8046542:	691b      	ldr	r3, [r3, #16]
 8046544:	461a      	mov	r2, r3
 8046546:	f000 f839 	bl	80465bc <TIM_TI2_ConfigInputStage>
 804654a:	e003      	b.n	8046554 <TIM_SlaveTimer_SetConfig+0x120>
 804654c:	2301      	movs	r3, #1
 804654e:	75fb      	strb	r3, [r7, #23]
 8046550:	e000      	b.n	8046554 <TIM_SlaveTimer_SetConfig+0x120>
 8046552:	bf00      	nop
 8046554:	7dfb      	ldrb	r3, [r7, #23]
 8046556:	4618      	mov	r0, r3
 8046558:	3718      	adds	r7, #24
 804655a:	46bd      	mov	sp, r7
 804655c:	bd80      	pop	{r7, pc}

0804655e <TIM_TI1_ConfigInputStage>:
 804655e:	b480      	push	{r7}
 8046560:	b087      	sub	sp, #28
 8046562:	af00      	add	r7, sp, #0
 8046564:	60f8      	str	r0, [r7, #12]
 8046566:	60b9      	str	r1, [r7, #8]
 8046568:	607a      	str	r2, [r7, #4]
 804656a:	68fb      	ldr	r3, [r7, #12]
 804656c:	6a1b      	ldr	r3, [r3, #32]
 804656e:	617b      	str	r3, [r7, #20]
 8046570:	68fb      	ldr	r3, [r7, #12]
 8046572:	6a1b      	ldr	r3, [r3, #32]
 8046574:	f023 0201 	bic.w	r2, r3, #1
 8046578:	68fb      	ldr	r3, [r7, #12]
 804657a:	621a      	str	r2, [r3, #32]
 804657c:	68fb      	ldr	r3, [r7, #12]
 804657e:	699b      	ldr	r3, [r3, #24]
 8046580:	613b      	str	r3, [r7, #16]
 8046582:	693b      	ldr	r3, [r7, #16]
 8046584:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8046588:	613b      	str	r3, [r7, #16]
 804658a:	687b      	ldr	r3, [r7, #4]
 804658c:	011b      	lsls	r3, r3, #4
 804658e:	693a      	ldr	r2, [r7, #16]
 8046590:	4313      	orrs	r3, r2
 8046592:	613b      	str	r3, [r7, #16]
 8046594:	697b      	ldr	r3, [r7, #20]
 8046596:	f023 030a 	bic.w	r3, r3, #10
 804659a:	617b      	str	r3, [r7, #20]
 804659c:	697a      	ldr	r2, [r7, #20]
 804659e:	68bb      	ldr	r3, [r7, #8]
 80465a0:	4313      	orrs	r3, r2
 80465a2:	617b      	str	r3, [r7, #20]
 80465a4:	68fb      	ldr	r3, [r7, #12]
 80465a6:	693a      	ldr	r2, [r7, #16]
 80465a8:	619a      	str	r2, [r3, #24]
 80465aa:	68fb      	ldr	r3, [r7, #12]
 80465ac:	697a      	ldr	r2, [r7, #20]
 80465ae:	621a      	str	r2, [r3, #32]
 80465b0:	bf00      	nop
 80465b2:	371c      	adds	r7, #28
 80465b4:	46bd      	mov	sp, r7
 80465b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80465ba:	4770      	bx	lr

080465bc <TIM_TI2_ConfigInputStage>:
 80465bc:	b480      	push	{r7}
 80465be:	b087      	sub	sp, #28
 80465c0:	af00      	add	r7, sp, #0
 80465c2:	60f8      	str	r0, [r7, #12]
 80465c4:	60b9      	str	r1, [r7, #8]
 80465c6:	607a      	str	r2, [r7, #4]
 80465c8:	68fb      	ldr	r3, [r7, #12]
 80465ca:	6a1b      	ldr	r3, [r3, #32]
 80465cc:	617b      	str	r3, [r7, #20]
 80465ce:	68fb      	ldr	r3, [r7, #12]
 80465d0:	6a1b      	ldr	r3, [r3, #32]
 80465d2:	f023 0210 	bic.w	r2, r3, #16
 80465d6:	68fb      	ldr	r3, [r7, #12]
 80465d8:	621a      	str	r2, [r3, #32]
 80465da:	68fb      	ldr	r3, [r7, #12]
 80465dc:	699b      	ldr	r3, [r3, #24]
 80465de:	613b      	str	r3, [r7, #16]
 80465e0:	693b      	ldr	r3, [r7, #16]
 80465e2:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 80465e6:	613b      	str	r3, [r7, #16]
 80465e8:	687b      	ldr	r3, [r7, #4]
 80465ea:	031b      	lsls	r3, r3, #12
 80465ec:	693a      	ldr	r2, [r7, #16]
 80465ee:	4313      	orrs	r3, r2
 80465f0:	613b      	str	r3, [r7, #16]
 80465f2:	697b      	ldr	r3, [r7, #20]
 80465f4:	f023 03a0 	bic.w	r3, r3, #160	@ 0xa0
 80465f8:	617b      	str	r3, [r7, #20]
 80465fa:	68bb      	ldr	r3, [r7, #8]
 80465fc:	011b      	lsls	r3, r3, #4
 80465fe:	697a      	ldr	r2, [r7, #20]
 8046600:	4313      	orrs	r3, r2
 8046602:	617b      	str	r3, [r7, #20]
 8046604:	68fb      	ldr	r3, [r7, #12]
 8046606:	693a      	ldr	r2, [r7, #16]
 8046608:	619a      	str	r2, [r3, #24]
 804660a:	68fb      	ldr	r3, [r7, #12]
 804660c:	697a      	ldr	r2, [r7, #20]
 804660e:	621a      	str	r2, [r3, #32]
 8046610:	bf00      	nop
 8046612:	371c      	adds	r7, #28
 8046614:	46bd      	mov	sp, r7
 8046616:	f85d 7b04 	ldr.w	r7, [sp], #4
 804661a:	4770      	bx	lr

0804661c <TIM_ITRx_SetConfig>:
 804661c:	b480      	push	{r7}
 804661e:	b085      	sub	sp, #20
 8046620:	af00      	add	r7, sp, #0
 8046622:	6078      	str	r0, [r7, #4]
 8046624:	6039      	str	r1, [r7, #0]
 8046626:	687b      	ldr	r3, [r7, #4]
 8046628:	689b      	ldr	r3, [r3, #8]
 804662a:	60fb      	str	r3, [r7, #12]
 804662c:	68fb      	ldr	r3, [r7, #12]
 804662e:	f423 1340 	bic.w	r3, r3, #3145728	@ 0x300000
 8046632:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8046636:	60fb      	str	r3, [r7, #12]
 8046638:	683a      	ldr	r2, [r7, #0]
 804663a:	68fb      	ldr	r3, [r7, #12]
 804663c:	4313      	orrs	r3, r2
 804663e:	f043 0307 	orr.w	r3, r3, #7
 8046642:	60fb      	str	r3, [r7, #12]
 8046644:	687b      	ldr	r3, [r7, #4]
 8046646:	68fa      	ldr	r2, [r7, #12]
 8046648:	609a      	str	r2, [r3, #8]
 804664a:	bf00      	nop
 804664c:	3714      	adds	r7, #20
 804664e:	46bd      	mov	sp, r7
 8046650:	f85d 7b04 	ldr.w	r7, [sp], #4
 8046654:	4770      	bx	lr

08046656 <TIM_ETR_SetConfig>:
 8046656:	b480      	push	{r7}
 8046658:	b087      	sub	sp, #28
 804665a:	af00      	add	r7, sp, #0
 804665c:	60f8      	str	r0, [r7, #12]
 804665e:	60b9      	str	r1, [r7, #8]
 8046660:	607a      	str	r2, [r7, #4]
 8046662:	603b      	str	r3, [r7, #0]
 8046664:	68fb      	ldr	r3, [r7, #12]
 8046666:	689b      	ldr	r3, [r3, #8]
 8046668:	617b      	str	r3, [r7, #20]
 804666a:	697b      	ldr	r3, [r7, #20]
 804666c:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8046670:	617b      	str	r3, [r7, #20]
 8046672:	683b      	ldr	r3, [r7, #0]
 8046674:	021a      	lsls	r2, r3, #8
 8046676:	687b      	ldr	r3, [r7, #4]
 8046678:	431a      	orrs	r2, r3
 804667a:	68bb      	ldr	r3, [r7, #8]
 804667c:	4313      	orrs	r3, r2
 804667e:	697a      	ldr	r2, [r7, #20]
 8046680:	4313      	orrs	r3, r2
 8046682:	617b      	str	r3, [r7, #20]
 8046684:	68fb      	ldr	r3, [r7, #12]
 8046686:	697a      	ldr	r2, [r7, #20]
 8046688:	609a      	str	r2, [r3, #8]
 804668a:	bf00      	nop
 804668c:	371c      	adds	r7, #28
 804668e:	46bd      	mov	sp, r7
 8046690:	f85d 7b04 	ldr.w	r7, [sp], #4
 8046694:	4770      	bx	lr
	...

08046698 <HAL_TIMEx_MasterConfigSynchronization>:
 8046698:	b480      	push	{r7}
 804669a:	b085      	sub	sp, #20
 804669c:	af00      	add	r7, sp, #0
 804669e:	6078      	str	r0, [r7, #4]
 80466a0:	6039      	str	r1, [r7, #0]
 80466a2:	687b      	ldr	r3, [r7, #4]
 80466a4:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 80466a8:	2b01      	cmp	r3, #1
 80466aa:	d101      	bne.n	80466b0 <HAL_TIMEx_MasterConfigSynchronization+0x18>
 80466ac:	2302      	movs	r3, #2
 80466ae:	e068      	b.n	8046782 <HAL_TIMEx_MasterConfigSynchronization+0xea>
 80466b0:	687b      	ldr	r3, [r7, #4]
 80466b2:	2201      	movs	r2, #1
 80466b4:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80466b8:	687b      	ldr	r3, [r7, #4]
 80466ba:	2202      	movs	r2, #2
 80466bc:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80466c0:	687b      	ldr	r3, [r7, #4]
 80466c2:	681b      	ldr	r3, [r3, #0]
 80466c4:	685b      	ldr	r3, [r3, #4]
 80466c6:	60fb      	str	r3, [r7, #12]
 80466c8:	687b      	ldr	r3, [r7, #4]
 80466ca:	681b      	ldr	r3, [r3, #0]
 80466cc:	689b      	ldr	r3, [r3, #8]
 80466ce:	60bb      	str	r3, [r7, #8]
 80466d0:	687b      	ldr	r3, [r7, #4]
 80466d2:	681b      	ldr	r3, [r3, #0]
 80466d4:	4a2e      	ldr	r2, [pc, #184]	@ (8046790 <HAL_TIMEx_MasterConfigSynchronization+0xf8>)
 80466d6:	4293      	cmp	r3, r2
 80466d8:	d004      	beq.n	80466e4 <HAL_TIMEx_MasterConfigSynchronization+0x4c>
 80466da:	687b      	ldr	r3, [r7, #4]
 80466dc:	681b      	ldr	r3, [r3, #0]
 80466de:	4a2d      	ldr	r2, [pc, #180]	@ (8046794 <HAL_TIMEx_MasterConfigSynchronization+0xfc>)
 80466e0:	4293      	cmp	r3, r2
 80466e2:	d108      	bne.n	80466f6 <HAL_TIMEx_MasterConfigSynchronization+0x5e>
 80466e4:	68fb      	ldr	r3, [r7, #12]
 80466e6:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 80466ea:	60fb      	str	r3, [r7, #12]
 80466ec:	683b      	ldr	r3, [r7, #0]
 80466ee:	685b      	ldr	r3, [r3, #4]
 80466f0:	68fa      	ldr	r2, [r7, #12]
 80466f2:	4313      	orrs	r3, r2
 80466f4:	60fb      	str	r3, [r7, #12]
 80466f6:	68fb      	ldr	r3, [r7, #12]
 80466f8:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80466fc:	60fb      	str	r3, [r7, #12]
 80466fe:	683b      	ldr	r3, [r7, #0]
 8046700:	681b      	ldr	r3, [r3, #0]
 8046702:	68fa      	ldr	r2, [r7, #12]
 8046704:	4313      	orrs	r3, r2
 8046706:	60fb      	str	r3, [r7, #12]
 8046708:	687b      	ldr	r3, [r7, #4]
 804670a:	681b      	ldr	r3, [r3, #0]
 804670c:	68fa      	ldr	r2, [r7, #12]
 804670e:	605a      	str	r2, [r3, #4]
 8046710:	687b      	ldr	r3, [r7, #4]
 8046712:	681b      	ldr	r3, [r3, #0]
 8046714:	4a1e      	ldr	r2, [pc, #120]	@ (8046790 <HAL_TIMEx_MasterConfigSynchronization+0xf8>)
 8046716:	4293      	cmp	r3, r2
 8046718:	d01d      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 804671a:	687b      	ldr	r3, [r7, #4]
 804671c:	681b      	ldr	r3, [r3, #0]
 804671e:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8046722:	d018      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 8046724:	687b      	ldr	r3, [r7, #4]
 8046726:	681b      	ldr	r3, [r3, #0]
 8046728:	4a1b      	ldr	r2, [pc, #108]	@ (8046798 <HAL_TIMEx_MasterConfigSynchronization+0x100>)
 804672a:	4293      	cmp	r3, r2
 804672c:	d013      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 804672e:	687b      	ldr	r3, [r7, #4]
 8046730:	681b      	ldr	r3, [r3, #0]
 8046732:	4a1a      	ldr	r2, [pc, #104]	@ (804679c <HAL_TIMEx_MasterConfigSynchronization+0x104>)
 8046734:	4293      	cmp	r3, r2
 8046736:	d00e      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 8046738:	687b      	ldr	r3, [r7, #4]
 804673a:	681b      	ldr	r3, [r3, #0]
 804673c:	4a18      	ldr	r2, [pc, #96]	@ (80467a0 <HAL_TIMEx_MasterConfigSynchronization+0x108>)
 804673e:	4293      	cmp	r3, r2
 8046740:	d009      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 8046742:	687b      	ldr	r3, [r7, #4]
 8046744:	681b      	ldr	r3, [r3, #0]
 8046746:	4a13      	ldr	r2, [pc, #76]	@ (8046794 <HAL_TIMEx_MasterConfigSynchronization+0xfc>)
 8046748:	4293      	cmp	r3, r2
 804674a:	d004      	beq.n	8046756 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 804674c:	687b      	ldr	r3, [r7, #4]
 804674e:	681b      	ldr	r3, [r3, #0]
 8046750:	4a14      	ldr	r2, [pc, #80]	@ (80467a4 <HAL_TIMEx_MasterConfigSynchronization+0x10c>)
 8046752:	4293      	cmp	r3, r2
 8046754:	d10c      	bne.n	8046770 <HAL_TIMEx_MasterConfigSynchronization+0xd8>
 8046756:	68bb      	ldr	r3, [r7, #8]
 8046758:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 804675c:	60bb      	str	r3, [r7, #8]
 804675e:	683b      	ldr	r3, [r7, #0]
 8046760:	689b      	ldr	r3, [r3, #8]
 8046762:	68ba      	ldr	r2, [r7, #8]
 8046764:	4313      	orrs	r3, r2
 8046766:	60bb      	str	r3, [r7, #8]
 8046768:	687b      	ldr	r3, [r7, #4]
 804676a:	681b      	ldr	r3, [r3, #0]
 804676c:	68ba      	ldr	r2, [r7, #8]
 804676e:	609a      	str	r2, [r3, #8]
 8046770:	687b      	ldr	r3, [r7, #4]
 8046772:	2201      	movs	r2, #1
 8046774:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8046778:	687b      	ldr	r3, [r7, #4]
 804677a:	2200      	movs	r2, #0
 804677c:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8046780:	2300      	movs	r3, #0
 8046782:	4618      	mov	r0, r3
 8046784:	3714      	adds	r7, #20
 8046786:	46bd      	mov	sp, r7
 8046788:	f85d 7b04 	ldr.w	r7, [sp], #4
 804678c:	4770      	bx	lr
 804678e:	bf00      	nop
 8046790:	40012c00 	.word	0x40012c00
 8046794:	40013400 	.word	0x40013400
 8046798:	40000400 	.word	0x40000400
 804679c:	40000800 	.word	0x40000800
 80467a0:	40000c00 	.word	0x40000c00
 80467a4:	40014000 	.word	0x40014000

080467a8 <HAL_TIMEx_ConfigBreakDeadTime>:
 80467a8:	b480      	push	{r7}
 80467aa:	b085      	sub	sp, #20
 80467ac:	af00      	add	r7, sp, #0
 80467ae:	6078      	str	r0, [r7, #4]
 80467b0:	6039      	str	r1, [r7, #0]
 80467b2:	2300      	movs	r3, #0
 80467b4:	60fb      	str	r3, [r7, #12]
 80467b6:	687b      	ldr	r3, [r7, #4]
 80467b8:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 80467bc:	2b01      	cmp	r3, #1
 80467be:	d101      	bne.n	80467c4 <HAL_TIMEx_ConfigBreakDeadTime+0x1c>
 80467c0:	2302      	movs	r3, #2
 80467c2:	e073      	b.n	80468ac <HAL_TIMEx_ConfigBreakDeadTime+0x104>
 80467c4:	687b      	ldr	r3, [r7, #4]
 80467c6:	2201      	movs	r2, #1
 80467c8:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80467cc:	68fb      	ldr	r3, [r7, #12]
 80467ce:	f023 02ff 	bic.w	r2, r3, #255	@ 0xff
 80467d2:	683b      	ldr	r3, [r7, #0]
 80467d4:	68db      	ldr	r3, [r3, #12]
 80467d6:	4313      	orrs	r3, r2
 80467d8:	60fb      	str	r3, [r7, #12]
 80467da:	68fb      	ldr	r3, [r7, #12]
 80467dc:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 80467e0:	683b      	ldr	r3, [r7, #0]
 80467e2:	689b      	ldr	r3, [r3, #8]
 80467e4:	4313      	orrs	r3, r2
 80467e6:	60fb      	str	r3, [r7, #12]
 80467e8:	68fb      	ldr	r3, [r7, #12]
 80467ea:	f423 6280 	bic.w	r2, r3, #1024	@ 0x400
 80467ee:	683b      	ldr	r3, [r7, #0]
 80467f0:	685b      	ldr	r3, [r3, #4]
 80467f2:	4313      	orrs	r3, r2
 80467f4:	60fb      	str	r3, [r7, #12]
 80467f6:	68fb      	ldr	r3, [r7, #12]
 80467f8:	f423 6200 	bic.w	r2, r3, #2048	@ 0x800
 80467fc:	683b      	ldr	r3, [r7, #0]
 80467fe:	681b      	ldr	r3, [r3, #0]
 8046800:	4313      	orrs	r3, r2
 8046802:	60fb      	str	r3, [r7, #12]
 8046804:	68fb      	ldr	r3, [r7, #12]
 8046806:	f423 5280 	bic.w	r2, r3, #4096	@ 0x1000
 804680a:	683b      	ldr	r3, [r7, #0]
 804680c:	691b      	ldr	r3, [r3, #16]
 804680e:	4313      	orrs	r3, r2
 8046810:	60fb      	str	r3, [r7, #12]
 8046812:	68fb      	ldr	r3, [r7, #12]
 8046814:	f423 5200 	bic.w	r2, r3, #8192	@ 0x2000
 8046818:	683b      	ldr	r3, [r7, #0]
 804681a:	695b      	ldr	r3, [r3, #20]
 804681c:	4313      	orrs	r3, r2
 804681e:	60fb      	str	r3, [r7, #12]
 8046820:	68fb      	ldr	r3, [r7, #12]
 8046822:	f423 4280 	bic.w	r2, r3, #16384	@ 0x4000
 8046826:	683b      	ldr	r3, [r7, #0]
 8046828:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 804682a:	4313      	orrs	r3, r2
 804682c:	60fb      	str	r3, [r7, #12]
 804682e:	68fb      	ldr	r3, [r7, #12]
 8046830:	f423 2270 	bic.w	r2, r3, #983040	@ 0xf0000
 8046834:	683b      	ldr	r3, [r7, #0]
 8046836:	699b      	ldr	r3, [r3, #24]
 8046838:	041b      	lsls	r3, r3, #16
 804683a:	4313      	orrs	r3, r2
 804683c:	60fb      	str	r3, [r7, #12]
 804683e:	68fb      	ldr	r3, [r7, #12]
 8046840:	f023 5280 	bic.w	r2, r3, #268435456	@ 0x10000000
 8046844:	683b      	ldr	r3, [r7, #0]
 8046846:	69db      	ldr	r3, [r3, #28]
 8046848:	4313      	orrs	r3, r2
 804684a:	60fb      	str	r3, [r7, #12]
 804684c:	687b      	ldr	r3, [r7, #4]
 804684e:	681b      	ldr	r3, [r3, #0]
 8046850:	4a19      	ldr	r2, [pc, #100]	@ (80468b8 <HAL_TIMEx_ConfigBreakDeadTime+0x110>)
 8046852:	4293      	cmp	r3, r2
 8046854:	d004      	beq.n	8046860 <HAL_TIMEx_ConfigBreakDeadTime+0xb8>
 8046856:	687b      	ldr	r3, [r7, #4]
 8046858:	681b      	ldr	r3, [r3, #0]
 804685a:	4a18      	ldr	r2, [pc, #96]	@ (80468bc <HAL_TIMEx_ConfigBreakDeadTime+0x114>)
 804685c:	4293      	cmp	r3, r2
 804685e:	d11c      	bne.n	804689a <HAL_TIMEx_ConfigBreakDeadTime+0xf2>
 8046860:	68fb      	ldr	r3, [r7, #12]
 8046862:	f423 0270 	bic.w	r2, r3, #15728640	@ 0xf00000
 8046866:	683b      	ldr	r3, [r7, #0]
 8046868:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 804686a:	051b      	lsls	r3, r3, #20
 804686c:	4313      	orrs	r3, r2
 804686e:	60fb      	str	r3, [r7, #12]
 8046870:	68fb      	ldr	r3, [r7, #12]
 8046872:	f023 7280 	bic.w	r2, r3, #16777216	@ 0x1000000
 8046876:	683b      	ldr	r3, [r7, #0]
 8046878:	6a1b      	ldr	r3, [r3, #32]
 804687a:	4313      	orrs	r3, r2
 804687c:	60fb      	str	r3, [r7, #12]
 804687e:	68fb      	ldr	r3, [r7, #12]
 8046880:	f023 7200 	bic.w	r2, r3, #33554432	@ 0x2000000
 8046884:	683b      	ldr	r3, [r7, #0]
 8046886:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8046888:	4313      	orrs	r3, r2
 804688a:	60fb      	str	r3, [r7, #12]
 804688c:	68fb      	ldr	r3, [r7, #12]
 804688e:	f023 5200 	bic.w	r2, r3, #536870912	@ 0x20000000
 8046892:	683b      	ldr	r3, [r7, #0]
 8046894:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8046896:	4313      	orrs	r3, r2
 8046898:	60fb      	str	r3, [r7, #12]
 804689a:	687b      	ldr	r3, [r7, #4]
 804689c:	681b      	ldr	r3, [r3, #0]
 804689e:	68fa      	ldr	r2, [r7, #12]
 80468a0:	645a      	str	r2, [r3, #68]	@ 0x44
 80468a2:	687b      	ldr	r3, [r7, #4]
 80468a4:	2200      	movs	r2, #0
 80468a6:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80468aa:	2300      	movs	r3, #0
 80468ac:	4618      	mov	r0, r3
 80468ae:	3714      	adds	r7, #20
 80468b0:	46bd      	mov	sp, r7
 80468b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80468b6:	4770      	bx	lr
 80468b8:	40012c00 	.word	0x40012c00
 80468bc:	40013400 	.word	0x40013400

080468c0 <HAL_UART_Init>:
 80468c0:	b580      	push	{r7, lr}
 80468c2:	b082      	sub	sp, #8
 80468c4:	af00      	add	r7, sp, #0
 80468c6:	6078      	str	r0, [r7, #4]
 80468c8:	687b      	ldr	r3, [r7, #4]
 80468ca:	2b00      	cmp	r3, #0
 80468cc:	d101      	bne.n	80468d2 <HAL_UART_Init+0x12>
 80468ce:	2301      	movs	r3, #1
 80468d0:	e042      	b.n	8046958 <HAL_UART_Init+0x98>
 80468d2:	687b      	ldr	r3, [r7, #4]
 80468d4:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80468d8:	2b00      	cmp	r3, #0
 80468da:	d106      	bne.n	80468ea <HAL_UART_Init+0x2a>
 80468dc:	687b      	ldr	r3, [r7, #4]
 80468de:	2200      	movs	r2, #0
 80468e0:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80468e4:	6878      	ldr	r0, [r7, #4]
 80468e6:	f7fc fabd 	bl	8042e64 <HAL_UART_MspInit>
 80468ea:	687b      	ldr	r3, [r7, #4]
 80468ec:	2224      	movs	r2, #36	@ 0x24
 80468ee:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80468f2:	687b      	ldr	r3, [r7, #4]
 80468f4:	681b      	ldr	r3, [r3, #0]
 80468f6:	681a      	ldr	r2, [r3, #0]
 80468f8:	687b      	ldr	r3, [r7, #4]
 80468fa:	681b      	ldr	r3, [r3, #0]
 80468fc:	f022 0201 	bic.w	r2, r2, #1
 8046900:	601a      	str	r2, [r3, #0]
 8046902:	687b      	ldr	r3, [r7, #4]
 8046904:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8046906:	2b00      	cmp	r3, #0
 8046908:	d002      	beq.n	8046910 <HAL_UART_Init+0x50>
 804690a:	6878      	ldr	r0, [r7, #4]
 804690c:	f000 fbb6 	bl	804707c <UART_AdvFeatureConfig>
 8046910:	6878      	ldr	r0, [r7, #4]
 8046912:	f000 f8b3 	bl	8046a7c <UART_SetConfig>
 8046916:	4603      	mov	r3, r0
 8046918:	2b01      	cmp	r3, #1
 804691a:	d101      	bne.n	8046920 <HAL_UART_Init+0x60>
 804691c:	2301      	movs	r3, #1
 804691e:	e01b      	b.n	8046958 <HAL_UART_Init+0x98>
 8046920:	687b      	ldr	r3, [r7, #4]
 8046922:	681b      	ldr	r3, [r3, #0]
 8046924:	685a      	ldr	r2, [r3, #4]
 8046926:	687b      	ldr	r3, [r7, #4]
 8046928:	681b      	ldr	r3, [r3, #0]
 804692a:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 804692e:	605a      	str	r2, [r3, #4]
 8046930:	687b      	ldr	r3, [r7, #4]
 8046932:	681b      	ldr	r3, [r3, #0]
 8046934:	689a      	ldr	r2, [r3, #8]
 8046936:	687b      	ldr	r3, [r7, #4]
 8046938:	681b      	ldr	r3, [r3, #0]
 804693a:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 804693e:	609a      	str	r2, [r3, #8]
 8046940:	687b      	ldr	r3, [r7, #4]
 8046942:	681b      	ldr	r3, [r3, #0]
 8046944:	681a      	ldr	r2, [r3, #0]
 8046946:	687b      	ldr	r3, [r7, #4]
 8046948:	681b      	ldr	r3, [r3, #0]
 804694a:	f042 0201 	orr.w	r2, r2, #1
 804694e:	601a      	str	r2, [r3, #0]
 8046950:	6878      	ldr	r0, [r7, #4]
 8046952:	f000 fc35 	bl	80471c0 <UART_CheckIdleState>
 8046956:	4603      	mov	r3, r0
 8046958:	4618      	mov	r0, r3
 804695a:	3708      	adds	r7, #8
 804695c:	46bd      	mov	sp, r7
 804695e:	bd80      	pop	{r7, pc}

08046960 <HAL_UART_Transmit>:
 8046960:	b580      	push	{r7, lr}
 8046962:	b08a      	sub	sp, #40	@ 0x28
 8046964:	af02      	add	r7, sp, #8
 8046966:	60f8      	str	r0, [r7, #12]
 8046968:	60b9      	str	r1, [r7, #8]
 804696a:	603b      	str	r3, [r7, #0]
 804696c:	4613      	mov	r3, r2
 804696e:	80fb      	strh	r3, [r7, #6]
 8046970:	68fb      	ldr	r3, [r7, #12]
 8046972:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046976:	2b20      	cmp	r3, #32
 8046978:	d17b      	bne.n	8046a72 <HAL_UART_Transmit+0x112>
 804697a:	68bb      	ldr	r3, [r7, #8]
 804697c:	2b00      	cmp	r3, #0
 804697e:	d002      	beq.n	8046986 <HAL_UART_Transmit+0x26>
 8046980:	88fb      	ldrh	r3, [r7, #6]
 8046982:	2b00      	cmp	r3, #0
 8046984:	d101      	bne.n	804698a <HAL_UART_Transmit+0x2a>
 8046986:	2301      	movs	r3, #1
 8046988:	e074      	b.n	8046a74 <HAL_UART_Transmit+0x114>
 804698a:	68fb      	ldr	r3, [r7, #12]
 804698c:	2200      	movs	r2, #0
 804698e:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8046992:	68fb      	ldr	r3, [r7, #12]
 8046994:	2221      	movs	r2, #33	@ 0x21
 8046996:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 804699a:	f7fc fb2d 	bl	8042ff8 <HAL_GetTick>
 804699e:	6178      	str	r0, [r7, #20]
 80469a0:	68fb      	ldr	r3, [r7, #12]
 80469a2:	88fa      	ldrh	r2, [r7, #6]
 80469a4:	f8a3 2054 	strh.w	r2, [r3, #84]	@ 0x54
 80469a8:	68fb      	ldr	r3, [r7, #12]
 80469aa:	88fa      	ldrh	r2, [r7, #6]
 80469ac:	f8a3 2056 	strh.w	r2, [r3, #86]	@ 0x56
 80469b0:	68fb      	ldr	r3, [r7, #12]
 80469b2:	689b      	ldr	r3, [r3, #8]
 80469b4:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80469b8:	d108      	bne.n	80469cc <HAL_UART_Transmit+0x6c>
 80469ba:	68fb      	ldr	r3, [r7, #12]
 80469bc:	691b      	ldr	r3, [r3, #16]
 80469be:	2b00      	cmp	r3, #0
 80469c0:	d104      	bne.n	80469cc <HAL_UART_Transmit+0x6c>
 80469c2:	2300      	movs	r3, #0
 80469c4:	61fb      	str	r3, [r7, #28]
 80469c6:	68bb      	ldr	r3, [r7, #8]
 80469c8:	61bb      	str	r3, [r7, #24]
 80469ca:	e003      	b.n	80469d4 <HAL_UART_Transmit+0x74>
 80469cc:	68bb      	ldr	r3, [r7, #8]
 80469ce:	61fb      	str	r3, [r7, #28]
 80469d0:	2300      	movs	r3, #0
 80469d2:	61bb      	str	r3, [r7, #24]
 80469d4:	e030      	b.n	8046a38 <HAL_UART_Transmit+0xd8>
 80469d6:	683b      	ldr	r3, [r7, #0]
 80469d8:	9300      	str	r3, [sp, #0]
 80469da:	697b      	ldr	r3, [r7, #20]
 80469dc:	2200      	movs	r2, #0
 80469de:	2180      	movs	r1, #128	@ 0x80
 80469e0:	68f8      	ldr	r0, [r7, #12]
 80469e2:	f000 fc97 	bl	8047314 <UART_WaitOnFlagUntilTimeout>
 80469e6:	4603      	mov	r3, r0
 80469e8:	2b00      	cmp	r3, #0
 80469ea:	d005      	beq.n	80469f8 <HAL_UART_Transmit+0x98>
 80469ec:	68fb      	ldr	r3, [r7, #12]
 80469ee:	2220      	movs	r2, #32
 80469f0:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80469f4:	2303      	movs	r3, #3
 80469f6:	e03d      	b.n	8046a74 <HAL_UART_Transmit+0x114>
 80469f8:	69fb      	ldr	r3, [r7, #28]
 80469fa:	2b00      	cmp	r3, #0
 80469fc:	d10b      	bne.n	8046a16 <HAL_UART_Transmit+0xb6>
 80469fe:	69bb      	ldr	r3, [r7, #24]
 8046a00:	881b      	ldrh	r3, [r3, #0]
 8046a02:	461a      	mov	r2, r3
 8046a04:	68fb      	ldr	r3, [r7, #12]
 8046a06:	681b      	ldr	r3, [r3, #0]
 8046a08:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8046a0c:	629a      	str	r2, [r3, #40]	@ 0x28
 8046a0e:	69bb      	ldr	r3, [r7, #24]
 8046a10:	3302      	adds	r3, #2
 8046a12:	61bb      	str	r3, [r7, #24]
 8046a14:	e007      	b.n	8046a26 <HAL_UART_Transmit+0xc6>
 8046a16:	69fb      	ldr	r3, [r7, #28]
 8046a18:	781a      	ldrb	r2, [r3, #0]
 8046a1a:	68fb      	ldr	r3, [r7, #12]
 8046a1c:	681b      	ldr	r3, [r3, #0]
 8046a1e:	629a      	str	r2, [r3, #40]	@ 0x28
 8046a20:	69fb      	ldr	r3, [r7, #28]
 8046a22:	3301      	adds	r3, #1
 8046a24:	61fb      	str	r3, [r7, #28]
 8046a26:	68fb      	ldr	r3, [r7, #12]
 8046a28:	f8b3 3056 	ldrh.w	r3, [r3, #86]	@ 0x56
 8046a2c:	b29b      	uxth	r3, r3
 8046a2e:	3b01      	subs	r3, #1
 8046a30:	b29a      	uxth	r2, r3
 8046a32:	68fb      	ldr	r3, [r7, #12]
 8046a34:	f8a3 2056 	strh.w	r2, [r3, #86]	@ 0x56
 8046a38:	68fb      	ldr	r3, [r7, #12]
 8046a3a:	f8b3 3056 	ldrh.w	r3, [r3, #86]	@ 0x56
 8046a3e:	b29b      	uxth	r3, r3
 8046a40:	2b00      	cmp	r3, #0
 8046a42:	d1c8      	bne.n	80469d6 <HAL_UART_Transmit+0x76>
 8046a44:	683b      	ldr	r3, [r7, #0]
 8046a46:	9300      	str	r3, [sp, #0]
 8046a48:	697b      	ldr	r3, [r7, #20]
 8046a4a:	2200      	movs	r2, #0
 8046a4c:	2140      	movs	r1, #64	@ 0x40
 8046a4e:	68f8      	ldr	r0, [r7, #12]
 8046a50:	f000 fc60 	bl	8047314 <UART_WaitOnFlagUntilTimeout>
 8046a54:	4603      	mov	r3, r0
 8046a56:	2b00      	cmp	r3, #0
 8046a58:	d005      	beq.n	8046a66 <HAL_UART_Transmit+0x106>
 8046a5a:	68fb      	ldr	r3, [r7, #12]
 8046a5c:	2220      	movs	r2, #32
 8046a5e:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8046a62:	2303      	movs	r3, #3
 8046a64:	e006      	b.n	8046a74 <HAL_UART_Transmit+0x114>
 8046a66:	68fb      	ldr	r3, [r7, #12]
 8046a68:	2220      	movs	r2, #32
 8046a6a:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8046a6e:	2300      	movs	r3, #0
 8046a70:	e000      	b.n	8046a74 <HAL_UART_Transmit+0x114>
 8046a72:	2302      	movs	r3, #2
 8046a74:	4618      	mov	r0, r3
 8046a76:	3720      	adds	r7, #32
 8046a78:	46bd      	mov	sp, r7
 8046a7a:	bd80      	pop	{r7, pc}

08046a7c <UART_SetConfig>:
 8046a7c:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8046a80:	b08c      	sub	sp, #48	@ 0x30
 8046a82:	af00      	add	r7, sp, #0
 8046a84:	6178      	str	r0, [r7, #20]
 8046a86:	2300      	movs	r3, #0
 8046a88:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046a8c:	697b      	ldr	r3, [r7, #20]
 8046a8e:	689a      	ldr	r2, [r3, #8]
 8046a90:	697b      	ldr	r3, [r7, #20]
 8046a92:	691b      	ldr	r3, [r3, #16]
 8046a94:	431a      	orrs	r2, r3
 8046a96:	697b      	ldr	r3, [r7, #20]
 8046a98:	695b      	ldr	r3, [r3, #20]
 8046a9a:	431a      	orrs	r2, r3
 8046a9c:	697b      	ldr	r3, [r7, #20]
 8046a9e:	69db      	ldr	r3, [r3, #28]
 8046aa0:	4313      	orrs	r3, r2
 8046aa2:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8046aa4:	697b      	ldr	r3, [r7, #20]
 8046aa6:	681b      	ldr	r3, [r3, #0]
 8046aa8:	681a      	ldr	r2, [r3, #0]
 8046aaa:	4baa      	ldr	r3, [pc, #680]	@ (8046d54 <UART_SetConfig+0x2d8>)
 8046aac:	4013      	ands	r3, r2
 8046aae:	697a      	ldr	r2, [r7, #20]
 8046ab0:	6812      	ldr	r2, [r2, #0]
 8046ab2:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8046ab4:	430b      	orrs	r3, r1
 8046ab6:	6013      	str	r3, [r2, #0]
 8046ab8:	697b      	ldr	r3, [r7, #20]
 8046aba:	681b      	ldr	r3, [r3, #0]
 8046abc:	685b      	ldr	r3, [r3, #4]
 8046abe:	f423 5140 	bic.w	r1, r3, #12288	@ 0x3000
 8046ac2:	697b      	ldr	r3, [r7, #20]
 8046ac4:	68da      	ldr	r2, [r3, #12]
 8046ac6:	697b      	ldr	r3, [r7, #20]
 8046ac8:	681b      	ldr	r3, [r3, #0]
 8046aca:	430a      	orrs	r2, r1
 8046acc:	605a      	str	r2, [r3, #4]
 8046ace:	697b      	ldr	r3, [r7, #20]
 8046ad0:	699b      	ldr	r3, [r3, #24]
 8046ad2:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8046ad4:	697b      	ldr	r3, [r7, #20]
 8046ad6:	681b      	ldr	r3, [r3, #0]
 8046ad8:	4a9f      	ldr	r2, [pc, #636]	@ (8046d58 <UART_SetConfig+0x2dc>)
 8046ada:	4293      	cmp	r3, r2
 8046adc:	d004      	beq.n	8046ae8 <UART_SetConfig+0x6c>
 8046ade:	697b      	ldr	r3, [r7, #20]
 8046ae0:	6a1b      	ldr	r3, [r3, #32]
 8046ae2:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8046ae4:	4313      	orrs	r3, r2
 8046ae6:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8046ae8:	697b      	ldr	r3, [r7, #20]
 8046aea:	681b      	ldr	r3, [r3, #0]
 8046aec:	689b      	ldr	r3, [r3, #8]
 8046aee:	f023 436e 	bic.w	r3, r3, #3992977408	@ 0xee000000
 8046af2:	f423 6330 	bic.w	r3, r3, #2816	@ 0xb00
 8046af6:	697a      	ldr	r2, [r7, #20]
 8046af8:	6812      	ldr	r2, [r2, #0]
 8046afa:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8046afc:	430b      	orrs	r3, r1
 8046afe:	6093      	str	r3, [r2, #8]
 8046b00:	697b      	ldr	r3, [r7, #20]
 8046b02:	681b      	ldr	r3, [r3, #0]
 8046b04:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8046b06:	f023 010f 	bic.w	r1, r3, #15
 8046b0a:	697b      	ldr	r3, [r7, #20]
 8046b0c:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8046b0e:	697b      	ldr	r3, [r7, #20]
 8046b10:	681b      	ldr	r3, [r3, #0]
 8046b12:	430a      	orrs	r2, r1
 8046b14:	62da      	str	r2, [r3, #44]	@ 0x2c
 8046b16:	697b      	ldr	r3, [r7, #20]
 8046b18:	681b      	ldr	r3, [r3, #0]
 8046b1a:	4a90      	ldr	r2, [pc, #576]	@ (8046d5c <UART_SetConfig+0x2e0>)
 8046b1c:	4293      	cmp	r3, r2
 8046b1e:	d125      	bne.n	8046b6c <UART_SetConfig+0xf0>
 8046b20:	4b8f      	ldr	r3, [pc, #572]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046b22:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046b26:	f003 0303 	and.w	r3, r3, #3
 8046b2a:	2b03      	cmp	r3, #3
 8046b2c:	d81a      	bhi.n	8046b64 <UART_SetConfig+0xe8>
 8046b2e:	a201      	add	r2, pc, #4	@ (adr r2, 8046b34 <UART_SetConfig+0xb8>)
 8046b30:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8046b34:	08046b45 	.word	0x08046b45
 8046b38:	08046b55 	.word	0x08046b55
 8046b3c:	08046b4d 	.word	0x08046b4d
 8046b40:	08046b5d 	.word	0x08046b5d
 8046b44:	2301      	movs	r3, #1
 8046b46:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046b4a:	e116      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046b4c:	2302      	movs	r3, #2
 8046b4e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046b52:	e112      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046b54:	2304      	movs	r3, #4
 8046b56:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046b5a:	e10e      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046b5c:	2308      	movs	r3, #8
 8046b5e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046b62:	e10a      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046b64:	2310      	movs	r3, #16
 8046b66:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046b6a:	e106      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046b6c:	697b      	ldr	r3, [r7, #20]
 8046b6e:	681b      	ldr	r3, [r3, #0]
 8046b70:	4a7c      	ldr	r2, [pc, #496]	@ (8046d64 <UART_SetConfig+0x2e8>)
 8046b72:	4293      	cmp	r3, r2
 8046b74:	d138      	bne.n	8046be8 <UART_SetConfig+0x16c>
 8046b76:	4b7a      	ldr	r3, [pc, #488]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046b78:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046b7c:	f003 030c 	and.w	r3, r3, #12
 8046b80:	2b0c      	cmp	r3, #12
 8046b82:	d82d      	bhi.n	8046be0 <UART_SetConfig+0x164>
 8046b84:	a201      	add	r2, pc, #4	@ (adr r2, 8046b8c <UART_SetConfig+0x110>)
 8046b86:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8046b8a:	bf00      	nop
 8046b8c:	08046bc1 	.word	0x08046bc1
 8046b90:	08046be1 	.word	0x08046be1
 8046b94:	08046be1 	.word	0x08046be1
 8046b98:	08046be1 	.word	0x08046be1
 8046b9c:	08046bd1 	.word	0x08046bd1
 8046ba0:	08046be1 	.word	0x08046be1
 8046ba4:	08046be1 	.word	0x08046be1
 8046ba8:	08046be1 	.word	0x08046be1
 8046bac:	08046bc9 	.word	0x08046bc9
 8046bb0:	08046be1 	.word	0x08046be1
 8046bb4:	08046be1 	.word	0x08046be1
 8046bb8:	08046be1 	.word	0x08046be1
 8046bbc:	08046bd9 	.word	0x08046bd9
 8046bc0:	2300      	movs	r3, #0
 8046bc2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046bc6:	e0d8      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046bc8:	2302      	movs	r3, #2
 8046bca:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046bce:	e0d4      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046bd0:	2304      	movs	r3, #4
 8046bd2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046bd6:	e0d0      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046bd8:	2308      	movs	r3, #8
 8046bda:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046bde:	e0cc      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046be0:	2310      	movs	r3, #16
 8046be2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046be6:	e0c8      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046be8:	697b      	ldr	r3, [r7, #20]
 8046bea:	681b      	ldr	r3, [r3, #0]
 8046bec:	4a5e      	ldr	r2, [pc, #376]	@ (8046d68 <UART_SetConfig+0x2ec>)
 8046bee:	4293      	cmp	r3, r2
 8046bf0:	d125      	bne.n	8046c3e <UART_SetConfig+0x1c2>
 8046bf2:	4b5b      	ldr	r3, [pc, #364]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046bf4:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046bf8:	f003 0330 	and.w	r3, r3, #48	@ 0x30
 8046bfc:	2b30      	cmp	r3, #48	@ 0x30
 8046bfe:	d016      	beq.n	8046c2e <UART_SetConfig+0x1b2>
 8046c00:	2b30      	cmp	r3, #48	@ 0x30
 8046c02:	d818      	bhi.n	8046c36 <UART_SetConfig+0x1ba>
 8046c04:	2b20      	cmp	r3, #32
 8046c06:	d00a      	beq.n	8046c1e <UART_SetConfig+0x1a2>
 8046c08:	2b20      	cmp	r3, #32
 8046c0a:	d814      	bhi.n	8046c36 <UART_SetConfig+0x1ba>
 8046c0c:	2b00      	cmp	r3, #0
 8046c0e:	d002      	beq.n	8046c16 <UART_SetConfig+0x19a>
 8046c10:	2b10      	cmp	r3, #16
 8046c12:	d008      	beq.n	8046c26 <UART_SetConfig+0x1aa>
 8046c14:	e00f      	b.n	8046c36 <UART_SetConfig+0x1ba>
 8046c16:	2300      	movs	r3, #0
 8046c18:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c1c:	e0ad      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c1e:	2302      	movs	r3, #2
 8046c20:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c24:	e0a9      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c26:	2304      	movs	r3, #4
 8046c28:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c2c:	e0a5      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c2e:	2308      	movs	r3, #8
 8046c30:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c34:	e0a1      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c36:	2310      	movs	r3, #16
 8046c38:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c3c:	e09d      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c3e:	697b      	ldr	r3, [r7, #20]
 8046c40:	681b      	ldr	r3, [r3, #0]
 8046c42:	4a4a      	ldr	r2, [pc, #296]	@ (8046d6c <UART_SetConfig+0x2f0>)
 8046c44:	4293      	cmp	r3, r2
 8046c46:	d125      	bne.n	8046c94 <UART_SetConfig+0x218>
 8046c48:	4b45      	ldr	r3, [pc, #276]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046c4a:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046c4e:	f003 03c0 	and.w	r3, r3, #192	@ 0xc0
 8046c52:	2bc0      	cmp	r3, #192	@ 0xc0
 8046c54:	d016      	beq.n	8046c84 <UART_SetConfig+0x208>
 8046c56:	2bc0      	cmp	r3, #192	@ 0xc0
 8046c58:	d818      	bhi.n	8046c8c <UART_SetConfig+0x210>
 8046c5a:	2b80      	cmp	r3, #128	@ 0x80
 8046c5c:	d00a      	beq.n	8046c74 <UART_SetConfig+0x1f8>
 8046c5e:	2b80      	cmp	r3, #128	@ 0x80
 8046c60:	d814      	bhi.n	8046c8c <UART_SetConfig+0x210>
 8046c62:	2b00      	cmp	r3, #0
 8046c64:	d002      	beq.n	8046c6c <UART_SetConfig+0x1f0>
 8046c66:	2b40      	cmp	r3, #64	@ 0x40
 8046c68:	d008      	beq.n	8046c7c <UART_SetConfig+0x200>
 8046c6a:	e00f      	b.n	8046c8c <UART_SetConfig+0x210>
 8046c6c:	2300      	movs	r3, #0
 8046c6e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c72:	e082      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c74:	2302      	movs	r3, #2
 8046c76:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c7a:	e07e      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c7c:	2304      	movs	r3, #4
 8046c7e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c82:	e07a      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c84:	2308      	movs	r3, #8
 8046c86:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c8a:	e076      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c8c:	2310      	movs	r3, #16
 8046c8e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046c92:	e072      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046c94:	697b      	ldr	r3, [r7, #20]
 8046c96:	681b      	ldr	r3, [r3, #0]
 8046c98:	4a35      	ldr	r2, [pc, #212]	@ (8046d70 <UART_SetConfig+0x2f4>)
 8046c9a:	4293      	cmp	r3, r2
 8046c9c:	d12a      	bne.n	8046cf4 <UART_SetConfig+0x278>
 8046c9e:	4b30      	ldr	r3, [pc, #192]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046ca0:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046ca4:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8046ca8:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8046cac:	d01a      	beq.n	8046ce4 <UART_SetConfig+0x268>
 8046cae:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8046cb2:	d81b      	bhi.n	8046cec <UART_SetConfig+0x270>
 8046cb4:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8046cb8:	d00c      	beq.n	8046cd4 <UART_SetConfig+0x258>
 8046cba:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8046cbe:	d815      	bhi.n	8046cec <UART_SetConfig+0x270>
 8046cc0:	2b00      	cmp	r3, #0
 8046cc2:	d003      	beq.n	8046ccc <UART_SetConfig+0x250>
 8046cc4:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8046cc8:	d008      	beq.n	8046cdc <UART_SetConfig+0x260>
 8046cca:	e00f      	b.n	8046cec <UART_SetConfig+0x270>
 8046ccc:	2300      	movs	r3, #0
 8046cce:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046cd2:	e052      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046cd4:	2302      	movs	r3, #2
 8046cd6:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046cda:	e04e      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046cdc:	2304      	movs	r3, #4
 8046cde:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046ce2:	e04a      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046ce4:	2308      	movs	r3, #8
 8046ce6:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046cea:	e046      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046cec:	2310      	movs	r3, #16
 8046cee:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046cf2:	e042      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046cf4:	697b      	ldr	r3, [r7, #20]
 8046cf6:	681b      	ldr	r3, [r3, #0]
 8046cf8:	4a17      	ldr	r2, [pc, #92]	@ (8046d58 <UART_SetConfig+0x2dc>)
 8046cfa:	4293      	cmp	r3, r2
 8046cfc:	d13a      	bne.n	8046d74 <UART_SetConfig+0x2f8>
 8046cfe:	4b18      	ldr	r3, [pc, #96]	@ (8046d60 <UART_SetConfig+0x2e4>)
 8046d00:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8046d04:	f403 6340 	and.w	r3, r3, #3072	@ 0xc00
 8046d08:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8046d0c:	d01a      	beq.n	8046d44 <UART_SetConfig+0x2c8>
 8046d0e:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8046d12:	d81b      	bhi.n	8046d4c <UART_SetConfig+0x2d0>
 8046d14:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8046d18:	d00c      	beq.n	8046d34 <UART_SetConfig+0x2b8>
 8046d1a:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8046d1e:	d815      	bhi.n	8046d4c <UART_SetConfig+0x2d0>
 8046d20:	2b00      	cmp	r3, #0
 8046d22:	d003      	beq.n	8046d2c <UART_SetConfig+0x2b0>
 8046d24:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8046d28:	d008      	beq.n	8046d3c <UART_SetConfig+0x2c0>
 8046d2a:	e00f      	b.n	8046d4c <UART_SetConfig+0x2d0>
 8046d2c:	2300      	movs	r3, #0
 8046d2e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d32:	e022      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046d34:	2302      	movs	r3, #2
 8046d36:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d3a:	e01e      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046d3c:	2304      	movs	r3, #4
 8046d3e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d42:	e01a      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046d44:	2308      	movs	r3, #8
 8046d46:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d4a:	e016      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046d4c:	2310      	movs	r3, #16
 8046d4e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d52:	e012      	b.n	8046d7a <UART_SetConfig+0x2fe>
 8046d54:	cfff69f3 	.word	0xcfff69f3
 8046d58:	40008000 	.word	0x40008000
 8046d5c:	40013800 	.word	0x40013800
 8046d60:	40021000 	.word	0x40021000
 8046d64:	40004400 	.word	0x40004400
 8046d68:	40004800 	.word	0x40004800
 8046d6c:	40004c00 	.word	0x40004c00
 8046d70:	40005000 	.word	0x40005000
 8046d74:	2310      	movs	r3, #16
 8046d76:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8046d7a:	697b      	ldr	r3, [r7, #20]
 8046d7c:	681b      	ldr	r3, [r3, #0]
 8046d7e:	4ab0      	ldr	r2, [pc, #704]	@ (8047040 <UART_SetConfig+0x5c4>)
 8046d80:	4293      	cmp	r3, r2
 8046d82:	f040 809b 	bne.w	8046ebc <UART_SetConfig+0x440>
 8046d86:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8046d8a:	2b08      	cmp	r3, #8
 8046d8c:	d827      	bhi.n	8046dde <UART_SetConfig+0x362>
 8046d8e:	a201      	add	r2, pc, #4	@ (adr r2, 8046d94 <UART_SetConfig+0x318>)
 8046d90:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8046d94:	08046db9 	.word	0x08046db9
 8046d98:	08046dc1 	.word	0x08046dc1
 8046d9c:	08046dc9 	.word	0x08046dc9
 8046da0:	08046ddf 	.word	0x08046ddf
 8046da4:	08046dcf 	.word	0x08046dcf
 8046da8:	08046ddf 	.word	0x08046ddf
 8046dac:	08046ddf 	.word	0x08046ddf
 8046db0:	08046ddf 	.word	0x08046ddf
 8046db4:	08046dd7 	.word	0x08046dd7
 8046db8:	f7fd fe50 	bl	8044a5c <HAL_RCC_GetPCLK1Freq>
 8046dbc:	6278      	str	r0, [r7, #36]	@ 0x24
 8046dbe:	e014      	b.n	8046dea <UART_SetConfig+0x36e>
 8046dc0:	f7fd fe60 	bl	8044a84 <HAL_RCC_GetPCLK2Freq>
 8046dc4:	6278      	str	r0, [r7, #36]	@ 0x24
 8046dc6:	e010      	b.n	8046dea <UART_SetConfig+0x36e>
 8046dc8:	4b9e      	ldr	r3, [pc, #632]	@ (8047044 <UART_SetConfig+0x5c8>)
 8046dca:	627b      	str	r3, [r7, #36]	@ 0x24
 8046dcc:	e00d      	b.n	8046dea <UART_SetConfig+0x36e>
 8046dce:	f7fd fd95 	bl	80448fc <HAL_RCC_GetSysClockFreq>
 8046dd2:	6278      	str	r0, [r7, #36]	@ 0x24
 8046dd4:	e009      	b.n	8046dea <UART_SetConfig+0x36e>
 8046dd6:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8046dda:	627b      	str	r3, [r7, #36]	@ 0x24
 8046ddc:	e005      	b.n	8046dea <UART_SetConfig+0x36e>
 8046dde:	2300      	movs	r3, #0
 8046de0:	627b      	str	r3, [r7, #36]	@ 0x24
 8046de2:	2301      	movs	r3, #1
 8046de4:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046de8:	bf00      	nop
 8046dea:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046dec:	2b00      	cmp	r3, #0
 8046dee:	f000 8130 	beq.w	8047052 <UART_SetConfig+0x5d6>
 8046df2:	697b      	ldr	r3, [r7, #20]
 8046df4:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8046df6:	4a94      	ldr	r2, [pc, #592]	@ (8047048 <UART_SetConfig+0x5cc>)
 8046df8:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8046dfc:	461a      	mov	r2, r3
 8046dfe:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046e00:	fbb3 f3f2 	udiv	r3, r3, r2
 8046e04:	61bb      	str	r3, [r7, #24]
 8046e06:	697b      	ldr	r3, [r7, #20]
 8046e08:	685a      	ldr	r2, [r3, #4]
 8046e0a:	4613      	mov	r3, r2
 8046e0c:	005b      	lsls	r3, r3, #1
 8046e0e:	4413      	add	r3, r2
 8046e10:	69ba      	ldr	r2, [r7, #24]
 8046e12:	429a      	cmp	r2, r3
 8046e14:	d305      	bcc.n	8046e22 <UART_SetConfig+0x3a6>
 8046e16:	697b      	ldr	r3, [r7, #20]
 8046e18:	685b      	ldr	r3, [r3, #4]
 8046e1a:	031b      	lsls	r3, r3, #12
 8046e1c:	69ba      	ldr	r2, [r7, #24]
 8046e1e:	429a      	cmp	r2, r3
 8046e20:	d903      	bls.n	8046e2a <UART_SetConfig+0x3ae>
 8046e22:	2301      	movs	r3, #1
 8046e24:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046e28:	e113      	b.n	8047052 <UART_SetConfig+0x5d6>
 8046e2a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046e2c:	2200      	movs	r2, #0
 8046e2e:	60bb      	str	r3, [r7, #8]
 8046e30:	60fa      	str	r2, [r7, #12]
 8046e32:	697b      	ldr	r3, [r7, #20]
 8046e34:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8046e36:	4a84      	ldr	r2, [pc, #528]	@ (8047048 <UART_SetConfig+0x5cc>)
 8046e38:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8046e3c:	b29b      	uxth	r3, r3
 8046e3e:	2200      	movs	r2, #0
 8046e40:	603b      	str	r3, [r7, #0]
 8046e42:	607a      	str	r2, [r7, #4]
 8046e44:	e9d7 2300 	ldrd	r2, r3, [r7]
 8046e48:	e9d7 0102 	ldrd	r0, r1, [r7, #8]
 8046e4c:	f7f9 f9f2 	bl	8040234 <__aeabi_uldivmod>
 8046e50:	4602      	mov	r2, r0
 8046e52:	460b      	mov	r3, r1
 8046e54:	4610      	mov	r0, r2
 8046e56:	4619      	mov	r1, r3
 8046e58:	f04f 0200 	mov.w	r2, #0
 8046e5c:	f04f 0300 	mov.w	r3, #0
 8046e60:	020b      	lsls	r3, r1, #8
 8046e62:	ea43 6310 	orr.w	r3, r3, r0, lsr #24
 8046e66:	0202      	lsls	r2, r0, #8
 8046e68:	6979      	ldr	r1, [r7, #20]
 8046e6a:	6849      	ldr	r1, [r1, #4]
 8046e6c:	0849      	lsrs	r1, r1, #1
 8046e6e:	2000      	movs	r0, #0
 8046e70:	460c      	mov	r4, r1
 8046e72:	4605      	mov	r5, r0
 8046e74:	eb12 0804 	adds.w	r8, r2, r4
 8046e78:	eb43 0905 	adc.w	r9, r3, r5
 8046e7c:	697b      	ldr	r3, [r7, #20]
 8046e7e:	685b      	ldr	r3, [r3, #4]
 8046e80:	2200      	movs	r2, #0
 8046e82:	469a      	mov	sl, r3
 8046e84:	4693      	mov	fp, r2
 8046e86:	4652      	mov	r2, sl
 8046e88:	465b      	mov	r3, fp
 8046e8a:	4640      	mov	r0, r8
 8046e8c:	4649      	mov	r1, r9
 8046e8e:	f7f9 f9d1 	bl	8040234 <__aeabi_uldivmod>
 8046e92:	4602      	mov	r2, r0
 8046e94:	460b      	mov	r3, r1
 8046e96:	4613      	mov	r3, r2
 8046e98:	623b      	str	r3, [r7, #32]
 8046e9a:	6a3b      	ldr	r3, [r7, #32]
 8046e9c:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8046ea0:	d308      	bcc.n	8046eb4 <UART_SetConfig+0x438>
 8046ea2:	6a3b      	ldr	r3, [r7, #32]
 8046ea4:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 8046ea8:	d204      	bcs.n	8046eb4 <UART_SetConfig+0x438>
 8046eaa:	697b      	ldr	r3, [r7, #20]
 8046eac:	681b      	ldr	r3, [r3, #0]
 8046eae:	6a3a      	ldr	r2, [r7, #32]
 8046eb0:	60da      	str	r2, [r3, #12]
 8046eb2:	e0ce      	b.n	8047052 <UART_SetConfig+0x5d6>
 8046eb4:	2301      	movs	r3, #1
 8046eb6:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046eba:	e0ca      	b.n	8047052 <UART_SetConfig+0x5d6>
 8046ebc:	697b      	ldr	r3, [r7, #20]
 8046ebe:	69db      	ldr	r3, [r3, #28]
 8046ec0:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8046ec4:	d166      	bne.n	8046f94 <UART_SetConfig+0x518>
 8046ec6:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8046eca:	2b08      	cmp	r3, #8
 8046ecc:	d827      	bhi.n	8046f1e <UART_SetConfig+0x4a2>
 8046ece:	a201      	add	r2, pc, #4	@ (adr r2, 8046ed4 <UART_SetConfig+0x458>)
 8046ed0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8046ed4:	08046ef9 	.word	0x08046ef9
 8046ed8:	08046f01 	.word	0x08046f01
 8046edc:	08046f09 	.word	0x08046f09
 8046ee0:	08046f1f 	.word	0x08046f1f
 8046ee4:	08046f0f 	.word	0x08046f0f
 8046ee8:	08046f1f 	.word	0x08046f1f
 8046eec:	08046f1f 	.word	0x08046f1f
 8046ef0:	08046f1f 	.word	0x08046f1f
 8046ef4:	08046f17 	.word	0x08046f17
 8046ef8:	f7fd fdb0 	bl	8044a5c <HAL_RCC_GetPCLK1Freq>
 8046efc:	6278      	str	r0, [r7, #36]	@ 0x24
 8046efe:	e014      	b.n	8046f2a <UART_SetConfig+0x4ae>
 8046f00:	f7fd fdc0 	bl	8044a84 <HAL_RCC_GetPCLK2Freq>
 8046f04:	6278      	str	r0, [r7, #36]	@ 0x24
 8046f06:	e010      	b.n	8046f2a <UART_SetConfig+0x4ae>
 8046f08:	4b4e      	ldr	r3, [pc, #312]	@ (8047044 <UART_SetConfig+0x5c8>)
 8046f0a:	627b      	str	r3, [r7, #36]	@ 0x24
 8046f0c:	e00d      	b.n	8046f2a <UART_SetConfig+0x4ae>
 8046f0e:	f7fd fcf5 	bl	80448fc <HAL_RCC_GetSysClockFreq>
 8046f12:	6278      	str	r0, [r7, #36]	@ 0x24
 8046f14:	e009      	b.n	8046f2a <UART_SetConfig+0x4ae>
 8046f16:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8046f1a:	627b      	str	r3, [r7, #36]	@ 0x24
 8046f1c:	e005      	b.n	8046f2a <UART_SetConfig+0x4ae>
 8046f1e:	2300      	movs	r3, #0
 8046f20:	627b      	str	r3, [r7, #36]	@ 0x24
 8046f22:	2301      	movs	r3, #1
 8046f24:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046f28:	bf00      	nop
 8046f2a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046f2c:	2b00      	cmp	r3, #0
 8046f2e:	f000 8090 	beq.w	8047052 <UART_SetConfig+0x5d6>
 8046f32:	697b      	ldr	r3, [r7, #20]
 8046f34:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8046f36:	4a44      	ldr	r2, [pc, #272]	@ (8047048 <UART_SetConfig+0x5cc>)
 8046f38:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8046f3c:	461a      	mov	r2, r3
 8046f3e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046f40:	fbb3 f3f2 	udiv	r3, r3, r2
 8046f44:	005a      	lsls	r2, r3, #1
 8046f46:	697b      	ldr	r3, [r7, #20]
 8046f48:	685b      	ldr	r3, [r3, #4]
 8046f4a:	085b      	lsrs	r3, r3, #1
 8046f4c:	441a      	add	r2, r3
 8046f4e:	697b      	ldr	r3, [r7, #20]
 8046f50:	685b      	ldr	r3, [r3, #4]
 8046f52:	fbb2 f3f3 	udiv	r3, r2, r3
 8046f56:	623b      	str	r3, [r7, #32]
 8046f58:	6a3b      	ldr	r3, [r7, #32]
 8046f5a:	2b0f      	cmp	r3, #15
 8046f5c:	d916      	bls.n	8046f8c <UART_SetConfig+0x510>
 8046f5e:	6a3b      	ldr	r3, [r7, #32]
 8046f60:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8046f64:	d212      	bcs.n	8046f8c <UART_SetConfig+0x510>
 8046f66:	6a3b      	ldr	r3, [r7, #32]
 8046f68:	b29b      	uxth	r3, r3
 8046f6a:	f023 030f 	bic.w	r3, r3, #15
 8046f6e:	83fb      	strh	r3, [r7, #30]
 8046f70:	6a3b      	ldr	r3, [r7, #32]
 8046f72:	085b      	lsrs	r3, r3, #1
 8046f74:	b29b      	uxth	r3, r3
 8046f76:	f003 0307 	and.w	r3, r3, #7
 8046f7a:	b29a      	uxth	r2, r3
 8046f7c:	8bfb      	ldrh	r3, [r7, #30]
 8046f7e:	4313      	orrs	r3, r2
 8046f80:	83fb      	strh	r3, [r7, #30]
 8046f82:	697b      	ldr	r3, [r7, #20]
 8046f84:	681b      	ldr	r3, [r3, #0]
 8046f86:	8bfa      	ldrh	r2, [r7, #30]
 8046f88:	60da      	str	r2, [r3, #12]
 8046f8a:	e062      	b.n	8047052 <UART_SetConfig+0x5d6>
 8046f8c:	2301      	movs	r3, #1
 8046f8e:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046f92:	e05e      	b.n	8047052 <UART_SetConfig+0x5d6>
 8046f94:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8046f98:	2b08      	cmp	r3, #8
 8046f9a:	d828      	bhi.n	8046fee <UART_SetConfig+0x572>
 8046f9c:	a201      	add	r2, pc, #4	@ (adr r2, 8046fa4 <UART_SetConfig+0x528>)
 8046f9e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8046fa2:	bf00      	nop
 8046fa4:	08046fc9 	.word	0x08046fc9
 8046fa8:	08046fd1 	.word	0x08046fd1
 8046fac:	08046fd9 	.word	0x08046fd9
 8046fb0:	08046fef 	.word	0x08046fef
 8046fb4:	08046fdf 	.word	0x08046fdf
 8046fb8:	08046fef 	.word	0x08046fef
 8046fbc:	08046fef 	.word	0x08046fef
 8046fc0:	08046fef 	.word	0x08046fef
 8046fc4:	08046fe7 	.word	0x08046fe7
 8046fc8:	f7fd fd48 	bl	8044a5c <HAL_RCC_GetPCLK1Freq>
 8046fcc:	6278      	str	r0, [r7, #36]	@ 0x24
 8046fce:	e014      	b.n	8046ffa <UART_SetConfig+0x57e>
 8046fd0:	f7fd fd58 	bl	8044a84 <HAL_RCC_GetPCLK2Freq>
 8046fd4:	6278      	str	r0, [r7, #36]	@ 0x24
 8046fd6:	e010      	b.n	8046ffa <UART_SetConfig+0x57e>
 8046fd8:	4b1a      	ldr	r3, [pc, #104]	@ (8047044 <UART_SetConfig+0x5c8>)
 8046fda:	627b      	str	r3, [r7, #36]	@ 0x24
 8046fdc:	e00d      	b.n	8046ffa <UART_SetConfig+0x57e>
 8046fde:	f7fd fc8d 	bl	80448fc <HAL_RCC_GetSysClockFreq>
 8046fe2:	6278      	str	r0, [r7, #36]	@ 0x24
 8046fe4:	e009      	b.n	8046ffa <UART_SetConfig+0x57e>
 8046fe6:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8046fea:	627b      	str	r3, [r7, #36]	@ 0x24
 8046fec:	e005      	b.n	8046ffa <UART_SetConfig+0x57e>
 8046fee:	2300      	movs	r3, #0
 8046ff0:	627b      	str	r3, [r7, #36]	@ 0x24
 8046ff2:	2301      	movs	r3, #1
 8046ff4:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8046ff8:	bf00      	nop
 8046ffa:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8046ffc:	2b00      	cmp	r3, #0
 8046ffe:	d028      	beq.n	8047052 <UART_SetConfig+0x5d6>
 8047000:	697b      	ldr	r3, [r7, #20]
 8047002:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8047004:	4a10      	ldr	r2, [pc, #64]	@ (8047048 <UART_SetConfig+0x5cc>)
 8047006:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 804700a:	461a      	mov	r2, r3
 804700c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 804700e:	fbb3 f2f2 	udiv	r2, r3, r2
 8047012:	697b      	ldr	r3, [r7, #20]
 8047014:	685b      	ldr	r3, [r3, #4]
 8047016:	085b      	lsrs	r3, r3, #1
 8047018:	441a      	add	r2, r3
 804701a:	697b      	ldr	r3, [r7, #20]
 804701c:	685b      	ldr	r3, [r3, #4]
 804701e:	fbb2 f3f3 	udiv	r3, r2, r3
 8047022:	623b      	str	r3, [r7, #32]
 8047024:	6a3b      	ldr	r3, [r7, #32]
 8047026:	2b0f      	cmp	r3, #15
 8047028:	d910      	bls.n	804704c <UART_SetConfig+0x5d0>
 804702a:	6a3b      	ldr	r3, [r7, #32]
 804702c:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8047030:	d20c      	bcs.n	804704c <UART_SetConfig+0x5d0>
 8047032:	6a3b      	ldr	r3, [r7, #32]
 8047034:	b29a      	uxth	r2, r3
 8047036:	697b      	ldr	r3, [r7, #20]
 8047038:	681b      	ldr	r3, [r3, #0]
 804703a:	60da      	str	r2, [r3, #12]
 804703c:	e009      	b.n	8047052 <UART_SetConfig+0x5d6>
 804703e:	bf00      	nop
 8047040:	40008000 	.word	0x40008000
 8047044:	00f42400 	.word	0x00f42400
 8047048:	080487b8 	.word	0x080487b8
 804704c:	2301      	movs	r3, #1
 804704e:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8047052:	697b      	ldr	r3, [r7, #20]
 8047054:	2201      	movs	r2, #1
 8047056:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 804705a:	697b      	ldr	r3, [r7, #20]
 804705c:	2201      	movs	r2, #1
 804705e:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 8047062:	697b      	ldr	r3, [r7, #20]
 8047064:	2200      	movs	r2, #0
 8047066:	675a      	str	r2, [r3, #116]	@ 0x74
 8047068:	697b      	ldr	r3, [r7, #20]
 804706a:	2200      	movs	r2, #0
 804706c:	679a      	str	r2, [r3, #120]	@ 0x78
 804706e:	f897 302a 	ldrb.w	r3, [r7, #42]	@ 0x2a
 8047072:	4618      	mov	r0, r3
 8047074:	3730      	adds	r7, #48	@ 0x30
 8047076:	46bd      	mov	sp, r7
 8047078:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}

0804707c <UART_AdvFeatureConfig>:
 804707c:	b480      	push	{r7}
 804707e:	b083      	sub	sp, #12
 8047080:	af00      	add	r7, sp, #0
 8047082:	6078      	str	r0, [r7, #4]
 8047084:	687b      	ldr	r3, [r7, #4]
 8047086:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8047088:	f003 0308 	and.w	r3, r3, #8
 804708c:	2b00      	cmp	r3, #0
 804708e:	d00a      	beq.n	80470a6 <UART_AdvFeatureConfig+0x2a>
 8047090:	687b      	ldr	r3, [r7, #4]
 8047092:	681b      	ldr	r3, [r3, #0]
 8047094:	685b      	ldr	r3, [r3, #4]
 8047096:	f423 4100 	bic.w	r1, r3, #32768	@ 0x8000
 804709a:	687b      	ldr	r3, [r7, #4]
 804709c:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 804709e:	687b      	ldr	r3, [r7, #4]
 80470a0:	681b      	ldr	r3, [r3, #0]
 80470a2:	430a      	orrs	r2, r1
 80470a4:	605a      	str	r2, [r3, #4]
 80470a6:	687b      	ldr	r3, [r7, #4]
 80470a8:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80470aa:	f003 0301 	and.w	r3, r3, #1
 80470ae:	2b00      	cmp	r3, #0
 80470b0:	d00a      	beq.n	80470c8 <UART_AdvFeatureConfig+0x4c>
 80470b2:	687b      	ldr	r3, [r7, #4]
 80470b4:	681b      	ldr	r3, [r3, #0]
 80470b6:	685b      	ldr	r3, [r3, #4]
 80470b8:	f423 3100 	bic.w	r1, r3, #131072	@ 0x20000
 80470bc:	687b      	ldr	r3, [r7, #4]
 80470be:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80470c0:	687b      	ldr	r3, [r7, #4]
 80470c2:	681b      	ldr	r3, [r3, #0]
 80470c4:	430a      	orrs	r2, r1
 80470c6:	605a      	str	r2, [r3, #4]
 80470c8:	687b      	ldr	r3, [r7, #4]
 80470ca:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80470cc:	f003 0302 	and.w	r3, r3, #2
 80470d0:	2b00      	cmp	r3, #0
 80470d2:	d00a      	beq.n	80470ea <UART_AdvFeatureConfig+0x6e>
 80470d4:	687b      	ldr	r3, [r7, #4]
 80470d6:	681b      	ldr	r3, [r3, #0]
 80470d8:	685b      	ldr	r3, [r3, #4]
 80470da:	f423 3180 	bic.w	r1, r3, #65536	@ 0x10000
 80470de:	687b      	ldr	r3, [r7, #4]
 80470e0:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 80470e2:	687b      	ldr	r3, [r7, #4]
 80470e4:	681b      	ldr	r3, [r3, #0]
 80470e6:	430a      	orrs	r2, r1
 80470e8:	605a      	str	r2, [r3, #4]
 80470ea:	687b      	ldr	r3, [r7, #4]
 80470ec:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80470ee:	f003 0304 	and.w	r3, r3, #4
 80470f2:	2b00      	cmp	r3, #0
 80470f4:	d00a      	beq.n	804710c <UART_AdvFeatureConfig+0x90>
 80470f6:	687b      	ldr	r3, [r7, #4]
 80470f8:	681b      	ldr	r3, [r3, #0]
 80470fa:	685b      	ldr	r3, [r3, #4]
 80470fc:	f423 2180 	bic.w	r1, r3, #262144	@ 0x40000
 8047100:	687b      	ldr	r3, [r7, #4]
 8047102:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 8047104:	687b      	ldr	r3, [r7, #4]
 8047106:	681b      	ldr	r3, [r3, #0]
 8047108:	430a      	orrs	r2, r1
 804710a:	605a      	str	r2, [r3, #4]
 804710c:	687b      	ldr	r3, [r7, #4]
 804710e:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8047110:	f003 0310 	and.w	r3, r3, #16
 8047114:	2b00      	cmp	r3, #0
 8047116:	d00a      	beq.n	804712e <UART_AdvFeatureConfig+0xb2>
 8047118:	687b      	ldr	r3, [r7, #4]
 804711a:	681b      	ldr	r3, [r3, #0]
 804711c:	689b      	ldr	r3, [r3, #8]
 804711e:	f423 5180 	bic.w	r1, r3, #4096	@ 0x1000
 8047122:	687b      	ldr	r3, [r7, #4]
 8047124:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8047126:	687b      	ldr	r3, [r7, #4]
 8047128:	681b      	ldr	r3, [r3, #0]
 804712a:	430a      	orrs	r2, r1
 804712c:	609a      	str	r2, [r3, #8]
 804712e:	687b      	ldr	r3, [r7, #4]
 8047130:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8047132:	f003 0320 	and.w	r3, r3, #32
 8047136:	2b00      	cmp	r3, #0
 8047138:	d00a      	beq.n	8047150 <UART_AdvFeatureConfig+0xd4>
 804713a:	687b      	ldr	r3, [r7, #4]
 804713c:	681b      	ldr	r3, [r3, #0]
 804713e:	689b      	ldr	r3, [r3, #8]
 8047140:	f423 5100 	bic.w	r1, r3, #8192	@ 0x2000
 8047144:	687b      	ldr	r3, [r7, #4]
 8047146:	6c1a      	ldr	r2, [r3, #64]	@ 0x40
 8047148:	687b      	ldr	r3, [r7, #4]
 804714a:	681b      	ldr	r3, [r3, #0]
 804714c:	430a      	orrs	r2, r1
 804714e:	609a      	str	r2, [r3, #8]
 8047150:	687b      	ldr	r3, [r7, #4]
 8047152:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8047154:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8047158:	2b00      	cmp	r3, #0
 804715a:	d01a      	beq.n	8047192 <UART_AdvFeatureConfig+0x116>
 804715c:	687b      	ldr	r3, [r7, #4]
 804715e:	681b      	ldr	r3, [r3, #0]
 8047160:	685b      	ldr	r3, [r3, #4]
 8047162:	f423 1180 	bic.w	r1, r3, #1048576	@ 0x100000
 8047166:	687b      	ldr	r3, [r7, #4]
 8047168:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
 804716a:	687b      	ldr	r3, [r7, #4]
 804716c:	681b      	ldr	r3, [r3, #0]
 804716e:	430a      	orrs	r2, r1
 8047170:	605a      	str	r2, [r3, #4]
 8047172:	687b      	ldr	r3, [r7, #4]
 8047174:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8047176:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 804717a:	d10a      	bne.n	8047192 <UART_AdvFeatureConfig+0x116>
 804717c:	687b      	ldr	r3, [r7, #4]
 804717e:	681b      	ldr	r3, [r3, #0]
 8047180:	685b      	ldr	r3, [r3, #4]
 8047182:	f423 01c0 	bic.w	r1, r3, #6291456	@ 0x600000
 8047186:	687b      	ldr	r3, [r7, #4]
 8047188:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
 804718a:	687b      	ldr	r3, [r7, #4]
 804718c:	681b      	ldr	r3, [r3, #0]
 804718e:	430a      	orrs	r2, r1
 8047190:	605a      	str	r2, [r3, #4]
 8047192:	687b      	ldr	r3, [r7, #4]
 8047194:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8047196:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 804719a:	2b00      	cmp	r3, #0
 804719c:	d00a      	beq.n	80471b4 <UART_AdvFeatureConfig+0x138>
 804719e:	687b      	ldr	r3, [r7, #4]
 80471a0:	681b      	ldr	r3, [r3, #0]
 80471a2:	685b      	ldr	r3, [r3, #4]
 80471a4:	f423 2100 	bic.w	r1, r3, #524288	@ 0x80000
 80471a8:	687b      	ldr	r3, [r7, #4]
 80471aa:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 80471ac:	687b      	ldr	r3, [r7, #4]
 80471ae:	681b      	ldr	r3, [r3, #0]
 80471b0:	430a      	orrs	r2, r1
 80471b2:	605a      	str	r2, [r3, #4]
 80471b4:	bf00      	nop
 80471b6:	370c      	adds	r7, #12
 80471b8:	46bd      	mov	sp, r7
 80471ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80471be:	4770      	bx	lr

080471c0 <UART_CheckIdleState>:
 80471c0:	b580      	push	{r7, lr}
 80471c2:	b098      	sub	sp, #96	@ 0x60
 80471c4:	af02      	add	r7, sp, #8
 80471c6:	6078      	str	r0, [r7, #4]
 80471c8:	687b      	ldr	r3, [r7, #4]
 80471ca:	2200      	movs	r2, #0
 80471cc:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 80471d0:	f7fb ff12 	bl	8042ff8 <HAL_GetTick>
 80471d4:	6578      	str	r0, [r7, #84]	@ 0x54
 80471d6:	687b      	ldr	r3, [r7, #4]
 80471d8:	681b      	ldr	r3, [r3, #0]
 80471da:	681b      	ldr	r3, [r3, #0]
 80471dc:	f003 0308 	and.w	r3, r3, #8
 80471e0:	2b08      	cmp	r3, #8
 80471e2:	d12f      	bne.n	8047244 <UART_CheckIdleState+0x84>
 80471e4:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 80471e8:	9300      	str	r3, [sp, #0]
 80471ea:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 80471ec:	2200      	movs	r2, #0
 80471ee:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 80471f2:	6878      	ldr	r0, [r7, #4]
 80471f4:	f000 f88e 	bl	8047314 <UART_WaitOnFlagUntilTimeout>
 80471f8:	4603      	mov	r3, r0
 80471fa:	2b00      	cmp	r3, #0
 80471fc:	d022      	beq.n	8047244 <UART_CheckIdleState+0x84>
 80471fe:	687b      	ldr	r3, [r7, #4]
 8047200:	681b      	ldr	r3, [r3, #0]
 8047202:	63bb      	str	r3, [r7, #56]	@ 0x38
 8047204:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8047206:	e853 3f00 	ldrex	r3, [r3]
 804720a:	637b      	str	r3, [r7, #52]	@ 0x34
 804720c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 804720e:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8047212:	653b      	str	r3, [r7, #80]	@ 0x50
 8047214:	687b      	ldr	r3, [r7, #4]
 8047216:	681b      	ldr	r3, [r3, #0]
 8047218:	461a      	mov	r2, r3
 804721a:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 804721c:	647b      	str	r3, [r7, #68]	@ 0x44
 804721e:	643a      	str	r2, [r7, #64]	@ 0x40
 8047220:	6c39      	ldr	r1, [r7, #64]	@ 0x40
 8047222:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 8047224:	e841 2300 	strex	r3, r2, [r1]
 8047228:	63fb      	str	r3, [r7, #60]	@ 0x3c
 804722a:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 804722c:	2b00      	cmp	r3, #0
 804722e:	d1e6      	bne.n	80471fe <UART_CheckIdleState+0x3e>
 8047230:	687b      	ldr	r3, [r7, #4]
 8047232:	2220      	movs	r2, #32
 8047234:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8047238:	687b      	ldr	r3, [r7, #4]
 804723a:	2200      	movs	r2, #0
 804723c:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8047240:	2303      	movs	r3, #3
 8047242:	e063      	b.n	804730c <UART_CheckIdleState+0x14c>
 8047244:	687b      	ldr	r3, [r7, #4]
 8047246:	681b      	ldr	r3, [r3, #0]
 8047248:	681b      	ldr	r3, [r3, #0]
 804724a:	f003 0304 	and.w	r3, r3, #4
 804724e:	2b04      	cmp	r3, #4
 8047250:	d149      	bne.n	80472e6 <UART_CheckIdleState+0x126>
 8047252:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8047256:	9300      	str	r3, [sp, #0]
 8047258:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 804725a:	2200      	movs	r2, #0
 804725c:	f44f 0180 	mov.w	r1, #4194304	@ 0x400000
 8047260:	6878      	ldr	r0, [r7, #4]
 8047262:	f000 f857 	bl	8047314 <UART_WaitOnFlagUntilTimeout>
 8047266:	4603      	mov	r3, r0
 8047268:	2b00      	cmp	r3, #0
 804726a:	d03c      	beq.n	80472e6 <UART_CheckIdleState+0x126>
 804726c:	687b      	ldr	r3, [r7, #4]
 804726e:	681b      	ldr	r3, [r3, #0]
 8047270:	627b      	str	r3, [r7, #36]	@ 0x24
 8047272:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8047274:	e853 3f00 	ldrex	r3, [r3]
 8047278:	623b      	str	r3, [r7, #32]
 804727a:	6a3b      	ldr	r3, [r7, #32]
 804727c:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8047280:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8047282:	687b      	ldr	r3, [r7, #4]
 8047284:	681b      	ldr	r3, [r3, #0]
 8047286:	461a      	mov	r2, r3
 8047288:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 804728a:	633b      	str	r3, [r7, #48]	@ 0x30
 804728c:	62fa      	str	r2, [r7, #44]	@ 0x2c
 804728e:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8047290:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8047292:	e841 2300 	strex	r3, r2, [r1]
 8047296:	62bb      	str	r3, [r7, #40]	@ 0x28
 8047298:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 804729a:	2b00      	cmp	r3, #0
 804729c:	d1e6      	bne.n	804726c <UART_CheckIdleState+0xac>
 804729e:	687b      	ldr	r3, [r7, #4]
 80472a0:	681b      	ldr	r3, [r3, #0]
 80472a2:	3308      	adds	r3, #8
 80472a4:	613b      	str	r3, [r7, #16]
 80472a6:	693b      	ldr	r3, [r7, #16]
 80472a8:	e853 3f00 	ldrex	r3, [r3]
 80472ac:	60fb      	str	r3, [r7, #12]
 80472ae:	68fb      	ldr	r3, [r7, #12]
 80472b0:	f023 0301 	bic.w	r3, r3, #1
 80472b4:	64bb      	str	r3, [r7, #72]	@ 0x48
 80472b6:	687b      	ldr	r3, [r7, #4]
 80472b8:	681b      	ldr	r3, [r3, #0]
 80472ba:	3308      	adds	r3, #8
 80472bc:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 80472be:	61fa      	str	r2, [r7, #28]
 80472c0:	61bb      	str	r3, [r7, #24]
 80472c2:	69b9      	ldr	r1, [r7, #24]
 80472c4:	69fa      	ldr	r2, [r7, #28]
 80472c6:	e841 2300 	strex	r3, r2, [r1]
 80472ca:	617b      	str	r3, [r7, #20]
 80472cc:	697b      	ldr	r3, [r7, #20]
 80472ce:	2b00      	cmp	r3, #0
 80472d0:	d1e5      	bne.n	804729e <UART_CheckIdleState+0xde>
 80472d2:	687b      	ldr	r3, [r7, #4]
 80472d4:	2220      	movs	r2, #32
 80472d6:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 80472da:	687b      	ldr	r3, [r7, #4]
 80472dc:	2200      	movs	r2, #0
 80472de:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80472e2:	2303      	movs	r3, #3
 80472e4:	e012      	b.n	804730c <UART_CheckIdleState+0x14c>
 80472e6:	687b      	ldr	r3, [r7, #4]
 80472e8:	2220      	movs	r2, #32
 80472ea:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80472ee:	687b      	ldr	r3, [r7, #4]
 80472f0:	2220      	movs	r2, #32
 80472f2:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 80472f6:	687b      	ldr	r3, [r7, #4]
 80472f8:	2200      	movs	r2, #0
 80472fa:	66da      	str	r2, [r3, #108]	@ 0x6c
 80472fc:	687b      	ldr	r3, [r7, #4]
 80472fe:	2200      	movs	r2, #0
 8047300:	671a      	str	r2, [r3, #112]	@ 0x70
 8047302:	687b      	ldr	r3, [r7, #4]
 8047304:	2200      	movs	r2, #0
 8047306:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804730a:	2300      	movs	r3, #0
 804730c:	4618      	mov	r0, r3
 804730e:	3758      	adds	r7, #88	@ 0x58
 8047310:	46bd      	mov	sp, r7
 8047312:	bd80      	pop	{r7, pc}

08047314 <UART_WaitOnFlagUntilTimeout>:
 8047314:	b580      	push	{r7, lr}
 8047316:	b084      	sub	sp, #16
 8047318:	af00      	add	r7, sp, #0
 804731a:	60f8      	str	r0, [r7, #12]
 804731c:	60b9      	str	r1, [r7, #8]
 804731e:	603b      	str	r3, [r7, #0]
 8047320:	4613      	mov	r3, r2
 8047322:	71fb      	strb	r3, [r7, #7]
 8047324:	e04f      	b.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 8047326:	69bb      	ldr	r3, [r7, #24]
 8047328:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 804732c:	d04b      	beq.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 804732e:	f7fb fe63 	bl	8042ff8 <HAL_GetTick>
 8047332:	4602      	mov	r2, r0
 8047334:	683b      	ldr	r3, [r7, #0]
 8047336:	1ad3      	subs	r3, r2, r3
 8047338:	69ba      	ldr	r2, [r7, #24]
 804733a:	429a      	cmp	r2, r3
 804733c:	d302      	bcc.n	8047344 <UART_WaitOnFlagUntilTimeout+0x30>
 804733e:	69bb      	ldr	r3, [r7, #24]
 8047340:	2b00      	cmp	r3, #0
 8047342:	d101      	bne.n	8047348 <UART_WaitOnFlagUntilTimeout+0x34>
 8047344:	2303      	movs	r3, #3
 8047346:	e04e      	b.n	80473e6 <UART_WaitOnFlagUntilTimeout+0xd2>
 8047348:	68fb      	ldr	r3, [r7, #12]
 804734a:	681b      	ldr	r3, [r3, #0]
 804734c:	681b      	ldr	r3, [r3, #0]
 804734e:	f003 0304 	and.w	r3, r3, #4
 8047352:	2b00      	cmp	r3, #0
 8047354:	d037      	beq.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 8047356:	68bb      	ldr	r3, [r7, #8]
 8047358:	2b80      	cmp	r3, #128	@ 0x80
 804735a:	d034      	beq.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 804735c:	68bb      	ldr	r3, [r7, #8]
 804735e:	2b40      	cmp	r3, #64	@ 0x40
 8047360:	d031      	beq.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 8047362:	68fb      	ldr	r3, [r7, #12]
 8047364:	681b      	ldr	r3, [r3, #0]
 8047366:	69db      	ldr	r3, [r3, #28]
 8047368:	f003 0308 	and.w	r3, r3, #8
 804736c:	2b08      	cmp	r3, #8
 804736e:	d110      	bne.n	8047392 <UART_WaitOnFlagUntilTimeout+0x7e>
 8047370:	68fb      	ldr	r3, [r7, #12]
 8047372:	681b      	ldr	r3, [r3, #0]
 8047374:	2208      	movs	r2, #8
 8047376:	621a      	str	r2, [r3, #32]
 8047378:	68f8      	ldr	r0, [r7, #12]
 804737a:	f000 f838 	bl	80473ee <UART_EndRxTransfer>
 804737e:	68fb      	ldr	r3, [r7, #12]
 8047380:	2208      	movs	r2, #8
 8047382:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8047386:	68fb      	ldr	r3, [r7, #12]
 8047388:	2200      	movs	r2, #0
 804738a:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804738e:	2301      	movs	r3, #1
 8047390:	e029      	b.n	80473e6 <UART_WaitOnFlagUntilTimeout+0xd2>
 8047392:	68fb      	ldr	r3, [r7, #12]
 8047394:	681b      	ldr	r3, [r3, #0]
 8047396:	69db      	ldr	r3, [r3, #28]
 8047398:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 804739c:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 80473a0:	d111      	bne.n	80473c6 <UART_WaitOnFlagUntilTimeout+0xb2>
 80473a2:	68fb      	ldr	r3, [r7, #12]
 80473a4:	681b      	ldr	r3, [r3, #0]
 80473a6:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 80473aa:	621a      	str	r2, [r3, #32]
 80473ac:	68f8      	ldr	r0, [r7, #12]
 80473ae:	f000 f81e 	bl	80473ee <UART_EndRxTransfer>
 80473b2:	68fb      	ldr	r3, [r7, #12]
 80473b4:	2220      	movs	r2, #32
 80473b6:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 80473ba:	68fb      	ldr	r3, [r7, #12]
 80473bc:	2200      	movs	r2, #0
 80473be:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80473c2:	2303      	movs	r3, #3
 80473c4:	e00f      	b.n	80473e6 <UART_WaitOnFlagUntilTimeout+0xd2>
 80473c6:	68fb      	ldr	r3, [r7, #12]
 80473c8:	681b      	ldr	r3, [r3, #0]
 80473ca:	69da      	ldr	r2, [r3, #28]
 80473cc:	68bb      	ldr	r3, [r7, #8]
 80473ce:	4013      	ands	r3, r2
 80473d0:	68ba      	ldr	r2, [r7, #8]
 80473d2:	429a      	cmp	r2, r3
 80473d4:	bf0c      	ite	eq
 80473d6:	2301      	moveq	r3, #1
 80473d8:	2300      	movne	r3, #0
 80473da:	b2db      	uxtb	r3, r3
 80473dc:	461a      	mov	r2, r3
 80473de:	79fb      	ldrb	r3, [r7, #7]
 80473e0:	429a      	cmp	r2, r3
 80473e2:	d0a0      	beq.n	8047326 <UART_WaitOnFlagUntilTimeout+0x12>
 80473e4:	2300      	movs	r3, #0
 80473e6:	4618      	mov	r0, r3
 80473e8:	3710      	adds	r7, #16
 80473ea:	46bd      	mov	sp, r7
 80473ec:	bd80      	pop	{r7, pc}

080473ee <UART_EndRxTransfer>:
 80473ee:	b480      	push	{r7}
 80473f0:	b095      	sub	sp, #84	@ 0x54
 80473f2:	af00      	add	r7, sp, #0
 80473f4:	6078      	str	r0, [r7, #4]
 80473f6:	687b      	ldr	r3, [r7, #4]
 80473f8:	681b      	ldr	r3, [r3, #0]
 80473fa:	637b      	str	r3, [r7, #52]	@ 0x34
 80473fc:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 80473fe:	e853 3f00 	ldrex	r3, [r3]
 8047402:	633b      	str	r3, [r7, #48]	@ 0x30
 8047404:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8047406:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 804740a:	64fb      	str	r3, [r7, #76]	@ 0x4c
 804740c:	687b      	ldr	r3, [r7, #4]
 804740e:	681b      	ldr	r3, [r3, #0]
 8047410:	461a      	mov	r2, r3
 8047412:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 8047414:	643b      	str	r3, [r7, #64]	@ 0x40
 8047416:	63fa      	str	r2, [r7, #60]	@ 0x3c
 8047418:	6bf9      	ldr	r1, [r7, #60]	@ 0x3c
 804741a:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 804741c:	e841 2300 	strex	r3, r2, [r1]
 8047420:	63bb      	str	r3, [r7, #56]	@ 0x38
 8047422:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8047424:	2b00      	cmp	r3, #0
 8047426:	d1e6      	bne.n	80473f6 <UART_EndRxTransfer+0x8>
 8047428:	687b      	ldr	r3, [r7, #4]
 804742a:	681b      	ldr	r3, [r3, #0]
 804742c:	3308      	adds	r3, #8
 804742e:	623b      	str	r3, [r7, #32]
 8047430:	6a3b      	ldr	r3, [r7, #32]
 8047432:	e853 3f00 	ldrex	r3, [r3]
 8047436:	61fb      	str	r3, [r7, #28]
 8047438:	69fb      	ldr	r3, [r7, #28]
 804743a:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 804743e:	f023 0301 	bic.w	r3, r3, #1
 8047442:	64bb      	str	r3, [r7, #72]	@ 0x48
 8047444:	687b      	ldr	r3, [r7, #4]
 8047446:	681b      	ldr	r3, [r3, #0]
 8047448:	3308      	adds	r3, #8
 804744a:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 804744c:	62fa      	str	r2, [r7, #44]	@ 0x2c
 804744e:	62bb      	str	r3, [r7, #40]	@ 0x28
 8047450:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8047452:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8047454:	e841 2300 	strex	r3, r2, [r1]
 8047458:	627b      	str	r3, [r7, #36]	@ 0x24
 804745a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 804745c:	2b00      	cmp	r3, #0
 804745e:	d1e3      	bne.n	8047428 <UART_EndRxTransfer+0x3a>
 8047460:	687b      	ldr	r3, [r7, #4]
 8047462:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8047464:	2b01      	cmp	r3, #1
 8047466:	d118      	bne.n	804749a <UART_EndRxTransfer+0xac>
 8047468:	687b      	ldr	r3, [r7, #4]
 804746a:	681b      	ldr	r3, [r3, #0]
 804746c:	60fb      	str	r3, [r7, #12]
 804746e:	68fb      	ldr	r3, [r7, #12]
 8047470:	e853 3f00 	ldrex	r3, [r3]
 8047474:	60bb      	str	r3, [r7, #8]
 8047476:	68bb      	ldr	r3, [r7, #8]
 8047478:	f023 0310 	bic.w	r3, r3, #16
 804747c:	647b      	str	r3, [r7, #68]	@ 0x44
 804747e:	687b      	ldr	r3, [r7, #4]
 8047480:	681b      	ldr	r3, [r3, #0]
 8047482:	461a      	mov	r2, r3
 8047484:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8047486:	61bb      	str	r3, [r7, #24]
 8047488:	617a      	str	r2, [r7, #20]
 804748a:	6979      	ldr	r1, [r7, #20]
 804748c:	69ba      	ldr	r2, [r7, #24]
 804748e:	e841 2300 	strex	r3, r2, [r1]
 8047492:	613b      	str	r3, [r7, #16]
 8047494:	693b      	ldr	r3, [r7, #16]
 8047496:	2b00      	cmp	r3, #0
 8047498:	d1e6      	bne.n	8047468 <UART_EndRxTransfer+0x7a>
 804749a:	687b      	ldr	r3, [r7, #4]
 804749c:	2220      	movs	r2, #32
 804749e:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 80474a2:	687b      	ldr	r3, [r7, #4]
 80474a4:	2200      	movs	r2, #0
 80474a6:	66da      	str	r2, [r3, #108]	@ 0x6c
 80474a8:	687b      	ldr	r3, [r7, #4]
 80474aa:	2200      	movs	r2, #0
 80474ac:	675a      	str	r2, [r3, #116]	@ 0x74
 80474ae:	bf00      	nop
 80474b0:	3754      	adds	r7, #84	@ 0x54
 80474b2:	46bd      	mov	sp, r7
 80474b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80474b8:	4770      	bx	lr

080474ba <HAL_UARTEx_DisableFifoMode>:
 80474ba:	b480      	push	{r7}
 80474bc:	b085      	sub	sp, #20
 80474be:	af00      	add	r7, sp, #0
 80474c0:	6078      	str	r0, [r7, #4]
 80474c2:	687b      	ldr	r3, [r7, #4]
 80474c4:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 80474c8:	2b01      	cmp	r3, #1
 80474ca:	d101      	bne.n	80474d0 <HAL_UARTEx_DisableFifoMode+0x16>
 80474cc:	2302      	movs	r3, #2
 80474ce:	e027      	b.n	8047520 <HAL_UARTEx_DisableFifoMode+0x66>
 80474d0:	687b      	ldr	r3, [r7, #4]
 80474d2:	2201      	movs	r2, #1
 80474d4:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80474d8:	687b      	ldr	r3, [r7, #4]
 80474da:	2224      	movs	r2, #36	@ 0x24
 80474dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80474e0:	687b      	ldr	r3, [r7, #4]
 80474e2:	681b      	ldr	r3, [r3, #0]
 80474e4:	681b      	ldr	r3, [r3, #0]
 80474e6:	60fb      	str	r3, [r7, #12]
 80474e8:	687b      	ldr	r3, [r7, #4]
 80474ea:	681b      	ldr	r3, [r3, #0]
 80474ec:	681a      	ldr	r2, [r3, #0]
 80474ee:	687b      	ldr	r3, [r7, #4]
 80474f0:	681b      	ldr	r3, [r3, #0]
 80474f2:	f022 0201 	bic.w	r2, r2, #1
 80474f6:	601a      	str	r2, [r3, #0]
 80474f8:	68fb      	ldr	r3, [r7, #12]
 80474fa:	f023 5300 	bic.w	r3, r3, #536870912	@ 0x20000000
 80474fe:	60fb      	str	r3, [r7, #12]
 8047500:	687b      	ldr	r3, [r7, #4]
 8047502:	2200      	movs	r2, #0
 8047504:	665a      	str	r2, [r3, #100]	@ 0x64
 8047506:	687b      	ldr	r3, [r7, #4]
 8047508:	681b      	ldr	r3, [r3, #0]
 804750a:	68fa      	ldr	r2, [r7, #12]
 804750c:	601a      	str	r2, [r3, #0]
 804750e:	687b      	ldr	r3, [r7, #4]
 8047510:	2220      	movs	r2, #32
 8047512:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8047516:	687b      	ldr	r3, [r7, #4]
 8047518:	2200      	movs	r2, #0
 804751a:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804751e:	2300      	movs	r3, #0
 8047520:	4618      	mov	r0, r3
 8047522:	3714      	adds	r7, #20
 8047524:	46bd      	mov	sp, r7
 8047526:	f85d 7b04 	ldr.w	r7, [sp], #4
 804752a:	4770      	bx	lr

0804752c <HAL_UARTEx_SetTxFifoThreshold>:
 804752c:	b580      	push	{r7, lr}
 804752e:	b084      	sub	sp, #16
 8047530:	af00      	add	r7, sp, #0
 8047532:	6078      	str	r0, [r7, #4]
 8047534:	6039      	str	r1, [r7, #0]
 8047536:	687b      	ldr	r3, [r7, #4]
 8047538:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 804753c:	2b01      	cmp	r3, #1
 804753e:	d101      	bne.n	8047544 <HAL_UARTEx_SetTxFifoThreshold+0x18>
 8047540:	2302      	movs	r3, #2
 8047542:	e02d      	b.n	80475a0 <HAL_UARTEx_SetTxFifoThreshold+0x74>
 8047544:	687b      	ldr	r3, [r7, #4]
 8047546:	2201      	movs	r2, #1
 8047548:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804754c:	687b      	ldr	r3, [r7, #4]
 804754e:	2224      	movs	r2, #36	@ 0x24
 8047550:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8047554:	687b      	ldr	r3, [r7, #4]
 8047556:	681b      	ldr	r3, [r3, #0]
 8047558:	681b      	ldr	r3, [r3, #0]
 804755a:	60fb      	str	r3, [r7, #12]
 804755c:	687b      	ldr	r3, [r7, #4]
 804755e:	681b      	ldr	r3, [r3, #0]
 8047560:	681a      	ldr	r2, [r3, #0]
 8047562:	687b      	ldr	r3, [r7, #4]
 8047564:	681b      	ldr	r3, [r3, #0]
 8047566:	f022 0201 	bic.w	r2, r2, #1
 804756a:	601a      	str	r2, [r3, #0]
 804756c:	687b      	ldr	r3, [r7, #4]
 804756e:	681b      	ldr	r3, [r3, #0]
 8047570:	689b      	ldr	r3, [r3, #8]
 8047572:	f023 4160 	bic.w	r1, r3, #3758096384	@ 0xe0000000
 8047576:	687b      	ldr	r3, [r7, #4]
 8047578:	681b      	ldr	r3, [r3, #0]
 804757a:	683a      	ldr	r2, [r7, #0]
 804757c:	430a      	orrs	r2, r1
 804757e:	609a      	str	r2, [r3, #8]
 8047580:	6878      	ldr	r0, [r7, #4]
 8047582:	f000 f84f 	bl	8047624 <UARTEx_SetNbDataToProcess>
 8047586:	687b      	ldr	r3, [r7, #4]
 8047588:	681b      	ldr	r3, [r3, #0]
 804758a:	68fa      	ldr	r2, [r7, #12]
 804758c:	601a      	str	r2, [r3, #0]
 804758e:	687b      	ldr	r3, [r7, #4]
 8047590:	2220      	movs	r2, #32
 8047592:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8047596:	687b      	ldr	r3, [r7, #4]
 8047598:	2200      	movs	r2, #0
 804759a:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804759e:	2300      	movs	r3, #0
 80475a0:	4618      	mov	r0, r3
 80475a2:	3710      	adds	r7, #16
 80475a4:	46bd      	mov	sp, r7
 80475a6:	bd80      	pop	{r7, pc}

080475a8 <HAL_UARTEx_SetRxFifoThreshold>:
 80475a8:	b580      	push	{r7, lr}
 80475aa:	b084      	sub	sp, #16
 80475ac:	af00      	add	r7, sp, #0
 80475ae:	6078      	str	r0, [r7, #4]
 80475b0:	6039      	str	r1, [r7, #0]
 80475b2:	687b      	ldr	r3, [r7, #4]
 80475b4:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 80475b8:	2b01      	cmp	r3, #1
 80475ba:	d101      	bne.n	80475c0 <HAL_UARTEx_SetRxFifoThreshold+0x18>
 80475bc:	2302      	movs	r3, #2
 80475be:	e02d      	b.n	804761c <HAL_UARTEx_SetRxFifoThreshold+0x74>
 80475c0:	687b      	ldr	r3, [r7, #4]
 80475c2:	2201      	movs	r2, #1
 80475c4:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80475c8:	687b      	ldr	r3, [r7, #4]
 80475ca:	2224      	movs	r2, #36	@ 0x24
 80475cc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80475d0:	687b      	ldr	r3, [r7, #4]
 80475d2:	681b      	ldr	r3, [r3, #0]
 80475d4:	681b      	ldr	r3, [r3, #0]
 80475d6:	60fb      	str	r3, [r7, #12]
 80475d8:	687b      	ldr	r3, [r7, #4]
 80475da:	681b      	ldr	r3, [r3, #0]
 80475dc:	681a      	ldr	r2, [r3, #0]
 80475de:	687b      	ldr	r3, [r7, #4]
 80475e0:	681b      	ldr	r3, [r3, #0]
 80475e2:	f022 0201 	bic.w	r2, r2, #1
 80475e6:	601a      	str	r2, [r3, #0]
 80475e8:	687b      	ldr	r3, [r7, #4]
 80475ea:	681b      	ldr	r3, [r3, #0]
 80475ec:	689b      	ldr	r3, [r3, #8]
 80475ee:	f023 6160 	bic.w	r1, r3, #234881024	@ 0xe000000
 80475f2:	687b      	ldr	r3, [r7, #4]
 80475f4:	681b      	ldr	r3, [r3, #0]
 80475f6:	683a      	ldr	r2, [r7, #0]
 80475f8:	430a      	orrs	r2, r1
 80475fa:	609a      	str	r2, [r3, #8]
 80475fc:	6878      	ldr	r0, [r7, #4]
 80475fe:	f000 f811 	bl	8047624 <UARTEx_SetNbDataToProcess>
 8047602:	687b      	ldr	r3, [r7, #4]
 8047604:	681b      	ldr	r3, [r3, #0]
 8047606:	68fa      	ldr	r2, [r7, #12]
 8047608:	601a      	str	r2, [r3, #0]
 804760a:	687b      	ldr	r3, [r7, #4]
 804760c:	2220      	movs	r2, #32
 804760e:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8047612:	687b      	ldr	r3, [r7, #4]
 8047614:	2200      	movs	r2, #0
 8047616:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804761a:	2300      	movs	r3, #0
 804761c:	4618      	mov	r0, r3
 804761e:	3710      	adds	r7, #16
 8047620:	46bd      	mov	sp, r7
 8047622:	bd80      	pop	{r7, pc}

08047624 <UARTEx_SetNbDataToProcess>:
 8047624:	b480      	push	{r7}
 8047626:	b085      	sub	sp, #20
 8047628:	af00      	add	r7, sp, #0
 804762a:	6078      	str	r0, [r7, #4]
 804762c:	687b      	ldr	r3, [r7, #4]
 804762e:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 8047630:	2b00      	cmp	r3, #0
 8047632:	d108      	bne.n	8047646 <UARTEx_SetNbDataToProcess+0x22>
 8047634:	687b      	ldr	r3, [r7, #4]
 8047636:	2201      	movs	r2, #1
 8047638:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 804763c:	687b      	ldr	r3, [r7, #4]
 804763e:	2201      	movs	r2, #1
 8047640:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 8047644:	e031      	b.n	80476aa <UARTEx_SetNbDataToProcess+0x86>
 8047646:	2308      	movs	r3, #8
 8047648:	73fb      	strb	r3, [r7, #15]
 804764a:	2308      	movs	r3, #8
 804764c:	73bb      	strb	r3, [r7, #14]
 804764e:	687b      	ldr	r3, [r7, #4]
 8047650:	681b      	ldr	r3, [r3, #0]
 8047652:	689b      	ldr	r3, [r3, #8]
 8047654:	0e5b      	lsrs	r3, r3, #25
 8047656:	b2db      	uxtb	r3, r3
 8047658:	f003 0307 	and.w	r3, r3, #7
 804765c:	737b      	strb	r3, [r7, #13]
 804765e:	687b      	ldr	r3, [r7, #4]
 8047660:	681b      	ldr	r3, [r3, #0]
 8047662:	689b      	ldr	r3, [r3, #8]
 8047664:	0f5b      	lsrs	r3, r3, #29
 8047666:	b2db      	uxtb	r3, r3
 8047668:	f003 0307 	and.w	r3, r3, #7
 804766c:	733b      	strb	r3, [r7, #12]
 804766e:	7bbb      	ldrb	r3, [r7, #14]
 8047670:	7b3a      	ldrb	r2, [r7, #12]
 8047672:	4911      	ldr	r1, [pc, #68]	@ (80476b8 <UARTEx_SetNbDataToProcess+0x94>)
 8047674:	5c8a      	ldrb	r2, [r1, r2]
 8047676:	fb02 f303 	mul.w	r3, r2, r3
 804767a:	7b3a      	ldrb	r2, [r7, #12]
 804767c:	490f      	ldr	r1, [pc, #60]	@ (80476bc <UARTEx_SetNbDataToProcess+0x98>)
 804767e:	5c8a      	ldrb	r2, [r1, r2]
 8047680:	fb93 f3f2 	sdiv	r3, r3, r2
 8047684:	b29a      	uxth	r2, r3
 8047686:	687b      	ldr	r3, [r7, #4]
 8047688:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 804768c:	7bfb      	ldrb	r3, [r7, #15]
 804768e:	7b7a      	ldrb	r2, [r7, #13]
 8047690:	4909      	ldr	r1, [pc, #36]	@ (80476b8 <UARTEx_SetNbDataToProcess+0x94>)
 8047692:	5c8a      	ldrb	r2, [r1, r2]
 8047694:	fb02 f303 	mul.w	r3, r2, r3
 8047698:	7b7a      	ldrb	r2, [r7, #13]
 804769a:	4908      	ldr	r1, [pc, #32]	@ (80476bc <UARTEx_SetNbDataToProcess+0x98>)
 804769c:	5c8a      	ldrb	r2, [r1, r2]
 804769e:	fb93 f3f2 	sdiv	r3, r3, r2
 80476a2:	b29a      	uxth	r2, r3
 80476a4:	687b      	ldr	r3, [r7, #4]
 80476a6:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 80476aa:	bf00      	nop
 80476ac:	3714      	adds	r7, #20
 80476ae:	46bd      	mov	sp, r7
 80476b0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80476b4:	4770      	bx	lr
 80476b6:	bf00      	nop
 80476b8:	080487d0 	.word	0x080487d0
 80476bc:	080487d8 	.word	0x080487d8

080476c0 <Reset_Handler>:
 80476c0:	f8df d034 	ldr.w	sp, [pc, #52]	@ 80476f8 <LoopForever+0x2>
 80476c4:	f7fa ff08 	bl	80424d8 <SystemInit>
 80476c8:	2100      	movs	r1, #0
 80476ca:	e003      	b.n	80476d4 <LoopCopyDataInit>

080476cc <CopyDataInit>:
 80476cc:	4b0b      	ldr	r3, [pc, #44]	@ (80476fc <LoopForever+0x6>)
 80476ce:	585b      	ldr	r3, [r3, r1]
 80476d0:	5043      	str	r3, [r0, r1]
 80476d2:	3104      	adds	r1, #4

080476d4 <LoopCopyDataInit>:
 80476d4:	480a      	ldr	r0, [pc, #40]	@ (8047700 <LoopForever+0xa>)
 80476d6:	4b0b      	ldr	r3, [pc, #44]	@ (8047704 <LoopForever+0xe>)
 80476d8:	1842      	adds	r2, r0, r1
 80476da:	429a      	cmp	r2, r3
 80476dc:	d3f6      	bcc.n	80476cc <CopyDataInit>
 80476de:	4a0a      	ldr	r2, [pc, #40]	@ (8047708 <LoopForever+0x12>)
 80476e0:	e002      	b.n	80476e8 <LoopFillZerobss>

080476e2 <FillZerobss>:
 80476e2:	2300      	movs	r3, #0
 80476e4:	f842 3b04 	str.w	r3, [r2], #4

080476e8 <LoopFillZerobss>:
 80476e8:	4b08      	ldr	r3, [pc, #32]	@ (804770c <LoopForever+0x16>)
 80476ea:	429a      	cmp	r2, r3
 80476ec:	d3f9      	bcc.n	80476e2 <FillZerobss>
 80476ee:	f7f9 f8b3 	bl	8040858 <__libc_init_array>
 80476f2:	f7fa fd3d 	bl	8042170 <main>

080476f6 <LoopForever>:
 80476f6:	e7fe      	b.n	80476f6 <LoopForever>
 80476f8:	20030000 	.word	0x20030000
 80476fc:	08048824 	.word	0x08048824
 8047700:	20018000 	.word	0x20018000
 8047704:	2001812c 	.word	0x2001812c
 8047708:	2001812c 	.word	0x2001812c
 804770c:	2001a390 	.word	0x2001a390

08047710 <ADC1_2_IRQHandler>:
 8047710:	e7fe      	b.n	8047710 <ADC1_2_IRQHandler>
	...

08047714 <iprintf>:
 8047714:	b40f      	push	{r0, r1, r2, r3}
 8047716:	b507      	push	{r0, r1, r2, lr}
 8047718:	4906      	ldr	r1, [pc, #24]	@ (8047734 <iprintf+0x20>)
 804771a:	ab04      	add	r3, sp, #16
 804771c:	6808      	ldr	r0, [r1, #0]
 804771e:	f853 2b04 	ldr.w	r2, [r3], #4
 8047722:	6881      	ldr	r1, [r0, #8]
 8047724:	9301      	str	r3, [sp, #4]
 8047726:	f000 f929 	bl	804797c <_vfiprintf_r>
 804772a:	b003      	add	sp, #12
 804772c:	f85d eb04 	ldr.w	lr, [sp], #4
 8047730:	b004      	add	sp, #16
 8047732:	4770      	bx	lr
 8047734:	2001800c 	.word	0x2001800c

08047738 <_puts_r>:
 8047738:	6a03      	ldr	r3, [r0, #32]
 804773a:	b570      	push	{r4, r5, r6, lr}
 804773c:	4605      	mov	r5, r0
 804773e:	460e      	mov	r6, r1
 8047740:	6884      	ldr	r4, [r0, #8]
 8047742:	b90b      	cbnz	r3, 8047748 <_puts_r+0x10>
 8047744:	f7f8 ffc0 	bl	80406c8 <__sinit>
 8047748:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 804774a:	07db      	lsls	r3, r3, #31
 804774c:	d405      	bmi.n	804775a <_puts_r+0x22>
 804774e:	89a3      	ldrh	r3, [r4, #12]
 8047750:	0598      	lsls	r0, r3, #22
 8047752:	d402      	bmi.n	804775a <_puts_r+0x22>
 8047754:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8047756:	f7f9 f8a4 	bl	80408a2 <__retarget_lock_acquire_recursive>
 804775a:	89a3      	ldrh	r3, [r4, #12]
 804775c:	0719      	lsls	r1, r3, #28
 804775e:	d502      	bpl.n	8047766 <_puts_r+0x2e>
 8047760:	6923      	ldr	r3, [r4, #16]
 8047762:	2b00      	cmp	r3, #0
 8047764:	d135      	bne.n	80477d2 <_puts_r+0x9a>
 8047766:	4621      	mov	r1, r4
 8047768:	4628      	mov	r0, r5
 804776a:	f000 f881 	bl	8047870 <__swsetup_r>
 804776e:	b380      	cbz	r0, 80477d2 <_puts_r+0x9a>
 8047770:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
 8047774:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8047776:	07da      	lsls	r2, r3, #31
 8047778:	d405      	bmi.n	8047786 <_puts_r+0x4e>
 804777a:	89a3      	ldrh	r3, [r4, #12]
 804777c:	059b      	lsls	r3, r3, #22
 804777e:	d402      	bmi.n	8047786 <_puts_r+0x4e>
 8047780:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8047782:	f7f9 f88f 	bl	80408a4 <__retarget_lock_release_recursive>
 8047786:	4628      	mov	r0, r5
 8047788:	bd70      	pop	{r4, r5, r6, pc}
 804778a:	2b00      	cmp	r3, #0
 804778c:	da04      	bge.n	8047798 <_puts_r+0x60>
 804778e:	69a2      	ldr	r2, [r4, #24]
 8047790:	429a      	cmp	r2, r3
 8047792:	dc17      	bgt.n	80477c4 <_puts_r+0x8c>
 8047794:	290a      	cmp	r1, #10
 8047796:	d015      	beq.n	80477c4 <_puts_r+0x8c>
 8047798:	6823      	ldr	r3, [r4, #0]
 804779a:	1c5a      	adds	r2, r3, #1
 804779c:	6022      	str	r2, [r4, #0]
 804779e:	7019      	strb	r1, [r3, #0]
 80477a0:	68a3      	ldr	r3, [r4, #8]
 80477a2:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 80477a6:	3b01      	subs	r3, #1
 80477a8:	60a3      	str	r3, [r4, #8]
 80477aa:	2900      	cmp	r1, #0
 80477ac:	d1ed      	bne.n	804778a <_puts_r+0x52>
 80477ae:	2b00      	cmp	r3, #0
 80477b0:	da11      	bge.n	80477d6 <_puts_r+0x9e>
 80477b2:	4622      	mov	r2, r4
 80477b4:	210a      	movs	r1, #10
 80477b6:	4628      	mov	r0, r5
 80477b8:	f000 f81c 	bl	80477f4 <__swbuf_r>
 80477bc:	3001      	adds	r0, #1
 80477be:	d0d7      	beq.n	8047770 <_puts_r+0x38>
 80477c0:	250a      	movs	r5, #10
 80477c2:	e7d7      	b.n	8047774 <_puts_r+0x3c>
 80477c4:	4622      	mov	r2, r4
 80477c6:	4628      	mov	r0, r5
 80477c8:	f000 f814 	bl	80477f4 <__swbuf_r>
 80477cc:	3001      	adds	r0, #1
 80477ce:	d1e7      	bne.n	80477a0 <_puts_r+0x68>
 80477d0:	e7ce      	b.n	8047770 <_puts_r+0x38>
 80477d2:	3e01      	subs	r6, #1
 80477d4:	e7e4      	b.n	80477a0 <_puts_r+0x68>
 80477d6:	6823      	ldr	r3, [r4, #0]
 80477d8:	1c5a      	adds	r2, r3, #1
 80477da:	6022      	str	r2, [r4, #0]
 80477dc:	220a      	movs	r2, #10
 80477de:	701a      	strb	r2, [r3, #0]
 80477e0:	e7ee      	b.n	80477c0 <_puts_r+0x88>
	...

080477e4 <puts>:
 80477e4:	4b02      	ldr	r3, [pc, #8]	@ (80477f0 <puts+0xc>)
 80477e6:	4601      	mov	r1, r0
 80477e8:	6818      	ldr	r0, [r3, #0]
 80477ea:	f7ff bfa5 	b.w	8047738 <_puts_r>
 80477ee:	bf00      	nop
 80477f0:	2001800c 	.word	0x2001800c

080477f4 <__swbuf_r>:
 80477f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80477f6:	460e      	mov	r6, r1
 80477f8:	4614      	mov	r4, r2
 80477fa:	4605      	mov	r5, r0
 80477fc:	b118      	cbz	r0, 8047806 <__swbuf_r+0x12>
 80477fe:	6a03      	ldr	r3, [r0, #32]
 8047800:	b90b      	cbnz	r3, 8047806 <__swbuf_r+0x12>
 8047802:	f7f8 ff61 	bl	80406c8 <__sinit>
 8047806:	69a3      	ldr	r3, [r4, #24]
 8047808:	60a3      	str	r3, [r4, #8]
 804780a:	89a3      	ldrh	r3, [r4, #12]
 804780c:	071a      	lsls	r2, r3, #28
 804780e:	d501      	bpl.n	8047814 <__swbuf_r+0x20>
 8047810:	6923      	ldr	r3, [r4, #16]
 8047812:	b943      	cbnz	r3, 8047826 <__swbuf_r+0x32>
 8047814:	4621      	mov	r1, r4
 8047816:	4628      	mov	r0, r5
 8047818:	f000 f82a 	bl	8047870 <__swsetup_r>
 804781c:	b118      	cbz	r0, 8047826 <__swbuf_r+0x32>
 804781e:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
 8047822:	4638      	mov	r0, r7
 8047824:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8047826:	6823      	ldr	r3, [r4, #0]
 8047828:	b2f6      	uxtb	r6, r6
 804782a:	6922      	ldr	r2, [r4, #16]
 804782c:	4637      	mov	r7, r6
 804782e:	1a98      	subs	r0, r3, r2
 8047830:	6963      	ldr	r3, [r4, #20]
 8047832:	4283      	cmp	r3, r0
 8047834:	dc05      	bgt.n	8047842 <__swbuf_r+0x4e>
 8047836:	4621      	mov	r1, r4
 8047838:	4628      	mov	r0, r5
 804783a:	f7f9 f9b1 	bl	8040ba0 <_fflush_r>
 804783e:	2800      	cmp	r0, #0
 8047840:	d1ed      	bne.n	804781e <__swbuf_r+0x2a>
 8047842:	68a3      	ldr	r3, [r4, #8]
 8047844:	3b01      	subs	r3, #1
 8047846:	60a3      	str	r3, [r4, #8]
 8047848:	6823      	ldr	r3, [r4, #0]
 804784a:	1c5a      	adds	r2, r3, #1
 804784c:	6022      	str	r2, [r4, #0]
 804784e:	701e      	strb	r6, [r3, #0]
 8047850:	1c43      	adds	r3, r0, #1
 8047852:	6962      	ldr	r2, [r4, #20]
 8047854:	429a      	cmp	r2, r3
 8047856:	d004      	beq.n	8047862 <__swbuf_r+0x6e>
 8047858:	89a3      	ldrh	r3, [r4, #12]
 804785a:	07db      	lsls	r3, r3, #31
 804785c:	d5e1      	bpl.n	8047822 <__swbuf_r+0x2e>
 804785e:	2e0a      	cmp	r6, #10
 8047860:	d1df      	bne.n	8047822 <__swbuf_r+0x2e>
 8047862:	4621      	mov	r1, r4
 8047864:	4628      	mov	r0, r5
 8047866:	f7f9 f99b 	bl	8040ba0 <_fflush_r>
 804786a:	2800      	cmp	r0, #0
 804786c:	d0d9      	beq.n	8047822 <__swbuf_r+0x2e>
 804786e:	e7d6      	b.n	804781e <__swbuf_r+0x2a>

08047870 <__swsetup_r>:
 8047870:	b538      	push	{r3, r4, r5, lr}
 8047872:	4b29      	ldr	r3, [pc, #164]	@ (8047918 <__swsetup_r+0xa8>)
 8047874:	4605      	mov	r5, r0
 8047876:	460c      	mov	r4, r1
 8047878:	6818      	ldr	r0, [r3, #0]
 804787a:	b118      	cbz	r0, 8047884 <__swsetup_r+0x14>
 804787c:	6a03      	ldr	r3, [r0, #32]
 804787e:	b90b      	cbnz	r3, 8047884 <__swsetup_r+0x14>
 8047880:	f7f8 ff22 	bl	80406c8 <__sinit>
 8047884:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8047888:	0719      	lsls	r1, r3, #28
 804788a:	d422      	bmi.n	80478d2 <__swsetup_r+0x62>
 804788c:	06da      	lsls	r2, r3, #27
 804788e:	d407      	bmi.n	80478a0 <__swsetup_r+0x30>
 8047890:	2209      	movs	r2, #9
 8047892:	602a      	str	r2, [r5, #0]
 8047894:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8047898:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 804789c:	81a3      	strh	r3, [r4, #12]
 804789e:	e033      	b.n	8047908 <__swsetup_r+0x98>
 80478a0:	0758      	lsls	r0, r3, #29
 80478a2:	d512      	bpl.n	80478ca <__swsetup_r+0x5a>
 80478a4:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 80478a6:	b141      	cbz	r1, 80478ba <__swsetup_r+0x4a>
 80478a8:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 80478ac:	4299      	cmp	r1, r3
 80478ae:	d002      	beq.n	80478b6 <__swsetup_r+0x46>
 80478b0:	4628      	mov	r0, r5
 80478b2:	f7f8 fff9 	bl	80408a8 <_free_r>
 80478b6:	2300      	movs	r3, #0
 80478b8:	6363      	str	r3, [r4, #52]	@ 0x34
 80478ba:	89a3      	ldrh	r3, [r4, #12]
 80478bc:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
 80478c0:	81a3      	strh	r3, [r4, #12]
 80478c2:	2300      	movs	r3, #0
 80478c4:	6063      	str	r3, [r4, #4]
 80478c6:	6923      	ldr	r3, [r4, #16]
 80478c8:	6023      	str	r3, [r4, #0]
 80478ca:	89a3      	ldrh	r3, [r4, #12]
 80478cc:	f043 0308 	orr.w	r3, r3, #8
 80478d0:	81a3      	strh	r3, [r4, #12]
 80478d2:	6923      	ldr	r3, [r4, #16]
 80478d4:	b94b      	cbnz	r3, 80478ea <__swsetup_r+0x7a>
 80478d6:	89a3      	ldrh	r3, [r4, #12]
 80478d8:	f403 7320 	and.w	r3, r3, #640	@ 0x280
 80478dc:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 80478e0:	d003      	beq.n	80478ea <__swsetup_r+0x7a>
 80478e2:	4621      	mov	r1, r4
 80478e4:	4628      	mov	r0, r5
 80478e6:	f000 fb16 	bl	8047f16 <__smakebuf_r>
 80478ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80478ee:	f013 0201 	ands.w	r2, r3, #1
 80478f2:	d00a      	beq.n	804790a <__swsetup_r+0x9a>
 80478f4:	2200      	movs	r2, #0
 80478f6:	60a2      	str	r2, [r4, #8]
 80478f8:	6962      	ldr	r2, [r4, #20]
 80478fa:	4252      	negs	r2, r2
 80478fc:	61a2      	str	r2, [r4, #24]
 80478fe:	6922      	ldr	r2, [r4, #16]
 8047900:	b942      	cbnz	r2, 8047914 <__swsetup_r+0xa4>
 8047902:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
 8047906:	d1c5      	bne.n	8047894 <__swsetup_r+0x24>
 8047908:	bd38      	pop	{r3, r4, r5, pc}
 804790a:	0799      	lsls	r1, r3, #30
 804790c:	bf58      	it	pl
 804790e:	6962      	ldrpl	r2, [r4, #20]
 8047910:	60a2      	str	r2, [r4, #8]
 8047912:	e7f4      	b.n	80478fe <__swsetup_r+0x8e>
 8047914:	2000      	movs	r0, #0
 8047916:	e7f7      	b.n	8047908 <__swsetup_r+0x98>
 8047918:	2001800c 	.word	0x2001800c

0804791c <__errno>:
 804791c:	4b01      	ldr	r3, [pc, #4]	@ (8047924 <__errno+0x8>)
 804791e:	6818      	ldr	r0, [r3, #0]
 8047920:	4770      	bx	lr
 8047922:	bf00      	nop
 8047924:	2001800c 	.word	0x2001800c

08047928 <__sfputc_r>:
 8047928:	6893      	ldr	r3, [r2, #8]
 804792a:	3b01      	subs	r3, #1
 804792c:	2b00      	cmp	r3, #0
 804792e:	b410      	push	{r4}
 8047930:	6093      	str	r3, [r2, #8]
 8047932:	da08      	bge.n	8047946 <__sfputc_r+0x1e>
 8047934:	6994      	ldr	r4, [r2, #24]
 8047936:	42a3      	cmp	r3, r4
 8047938:	db01      	blt.n	804793e <__sfputc_r+0x16>
 804793a:	290a      	cmp	r1, #10
 804793c:	d103      	bne.n	8047946 <__sfputc_r+0x1e>
 804793e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8047942:	f7ff bf57 	b.w	80477f4 <__swbuf_r>
 8047946:	6813      	ldr	r3, [r2, #0]
 8047948:	1c58      	adds	r0, r3, #1
 804794a:	6010      	str	r0, [r2, #0]
 804794c:	4608      	mov	r0, r1
 804794e:	7019      	strb	r1, [r3, #0]
 8047950:	f85d 4b04 	ldr.w	r4, [sp], #4
 8047954:	4770      	bx	lr

08047956 <__sfputs_r>:
 8047956:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8047958:	4606      	mov	r6, r0
 804795a:	460f      	mov	r7, r1
 804795c:	4614      	mov	r4, r2
 804795e:	18d5      	adds	r5, r2, r3
 8047960:	42ac      	cmp	r4, r5
 8047962:	d101      	bne.n	8047968 <__sfputs_r+0x12>
 8047964:	2000      	movs	r0, #0
 8047966:	e007      	b.n	8047978 <__sfputs_r+0x22>
 8047968:	463a      	mov	r2, r7
 804796a:	f814 1b01 	ldrb.w	r1, [r4], #1
 804796e:	4630      	mov	r0, r6
 8047970:	f7ff ffda 	bl	8047928 <__sfputc_r>
 8047974:	1c43      	adds	r3, r0, #1
 8047976:	d1f3      	bne.n	8047960 <__sfputs_r+0xa>
 8047978:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

0804797c <_vfiprintf_r>:
 804797c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8047980:	460d      	mov	r5, r1
 8047982:	b09d      	sub	sp, #116	@ 0x74
 8047984:	4614      	mov	r4, r2
 8047986:	4698      	mov	r8, r3
 8047988:	4606      	mov	r6, r0
 804798a:	b118      	cbz	r0, 8047994 <_vfiprintf_r+0x18>
 804798c:	6a03      	ldr	r3, [r0, #32]
 804798e:	b90b      	cbnz	r3, 8047994 <_vfiprintf_r+0x18>
 8047990:	f7f8 fe9a 	bl	80406c8 <__sinit>
 8047994:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 8047996:	07d9      	lsls	r1, r3, #31
 8047998:	d405      	bmi.n	80479a6 <_vfiprintf_r+0x2a>
 804799a:	89ab      	ldrh	r3, [r5, #12]
 804799c:	059a      	lsls	r2, r3, #22
 804799e:	d402      	bmi.n	80479a6 <_vfiprintf_r+0x2a>
 80479a0:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 80479a2:	f7f8 ff7e 	bl	80408a2 <__retarget_lock_acquire_recursive>
 80479a6:	89ab      	ldrh	r3, [r5, #12]
 80479a8:	071b      	lsls	r3, r3, #28
 80479aa:	d501      	bpl.n	80479b0 <_vfiprintf_r+0x34>
 80479ac:	692b      	ldr	r3, [r5, #16]
 80479ae:	b99b      	cbnz	r3, 80479d8 <_vfiprintf_r+0x5c>
 80479b0:	4629      	mov	r1, r5
 80479b2:	4630      	mov	r0, r6
 80479b4:	f7ff ff5c 	bl	8047870 <__swsetup_r>
 80479b8:	b170      	cbz	r0, 80479d8 <_vfiprintf_r+0x5c>
 80479ba:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 80479bc:	07dc      	lsls	r4, r3, #31
 80479be:	d504      	bpl.n	80479ca <_vfiprintf_r+0x4e>
 80479c0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80479c4:	b01d      	add	sp, #116	@ 0x74
 80479c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80479ca:	89ab      	ldrh	r3, [r5, #12]
 80479cc:	0598      	lsls	r0, r3, #22
 80479ce:	d4f7      	bmi.n	80479c0 <_vfiprintf_r+0x44>
 80479d0:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 80479d2:	f7f8 ff67 	bl	80408a4 <__retarget_lock_release_recursive>
 80479d6:	e7f3      	b.n	80479c0 <_vfiprintf_r+0x44>
 80479d8:	2300      	movs	r3, #0
 80479da:	f8cd 800c 	str.w	r8, [sp, #12]
 80479de:	f04f 0901 	mov.w	r9, #1
 80479e2:	f8df 81b4 	ldr.w	r8, [pc, #436]	@ 8047b98 <_vfiprintf_r+0x21c>
 80479e6:	9309      	str	r3, [sp, #36]	@ 0x24
 80479e8:	2320      	movs	r3, #32
 80479ea:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
 80479ee:	2330      	movs	r3, #48	@ 0x30
 80479f0:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
 80479f4:	4623      	mov	r3, r4
 80479f6:	469a      	mov	sl, r3
 80479f8:	f813 2b01 	ldrb.w	r2, [r3], #1
 80479fc:	b10a      	cbz	r2, 8047a02 <_vfiprintf_r+0x86>
 80479fe:	2a25      	cmp	r2, #37	@ 0x25
 8047a00:	d1f9      	bne.n	80479f6 <_vfiprintf_r+0x7a>
 8047a02:	ebba 0b04 	subs.w	fp, sl, r4
 8047a06:	d00b      	beq.n	8047a20 <_vfiprintf_r+0xa4>
 8047a08:	465b      	mov	r3, fp
 8047a0a:	4622      	mov	r2, r4
 8047a0c:	4629      	mov	r1, r5
 8047a0e:	4630      	mov	r0, r6
 8047a10:	f7ff ffa1 	bl	8047956 <__sfputs_r>
 8047a14:	3001      	adds	r0, #1
 8047a16:	f000 80a7 	beq.w	8047b68 <_vfiprintf_r+0x1ec>
 8047a1a:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8047a1c:	445a      	add	r2, fp
 8047a1e:	9209      	str	r2, [sp, #36]	@ 0x24
 8047a20:	f89a 3000 	ldrb.w	r3, [sl]
 8047a24:	2b00      	cmp	r3, #0
 8047a26:	f000 809f 	beq.w	8047b68 <_vfiprintf_r+0x1ec>
 8047a2a:	2300      	movs	r3, #0
 8047a2c:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8047a30:	f10a 0a01 	add.w	sl, sl, #1
 8047a34:	9304      	str	r3, [sp, #16]
 8047a36:	9307      	str	r3, [sp, #28]
 8047a38:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
 8047a3c:	931a      	str	r3, [sp, #104]	@ 0x68
 8047a3e:	e9cd 2305 	strd	r2, r3, [sp, #20]
 8047a42:	4654      	mov	r4, sl
 8047a44:	2205      	movs	r2, #5
 8047a46:	4854      	ldr	r0, [pc, #336]	@ (8047b98 <_vfiprintf_r+0x21c>)
 8047a48:	f814 1b01 	ldrb.w	r1, [r4], #1
 8047a4c:	f000 fac2 	bl	8047fd4 <memchr>
 8047a50:	9a04      	ldr	r2, [sp, #16]
 8047a52:	b9d8      	cbnz	r0, 8047a8c <_vfiprintf_r+0x110>
 8047a54:	06d1      	lsls	r1, r2, #27
 8047a56:	bf44      	itt	mi
 8047a58:	2320      	movmi	r3, #32
 8047a5a:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 8047a5e:	0713      	lsls	r3, r2, #28
 8047a60:	bf44      	itt	mi
 8047a62:	232b      	movmi	r3, #43	@ 0x2b
 8047a64:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 8047a68:	f89a 3000 	ldrb.w	r3, [sl]
 8047a6c:	2b2a      	cmp	r3, #42	@ 0x2a
 8047a6e:	d015      	beq.n	8047a9c <_vfiprintf_r+0x120>
 8047a70:	9a07      	ldr	r2, [sp, #28]
 8047a72:	4654      	mov	r4, sl
 8047a74:	2000      	movs	r0, #0
 8047a76:	f04f 0c0a 	mov.w	ip, #10
 8047a7a:	4621      	mov	r1, r4
 8047a7c:	f811 3b01 	ldrb.w	r3, [r1], #1
 8047a80:	3b30      	subs	r3, #48	@ 0x30
 8047a82:	2b09      	cmp	r3, #9
 8047a84:	d94b      	bls.n	8047b1e <_vfiprintf_r+0x1a2>
 8047a86:	b1b0      	cbz	r0, 8047ab6 <_vfiprintf_r+0x13a>
 8047a88:	9207      	str	r2, [sp, #28]
 8047a8a:	e014      	b.n	8047ab6 <_vfiprintf_r+0x13a>
 8047a8c:	eba0 0308 	sub.w	r3, r0, r8
 8047a90:	46a2      	mov	sl, r4
 8047a92:	fa09 f303 	lsl.w	r3, r9, r3
 8047a96:	4313      	orrs	r3, r2
 8047a98:	9304      	str	r3, [sp, #16]
 8047a9a:	e7d2      	b.n	8047a42 <_vfiprintf_r+0xc6>
 8047a9c:	9b03      	ldr	r3, [sp, #12]
 8047a9e:	1d19      	adds	r1, r3, #4
 8047aa0:	681b      	ldr	r3, [r3, #0]
 8047aa2:	2b00      	cmp	r3, #0
 8047aa4:	9103      	str	r1, [sp, #12]
 8047aa6:	bfbb      	ittet	lt
 8047aa8:	425b      	neglt	r3, r3
 8047aaa:	f042 0202 	orrlt.w	r2, r2, #2
 8047aae:	9307      	strge	r3, [sp, #28]
 8047ab0:	9307      	strlt	r3, [sp, #28]
 8047ab2:	bfb8      	it	lt
 8047ab4:	9204      	strlt	r2, [sp, #16]
 8047ab6:	7823      	ldrb	r3, [r4, #0]
 8047ab8:	2b2e      	cmp	r3, #46	@ 0x2e
 8047aba:	d10a      	bne.n	8047ad2 <_vfiprintf_r+0x156>
 8047abc:	7863      	ldrb	r3, [r4, #1]
 8047abe:	2b2a      	cmp	r3, #42	@ 0x2a
 8047ac0:	d132      	bne.n	8047b28 <_vfiprintf_r+0x1ac>
 8047ac2:	9b03      	ldr	r3, [sp, #12]
 8047ac4:	3402      	adds	r4, #2
 8047ac6:	1d1a      	adds	r2, r3, #4
 8047ac8:	681b      	ldr	r3, [r3, #0]
 8047aca:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 8047ace:	9203      	str	r2, [sp, #12]
 8047ad0:	9305      	str	r3, [sp, #20]
 8047ad2:	f8df a0d4 	ldr.w	sl, [pc, #212]	@ 8047ba8 <_vfiprintf_r+0x22c>
 8047ad6:	2203      	movs	r2, #3
 8047ad8:	7821      	ldrb	r1, [r4, #0]
 8047ada:	4650      	mov	r0, sl
 8047adc:	f000 fa7a 	bl	8047fd4 <memchr>
 8047ae0:	b138      	cbz	r0, 8047af2 <_vfiprintf_r+0x176>
 8047ae2:	eba0 000a 	sub.w	r0, r0, sl
 8047ae6:	2240      	movs	r2, #64	@ 0x40
 8047ae8:	9b04      	ldr	r3, [sp, #16]
 8047aea:	3401      	adds	r4, #1
 8047aec:	4082      	lsls	r2, r0
 8047aee:	4313      	orrs	r3, r2
 8047af0:	9304      	str	r3, [sp, #16]
 8047af2:	f814 1b01 	ldrb.w	r1, [r4], #1
 8047af6:	2206      	movs	r2, #6
 8047af8:	4828      	ldr	r0, [pc, #160]	@ (8047b9c <_vfiprintf_r+0x220>)
 8047afa:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
 8047afe:	f000 fa69 	bl	8047fd4 <memchr>
 8047b02:	2800      	cmp	r0, #0
 8047b04:	d03f      	beq.n	8047b86 <_vfiprintf_r+0x20a>
 8047b06:	4b26      	ldr	r3, [pc, #152]	@ (8047ba0 <_vfiprintf_r+0x224>)
 8047b08:	bb1b      	cbnz	r3, 8047b52 <_vfiprintf_r+0x1d6>
 8047b0a:	9b03      	ldr	r3, [sp, #12]
 8047b0c:	3307      	adds	r3, #7
 8047b0e:	f023 0307 	bic.w	r3, r3, #7
 8047b12:	3308      	adds	r3, #8
 8047b14:	9303      	str	r3, [sp, #12]
 8047b16:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8047b18:	443b      	add	r3, r7
 8047b1a:	9309      	str	r3, [sp, #36]	@ 0x24
 8047b1c:	e76a      	b.n	80479f4 <_vfiprintf_r+0x78>
 8047b1e:	fb0c 3202 	mla	r2, ip, r2, r3
 8047b22:	460c      	mov	r4, r1
 8047b24:	2001      	movs	r0, #1
 8047b26:	e7a8      	b.n	8047a7a <_vfiprintf_r+0xfe>
 8047b28:	2300      	movs	r3, #0
 8047b2a:	3401      	adds	r4, #1
 8047b2c:	f04f 0c0a 	mov.w	ip, #10
 8047b30:	4619      	mov	r1, r3
 8047b32:	9305      	str	r3, [sp, #20]
 8047b34:	4620      	mov	r0, r4
 8047b36:	f810 2b01 	ldrb.w	r2, [r0], #1
 8047b3a:	3a30      	subs	r2, #48	@ 0x30
 8047b3c:	2a09      	cmp	r2, #9
 8047b3e:	d903      	bls.n	8047b48 <_vfiprintf_r+0x1cc>
 8047b40:	2b00      	cmp	r3, #0
 8047b42:	d0c6      	beq.n	8047ad2 <_vfiprintf_r+0x156>
 8047b44:	9105      	str	r1, [sp, #20]
 8047b46:	e7c4      	b.n	8047ad2 <_vfiprintf_r+0x156>
 8047b48:	fb0c 2101 	mla	r1, ip, r1, r2
 8047b4c:	4604      	mov	r4, r0
 8047b4e:	2301      	movs	r3, #1
 8047b50:	e7f0      	b.n	8047b34 <_vfiprintf_r+0x1b8>
 8047b52:	ab03      	add	r3, sp, #12
 8047b54:	462a      	mov	r2, r5
 8047b56:	a904      	add	r1, sp, #16
 8047b58:	4630      	mov	r0, r6
 8047b5a:	9300      	str	r3, [sp, #0]
 8047b5c:	4b11      	ldr	r3, [pc, #68]	@ (8047ba4 <_vfiprintf_r+0x228>)
 8047b5e:	f3af 8000 	nop.w
 8047b62:	4607      	mov	r7, r0
 8047b64:	1c78      	adds	r0, r7, #1
 8047b66:	d1d6      	bne.n	8047b16 <_vfiprintf_r+0x19a>
 8047b68:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 8047b6a:	07d9      	lsls	r1, r3, #31
 8047b6c:	d405      	bmi.n	8047b7a <_vfiprintf_r+0x1fe>
 8047b6e:	89ab      	ldrh	r3, [r5, #12]
 8047b70:	059a      	lsls	r2, r3, #22
 8047b72:	d402      	bmi.n	8047b7a <_vfiprintf_r+0x1fe>
 8047b74:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 8047b76:	f7f8 fe95 	bl	80408a4 <__retarget_lock_release_recursive>
 8047b7a:	89ab      	ldrh	r3, [r5, #12]
 8047b7c:	065b      	lsls	r3, r3, #25
 8047b7e:	f53f af1f 	bmi.w	80479c0 <_vfiprintf_r+0x44>
 8047b82:	9809      	ldr	r0, [sp, #36]	@ 0x24
 8047b84:	e71e      	b.n	80479c4 <_vfiprintf_r+0x48>
 8047b86:	ab03      	add	r3, sp, #12
 8047b88:	462a      	mov	r2, r5
 8047b8a:	a904      	add	r1, sp, #16
 8047b8c:	4630      	mov	r0, r6
 8047b8e:	9300      	str	r3, [sp, #0]
 8047b90:	4b04      	ldr	r3, [pc, #16]	@ (8047ba4 <_vfiprintf_r+0x228>)
 8047b92:	f000 f87d 	bl	8047c90 <_printf_i>
 8047b96:	e7e4      	b.n	8047b62 <_vfiprintf_r+0x1e6>
 8047b98:	080487e0 	.word	0x080487e0
 8047b9c:	080487ea 	.word	0x080487ea
 8047ba0:	00000000 	.word	0x00000000
 8047ba4:	08047957 	.word	0x08047957
 8047ba8:	080487e6 	.word	0x080487e6

08047bac <_printf_common>:
 8047bac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8047bb0:	4616      	mov	r6, r2
 8047bb2:	4698      	mov	r8, r3
 8047bb4:	688a      	ldr	r2, [r1, #8]
 8047bb6:	4607      	mov	r7, r0
 8047bb8:	690b      	ldr	r3, [r1, #16]
 8047bba:	460c      	mov	r4, r1
 8047bbc:	f8dd 9020 	ldr.w	r9, [sp, #32]
 8047bc0:	4293      	cmp	r3, r2
 8047bc2:	bfb8      	it	lt
 8047bc4:	4613      	movlt	r3, r2
 8047bc6:	6033      	str	r3, [r6, #0]
 8047bc8:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
 8047bcc:	b10a      	cbz	r2, 8047bd2 <_printf_common+0x26>
 8047bce:	3301      	adds	r3, #1
 8047bd0:	6033      	str	r3, [r6, #0]
 8047bd2:	6823      	ldr	r3, [r4, #0]
 8047bd4:	0699      	lsls	r1, r3, #26
 8047bd6:	bf42      	ittt	mi
 8047bd8:	6833      	ldrmi	r3, [r6, #0]
 8047bda:	3302      	addmi	r3, #2
 8047bdc:	6033      	strmi	r3, [r6, #0]
 8047bde:	6825      	ldr	r5, [r4, #0]
 8047be0:	f015 0506 	ands.w	r5, r5, #6
 8047be4:	d106      	bne.n	8047bf4 <_printf_common+0x48>
 8047be6:	f104 0a19 	add.w	sl, r4, #25
 8047bea:	68e3      	ldr	r3, [r4, #12]
 8047bec:	6832      	ldr	r2, [r6, #0]
 8047bee:	1a9b      	subs	r3, r3, r2
 8047bf0:	42ab      	cmp	r3, r5
 8047bf2:	dc2b      	bgt.n	8047c4c <_printf_common+0xa0>
 8047bf4:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
 8047bf8:	6822      	ldr	r2, [r4, #0]
 8047bfa:	3b00      	subs	r3, #0
 8047bfc:	bf18      	it	ne
 8047bfe:	2301      	movne	r3, #1
 8047c00:	0692      	lsls	r2, r2, #26
 8047c02:	d430      	bmi.n	8047c66 <_printf_common+0xba>
 8047c04:	f104 0243 	add.w	r2, r4, #67	@ 0x43
 8047c08:	4641      	mov	r1, r8
 8047c0a:	4638      	mov	r0, r7
 8047c0c:	47c8      	blx	r9
 8047c0e:	3001      	adds	r0, #1
 8047c10:	d023      	beq.n	8047c5a <_printf_common+0xae>
 8047c12:	6823      	ldr	r3, [r4, #0]
 8047c14:	341a      	adds	r4, #26
 8047c16:	f854 2c0a 	ldr.w	r2, [r4, #-10]
 8047c1a:	f003 0306 	and.w	r3, r3, #6
 8047c1e:	2b04      	cmp	r3, #4
 8047c20:	bf0a      	itet	eq
 8047c22:	f854 5c0e 	ldreq.w	r5, [r4, #-14]
 8047c26:	2500      	movne	r5, #0
 8047c28:	6833      	ldreq	r3, [r6, #0]
 8047c2a:	f04f 0600 	mov.w	r6, #0
 8047c2e:	bf08      	it	eq
 8047c30:	1aed      	subeq	r5, r5, r3
 8047c32:	f854 3c12 	ldr.w	r3, [r4, #-18]
 8047c36:	bf08      	it	eq
 8047c38:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 8047c3c:	4293      	cmp	r3, r2
 8047c3e:	bfc4      	itt	gt
 8047c40:	1a9b      	subgt	r3, r3, r2
 8047c42:	18ed      	addgt	r5, r5, r3
 8047c44:	42b5      	cmp	r5, r6
 8047c46:	d11a      	bne.n	8047c7e <_printf_common+0xd2>
 8047c48:	2000      	movs	r0, #0
 8047c4a:	e008      	b.n	8047c5e <_printf_common+0xb2>
 8047c4c:	2301      	movs	r3, #1
 8047c4e:	4652      	mov	r2, sl
 8047c50:	4641      	mov	r1, r8
 8047c52:	4638      	mov	r0, r7
 8047c54:	47c8      	blx	r9
 8047c56:	3001      	adds	r0, #1
 8047c58:	d103      	bne.n	8047c62 <_printf_common+0xb6>
 8047c5a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8047c5e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8047c62:	3501      	adds	r5, #1
 8047c64:	e7c1      	b.n	8047bea <_printf_common+0x3e>
 8047c66:	18e1      	adds	r1, r4, r3
 8047c68:	1c5a      	adds	r2, r3, #1
 8047c6a:	2030      	movs	r0, #48	@ 0x30
 8047c6c:	3302      	adds	r3, #2
 8047c6e:	4422      	add	r2, r4
 8047c70:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
 8047c74:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
 8047c78:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
 8047c7c:	e7c2      	b.n	8047c04 <_printf_common+0x58>
 8047c7e:	2301      	movs	r3, #1
 8047c80:	4622      	mov	r2, r4
 8047c82:	4641      	mov	r1, r8
 8047c84:	4638      	mov	r0, r7
 8047c86:	47c8      	blx	r9
 8047c88:	3001      	adds	r0, #1
 8047c8a:	d0e6      	beq.n	8047c5a <_printf_common+0xae>
 8047c8c:	3601      	adds	r6, #1
 8047c8e:	e7d9      	b.n	8047c44 <_printf_common+0x98>

08047c90 <_printf_i>:
 8047c90:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 8047c94:	7e0f      	ldrb	r7, [r1, #24]
 8047c96:	4691      	mov	r9, r2
 8047c98:	4680      	mov	r8, r0
 8047c9a:	460c      	mov	r4, r1
 8047c9c:	2f78      	cmp	r7, #120	@ 0x78
 8047c9e:	469a      	mov	sl, r3
 8047ca0:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 8047ca2:	f101 0243 	add.w	r2, r1, #67	@ 0x43
 8047ca6:	d807      	bhi.n	8047cb8 <_printf_i+0x28>
 8047ca8:	2f62      	cmp	r7, #98	@ 0x62
 8047caa:	d80a      	bhi.n	8047cc2 <_printf_i+0x32>
 8047cac:	2f00      	cmp	r7, #0
 8047cae:	f000 80d1 	beq.w	8047e54 <_printf_i+0x1c4>
 8047cb2:	2f58      	cmp	r7, #88	@ 0x58
 8047cb4:	f000 80b8 	beq.w	8047e28 <_printf_i+0x198>
 8047cb8:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 8047cbc:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
 8047cc0:	e03a      	b.n	8047d38 <_printf_i+0xa8>
 8047cc2:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
 8047cc6:	2b15      	cmp	r3, #21
 8047cc8:	d8f6      	bhi.n	8047cb8 <_printf_i+0x28>
 8047cca:	a101      	add	r1, pc, #4	@ (adr r1, 8047cd0 <_printf_i+0x40>)
 8047ccc:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8047cd0:	08047d29 	.word	0x08047d29
 8047cd4:	08047d3d 	.word	0x08047d3d
 8047cd8:	08047cb9 	.word	0x08047cb9
 8047cdc:	08047cb9 	.word	0x08047cb9
 8047ce0:	08047cb9 	.word	0x08047cb9
 8047ce4:	08047cb9 	.word	0x08047cb9
 8047ce8:	08047d3d 	.word	0x08047d3d
 8047cec:	08047cb9 	.word	0x08047cb9
 8047cf0:	08047cb9 	.word	0x08047cb9
 8047cf4:	08047cb9 	.word	0x08047cb9
 8047cf8:	08047cb9 	.word	0x08047cb9
 8047cfc:	08047e3b 	.word	0x08047e3b
 8047d00:	08047d67 	.word	0x08047d67
 8047d04:	08047df5 	.word	0x08047df5
 8047d08:	08047cb9 	.word	0x08047cb9
 8047d0c:	08047cb9 	.word	0x08047cb9
 8047d10:	08047e5d 	.word	0x08047e5d
 8047d14:	08047cb9 	.word	0x08047cb9
 8047d18:	08047d67 	.word	0x08047d67
 8047d1c:	08047cb9 	.word	0x08047cb9
 8047d20:	08047cb9 	.word	0x08047cb9
 8047d24:	08047dfd 	.word	0x08047dfd
 8047d28:	6833      	ldr	r3, [r6, #0]
 8047d2a:	1d1a      	adds	r2, r3, #4
 8047d2c:	681b      	ldr	r3, [r3, #0]
 8047d2e:	6032      	str	r2, [r6, #0]
 8047d30:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 8047d34:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 8047d38:	2301      	movs	r3, #1
 8047d3a:	e09c      	b.n	8047e76 <_printf_i+0x1e6>
 8047d3c:	6833      	ldr	r3, [r6, #0]
 8047d3e:	6820      	ldr	r0, [r4, #0]
 8047d40:	1d19      	adds	r1, r3, #4
 8047d42:	6031      	str	r1, [r6, #0]
 8047d44:	0606      	lsls	r6, r0, #24
 8047d46:	d501      	bpl.n	8047d4c <_printf_i+0xbc>
 8047d48:	681d      	ldr	r5, [r3, #0]
 8047d4a:	e003      	b.n	8047d54 <_printf_i+0xc4>
 8047d4c:	0645      	lsls	r5, r0, #25
 8047d4e:	d5fb      	bpl.n	8047d48 <_printf_i+0xb8>
 8047d50:	f9b3 5000 	ldrsh.w	r5, [r3]
 8047d54:	2d00      	cmp	r5, #0
 8047d56:	da03      	bge.n	8047d60 <_printf_i+0xd0>
 8047d58:	232d      	movs	r3, #45	@ 0x2d
 8047d5a:	426d      	negs	r5, r5
 8047d5c:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8047d60:	4858      	ldr	r0, [pc, #352]	@ (8047ec4 <_printf_i+0x234>)
 8047d62:	230a      	movs	r3, #10
 8047d64:	e011      	b.n	8047d8a <_printf_i+0xfa>
 8047d66:	6821      	ldr	r1, [r4, #0]
 8047d68:	6833      	ldr	r3, [r6, #0]
 8047d6a:	0608      	lsls	r0, r1, #24
 8047d6c:	f853 5b04 	ldr.w	r5, [r3], #4
 8047d70:	d402      	bmi.n	8047d78 <_printf_i+0xe8>
 8047d72:	0649      	lsls	r1, r1, #25
 8047d74:	bf48      	it	mi
 8047d76:	b2ad      	uxthmi	r5, r5
 8047d78:	2f6f      	cmp	r7, #111	@ 0x6f
 8047d7a:	6033      	str	r3, [r6, #0]
 8047d7c:	4851      	ldr	r0, [pc, #324]	@ (8047ec4 <_printf_i+0x234>)
 8047d7e:	bf14      	ite	ne
 8047d80:	230a      	movne	r3, #10
 8047d82:	2308      	moveq	r3, #8
 8047d84:	2100      	movs	r1, #0
 8047d86:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
 8047d8a:	6866      	ldr	r6, [r4, #4]
 8047d8c:	2e00      	cmp	r6, #0
 8047d8e:	60a6      	str	r6, [r4, #8]
 8047d90:	db05      	blt.n	8047d9e <_printf_i+0x10e>
 8047d92:	6821      	ldr	r1, [r4, #0]
 8047d94:	432e      	orrs	r6, r5
 8047d96:	f021 0104 	bic.w	r1, r1, #4
 8047d9a:	6021      	str	r1, [r4, #0]
 8047d9c:	d04b      	beq.n	8047e36 <_printf_i+0x1a6>
 8047d9e:	4616      	mov	r6, r2
 8047da0:	fbb5 f1f3 	udiv	r1, r5, r3
 8047da4:	fb03 5711 	mls	r7, r3, r1, r5
 8047da8:	5dc7      	ldrb	r7, [r0, r7]
 8047daa:	f806 7d01 	strb.w	r7, [r6, #-1]!
 8047dae:	462f      	mov	r7, r5
 8047db0:	460d      	mov	r5, r1
 8047db2:	42bb      	cmp	r3, r7
 8047db4:	d9f4      	bls.n	8047da0 <_printf_i+0x110>
 8047db6:	2b08      	cmp	r3, #8
 8047db8:	d10b      	bne.n	8047dd2 <_printf_i+0x142>
 8047dba:	6823      	ldr	r3, [r4, #0]
 8047dbc:	07df      	lsls	r7, r3, #31
 8047dbe:	d508      	bpl.n	8047dd2 <_printf_i+0x142>
 8047dc0:	6923      	ldr	r3, [r4, #16]
 8047dc2:	6861      	ldr	r1, [r4, #4]
 8047dc4:	4299      	cmp	r1, r3
 8047dc6:	bfde      	ittt	le
 8047dc8:	2330      	movle	r3, #48	@ 0x30
 8047dca:	f806 3c01 	strble.w	r3, [r6, #-1]
 8047dce:	f106 36ff 	addle.w	r6, r6, #4294967295	@ 0xffffffff
 8047dd2:	1b92      	subs	r2, r2, r6
 8047dd4:	6122      	str	r2, [r4, #16]
 8047dd6:	464b      	mov	r3, r9
 8047dd8:	aa03      	add	r2, sp, #12
 8047dda:	4621      	mov	r1, r4
 8047ddc:	4640      	mov	r0, r8
 8047dde:	f8cd a000 	str.w	sl, [sp]
 8047de2:	f7ff fee3 	bl	8047bac <_printf_common>
 8047de6:	3001      	adds	r0, #1
 8047de8:	d14a      	bne.n	8047e80 <_printf_i+0x1f0>
 8047dea:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8047dee:	b004      	add	sp, #16
 8047df0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8047df4:	6823      	ldr	r3, [r4, #0]
 8047df6:	f043 0320 	orr.w	r3, r3, #32
 8047dfa:	6023      	str	r3, [r4, #0]
 8047dfc:	2778      	movs	r7, #120	@ 0x78
 8047dfe:	4832      	ldr	r0, [pc, #200]	@ (8047ec8 <_printf_i+0x238>)
 8047e00:	6823      	ldr	r3, [r4, #0]
 8047e02:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 8047e06:	061f      	lsls	r7, r3, #24
 8047e08:	6831      	ldr	r1, [r6, #0]
 8047e0a:	f851 5b04 	ldr.w	r5, [r1], #4
 8047e0e:	d402      	bmi.n	8047e16 <_printf_i+0x186>
 8047e10:	065f      	lsls	r7, r3, #25
 8047e12:	bf48      	it	mi
 8047e14:	b2ad      	uxthmi	r5, r5
 8047e16:	6031      	str	r1, [r6, #0]
 8047e18:	07d9      	lsls	r1, r3, #31
 8047e1a:	bf44      	itt	mi
 8047e1c:	f043 0320 	orrmi.w	r3, r3, #32
 8047e20:	6023      	strmi	r3, [r4, #0]
 8047e22:	b11d      	cbz	r5, 8047e2c <_printf_i+0x19c>
 8047e24:	2310      	movs	r3, #16
 8047e26:	e7ad      	b.n	8047d84 <_printf_i+0xf4>
 8047e28:	4826      	ldr	r0, [pc, #152]	@ (8047ec4 <_printf_i+0x234>)
 8047e2a:	e7e9      	b.n	8047e00 <_printf_i+0x170>
 8047e2c:	6823      	ldr	r3, [r4, #0]
 8047e2e:	f023 0320 	bic.w	r3, r3, #32
 8047e32:	6023      	str	r3, [r4, #0]
 8047e34:	e7f6      	b.n	8047e24 <_printf_i+0x194>
 8047e36:	4616      	mov	r6, r2
 8047e38:	e7bd      	b.n	8047db6 <_printf_i+0x126>
 8047e3a:	6833      	ldr	r3, [r6, #0]
 8047e3c:	6825      	ldr	r5, [r4, #0]
 8047e3e:	1d18      	adds	r0, r3, #4
 8047e40:	6961      	ldr	r1, [r4, #20]
 8047e42:	6030      	str	r0, [r6, #0]
 8047e44:	062e      	lsls	r6, r5, #24
 8047e46:	681b      	ldr	r3, [r3, #0]
 8047e48:	d501      	bpl.n	8047e4e <_printf_i+0x1be>
 8047e4a:	6019      	str	r1, [r3, #0]
 8047e4c:	e002      	b.n	8047e54 <_printf_i+0x1c4>
 8047e4e:	0668      	lsls	r0, r5, #25
 8047e50:	d5fb      	bpl.n	8047e4a <_printf_i+0x1ba>
 8047e52:	8019      	strh	r1, [r3, #0]
 8047e54:	2300      	movs	r3, #0
 8047e56:	4616      	mov	r6, r2
 8047e58:	6123      	str	r3, [r4, #16]
 8047e5a:	e7bc      	b.n	8047dd6 <_printf_i+0x146>
 8047e5c:	6833      	ldr	r3, [r6, #0]
 8047e5e:	2100      	movs	r1, #0
 8047e60:	1d1a      	adds	r2, r3, #4
 8047e62:	6032      	str	r2, [r6, #0]
 8047e64:	681e      	ldr	r6, [r3, #0]
 8047e66:	6862      	ldr	r2, [r4, #4]
 8047e68:	4630      	mov	r0, r6
 8047e6a:	f000 f8b3 	bl	8047fd4 <memchr>
 8047e6e:	b108      	cbz	r0, 8047e74 <_printf_i+0x1e4>
 8047e70:	1b80      	subs	r0, r0, r6
 8047e72:	6060      	str	r0, [r4, #4]
 8047e74:	6863      	ldr	r3, [r4, #4]
 8047e76:	6123      	str	r3, [r4, #16]
 8047e78:	2300      	movs	r3, #0
 8047e7a:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8047e7e:	e7aa      	b.n	8047dd6 <_printf_i+0x146>
 8047e80:	6923      	ldr	r3, [r4, #16]
 8047e82:	4632      	mov	r2, r6
 8047e84:	4649      	mov	r1, r9
 8047e86:	4640      	mov	r0, r8
 8047e88:	47d0      	blx	sl
 8047e8a:	3001      	adds	r0, #1
 8047e8c:	d0ad      	beq.n	8047dea <_printf_i+0x15a>
 8047e8e:	6823      	ldr	r3, [r4, #0]
 8047e90:	079b      	lsls	r3, r3, #30
 8047e92:	d413      	bmi.n	8047ebc <_printf_i+0x22c>
 8047e94:	68e0      	ldr	r0, [r4, #12]
 8047e96:	9b03      	ldr	r3, [sp, #12]
 8047e98:	4298      	cmp	r0, r3
 8047e9a:	bfb8      	it	lt
 8047e9c:	4618      	movlt	r0, r3
 8047e9e:	e7a6      	b.n	8047dee <_printf_i+0x15e>
 8047ea0:	2301      	movs	r3, #1
 8047ea2:	4632      	mov	r2, r6
 8047ea4:	4649      	mov	r1, r9
 8047ea6:	4640      	mov	r0, r8
 8047ea8:	47d0      	blx	sl
 8047eaa:	3001      	adds	r0, #1
 8047eac:	d09d      	beq.n	8047dea <_printf_i+0x15a>
 8047eae:	3501      	adds	r5, #1
 8047eb0:	68e3      	ldr	r3, [r4, #12]
 8047eb2:	9903      	ldr	r1, [sp, #12]
 8047eb4:	1a5b      	subs	r3, r3, r1
 8047eb6:	42ab      	cmp	r3, r5
 8047eb8:	dcf2      	bgt.n	8047ea0 <_printf_i+0x210>
 8047eba:	e7eb      	b.n	8047e94 <_printf_i+0x204>
 8047ebc:	2500      	movs	r5, #0
 8047ebe:	f104 0619 	add.w	r6, r4, #25
 8047ec2:	e7f5      	b.n	8047eb0 <_printf_i+0x220>
 8047ec4:	080487f1 	.word	0x080487f1
 8047ec8:	08048802 	.word	0x08048802

08047ecc <__swhatbuf_r>:
 8047ecc:	b570      	push	{r4, r5, r6, lr}
 8047ece:	460c      	mov	r4, r1
 8047ed0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8047ed4:	b096      	sub	sp, #88	@ 0x58
 8047ed6:	4615      	mov	r5, r2
 8047ed8:	2900      	cmp	r1, #0
 8047eda:	461e      	mov	r6, r3
 8047edc:	da0c      	bge.n	8047ef8 <__swhatbuf_r+0x2c>
 8047ede:	89a3      	ldrh	r3, [r4, #12]
 8047ee0:	2100      	movs	r1, #0
 8047ee2:	f013 0f80 	tst.w	r3, #128	@ 0x80
 8047ee6:	bf14      	ite	ne
 8047ee8:	2340      	movne	r3, #64	@ 0x40
 8047eea:	f44f 6380 	moveq.w	r3, #1024	@ 0x400
 8047eee:	2000      	movs	r0, #0
 8047ef0:	6031      	str	r1, [r6, #0]
 8047ef2:	602b      	str	r3, [r5, #0]
 8047ef4:	b016      	add	sp, #88	@ 0x58
 8047ef6:	bd70      	pop	{r4, r5, r6, pc}
 8047ef8:	466a      	mov	r2, sp
 8047efa:	f000 f849 	bl	8047f90 <_fstat_r>
 8047efe:	2800      	cmp	r0, #0
 8047f00:	dbed      	blt.n	8047ede <__swhatbuf_r+0x12>
 8047f02:	9901      	ldr	r1, [sp, #4]
 8047f04:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
 8047f08:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
 8047f0c:	4259      	negs	r1, r3
 8047f0e:	4159      	adcs	r1, r3
 8047f10:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8047f14:	e7eb      	b.n	8047eee <__swhatbuf_r+0x22>

08047f16 <__smakebuf_r>:
 8047f16:	898b      	ldrh	r3, [r1, #12]
 8047f18:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8047f1a:	079d      	lsls	r5, r3, #30
 8047f1c:	4606      	mov	r6, r0
 8047f1e:	460c      	mov	r4, r1
 8047f20:	d507      	bpl.n	8047f32 <__smakebuf_r+0x1c>
 8047f22:	f104 0347 	add.w	r3, r4, #71	@ 0x47
 8047f26:	6023      	str	r3, [r4, #0]
 8047f28:	6123      	str	r3, [r4, #16]
 8047f2a:	2301      	movs	r3, #1
 8047f2c:	6163      	str	r3, [r4, #20]
 8047f2e:	b003      	add	sp, #12
 8047f30:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8047f32:	ab01      	add	r3, sp, #4
 8047f34:	466a      	mov	r2, sp
 8047f36:	f7ff ffc9 	bl	8047ecc <__swhatbuf_r>
 8047f3a:	9f00      	ldr	r7, [sp, #0]
 8047f3c:	4605      	mov	r5, r0
 8047f3e:	4630      	mov	r0, r6
 8047f40:	4639      	mov	r1, r7
 8047f42:	f7f8 fd1d 	bl	8040980 <_malloc_r>
 8047f46:	b948      	cbnz	r0, 8047f5c <__smakebuf_r+0x46>
 8047f48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8047f4c:	059a      	lsls	r2, r3, #22
 8047f4e:	d4ee      	bmi.n	8047f2e <__smakebuf_r+0x18>
 8047f50:	f023 0303 	bic.w	r3, r3, #3
 8047f54:	f043 0302 	orr.w	r3, r3, #2
 8047f58:	81a3      	strh	r3, [r4, #12]
 8047f5a:	e7e2      	b.n	8047f22 <__smakebuf_r+0xc>
 8047f5c:	89a3      	ldrh	r3, [r4, #12]
 8047f5e:	6020      	str	r0, [r4, #0]
 8047f60:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8047f64:	81a3      	strh	r3, [r4, #12]
 8047f66:	9b01      	ldr	r3, [sp, #4]
 8047f68:	e9c4 0704 	strd	r0, r7, [r4, #16]
 8047f6c:	b15b      	cbz	r3, 8047f86 <__smakebuf_r+0x70>
 8047f6e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8047f72:	4630      	mov	r0, r6
 8047f74:	f000 f81e 	bl	8047fb4 <_isatty_r>
 8047f78:	b128      	cbz	r0, 8047f86 <__smakebuf_r+0x70>
 8047f7a:	89a3      	ldrh	r3, [r4, #12]
 8047f7c:	f023 0303 	bic.w	r3, r3, #3
 8047f80:	f043 0301 	orr.w	r3, r3, #1
 8047f84:	81a3      	strh	r3, [r4, #12]
 8047f86:	89a3      	ldrh	r3, [r4, #12]
 8047f88:	431d      	orrs	r5, r3
 8047f8a:	81a5      	strh	r5, [r4, #12]
 8047f8c:	e7cf      	b.n	8047f2e <__smakebuf_r+0x18>
	...

08047f90 <_fstat_r>:
 8047f90:	b538      	push	{r3, r4, r5, lr}
 8047f92:	2300      	movs	r3, #0
 8047f94:	4d06      	ldr	r5, [pc, #24]	@ (8047fb0 <_fstat_r+0x20>)
 8047f96:	4604      	mov	r4, r0
 8047f98:	4608      	mov	r0, r1
 8047f9a:	4611      	mov	r1, r2
 8047f9c:	602b      	str	r3, [r5, #0]
 8047f9e:	f7fa fa3c 	bl	804241a <_fstat>
 8047fa2:	1c43      	adds	r3, r0, #1
 8047fa4:	d102      	bne.n	8047fac <_fstat_r+0x1c>
 8047fa6:	682b      	ldr	r3, [r5, #0]
 8047fa8:	b103      	cbz	r3, 8047fac <_fstat_r+0x1c>
 8047faa:	6023      	str	r3, [r4, #0]
 8047fac:	bd38      	pop	{r3, r4, r5, pc}
 8047fae:	bf00      	nop
 8047fb0:	20018284 	.word	0x20018284

08047fb4 <_isatty_r>:
 8047fb4:	b538      	push	{r3, r4, r5, lr}
 8047fb6:	2300      	movs	r3, #0
 8047fb8:	4d05      	ldr	r5, [pc, #20]	@ (8047fd0 <_isatty_r+0x1c>)
 8047fba:	4604      	mov	r4, r0
 8047fbc:	4608      	mov	r0, r1
 8047fbe:	602b      	str	r3, [r5, #0]
 8047fc0:	f7fa fa3b 	bl	804243a <_isatty>
 8047fc4:	1c43      	adds	r3, r0, #1
 8047fc6:	d102      	bne.n	8047fce <_isatty_r+0x1a>
 8047fc8:	682b      	ldr	r3, [r5, #0]
 8047fca:	b103      	cbz	r3, 8047fce <_isatty_r+0x1a>
 8047fcc:	6023      	str	r3, [r4, #0]
 8047fce:	bd38      	pop	{r3, r4, r5, pc}
 8047fd0:	20018284 	.word	0x20018284

08047fd4 <memchr>:
 8047fd4:	b2c9      	uxtb	r1, r1
 8047fd6:	4603      	mov	r3, r0
 8047fd8:	4402      	add	r2, r0
 8047fda:	b510      	push	{r4, lr}
 8047fdc:	4293      	cmp	r3, r2
 8047fde:	4618      	mov	r0, r3
 8047fe0:	d101      	bne.n	8047fe6 <memchr+0x12>
 8047fe2:	2000      	movs	r0, #0
 8047fe4:	e003      	b.n	8047fee <memchr+0x1a>
 8047fe6:	7804      	ldrb	r4, [r0, #0]
 8047fe8:	3301      	adds	r3, #1
 8047fea:	428c      	cmp	r4, r1
 8047fec:	d1f6      	bne.n	8047fdc <memchr+0x8>
 8047fee:	bd10      	pop	{r4, pc}

08047ff0 <_init>:
 8047ff0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8047ff2:	bf00      	nop
 8047ff4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8047ff6:	bc08      	pop	{r3}
 8047ff8:	469e      	mov	lr, r3
 8047ffa:	4770      	bx	lr

08047ffc <_fini>:
 8047ffc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8047ffe:	bf00      	nop
 8048000:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8048002:	bc08      	pop	{r3}
 8048004:	469e      	mov	lr, r3
 8048006:	4770      	bx	lr
