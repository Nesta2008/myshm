/*--------Данные Nucleo-------*/
/// PA5 - LED
///	PC13 - button

#include "init.h"
volatile uint32_t delay_cnt = 0; 
volatile uint32_t button_flag = 0; 

void User_Init (void)
{
	/*---------Тактирование----------*/
	
	//RCC_APB2PeriphClockCmd (RCC_APB2Periph_AFIO, ENABLE);	//Тактирование порта С
		
	RCC_APB2PeriphClockCmd (RCC_APB2Periph_GPIOA, ENABLE);	//Тактирование порта А
	RCC_APB2PeriphClockCmd (RCC_APB2Periph_GPIOC, ENABLE);	//Тактирование порта С
	

	/*---------Программирование порта A---PA5------*/
	GPIO_InitTypeDef LED;
	LED.GPIO_Mode = GPIO_Mode_Out_PP;
	LED.GPIO_Pin = GPIO_Pin_5;
	LED.GPIO_Speed = GPIO_Speed_2MHz;
	
	GPIO_Init (GPIOA, &LED); 	//Включение порта
	
	/*------Програмирование порта C-----PC13--*/
	GPIO_InitTypeDef Button;
	Button.GPIO_Mode = GPIO_Mode_IPU;
	Button.GPIO_Pin = GPIO_Pin_13;
	Button.GPIO_Speed = GPIO_Speed_2MHz;
	
	GPIO_Init (GPIOC, &Button); 	//Включение порта
	
	/*------Програмирование блока прерываний-----Line13--*/	
	GPIO_EXTILineConfig ( GPIO_PortSourceGPIOC , GPIO_PinSource13 );
	
	EXTI_InitTypeDef EXTI_Button;							//Присваеваем структуре EXTI_InitTypeDef имя exti
	EXTI_Button.EXTI_Line = EXTI_Line13;
	EXTI_Button.EXTI_LineCmd = ENABLE;
	EXTI_Button.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_Button.EXTI_Trigger = EXTI_Trigger_Rising;
	EXTI_Init (&EXTI_Button);				//Включение
		
	/*------Програмирование NVIC-------*/		
		
	//NVIC_SetPriority(EXTI3_IRQn, 0);					
	NVIC_EnableIRQ (EXTI3_IRQn);																							
}

void Stick_Init (void)		//Настройка прерывания
{
	SysTick->LOAD |= (16000)-1;
	SysTick->CTRL |= SysTick_CTRL_CLKSOURCE_Msk;
	SysTick->CTRL |= SysTick_CTRL_COUNTFLAG_Msk;
	SysTick->CTRL |= ~SysTick_CTRL_ENABLE_Pos;
}

void SysTick_Handler(void)			//Обработчик прерываний
{
	if (delay_cnt!=0){
	delay_cnt--;
	}
}

void delay (uint32_t delay_ms)	//Функция передачи времени в обработчик прерываний
{
	delay_cnt = delay_ms;
	while (delay_cnt) {};
}

void EXTI3_IRQHandler (void)
{
	EXTI_ClearITPendingBit(EXTI_Line13);
	//EXTI_ClearFlag(EXTI_Line13);
	if (GPIO_ReadInputDataBit (GPIOC, GPIO_Pin_13)==0){
	button_flag = 1 ;
	}
	
}