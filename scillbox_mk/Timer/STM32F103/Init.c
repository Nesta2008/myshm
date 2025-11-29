/*--------Данные Nucleo-------*/
/// PA5 - LED
///	PC13 - button

#include "init.h"
volatile uint32_t delay_cnt = 0; 
volatile uint32_t button_flag = 0;

void LED_init (void)    /*---------Программирование порта A---PA5------*/
{
  RCC_APB2PeriphClockCmd (RCC_APB2Periph_GPIOA, ENABLE); //Тактирование порта А
  GPIO_InitTypeDef LED;
	LED.GPIO_Mode = GPIO_Mode_Out_PP;
	LED.GPIO_Pin = GPIO_Pin_5;
	LED.GPIO_Speed = GPIO_Speed_2MHz;
	
	GPIO_Init (GPIOA, &LED); 	//Включение порта

}

/*------Програмирование порта C-----PC13--*/
	
void Button_init (void)
{ 
  RCC_APB2PeriphClockCmd (RCC_APB2Periph_GPIOC, ENABLE);	//Тактирование порта С
  GPIO_InitTypeDef Button;
	Button.GPIO_Mode = GPIO_Mode_IPU;
	Button.GPIO_Pin = GPIO_Pin_13;
	Button.GPIO_Speed = GPIO_Speed_2MHz;
	
	GPIO_Init (GPIOC, &Button); 	//Включение порта
}

void delay (uint32_t delay_ms)	//Функция передачи времени в обработчик прерываний
{
	delay_cnt = delay_ms;
	while (delay_cnt) {};
}