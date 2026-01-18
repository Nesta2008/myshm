#ifndef __PORT_H__
#define __PORT_H__

#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK

extern volatile unsigned int buttonFlag;


void User_Led (void);
void User_Led_PWM (void);
void User_Button (void);
#endif
