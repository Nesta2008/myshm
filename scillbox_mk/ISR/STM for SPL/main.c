#include "main.h"

int main (void)
{
	User_Init ();
	Stick_Init ();
	
	
	while (1)
	{
		if (button_flag!=0){
		GPIO_SetBits (GPIOA, GPIO_Pin_5);
		delay (DELAY2);
		GPIO_ResetBits (GPIOA, GPIO_Pin_5);
		delay (DELAY2);
		button_flag=0;
		}	else {
		GPIO_SetBits (GPIOA, GPIO_Pin_5);
		delay (DELAY);
		GPIO_ResetBits (GPIOA, GPIO_Pin_5);
		delay (DELAY);
		
		}
	}
}
