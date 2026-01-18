/*
Задание 4
Напишите программы для микроконтроллеров STM32/K1986BE92, которые меняют яркость светодиода с помощью ШИМ. 
Изменение коэффициента заполнения 0%, 20%, 40%, 60%, 80%, 100% происходит по нажатию кнопки.
*/

#include "main.h"

int main (void)
{
User_Led ();
User_Led_PWM ();
User_Button ();
User_timer_PWM ();
User_timer ();

  while (1)
  {
    pwm_rate (); 
    TIMER_SetChnCompare(MDR_TIMER1,TIMER_CHANNEL2,ccr_value);
    
  }
}
