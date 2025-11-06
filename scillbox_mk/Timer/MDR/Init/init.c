//PORT_A_Pin_1  - светодиод
//PORT_A_Pin_3  - светодиод
//PORT С_Pin_2 - светодиод
//PORT_A_PIN_0 - кнопка


#include "init.h"

void PORTA_LED (void)      //Функция программирования светодиода на порте А
{
  CLK_PORTA(); //включение тактирования порта А 
	
  PORT_InitTypeDef PORTA_InitStruct;    // Создание структуры для программирования порта;

  PORTA_InitStruct.PORT_FUNC = PORT_FUNC_PORT;  
  PORTA_InitStruct.PORT_OE = PORT_OE_OUT;
  PORTA_InitStruct.PORT_MODE = PORT_MODE_DIGITAL;
  PORTA_InitStruct.PORT_Pin = PORT_Pin_1 | PORT_Pin_3;
  PORTA_InitStruct.PORT_SPEED = PORT_SPEED_FAST;
  
  PORT_Init(MDR_PORTA,&PORTA_InitStruct);   //Инициализация порта
}

void PORTС_LED (void)      //Функция программирования светодиода на порте С
{
  CLK_PORTC(); //включение тактирования порта С 
	
  PORT_InitTypeDef PORTС_InitStruct;    //Создание структуры для программирования порта;
  
  PORTС_InitStruct.PORT_FUNC = PORT_FUNC_PORT; 
  PORTС_InitStruct.PORT_OE = PORT_OE_OUT;
  PORTС_InitStruct.PORT_MODE = PORT_MODE_DIGITAL;
  PORTС_InitStruct.PORT_Pin = PORT_Pin_2;
  PORTС_InitStruct.PORT_SPEED = PORT_SPEED_FAST;

  PORT_Init(MDR_PORTC, &PORTС_InitStruct);
}

void PORTA_Button (void)      //Функция программирования кнопки на порте A
{
  
  PORT_InitTypeDef PORTA_InitStruct;    //Создание структуры для программирования порта;
  
  PORTA_InitStruct.PORT_FUNC = PORT_FUNC_ALTER; 
  PORTA_InitStruct.PORT_OE = PORT_OE_OUT;
  PORTA_InitStruct.PORT_MODE = PORT_MODE_DIGITAL;
  PORTA_InitStruct.PORT_Pin = PORT_Pin_0;
  PORTA_InitStruct.PORT_SPEED = PORT_SPEED_FAST;
  PORTA_InitStruct.PORT_PD_SHM = PORT_PD_SHM_ON;
  PORTA_InitStruct.PORT_GFEN = PORT_GFEN_ON;
  PORT_Init(MDR_PORTA, &PORTA_InitStruct);
  NVIC_SetPriority(EXT_INT1_IRQn, 2);
}

volatile uint32_t delay_cnt = 0;
volatile int buttonFlag = 0;

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



/*-----Прерывание по таймеру TIM1------*/
void Timer1_IRQHandler (void)
{
 if (TIMER_GetITStatus (MDR_TIMER1, TIMER_STATUS_CNT_ZERO)){
  PORT_SetBits (MDR_PORTA, PORT_Pin_1);  
  }
TIMER_ClearITPendingBit(MDR_TIMER1, TIMER_STATUS_CNT_ZERO);
}
/*--------------------*/

void PORT_UserInit (void)             //ИНИЦИАЛИЗАЦИЯ ВСЕЙ ПЕРЕФИРИИ
{
  //CPU_Init ();
  PORTA_LED ();
  //PORTС_LED ();
  //PORTA_Button ();
}
