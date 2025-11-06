#include "User_Init.h"

#define FREQUENSY 32768 //32768 или 65535
//PORT_A_Pin_1  - светодиод
//PORT С_Pin_2 - светодиод
//PORT_A_PIN_0 - кнопка


int main (void)
{
	
	UserInit ();
	
	while (1)
	{
		for (volatile int cnt=0; cnt<FREQUENSY; cnt++);
		MDR_PORTA->RXTX ^= (1 << 1);			//Инвертируем состояние порта
		MDR_PORTC->RXTX ^= (1 << 2);			//Инвертируем состояние порта
			
	}
}
