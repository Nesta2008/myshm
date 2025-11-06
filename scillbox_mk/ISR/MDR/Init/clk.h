#ifndef __clk_H
#define __clk_H

#include "Init.h"

void СPU_Reset (void); // Деинициализация системы тактирования
void CPU_Init (void);  // Инициализация системы тактирования

void CLK_PORTA (void); //Тактирование порта А

void CLK_PORTC (void); //Тактирование порта C
#endif
