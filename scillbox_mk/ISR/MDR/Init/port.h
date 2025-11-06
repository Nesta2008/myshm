#ifndef __port_H
#define __port_H

#include "Init.h"
#include "clk.h"

#define DELAY 300000					//Частота вкл/выкл


void PORTA_LED (void);    //Функция программирования светодиода на порте А

void PORTС_LED (void);    //Функция программирования светодиода на порте С

void PORTA_Button (void); //Функция программирования кнопки на порте A


#endif
