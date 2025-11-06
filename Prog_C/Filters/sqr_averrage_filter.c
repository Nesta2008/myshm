#include "sqr_averrage_filter.h"
#include "files.h"



void sqr_averrage_filter (double *a, int n)             //Функция фильтрации по квадратичному арифметическому среднему
{
    int x = n/AVER_COUNT;               //Расчет объема массива
    double aver_arr[x];
    int count = 0;            //счетчик суммарного значения данных
    double sum = 0;             //Переменная суммы значений
    int filter_count=0;         //счетчик значений фильтрованного массива
    for (int i=0; i<n; i++){
    sum = sum + *(a+i);
    count++;
    if (count==AVER_COUNT) {
        aver_arr[filter_count]=sum/AVER_COUNT; //Вносим среднее арифметическое в новый созданный массив
        count = 0;            //обнуляем счетчики
        sum = 0;              //обнуляем счетчики
        filter_count++;
    }
    if (x==filter_count)
        break;
    }
    save (Sqr_averrage_filter, aver_arr, x);
    return 0;
}
