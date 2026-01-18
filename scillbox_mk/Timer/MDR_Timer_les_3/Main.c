/*
Задание 3
Напишите программы для микроконтроллеров STM32/K1986BE92, выполняющие задержку светодиода 
по функции задержки, которая построена на основе прерывания от таймера общего назначения 
*/
#include "K1986VE9xI.h"                 // Device header
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK
#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT
#include "MDR32FxQI_timer.h"            // Milandr::Drivers:TIMER

volatile uint32_t delay_cnt = 64000;

void Port_led (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTC, ENABLE);
  PORT_InitTypeDef PC2;
  PC2.PORT_FUNC = PORT_FUNC_PORT;
  PC2.PORT_GFEN = PORT_GFEN_OFF;
  PC2.PORT_MODE = PORT_MODE_DIGITAL;
  PC2.PORT_OE = PORT_OE_OUT;
  PC2.PORT_Pin = PORT_Pin_2;
  PC2.PORT_SPEED = PORT_SPEED_MAXFAST;
  
  PORT_Init (MDR_PORTC, &PC2);
}

void User_Timer2 (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_TIMER2, ENABLE);
  TIMER_CntInitTypeDef Tmc2;
  Tmc2.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately; 
  Tmc2.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;
  Tmc2.TIMER_CounterDirection = TIMER_CntDir_Up;
  Tmc2.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;
  Tmc2.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  Tmc2.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  Tmc2.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  Tmc2.TIMER_EventSource = TIMER_EvSrc_TM2;
  Tmc2.TIMER_IniCounter = 0;
  Tmc2.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;
  Tmc2.TIMER_Period = 999;
  Tmc2.TIMER_Prescaler = (7)+1;
  
  TIMER_CntInit (MDR_TIMER2, &Tmc2);
    
  TIMER_BRGInit (MDR_TIMER2,TIMER_HCLKdiv1);
  
  TIMER_ITConfig (MDR_TIMER2,TIMER_STATUS_CNT_ARR, ENABLE);
  TIMER_Cmd(MDR_TIMER2, ENABLE);

  NVIC_EnableIRQ (Timer2_IRQn);
  NVIC_SetPriority (Timer2_IRQn, 0);
}

void Timer2_IRQHandler (void)
{
  TIMER_ClearFlag(MDR_TIMER2, TIMER_STATUS_CNT_ARR);
  if (delay_cnt!=64000){
    delay_cnt ++;
  }
  else if (delay_cnt ==64000)
  {delay_cnt = 20000;}
}

void delay (void)
{
  for (volatile uint32_t i=20000; i<delay_cnt; i++) {}
}

int main (void)
{
  Port_led();
  User_Timer2 ();
  while (1)
  {
    PORT_SetBits (MDR_PORTC,PORT_Pin_2);
    delay ();
    PORT_ResetBits (MDR_PORTC,PORT_Pin_2);
    delay ();
  }
}
