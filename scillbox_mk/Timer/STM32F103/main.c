/*--------Данные Nucleo-------*/
/// PA5 - LED
///	PC13 - button

#include "main.h"



int main (void)
{
  LED_init();
  //Button_init();
  Time4_init();
  GPIO_ResetBits (GPIOA, GPIO_Pin_5);
  while (1)
  {
    //GPIOA->ODR ^= GPIO_ODR_ODR5;
    //GPIO_SetBits (GPIOA, GPIO_Pin_5);
		//delay (DELAY);
		// GPIO_ResetBits (GPIOA, GPIO_Pin_5);
		//delay (DELAY2);
  }


}