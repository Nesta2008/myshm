#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
/*
Составьте программу, которая с помощью функций стандартных библиотек (stdlib.h, math.h, time.h и так далее)
выделяет память для динамического массива, размерность которого вводится с консоли,
заполняет его гармоническим (синусоидальным) сигналом, добавляет к сигналу шумовую компоненту и
выводит массив чисел этого сигнала.
*/
#define PI 3.14159265
void print_array (double *a, int n)
{
    for (int i=0; i<n; i++)
    printf("%f\n", a[i]);
    return 0;
}

int main()
{
    printf("Please, enter size of array!\n");
    int size;                                   //Переменная для ввода количества точек(размерности массива)
    scanf ("%d", &size);
    double angle = 360/size;
    double *arr = malloc (size*sizeof(double));
    for (int i=0; i<size; i++){
    static double new_angle=0;                 // переменная для первого угла
    arr[i] = sin(new_angle * (PI / 180));
    new_angle = new_angle + angle;
    }

    print_array(arr, size);
    return 0;
}
