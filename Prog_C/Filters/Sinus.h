#ifndef SINUS_H_INCLUDED
#define SINUS_H_INCLUDED
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.14159265
#define AMPLITUDE 3
#define FREQUENSY 2
#define PHASE 1

void generate_sinus (double *a, int n);  //функция генерации синуса

void print_array (double *a, int n);    //функция печати массива


#endif // SINUS_H_INCLUDED
