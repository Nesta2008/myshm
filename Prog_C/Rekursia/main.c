#include <stdio.h>
#include <stdlib.h>

#define var_task 2
#define size_massive 5

int var;                                             // переменная выбора пользователя
int arr = size_massive;
int first_massive [size_massive][size_massive];       //создание первого массива
int second_massive [size_massive][size_massive];      //создание второго массива

#if var_task==1
int result=0, a = 0, b = 1;           // переменные базовых значение порядка Фибоначчи для рекурсии

int fibonach1(int n)                // функция вывода порядка Фибоначчи до требуемого значения через цикл
    {
        int a = 0, b = 1, result=0;
        for (int i=0; result<n; i++)
            {
                if (a==0)  printf ("%d ", a);
                result = a+b;
                a = b;
                b = result;
            printf ("%d ", result);
            }
    }


int fibonach(int n)                // функция вывода порядка Фибоначчи до требуемого значения через рекурсию
    {
        if (a==0)  printf ("%d ", a);
        result = a+b;
        a = b;
        b = result;
        if (result>n)   return result;
        printf("%d ", result);
        return    fibonach(n);

    }
#elif var_task!=1
int fill_massive (int arr[size_massive][size_massive],int RANDOM_MAX)      // функция заполнения двумерного массива числами, где RANDOM_MAX верхняя граница
    {
        for (int i=0; i<size_massive; i++)
            {
                for (int k=0;k<size_massive; k++)
                {
                    arr[i][k]=rand()%RANDOM_MAX;
                }
            }
    }


int print_massive (int arr[size_massive][size_massive])   //Функция печати двумерного массива
    {
        printf ("\n");
        for (int i=0; i<size_massive; i++)
            {
                for (int k=0;k<size_massive; k++)
                {
                    printf ("%d\t", arr[i][k]);
                }
            printf ("\n");
            }
    }

int change (int var)      // функция изменения второго массива
    {
        for (int i=0; i<size_massive; i++)
            {
                for (int k=0;k<size_massive; k++)
                {
                    if (first_massive[i][k]==var)
                        second_massive[i][k]=1;
                }
            }
    }

int saper2 ()                    //"Сапер" через цикл For
{
    for (int i=0; i<size_massive;i++)
    {
        for (int k=0;k<size_massive; k++)
        {
            if (second_massive[i][k] != 1)
                {
                    printf ("Print you choise 0 - 127 \n");
                    scanf ("%d", &var);
                    change (var);
                    print_massive(second_massive);
                }
        }

    }
}
/*int z=0;                      //"Сапер" через рекурсию
int z1=0;
int chek1(int *first_massive[z1][z])
{
    if (z==size_massive)
            {
                z=0;
                return;
            }
    if (*(first_massive[z1]+z)==var)
            {
                *(second_massive[z1]+z)=1;
            }
    z++;
    print_massive(second_massive);
    chek1 (*first_massive[z1][z]);
}

int chek2(int *first_massive[z1][z])
{
    if (z1==size_massive)
            {
                z1=0;
                return;
            }
    chek1 (*first_massive[z1][z]);
    z1++;
    chek2 (*first_massive[z1][z]);
}

int saper ()
{
   printf ("Print you choise 0 - 127 \n");
   scanf ("%d", &var);
   chek2 (*first_massive[z1]);

   int saper ();
}
*/
#endif // var_task
/*
Задача 1

Используя рекурсию, выведите в консоль в строку с пробелами между числами последовательность Фибоначчи, начиная с нулевого значения до числа 2 584.
*/
int main()
{
#if var_task==1
printf ("task_1\n\n");
fibonach1 (2584);
printf ("\n\n");

fibonach (2584);
printf ("\n\n");
/*
Задача 2

Используя рекурсивную функцию, напишите следующую программу:

1. Объявите переменную и введите в неё случайное значение из консоли. Эта переменная должна открывать клетки — если значение в ней совпадёт со значением закрытых клеток в игре,
будет выполнено условие об открытии соседних клеток с таким же значением.
2. Объявите двумерный массив 5 × 5 и заполните его числами — можно использовать консоль для ввода чисел или заполнять массив непосредственно в коде программы.
Числа положительные, целые, от нуля до 127 включительно. Изначально все данные массива недоступны пользователю.
3. Во втором массиве размером 5 × 5 хранятся сведения об открытии пользователем клеток первого массива.
Если пользователь открыл клетку, элемент второго массива принимает значение 1, если клетка закрыта — значение 0.

Условие

Если пользователь открыл клетку, совпадающую с первой переменной, автоматически должны открыться все клетки с таким же значением.

Игра-аналог — «Сапёр» из Microsoft Windows.
*/
#elif var_task !=1
printf ("task_2\n\n");


fill_massive(first_massive, 128);       // заполнили первый массив
fill_massive(second_massive, 1);        // заполнили второй массив
print_massive(first_massive);           // вывод на печать массива 1
print_massive(second_massive);          // вывод на печать массива 2



saper2();
//saper();

printf ("Exellent\n");
#endif


    return 0;
}
