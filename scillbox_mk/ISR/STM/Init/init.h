#ifndef __INIT_H
#define	__INIT_H

#include "main.h"

extern volatile uint32_t delay_cnt;
extern volatile uint32_t button_flag;

void User_Init (void);
void Stick_Init (void);
void SysTick_Handler(void);
void delay (uint32_t delay_ms);
void EXTI0_IRQHandler (void);
#endif
