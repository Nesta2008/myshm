#include "K1986VE9xI.h"                 // Device header
#include "MDR32FxQI_port.h"             // Milandr::Drivers:PORT
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK
#include "MDR32FxQI_config.h"           // Milandr::Device:Startup

/*
Доработайте программы led_blinking для микроконтроллеров STM32/K1986BE92, 
выполняющие задержку при помощи функции, которая меняет числовое значение по прерыванию от системного таймера.
*/

#define SYSTEM_TICK_RATE 1000    // Частота системных квантов (в Гц)
volatile uint32_t delay_cnt = 10000;


/*--------PA1------*/
void Port_Led (void)
{
  RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTA, ENABLE);
  PORT_InitTypeDef Led_init;
  Led_init.PORT_FUNC = PORT_FUNC_PORT;
  Led_init.PORT_GFEN = PORT_GFEN_OFF;
  Led_init.PORT_MODE = PORT_MODE_DIGITAL;
  Led_init.PORT_OE = PORT_OE_OUT;
  Led_init.PORT_Pin = PORT_Pin_1;
  Led_init.PORT_PULL_DOWN = PORT_PULL_DOWN_OFF;
  Led_init.PORT_PULL_UP = PORT_PULL_UP_OFF;
  Led_init.PORT_SPEED = PORT_SPEED_FAST;
  PORT_Init(MDR_PORTA, &Led_init);
}
/*-----------------*/

/*------SysTick--------*/
void TICK_Init(void)
  {
  SysTick->CTRL = 0;  // Деинициализация
  SysTick->LOAD = 0;  // Деинициализация
  SysTick->VAL  = 0;  // Деинициализация

  // Установка периода перезагрузки
  SysTick->LOAD |= (SystemCoreClock / SYSTEM_TICK_RATE) - 1;   

  // Конфигурация
  SysTick->CTRL |= (1 << SysTick_CTRL_ENABLE_Pos)      // Работа таймера (включён)
                | (1 << SysTick_CTRL_TICKINT_Pos)     // Запрос на прерывание (разрешён)
                | (1 << SysTick_CTRL_CLKSOURCE_Pos);  // Источник тактирования таймера (HCLK)

  // Конфигурация контроллера NVIC
  NVIC_SetPriority(SysTick_IRQn, 7);  // Приоритет прерываний
  NVIC_EnableIRQ(SysTick_IRQn);       // Разрешение обработки прерываний
  }
void SysTick_Handler (void)
{
   if (delay_cnt!=64000){
    delay_cnt ++;
  }
  else if (delay_cnt ==64000)
  {delay_cnt = 20000;}
}

void delay (void)
{
  for (volatile uint32_t i = 20000; i<delay_cnt; i++){};
}
/*--------------*/
int main (void)
{
Port_Led ();
TICK_Init ();

while (1)
  { 
    PORT_SetBits (MDR_PORTA,PORT_Pin_1);
    delay ();
    PORT_ResetBits (MDR_PORTA,PORT_Pin_1);
    delay ();
  }
}
