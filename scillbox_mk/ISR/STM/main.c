#include "main.h"

int main (void)
{
	User_Init ();
	Stick_Init ();
	
	
	while (1)
	{
			
		if (button_flag !=0){
		HAL_GPIO_TogglePin (GPIOC, GPIO_PIN_13);
		delay (DELAY2);
		HAL_GPIO_TogglePin (GPIOC, GPIO_PIN_13);
		delay (DELAY2);
			button_flag=0;
		}
		HAL_GPIO_TogglePin (GPIOC, GPIO_PIN_13);
		delay (DELAY);
		HAL_GPIO_TogglePin (GPIOC, GPIO_PIN_13);
		delay (DELAY);
	}
}
