#ifndef __TIMER_H
#define __TIMER_H

#include "stm32f10x_tim.h"              // Keil::Device:StdPeriph Drivers:TIM
#include "init.h"

void Time4_init (void);
void TIM4_IRQHandler (void);


#endif
