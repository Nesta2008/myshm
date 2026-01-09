//PORT_A_Pin_1  - светодиод
//PORT_A_Pin_3  - светодиод
//PORT С_Pin_2 - светодиод
//PORT_A_PIN_0 - кнопка


#include "init.h"




volatile int buttonFlag = 0;





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
  PORTA_LED_PWM ();  //Запрограмировали порт 
  PORTС_LED ();
  //PORTA_Button ();
  //TIM_Init ();
  //TIM_Init_CMSIS();
  TIM1_PWM ();
}
