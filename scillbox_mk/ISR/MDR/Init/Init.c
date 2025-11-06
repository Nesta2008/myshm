#include "Init.h"


volatile uint32_t delay_cnt = 0;
volatile int buttonFlag = 0;

void SysTick_Handler (void)		//Функция обработчика прерывания
{
if (delay_cnt!=0)  
delay_cnt--;
}

void EXT_INT1_IRQHandler (void)
{
	if (PORT_ReadInputDataBit(MDR_PORTA, PORT_Pin_0))
	{
		buttonFlag = 1;
	}
}




void delay (uint32_t delay_ms)
{
delay_cnt = delay_ms;
while (delay_cnt) {}
}


void STick_init (void)
{
SysTick->LOAD |= (16000)-1;
SysTick->CTRL |= ~SysTick_CTRL_ENABLE_Pos;
SysTick->CTRL |= SysTick_CTRL_COUNTFLAG_Pos;
SysTick->CTRL |= ~SysTick_CTRL_ENABLE_Pos;
NVIC_SetPriority(SysTick_IRQn, 1);
}


void PORT_UserInit (void)
{
  CPU_Init ();
  PORTA_LED ();
  PORTС_LED ();
  PORTA_Button ();
	
}

