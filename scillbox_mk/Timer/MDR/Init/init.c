//PORT_A_Pin_1  - светодиод
//PORT_A_Pin_3  - светодиод
//PORT С_Pin_2 - светодиод
//PORT_A_PIN_0 - кнопка


#include "init.h"



volatile uint32_t delay_cnt = 0;
volatile int buttonFlag = 0;



void delay (uint32_t delay_ms) //ФУНКЦИЯ БЕСКОНЕЧНОГО ЦИКЛА
{
delay_cnt = delay_ms;
while (delay_cnt) {}
}
/*----------------------------------------------------------*/

/*---------Прерывания по внешнему воздействию----------*/
void EXT_INT1_IRQHandler (void)
{
	if (PORT_ReadInputDataBit(MDR_PORTA, PORT_Pin_0))
	{
		buttonFlag = 1;
	}
}
/*-------------------------------------------------------*/





void PORT_UserInit (void)             //ИНИЦИАЛИЗАЦИЯ ВСЕЙ ПЕРЕФИРИИ
{
  CPU_Init ();
  PORTA_LED ();
  PORTС_LED ();
  //PORTA_Button ();
  //TIM_Init ();
  TIM_Init_CMSIS();
}
