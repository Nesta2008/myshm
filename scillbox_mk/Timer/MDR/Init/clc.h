#ifndef __CLC_H
#define __CLC_H

#include "init.h"

void СPU_Reset (void); // Деинициализация системы тактирования


void CPU_Init (void);  // Инициализация системы тактирования

void CLK_PORTA (void); //Тактирование порта А

void CLK_PORTC (void); //Тактирование порта C

void CLK_TIMER1 (void); //тактирование таймера 1

#endif

