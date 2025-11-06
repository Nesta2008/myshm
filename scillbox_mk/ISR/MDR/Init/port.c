#include "port.h"




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
  CLK_PORTA(); //включение тактирования порта A 
	
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

