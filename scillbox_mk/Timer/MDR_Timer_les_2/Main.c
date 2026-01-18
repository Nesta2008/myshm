#include "K1986VE9xI.h"                 // Device header
#include "MDR32FxQI_config.h"           // Milandr::Device:Startup
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK
#include "MDR32FxQI_timer.h"            // Milandr::Drivers:TIMER
#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT

/*
Задание 2
Напишите программы для микроконтроллеров STM32/K1986BE92, которые переключают светодиод по переполнению таймера общего назначения.
*/

/*--------PA1------*/
void Port_Led (void)
{
  RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTA, ENABLE);
  PORT_InitTypeDef Led_init;
  Led_init.PORT_FUNC = PORT_FUNC_PORT;
  Led_init.PORT_GFEN = PORT_GFEN_OFF;
  Led_init.PORT_MODE = PORT_MODE_DIGITAL;
  Led_init.PORT_OE = PORT_OE_OUT;
  Led_init.PORT_Pin = PORT_Pin_1;
  Led_init.PORT_PULL_DOWN = PORT_PULL_DOWN_OFF;
  Led_init.PORT_PULL_UP = PORT_PULL_UP_OFF;
  Led_init.PORT_SPEED = PORT_SPEED_MAXFAST;
  PORT_Init(MDR_PORTA, &Led_init);
}
/*-----------------*/

void Timer_1 (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_TIMER1, ENABLE);
  TIMER_CntInitTypeDef User_Timer;
  User_Timer.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately;
  User_Timer.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;
  User_Timer.TIMER_CounterDirection = TIMER_CntDir_Up;
  User_Timer.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;
  User_Timer.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  User_Timer.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  User_Timer.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  User_Timer.TIMER_EventSource = TIMER_EvSrc_TM1;
  User_Timer.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;
  User_Timer.TIMER_IniCounter = 0;
/*
Пример (упрощенный): Если \(F_{системы}\) = 8 МГц, а вам нужна частота прерывания 1 Гц: 
Выбираем PSC = 7999.
1=8,000,000/((7999+1)х(ARR+1))
1=8,000,000/(8000х(ARR+1))
1=1,000/(ARR+1)
ARR+1=1000
ARR=999.
Итого: PSC=15, ARR=999, частота = 1 кГц.
*/
  User_Timer.TIMER_Period = 999;
  User_Timer.TIMER_Prescaler = (8000)-1;
  
  TIMER_CntInit (MDR_TIMER1, &User_Timer);
  TIMER_BRGInit (MDR_TIMER1, TIMER_HCLKdiv1);
  NVIC_EnableIRQ (Timer1_IRQn);     // Разрешение обработки прерывания от таймера 
  NVIC_SetPriority (Timer1_IRQn, 0); //Назначение приоритета прерывания от таймера 
  TIMER_ITConfig (MDR_TIMER1, TIMER_STATUS_CNT_ARR, ENABLE); // Разрешаем прерывание
  TIMER_Cmd(MDR_TIMER1, ENABLE);
}
/*-----Прерывание по таймеру TIM1------*/
void Timer1_IRQHandler (void)
{
 if (TIMER_GetITStatus (MDR_TIMER1, TIMER_STATUS_CNT_ARR)){
    if(PORT_ReadInputDataBit(MDR_PORTA, PORT_Pin_1) != SET)
        {
        PORT_SetBits (MDR_PORTA, PORT_Pin_1);
        } else 
          {
           PORT_ResetBits (MDR_PORTA, PORT_Pin_1);  
          }
  }
  TIMER_ClearITPendingBit(MDR_TIMER1, TIMER_STATUS_CNT_ARR); //Сброс флага прерываний
  
  }
/*--------------------*/

int main (void)
{
Port_Led ();
Timer_1 ();

  while (1)
  {
  }

}

