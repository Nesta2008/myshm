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
SysTick->LOAD |= (16000)-1;
SysTick->LOAD |= (16000)-1;
SysTick->CTRL |= ~SysTick_CTRL_ENABLE_Pos;
SysTick->CTRL |= SysTick_CTRL_COUNTFLAG_Pos;
SysTick->CTRL |= ~SysTick_CTRL_ENABLE_Pos;
NVIC_SetPriority(SysTick_IRQn, 1);
}
