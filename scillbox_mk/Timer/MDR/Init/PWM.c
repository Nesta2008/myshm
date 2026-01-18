/*
F = SystemCoreClock/((PSG+1)*(ARR+1));

ARR = SystemCoreClock/ (F*(PSG+1))-1;
*/
//PORT_A_Pin_3  - светодиод, лучше для ШИМ

/*
Инициализация таймера в режиме широтно-импульсной модуляции состоит из 
следующих шагов: 
1. Включение тактирования. 
2. Деинициализация. 
3. Конфигурация таймера. 
4. Конфигурация порта ввода-вывода. 
5. Конфигурация каналов таймера. 
6. Конфигурация линий каналов. 
7. Конфигурация регистров сравнения.
*/

#include "PWM.h"

volatile uint32_t pwm_cnt=0;

void TIM1_PWM (void) // функция настройки ШИМ
{
  
  CLK_TIMER1 ();          //тактирование таймера 1
  
  TIMER_Reset(MDR_TIMER1);// Деинициализация
  /*----------------------------------------------------*/
  TIMER_CntInitTypeDef Tim_CntStr;  //Инициализация таймера
  Tim_CntStr.TIMER_Prescaler = 0;
  Tim_CntStr.TIMER_Period = 1000;
  Tim_CntStr.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately ;
  Tim_CntStr.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;
  Tim_CntStr.TIMER_CounterDirection = TIMER_CntDir_Up;
  Tim_CntStr.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;
  Tim_CntStr.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  Tim_CntStr.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  Tim_CntStr.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  Tim_CntStr.TIMER_EventSource = TIMER_EvSrc_TM1;
  Tim_CntStr.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;
  
  TIMER_CntInit (MDR_TIMER1, &Tim_CntStr);    //Инициализация созданной структуры
  /*----------------------------------------------------*/

  TIMER_ChnInitTypeDef Tim_ChnStr;   //Инициализация канала таймера.  Именно в этой функции мы формируем сигнал на REF для ШИМ.
  Tim_ChnStr.TIMER_CH_BRK_Reset = TIMER_CH_BRK_RESET_Disable; // Сброс канала BRK не производится (BRK не используем).
  Tim_ChnStr.TIMER_CH_CCR1_Ena =	DISABLE; // CCR1 не используем.
  Tim_ChnStr.TIMER_CH_CCR1_EventSource =	TIMER_CH_CCR1EvSrc_PE; // Выбор события по входному каналу для CAP1: положительный фронт по Chi. (По умолчанию, мы не используем).
  Tim_ChnStr.TIMER_CH_CCR_UpdateMode = TIMER_CH_CCR_Update_Immediately; // Регистр CCR можно обновлять в любое время (CCR не используем).
  Tim_ChnStr.TIMER_CH_ETR_Ena = DISABLE; // ETR не используется.
  Tim_ChnStr.TIMER_CH_ETR_Reset = TIMER_CH_ETR_RESET_Disable; // Сброс ETR не производится.
  Tim_ChnStr.TIMER_CH_EventSource = TIMER_CH_EvSrc_PE;								// Выбор события по входному каналу: положительный фронт. (Так же не используется).
  Tim_ChnStr.TIMER_CH_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK; // Входной сигнал от TIMER_CLK фиксируется одним триггером.
  Tim_ChnStr.TIMER_CH_Mode = TIMER_CH_MODE_PWM; // Канал в ШИМ режиме.
  Tim_ChnStr.TIMER_CH_Number = TIMER_CHANNEL2;  //Номер канала, который будем использовать. Согласно распиновке МК РА3 - альтернативная функция
  Tim_ChnStr.TIMER_CH_Prescaler = TIMER_CH_Prescaler_None; // В канале частота не делится.
  Tim_ChnStr.TIMER_CH_REF_Format = TIMER_CH_REF_Format6; //Напряжение опорного сигнала


  TIMER_ChnInit(MDR_TIMER1,&Tim_ChnStr);//Инициализация созданной структуры

  //TIMER_SetChnCompare(MDR_TIMER1,TIMER_CHANNEL2,10); //Заполнение?

  /*----------------------------------------------------*/
  TIMER_ChnOutInitTypeDef Tim_Out;//Настройка режимов на выход
  Tim_Out.TIMER_CH_DirOut_Mode = TIMER_CH_OutMode_Output; //Режим // Всегда выход
  Tim_Out.TIMER_CH_DirOut_Polarity = TIMER_CHOPolarity_NonInverted; // Неинвертированный.
  Tim_Out.TIMER_CH_DirOut_Source = TIMER_CH_OutSrc_REF; //Источник.    Тут источник опорного напряжения прямого выхода // На выход REF сигнал.
  Tim_Out.TIMER_CH_DTG_AuxPrescaler = 0; // Делителя не стоит.
  Tim_Out.TIMER_CH_DTG_ClockSource = TIMER_CH_DTG_ClkSrc_TIMER_CLK; // Источник тактового сигнала для DTG - TIMER_CLK. Но DTG мы все равно не используем.
  Tim_Out.TIMER_CH_DTG_MainPrescaler = 0; // Делитель сигнала на DTG.
  Tim_Out.TIMER_CH_NegOut_Mode = TIMER_CH_OutMode_Input; // Инвертный канал на вход. Все остальные его параметр берем по умолчанию, т.к. они не важны.
  Tim_Out.TIMER_CH_NegOut_Polarity = TIMER_CHOPolarity_NonInverted; // Без инвертирования инвертированного канала.
  Tim_Out.TIMER_CH_NegOut_Source = TIMER_CH_DTG_ClkSrc_TIMER_CLK; // Источник тактового сигнала для DTG - TIMER_CLK.
  Tim_Out.TIMER_CH_Number = TIMER_CHANNEL2;          //Номер канала

  TIMER_ChnOutInit(MDR_TIMER1,&Tim_Out); //Инициализация созданной структуры
  /*----------------------------------------------------*/

  TIMER_BRGInit (MDR_TIMER1, TIMER_HCLKdiv1);         /*функция, которая подаёт тактовый сигнал, на основе которого таймер ведёт счёт. 
                                                      У функции есть два параметра: первый — имя таймера, второй — делитель. 
                                                      TIMER_BRGInit также разрешает подачу сигнала тактирования на таймер по умолчанию */

  TIMER_Cmd(MDR_TIMER1, ENABLE); //Включение таймера
  

}






void TIM1_PWM_CMSIS (void) // функция настройки ШИМ
{
  CLK_TIMER1 ();          //тактирование таймера 1

  TIMER_Reset(MDR_TIMER1);// Деинициализация

  // Предделитель тактовой частоты таймера TIMER1 
  MDR_TIMER1->PSG = TIMER1_PRESCALER; 
 
  // Значение автоматической перезагрузки таймера 
  MDR_TIMER1->ARR = PULSE_PERIOD(PULSE_FREQUENCY);


  // Общая конфигурация таймера 
  MDR_TIMER1->CNTRL |= (1 << TIMER_CNTRL_CNT_EN_Pos)      // Работа таймера (пока отключен) 
                    | (1 << TIMER_CNTRL_ARRB_EN_Pos)     // Режим обновления регистра ARR (при перезагрузке) 
                    | (0 << TIMER_CNTRL_DIR_Pos)         // Направление счета (прямой счет) 
                    | (0 << TIMER_CNTRL_FDTS_Pos)        // Частота выборки (не используется) 
                    | (0 << TIMER_CNTRL_CNT_MODE_Pos)    // Режим счета (такт. импульсы с фикс. напр-ем) 
                    | (0 << TIMER_CNTRL_EVENT_SEL_Pos);  // Триггер счета (тактовые импульсы) 

  // Конфигурация канала CH1 таймера TIMER1 
  MDR_TIMER1->CH1_CNTRL |=  (0 << TIMER_CH_CNTRL_CHFLTR_Pos)     // Фильтрация входного сигнала (–) 
                          | (0 << TIMER_CH_CNTRL_CHSEL_Pos)      // Событие для фиксации счетчика в регистр CCR (–) 
                          | (0 << TIMER_CH_CNTRL_CHPSC_Pos)      // Предделитель частоты входного сигнала (–) 
                          | (0 << TIMER_CH_CNTRL_OCCE_Pos)       // Использование сигнала ETR (–) 
                          | (6 << TIMER_CH_CNTRL_OCCM_Pos)       // Формат выходного сигнала REF (6) 
                          | (0 << TIMER_CH_CNTRL_BRKEN_Pos)      // Сброс по сигналу BRK (–) 
                          | (0 << TIMER_CH_CNTRL_ETREN_Pos)      // Сброс по сигналу ETR (–) 
                          | (0 << TIMER_CH_CNTRL_CAP_NPWM_Pos);  // Режим работы канала (ШИМ) 

  // Конфигурация линий канала таймера 
  // Прямая линия 
  MDR_TIMER1->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_Pos)   // Выходной сигнал на прямой линии (разрешен) 
                          | (2 << TIMER_CH_CNTRL1_SELO_Pos)    // Режим работы прямой линии (REF) 
                          | (0 << TIMER_CH_CNTRL1_INV_Pos)     // Инверсия прямого линии (отсутствует) 
   
  // ...Инверсная линия 
                          | (0 << TIMER_CH_CNTRL1_NSELOE_Pos)  // Выходной сигнал на инверсной линии (запрещен) 
                          | (0 << TIMER_CH_CNTRL1_NSELO_Pos)   // Режим работы инверсной линии (отключена) 
                          | (0 << TIMER_CH_CNTRL1_NINV_Pos);   // Инверсия инверсной линии (отсутствует) 


  // Конфигурация регистров сравнения 
  MDR_TIMER1->CH1_CNTRL2 =  (0 << TIMER_CH_CNTRL2_CHSEL1_Pos)   // Событие для фиксации значения регистра CCR1 (–) 
                          | (0 << TIMER_CH_CNTRL2_CCR1_EN_Pos)  // Использование регистра CCR1 (не используется) 
                          | (1 << TIMER_CH_CNTRL2_CCRRLD_Pos);  // Обновление регистров сравнения (при перезагрузке)

  // Вычисление ширины импульсов (в отсчетах таймера), 
  // и запись вычисленного значения в регистр сравнения CCR 
  MDR_TIMER1->CCR1 = PULSE_PERIOD(PULSE_FREQUENCY) * DUTY_CYCLE / 100;

  // Исключение однотактных провалов 
  if (DUTY_CYCLE == 100) 
      {MDR_TIMER1->CCR1 |= PULSE_PERIOD(PULSE_FREQUENCY) + 1;} 
  // Запуск таймера 
  MDR_TIMER1->CNTRL |= (1 << TIMER_CNTRL_CNT_EN_Pos); 
}



