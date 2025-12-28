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


void TIM1_PWM (void) // функция настройки ШИМ
{
  CLK_TIMER1 ();          //тактирование таймера 1
  
  TIMER_Reset(MDR_TIMER1);// Деинициализация




}
