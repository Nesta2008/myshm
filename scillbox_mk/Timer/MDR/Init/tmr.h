#ifndef __TMR_H
#define __TMR_H

#include "init.h"

//void TIMER_Reset (MDR_TIMER_TypeDef *MDR_TIMERx);    //Функция деинициализации таймера (общая)

void TIM_Init (void);      // ффункция настройки таймера по уроку scillbox

void TIM_Init_CMSIS (void);      // функция настройки таймера

#endif