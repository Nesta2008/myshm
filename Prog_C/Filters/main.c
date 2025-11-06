#include <stdio.h>
#include <stdlib.h>

#include "Sinus.h"
#include "noise.h"
#include "files.h"
#include "averrage_filter.h"
#include "sqr_averrage_filter.h"
#include "median_filter.h"
#include "MA_filter.h"
/*
Составьте программу, которая с помощью функций стандартных библиотек (stdlib.h, math.h, time.h и так далее)
выделяет память для динамического массива, размерность которого вводится с консоли,
заполняет его гармоническим (синусоидальным) сигналом, добавляет к сигналу шумовую компоненту и
выводит массив чисел этого сигнала.
*/

/*
Вам необходимо составить программу, которая с помощью различных сортировок (на выбор программиста) выполняет
фильтрацию зашумлённого сигнала из модуля «Практическое применение стандартных библиотек» и выводит данные на
консоль. В дальнейшем также потребуется построить график полученной зашумлённой и отфильтрованной функции при
помощи внешнего редактора, например электронных таблиц Excel или аналогов.
*/





int main()
{
    printf("Please, enter size of array!\n");
    int size;                                           //Переменная для ввода количества точек(размерности массива)
    scanf ("%d", &size);

    double *arr = malloc (size*sizeof(double));         //Создали динамический массив

    generate_sinus(arr, size);
    printf ("\nPrint sinus\n");
    print_array(arr, size);              //Распечатали массив

    save (sins, arr, size);              //Печать в файл чистого сигнала

    generate_noise (arr, size);
    printf ("\nPrint sinus + noise\n");
    print_array(arr, size);              //Распечатали массив

    save (sin_noise, arr, size);         //Печать в файл зашумленного сигнала

    printf ("\nEnter select filtration type\n");
    printf ("1 - Average filter\n");
    printf ("2 - Square average filter\n");
    printf ("3 - Median filter\n");
    printf ("4 - MA filter\n");
    int user;
    scanf("%d",&user);
    switch (user)
    {
    case 1:
        averrage_filter (arr,size);
        break;
    case 2:
        sqr_averrage_filter (arr,size);
        break;
    case 3:
        break;
    case 4:
        break;
    }




    free (arr);
    arr=NULL;

    return 0;
}
