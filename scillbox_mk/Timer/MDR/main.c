//PORT_A_Pin_1  - светодиод
//PORT_A_Pin_3  - светодиод
//PORT С_Pin_2 - светодиод
//PORT_A_PIN_0 - кнопка


#include "init.h"

int main (void)
{
	STick_init ();
	PORT_UserInit ();
	
		
	while (1)
	{
	
  /*if (buttonFlag !=0){
    PORT_SetBits (MDR_PORTA, PORT_Pin_3);
    buttonFlag = 0;
  }
  else {  
  PORT_ResetBits (MDR_PORTA, PORT_Pin_3);
  }
	*/
	//PORT_SetBits (MDR_PORTA, PORT_Pin_1);
	//delay (500);
	
	//PORT_ResetBits (MDR_PORTA, PORT_Pin_1);	
	//delay (500);
	
	/*PORT_SetBits (MDR_PORTC, PORT_Pin_2);
	//for (volatile int i=0; i<DELAY; i++);
  delay (500);
    
  PORT_ResetBits (MDR_PORTC, PORT_Pin_2);
  //for (volatile int i=0; i<DELAY; i++);
  delay (500);	*/
  }
}