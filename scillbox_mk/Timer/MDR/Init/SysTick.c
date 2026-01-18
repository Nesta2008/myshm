#include "SysTick.h"


volatile uint32_t delay_cnt = 0;

/*----------------------------------------------------------*/

void delay (uint32_t delay_ms) //ФУНКЦИЯ БЕСКОНЕЧНОГО ЦИКЛА
{
delay_cnt = delay_ms;
while (delay_cnt) {}
}


void SysTick_Handler (void)		//Функция обработчика прерывания SysTick
{
if (delay_cnt!=0)  
delay_cnt--;
}

/*--------ПРЕРЫВАНИЕ ЧЕРЕЗ SysTick И ФУНКЦИЮ delay----------*/
void STick_init (void)
{
// Деинициализация
  SysTick->CTRL = 0;
  SysTick->LOAD = 0;
  SysTick->VAL  = 0;

  // Установка периода перезагрузки
  SysTick->LOAD = (SystemCoreClock / SYSTEM_TICK_RATE) - 1;

  // Конфигурация
  SysTick->CTRL = (1 << SysTick_CTRL_ENABLE_Pos)      // Работа таймера (включён)
                | (1 << SysTick_CTRL_TICKINT_Pos)     // Запрос на прерывание (разрешён)
                | (1 << SysTick_CTRL_CLKSOURCE_Pos);  // Источник тактирования таймера (HCLK)

  // Конфигурация контроллера NVIC
  NVIC_SetPriority(SysTick_IRQn, 7);  // Приоритет прерываний
  NVIC_EnableIRQ(SysTick_IRQn);       // Разрешение обработки прерываний
}
