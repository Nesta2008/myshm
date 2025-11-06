#ifndef FILES_H_INCLUDED
#define FILES_H_INCLUDED
#include <stdio.h>
#include <stdlib.h>


char * sins;                    //Создали указатель на файл синусоиды без шума
char * sin_noise;               //Создали указатель на файл синусоиды с шумом
char * Averrage_filter;         //Создали указатель на файл фильтрации по среднему арифметическому способу
char * Sqr_averrage_filter;     //Создали указатель на файл фильтрации по квадратичному среднему арифметическому способу
char * Median_filter;           //Создали указатель на файл фильтрации по медианному способу
char * M_filter;               //Создали указатель на файл фильтрации по скользящему среднему способу


void save (char *file, double *a, int n);         //Функция печати в файл


#endif // FILES_H_INCLUDED
