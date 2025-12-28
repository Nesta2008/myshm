#include "tmr.h"

void TIMER_Reset (MDR_TIMER_TypeDef *MDR_TIMERx)    //Функция деинициализации таймера (общая)
{
  MDR_TIMERx->CNT           =0;   //Основной счетчик таймера
  MDR_TIMERx->PSG           =0;   //Делитель частоты при счете основного счетчика
  MDR_TIMERx->ARR           =0;   //Значение периода перезагрузки таймера. Основание счета основного счетчика 
  MDR_TIMERx->CNTRL         =0;   //Регистр управления основного счетчика
  MDR_TIMERx->CCR1          =0;   //Регистр сравнения, захвата для 1 канала таймера
  MDR_TIMERx->CCR2          =0;   //Регистр сравнения, захвата для 2 канала таймера
  MDR_TIMERx->CCR3          =0;   //Регистр сравнения, захвата для 3 канала таймера
  MDR_TIMERx->CCR4          =0;   //Регистр сравнения, захвата для 4 канала таймера
  MDR_TIMERx->CCR11         =0;   //Регистр сравнения 1, захвата для 1 канала таймера
  MDR_TIMERx->CCR21         =0;   //Регистр сравнения 1, захвата для 2 канала таймера
  MDR_TIMERx->CCR31         =0;   //Регистр сравнения 1, захвата для 3 канала таймера
  MDR_TIMERx->CCR41         =0;   //Регистр сравнения 1, захвата для 4 канала таймера
  MDR_TIMERx->CH1_CNTRL     =0;   //Регистр управления для 1 канала таймера
  MDR_TIMERx->CH2_CNTRL     =0;   //Регистр управления для 2 канала таймера
  MDR_TIMERx->CH3_CNTRL     =0;   //Регистр управления для 3 канала таймера
  MDR_TIMERx->CH4_CNTRL     =0;   //Регистр управления для 4 канала таймера
  MDR_TIMERx->CH1_CNTRL1    =0;   //Регистр управления 1 для 1 канала таймера
  MDR_TIMERx->CH2_CNTRL1    =0;   //Регистр управления 1 для 2 канала таймера
  MDR_TIMERx->CH3_CNTRL1    =0;   //Регистр управления 1 для 3 канала таймера
  MDR_TIMERx->CH4_CNTRL1    =0;   //Регистр управления 1 для 4 канала таймера
  MDR_TIMERx->CH1_CNTRL2    =0;   //Регистр управления 2 для 1 канала таймера
  MDR_TIMERx->CH2_CNTRL2    =0;   //Регистр управления 2 для 2 канала таймера
  MDR_TIMERx->CH3_CNTRL2    =0;   //Регистр управления 2 для 3 канала таймера
  MDR_TIMERx->CH4_CNTRL2    =0;   //Регистр управления 2 для 4 канала таймера
  MDR_TIMERx->CH1_DTG       =0;   //Регистр управления DTG для 1 канала таймера
  MDR_TIMERx->CH2_DTG       =0;   //Регистр управления DTG для 2 канала таймера
  MDR_TIMERx->CH3_DTG       =0;   //Регистр управления DTG для 3 канала таймера
  MDR_TIMERx->CH4_DTG       =0;   //Регистр управления DTG для 4 канала таймера
  MDR_TIMERx->BRKETR_CNTRL  =0;   //Регистр управления входом BRK и ETR
  MDR_TIMERx->STATUS        =0;   //Регистр статуса таймера
  MDR_TIMERx->IE            =0;   //Регистр разрешения прерывания таймера
  MDR_TIMERx->DMA_RE        =0;   //Регистр разрешения запросов DMA от прерываний таймера 
}

/*---------------------функция настройки таймера по уроку scillbox----*/

void TIM_Init (void)      // функция настройки таймера по уроку scillbox
{
  CLK_TIMER1 ();          //тактирование таймера 1

  TIMER_Reset(MDR_TIMER1);// Деинициализация

  TIMER_CntInitTypeDef Tim_CntInitStruct;      //Создание структуры для программирования таймера.
  Tim_CntInitStruct.TIMER_Prescaler = (8000-1);
  Tim_CntInitStruct.TIMER_Period = 800;                               //Период
  Tim_CntInitStruct.TIMER_CounterMode = TIMER_CntMode_ClkFixedDir;         //Режим счета - фиксированный вперед
  Tim_CntInitStruct.TIMER_CounterDirection = TIMER_CntDir_Up;      //направление счета
  Tim_CntInitStruct.TIMER_EventSource = TIMER_EvSrc_TM1;             //источник событий
  Tim_CntInitStruct.TIMER_FilterSampling = TIMER_FDTS_TIMER_CLK_div_1;        //Фильтр событий
  Tim_CntInitStruct.TIMER_ARR_UpdateMode = TIMER_ARR_Update_Immediately;          //Режим сброса счетчика
  Tim_CntInitStruct.TIMER_BRK_Polarity = TIMER_BRKPolarity_NonInverted;   //Полярность выхода
  Tim_CntInitStruct.TIMER_ETR_FilterConf = TIMER_Filter_1FF_at_TIMER_CLK;
  Tim_CntInitStruct.TIMER_ETR_Polarity = TIMER_ETRPolarity_NonInverted;
  Tim_CntInitStruct.TIMER_ETR_Prescaler = TIMER_ETR_Prescaler_None;
  
  TIMER_CntInit (MDR_TIMER1, &Tim_CntInitStruct);    //Инициализация созданной структуры
  
  TIMER_BRGInit (MDR_TIMER1, TIMER_HCLKdiv1);         /*функция, которая подаёт тактовый сигнал, на основе которого таймер ведёт счёт. 
                                                      У функции есть два параметра: первый — имя таймера, второй — делитель. 
                                                      TIMER_BRGInit также разрешает подачу сигнала тактирования на таймер по умолчанию */
                                                      
  NVIC_EnableIRQ (Timer1_IRQn);     // Разрешение обработки прерывания от таймера 

  NVIC_SetPriority (Timer1_IRQn, 0); //Назначение приоритета прерывания от таймера 

  TIMER_ITConfig (MDR_TIMER1, TIMER_STATUS_CNT_ZERO, ENABLE);

  TIMER_Cmd(MDR_TIMER1, ENABLE); //Включение таймера
}
/*---------------------функция настройки таймера по уроку scillbox----*/

/*---------------------функция настройки таймера по уроку Миландра----*/

void TIM_Init_CMSIS (void)      // функция настройки таймера
{
  CLK_TIMER1 ();          //тактирование таймера 1

  TIMER_Reset(MDR_TIMER1);// Деинициализация
  /*
      Нам нужно:
      1. Настроить основной таймер.
      2. Настроить канал таймера.
      3. Настроить вывод таймера.
      4. Настроить тактовую частоту для работы всего таймера.
      5. Включить таймер.
  */
  
  MDR_TIMER1->PSG = (800 - 1);     // Предделитель тактовой частоты

  // Период перезагрузки;
  // значение выбрано для периода в 1 секунду по формуле:
  // Tr = (PSG / CLK) * (ARR + 1)
  MDR_TIMER1->CNT=0;              // Начальное значение счета  
  MDR_TIMER1->ARR = 8000;

  // Общая конфигурация
  MDR_TIMER1->CNTRL |= (1 << TIMER_CNTRL_CNT_EN_Pos)      // Работа таймера (пока отключён)
                    | (0 << TIMER_CNTRL_ARRB_EN_Pos)     // Обновление регистра ARR (мгновенное)
                    | (0 << TIMER_CNTRL_DIR_Pos)         // Направление счёта (прямой счёт)
                    | (0 << TIMER_CNTRL_FDTS_Pos)         //Частота выборки -  каждый импульс
                    | (0 << TIMER_CNTRL_CNT_MODE_Pos)    // Фиксация направления (однонаправленный счёт)
                    | (0 << TIMER_CNTRL_EVENT_SEL_Pos);  // Триггер счёта (тактовые импульсы)

  // Настройка запросов на обработку прерываний
  MDR_TIMER1->IE |= (1 << TIMER_IE_CNT_ARR_EVENT_IE_Pos);  // Прерывание при CNT = ARR
  TIMER_BRGInit (MDR_TIMER1, TIMER_HCLKdiv1);
  
  // Конфигурация контроллера NVIC
  NVIC_SetPriority(Timer1_IRQn,0);  // Приоритет прерываний
  NVIC_EnableIRQ(Timer1_IRQn);       // Разрешение обработки прерываний
}
 
/*-----Прерывание по таймеру TIM1------*/
void Timer1_IRQHandler (void)
{
 if (TIMER_GetITStatus (MDR_TIMER1, TIMER_STATUS_CNT_ARR)){
    if(PORT_ReadInputDataBit(MDR_PORTA, PORT_Pin_1) != SET)
        {
        PORT_SetBits (MDR_PORTA, PORT_Pin_1);
        PORT_ResetBits (MDR_PORTC, PORT_Pin_2);
        } else 
          {
            PORT_ResetBits (MDR_PORTA, PORT_Pin_1);  
            PORT_SetBits (MDR_PORTC, PORT_Pin_2);
          }
  }
  TIMER_ClearITPendingBit(MDR_TIMER1, TIMER_STATUS_CNT_ARR); //Сброс флага прерываний
  
  }
/*--------------------*/