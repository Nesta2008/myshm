#ifndef __Init_H
#define __Init_H



#include "MDR32F9Q2I.h"                 // Device header
#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK

#include "port.h"       //Подключение файла с заголовками
#include "clk.h"

void PORT_UserInit (void);
void STick_init (void);
void SysTick_Handler (void);
void delay (uint32_t delay_ms);

void EXT_INT1_IRQHandler (void);


extern volatile uint32_t delay_cnt;
extern volatile int buttonFlag; 

#endif
