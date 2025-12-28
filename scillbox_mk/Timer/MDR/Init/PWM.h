#ifndef __PWM_H
#define __PWM_H


// Требуемая частота широтно-импульсной модуляции (в Гц) 
#define PULSE_FREQUENCY 1000 

// Коэффициент заполнения (в процентах) 
#define DUTY_CYCLE 70 

// Фактический предделитель тактовой частоты таймера TIMER1 
#define TIMER1_PRESCALER 1
 
// Макрос для расчета периода импульсов в тактах таймера 
#define PULSE_PERIOD(F) ((uint16_t)(SystemCoreClock /((uint32_t)F * (TIMER1_PRESCALER+1)) - 1)) 



#include "init.h"
#include "tmr.h"

void TIM1_PWM (void); // функция настройки ШИМ

void TIM1_PWM_CMSIS (void); // функция настройки ШИМ


#endif