#include "noise.h"
#include <time.h>


void generate_noise (double *a, int n)      //‘ункци€ добавлени€ шумма в созданный массив
{
    srand(time(NULL));                          //инициализирует генератор случайных чисел начальным числом
    for (int i=0; i<n; i++){
    double noise_min = a[i]-NOISE;        //ћинимальное значение сигнала с учетом шума
    double noise_max = a[i]+NOISE;        //ћаксимальное значение синала с учетом шума
    double f = (double)rand() / RAND_MAX;
    a[i] = noise_min + f * (noise_max - noise_min);
    }
    return 0;
}

