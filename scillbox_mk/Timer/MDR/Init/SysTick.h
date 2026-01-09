#ifndef __SYSTICK_H
#define __SYSTICK_H

#include "init.h"

extern volatile uint32_t delay_cnt;

void STick_init (void);
void SysTick_Handler (void);
void delay (uint32_t delay_ms);

#endif