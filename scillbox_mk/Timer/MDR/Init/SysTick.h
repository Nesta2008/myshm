#ifndef __SYSTICK_H
#define __SYSTICK_H

#include "init.h"

extern volatile uint32_t delay_cnt;

// Частота системных квантов (в Гц)
#define SYSTEM_TICK_RATE 1000

void STick_init (void);
void SysTick_Handler (void);
void delay (uint32_t delay_ms);

#endif