#include "Sinus.h"


void generate_sinus (double *a, int n)                  //функция генерации синуса
{
    for (int i=0; i<n; i++){                         //Заполнили массив синусоидой
        double t = (double)i / (double)n;
        double amplitude = (double)AMPLITUDE;
        double frequency = (double)FREQUENSY;
        double phase = (double)PHASE;
        double value = 3+ amplitude * sin(2 * PI * frequency * t + phase);
        a[i] = value;
    }
    return 0;
}



void print_array (double *a, int n)
{
    for (int i=0; i<n; i++)
    printf("%f\t", a[i]);
    return 0;
}
