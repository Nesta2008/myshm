#ifndef __INIT_H
#define __INIT_H

#include "clc.h"
#include "tmr.h"
#include "Port.h"
#include "SysTick.h"
#include "K1986VE9xI.h"                 // Device header
#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK




#define DELAY 300000					//Частота вкл/выкл




void PORT_UserInit (void); //ИНИЦИАЛИЗАЦИЯ ВСЕЙ ПЕРЕФИРИИ
void STick_init (void);

void delay (uint32_t delay_ms);

void EXT_INT1_IRQHandler (void);




extern volatile uint32_t delay_cnt;
extern volatile int buttonFlag; 

#endif


 