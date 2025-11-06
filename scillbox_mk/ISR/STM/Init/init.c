#include "init.h"
volatile uint32_t delay_cnt = 0; 
volatile uint32_t button_flag = 0; 

void User_Init (void)
{
	/*---------Тактирование----------*/
	__HAL_RCC_GPIOA_CLK_ENABLE();	//Тактирование порта А
	__HAL_RCC_GPIOC_CLK_ENABLE();	//Тактирование порта С
	//__HAL_RCC_SYSCFG_CLK_ENABLE();//Тактирование SYSCFG

	/*---------Программирование порта C---PC13------*/
	GPIO_InitTypeDef Led;
	Led.Mode = GPIO_MODE_OUTPUT_PP;
	Led.Pin = GPIO_PIN_13;
	Led.Pull = GPIO_NOPULL;
	Led.Speed = GPIO_SPEED_FREQ_MEDIUM;
	
	HAL_GPIO_Init (GPIOC, &Led);	//Включение порта
	
	/*------Програмирование порта A-----PA0--*/
	
	GPIO_InitTypeDef Button;
	Button.Mode = GPIO_MODE_IT_FALLING;
	Button.Pin = GPIO_PIN_0;
	Button.Pull = GPIO_PULLUP;
	Button.Speed = GPIO_SPEED_FREQ_MEDIUM;
	HAL_GPIO_Init (GPIOA, &Button);	//Включение порта
	
	HAL_NVIC_SetPriority (EXTI0_IRQn, 0,0);
	HAL_NVIC_EnableIRQ (EXTI0_IRQn);
}

void Stick_Init (void)		//Настройка прерывания
{
	SysTick->LOAD |= (16000)-1;
	SysTick->CTRL |= SysTick_CTRL_CLKSOURCE_Pos;
	SysTick->CTRL |= SysTick_CTRL_COUNTFLAG_Pos;
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



void EXTI0_IRQHandler (void)		//эта функция обрабатывает прерывания EXTI
{
	if(HAL_GPIO_ReadPin (GPIOA,GPIO_PIN_0)==0){ 
	button_flag=1;
	}
	 __HAL_GPIO_EXTI_CLEAR_FLAG(GPIO_PIN_0);
	//HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);
}


