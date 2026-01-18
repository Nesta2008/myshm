/*
Задание 4
Напишите программы для микроконтроллеров STM32/K1986BE92, которые меняют яркость светодиода с помощью ШИМ. 
Изменение коэффициента заполнения 0%, 20%, 40%, 60%, 80%, 100% происходит по нажатию кнопки.
*/
#include "timer.h"

void User_timer_PWM (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_TIMER1, ENABLE);

  TIMER_CntInitTypeDef User_timer;
  User_timer.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately;
  User_timer.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;
  User_timer.TIMER_CounterDirection = TIMER_CntDir_Up;
  User_timer.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;
  User_timer.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  User_timer.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  User_timer.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  User_timer.TIMER_EventSource = TIMER_EvSrc_TM1;
  User_timer.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;
  User_timer.TIMER_IniCounter = 0;
  User_timer.TIMER_Period = PWM_PERIOD;
  User_timer.TIMER_Prescaler = (0)+ 1;
  TIMER_CntInit (MDR_TIMER1, &User_timer);
    
  TIMER_ChnInitTypeDef Channel_User_timer;
  Channel_User_timer.TIMER_CH_Mode = TIMER_CH_MODE_PWM;
  Channel_User_timer.TIMER_CH_REF_Format = TIMER_CH_REF_Format3;
  Channel_User_timer.TIMER_CH_Number = TIMER_CHANNEL2;
  TIMER_ChnInit(MDR_TIMER1,&Channel_User_timer);  //Инициализация созданной структуры

  TIMER_ChnOutInitTypeDef Output_Channel_User_timer;
  Output_Channel_User_timer.TIMER_CH_DirOut_Polarity = TIMER_CHOPolarity_NonInverted; //Направление полярности
  Output_Channel_User_timer.TIMER_CH_DirOut_Source = TIMER_CH_OutSrc_REF;    //Источник.    Тут источник опорного напряжения прямого выхода // На выход REF сигнал.
  Output_Channel_User_timer.TIMER_CH_DirOut_Mode = TIMER_CH_OutMode_Output;       //Режим // Всегда выход
  Output_Channel_User_timer.TIMER_CH_Number = TIMER_CHANNEL2;          //Номер канала
  TIMER_ChnOutInit(MDR_TIMER1,&Output_Channel_User_timer); //Инициализация созданной структуры

  TIMER_BRGInit (MDR_TIMER1,TIMER_HCLKdiv1); //Запускаем тактовый сигнал
  
  TIMER_Cmd(MDR_TIMER1, ENABLE);  //Включаем таймер

}

void User_timer (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_TIMER2, ENABLE);

  TIMER_CntInitTypeDef User_timer;
  User_timer.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately;
  User_timer.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;
  User_timer.TIMER_CounterDirection = TIMER_CntDir_Up;
  User_timer.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;
  User_timer.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  User_timer.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  User_timer.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  User_timer.TIMER_EventSource = TIMER_EvSrc_TM2;
  User_timer.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;
  User_timer.TIMER_IniCounter = 0;
  User_timer.TIMER_Period = 999;
  User_timer.TIMER_Prescaler = (7)+ 1;
  TIMER_CntInit (MDR_TIMER2, &User_timer);
  
  TIMER_BRGInit (MDR_TIMER2, TIMER_HCLKdiv1);         /*функция, которая подаёт тактовый сигнал, на основе которого таймер ведёт счёт. 
                                                      У функции есть два параметра: первый — имя таймера, второй — делитель. 
                                                      TIMER_BRGInit также разрешает подачу сигнала тактирования на таймер по умолчанию */
                                                      
  NVIC_EnableIRQ (Timer2_IRQn);     // Разрешение обработки прерывания от таймера 

  NVIC_SetPriority (Timer2_IRQn, 0); //Назначение приоритета прерывания от таймера 

  TIMER_ITConfig (MDR_TIMER2, TIMER_STATUS_CNT_ARR, ENABLE); // Разрешаем прерывание

  TIMER_Cmd(MDR_TIMER2, ENABLE); //Включение таймера
}

volatile uint32_t PWM_DUTY_CYCLE=0;
volatile uint32_t ccr_value=0;

 void Timer2_IRQHandler (void)
 {
   TIMER_ClearFlag(MDR_TIMER2, TIMER_STATUS_CNT_ARR);
   if (PORT_ReadInputDataBit (MDR_PORTA,PORT_Pin_0))
  {
    buttonFlag = 1;
    if (PWM_DUTY_CYCLE == 0)    {PWM_DUTY_CYCLE=20;}
    else if (PWM_DUTY_CYCLE==20) {PWM_DUTY_CYCLE=40;}
    else if (PWM_DUTY_CYCLE==40) {PWM_DUTY_CYCLE=60;}
    else if (PWM_DUTY_CYCLE==60) {PWM_DUTY_CYCLE=80;}
    else if (PWM_DUTY_CYCLE==80) {PWM_DUTY_CYCLE=100;}
    else if (PWM_DUTY_CYCLE==100) {PWM_DUTY_CYCLE=0;}
  }
 }
 void pwm_rate (void)
{
  volatile uint32_t period = PWM_PERIOD;
  ccr_value = ((period + 1) * PWM_DUTY_CYCLE) / 100;
}

//volatile uint32_t ccr_value = ((PWM_PERIOD + 1) * PWM_DUTY_CYCLE) / 100;
