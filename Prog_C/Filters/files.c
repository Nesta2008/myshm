#include <stdio.h>
#include <stdlib.h>

#include "files.h"

char * sins = "Sinus.odc";                    //Создали указатель на файл синусоиды без шума
char * sin_noise = "Sinus_Noise.odc";        //Создали указатель на файл синусоиды с шумом
char * Averrage_filter = "averrage_filter.odc";         //Создали указатель на файл фильтрации по среднему арифметическому способу
char * Sqr_averrage_filter = "sqr_averrage_filter.odc";     //Создали указатель на файл фильтрации по квадратичному среднему арифметическому способу
char * Median_filter = "median_filter.odc";           //Создали указатель на файл фильтрации по медианному способу
char * M_filter = "MA_filter.odc";               //Создали указатель на файл фильтрации по скользящему среднему способу


void save (char *file, double *a, int n)         //Функция печати в файл
{
    FILE *fp = fopen(file, "w");        //Передали массив в файл для построения графика
    if(fp==NULL){
        perror("Error ");
        return 1;
    }
     else {

        for(int i = 0;i < n; ++i){
        fprintf(fp,"%f\n", a[i]);
        }
        fclose(fp);
        printf("\nFile has been written\n");
    }
    return 0;
}


