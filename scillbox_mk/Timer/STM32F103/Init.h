#ifndef __INIT_H
#define __INIT_H

#include "stm32f10x.h"                  // Device header
#include "stm32f10x_gpio.h"             // Keil::Device:StdPeriph Drivers:GPIO
#include "stm32f10x_rcc.h"              // Keil::Device:StdPeriph Drivers:RCC
#include "timer.h"


#define DELAY 300 
#define DELAY2 2000

extern volatile uint32_t delay_cnt; 
extern volatile uint32_t button_flag;


void LED_init (void);
void Button_init (void);
void delay (uint32_t delay_ms);
#endif