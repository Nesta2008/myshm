#include <stdio.h>
#include <stdlib.h>

int main()
{
    /*
    Задача 1

Объявите переменную и присвойте ей какое-либо значение.
Объявите указатель и присвойте ему значение адреса ранее объявленной переменной.
Выведите значение адреса переменной и её текущее значение в консоль.
Поменяйте значение переменной на новое произвольное значение через указатель.
Выведите адрес переменной и новое значение в консоль.
*/
printf ("\nTask 1\n");
#define var 52;
#define var_2 152;
int Les1=var;
int *ind1=&Les1;
printf ("\nvariable = %d", Les1);
printf ("\tAdress = %p", ind1);
*ind1=var_2;
printf ("\nvariable = %d", Les1);
printf ("\tAdress = %p", ind1);
/*Задача 2

Объявите массив из пяти элементов и заполните его произвольной последовательностью.
Выведите массив в консоль в строку, используя цикл и указатели.
С помощью цикла и используя только указатель на массив, выстройте все элементы массива в порядке возрастания, не обращаясь к элементам массива через индекс, а именно через указатели.
*/
printf ("\n\nTask 2\n\n");

#define var_3 5;
int n=var_3;
int mass[n];
printf ("\nMassive\n");
for (int i=0; i<n; i++)
    {
        mass[i]=rand();
        printf ("%d\t", *(mass+i));
    }
for (int i=0; i<n-1;i++)            //Сортировка массива пузырьковым методом через указатели
    {
        for (int k=0; k<n-i-1;k++)
            {
            if ( *(mass+k) > *(mass+k+1) )
                {
                    int tmp = *(mass+k);
                    *(mass+k) = *(mass+k+1);
                    *(mass+k+1)=tmp;
                }
            }
    }
printf ("\nNew massive\n");
for (int i=0; i<n; i++)
    {
        printf ("%d\t", *(mass+i));
    }

/*Задача 3

Объявите массив из пяти элементов и заполните его произвольной последовательностью.
Выведите массив в консоль в строку, используя цикл и указатели.
С помощью цикла и используя только указатель на массив, найдите среднее значение массива, медианное значение, а также его максимальное и минимальное значения.
*/
printf ("\n\nTask 3\n\n");

#define var_4 5;
n=var_4;
mass[n];
printf ("\nMassive\n");
for (int i=0; i<n; i++)             //Заполнение массива
    {
        mass[i]=rand();
        printf ("%d\t", *(mass+i));
    }

int maximal_mas, minimal_mas, median=0, average=0;
int *max_mas=&maximal_mas;
int *min_mas=&minimal_mas;
int *aver=&average;
int *med=&median;
*max_mas=*min_mas=*(mass);
for (int i=0; i<n-1;i++)            //Сортировка массива пузырьковым методом через указатели
    {
        for (int k=0; k<n-i-1;k++)
            {
            if ( *(mass+k) > *(mass+k+1) )
                {
                    int tmp = *(mass+k);
                    *(mass+k) = *(mass+k+1);
                    *(mass+k+1)=tmp;
                }
            }
    }
for (int i=0; i<n;i++)      // Поиск среднего, максимального и минимального значения
    {
        if (*(mass+i)>*max_mas)
            *max_mas=*(mass+i);
        else if(*(mass+i)<*min_mas)
            *min_mas=*(mass+i);
        *aver=*aver+*(mass+i);
    }

if (n%2==0)             // Поиск медианы. Если чётное количество элементов, то медиана будет средним значением двух средних элементов после сортировки
                        //                 Если нечётное количество элементов, то медиана будет средним элементом после сортировки
    {
    for (int i=(n/2-1);i<=n/2;i++)
        {
            median=median+*(mass+i);
        }
    }
    else median = mass [n/2];

printf ("\n\naverage\t%d", (*aver)/n);
printf ("\nmedian_value\t%d", *med);
printf ("\nmaximal_value\t%d", *max_mas);
printf ("\nminimal_value\t%d\n\n", *min_mas);

return 0;
}
