#include "SysTick.h"

/*--------ПРЕРЫВАНИЕ ЧЕРЕЗ SysTick И ФУНКЦИЮ delay----------*/
void STick_init (void)
{
SysTick->LOAD |= (16000)-1;
SysTick->CTRL |= SysTick_CTRL_CLKSOURCE_Pos;   // 
SysTick->CTRL |= SysTick_CTRL_TICKINT_Pos;
SysTick->CTRL |= SysTick_CTRL_ENABLE_Pos;
NVIC_EnableIRQ(EXT_INT1_IRQn);
NVIC_SetPriority(SysTick_IRQn, 1);
}

void SysTick_Handler (void)		//Функция обработчика прерывания SysTick
{
if (delay_cnt!=0)  
delay_cnt--;
}