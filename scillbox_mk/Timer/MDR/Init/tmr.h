#ifndef __TMR_H
#define __TMR_H

#include "MDR32FxQI_timer.h"            // Milandr::Drivers:TIMER
#include "init.h"

//void TIMER_Reset (MDR_TIMER_TypeDef *MDR_TIMERx);    //Функция деинициализации таймера (общая)

void TIMER_Reset (MDR_TIMER_TypeDef *MDR_TIMERx); //Функция деинициализации таймера (общая)

void TIM_Init (void);      // ффункция настройки таймера по уроку scillbox

void TIM_Init_CMSIS (void);      // функция настройки таймера

void Timer1_IRQHandler (void);

#endif