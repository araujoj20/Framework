# 1 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
# 49 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
# 1 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/inc/ee_cfg.h" 1
# 56 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/inc/ee_cfg.h"
# 1 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/inc/ee_oscfg.h" 1
# 57 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/inc/ee_cfg.h" 2
# 50 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S" 2
# 108 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
 .extern osEE_cortex_m_change_context_from_task_end




 .text


 .syntax unified

 .arch armv7e-m
 .cpu cortex-m4
# 129 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
 .align 2
 .global osEE_set_switch_context_pri
 .type osEE_set_switch_context_pri, #function
osEE_set_switch_context_pri:


 LDR R0, =0xE000ED20
 LDR R1, =0x00FF0000
 LDR R2, [R0]
 ORRS R2, R2, R1
 STR R2, [R0]


 LDR R0, =0xE000ED1C
 LDR R1, =0x00FFFFFF
 LDR R2, [R0]
 ANDS R2, R2, R1
 STR R2, [R0]

 BX LR

 .size osEE_set_switch_context_pri, . - osEE_set_switch_context_pri




 .align 2
 .global osEE_cortex_m_trigger_pend_sv
 .type osEE_cortex_m_trigger_pend_sv, %function
osEE_cortex_m_trigger_pend_sv:




 LDR R0, =0xE000ED04
 LDR R1, =0x10000000
 STR R1, [R0]

 BX LR

 .size osEE_cortex_m_trigger_pend_sv, . - osEE_cortex_m_trigger_pend_sv




 .align 2
 .global PendSV_Handler
 .type PendSV_Handler, %function
PendSV_Handler:


 CPSID I


 LDR R2, =0xE000ED04
 LDR R1, =0x08000000
 STR R1, [R2]
# 203 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
 LDR R3, =0x01000000


 LDR R2, =osEE_cortex_m_change_context_from_task_end


 LDR R1, =osEE_cortex_m_thread_end







 PUSH {R0-R3}







 PUSH {R0-R3}
# 244 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
 LDR LR, =0xFFFFFFF9

 BX LR

 .size PendSV_Handler, . - PendSV_Handler




 .align 2
 .global osEE_cortex_m_thread_end
 .type osEE_cortex_m_thread_end, %function
osEE_cortex_m_thread_end:


 LDR R0, =0xE000ED04
 MOVS R1, #1
 LSLS R1, R1, #31
 STR R1,[r0]
 B .

 .size osEE_cortex_m_thread_end, . - osEE_cortex_m_thread_end




 .align 2
 .global NMI_Handler
 .type NMI_Handler, %function
NMI_Handler:


 ADD SP, SP, #(8*4)
# 288 "/home/araujoj20/Documents/eclipse-rtd/TIM_Test/erika/src/ee_cortex_m_irq_asm.S"
 CPSIE I

 BX LR

 .size NMI_Handler, . - NMI_Handler





 .end
