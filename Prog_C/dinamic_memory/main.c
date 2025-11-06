#include <stdio.h>
#include <stdlib.h>

void read_arr(int n)                   //Функция для создания массива переменной длины
{
    int arr[n];

    for(int i = 0; i < n; i++)
        {
            printf("Please, enter new value\n");
            scanf("%d", &arr[i]);
        }
        for(int i = 0; i < n; i++)
        {
            printf("%d\n", arr[i]);
        }

    return 0;
}


#define user_task 2

int main()
{
    #if user_task==1
/*
Вам необходимо составить программу, которая с помощью функций библиотеки stdlib.h выделяет
память для динамического массива, размерность которого вводится с консоли. Массив также заполняется с консоли,
далее заполненный массив выводится на консоль поэлементно в строку. После вывода массива необходимо освободить
память функцией из stdlib.h, далее заново попробовать вывести этот массив.
*/

unsigned int user;     //Переменная для ввода размерности массива
printf ("Please, enter the size of the array\n");
scanf ("%d", &user);
int *ptr = malloc (user * sizeof(int));
if(ptr)
    {
        for(int i = 0; i < user; i++)
        {
            printf("Please, enter new value\n");
            scanf("%d", &ptr[i]);
        }
        for(int i = 0; i < user; i++)
        {
            printf("%d\n", ptr[i]);
        }
    }

free(ptr);
ptr = NULL;

    #elif user_task==2
/*Вам необходимо составить программу, которая, не используя функций библиотеки stdlib.h,
выделяет память для динамического массива, размерность которого вводится с консоли.
Массив также заполняется с консоли, далее заполненный массив выводится на консоль поэлементно в строку.
После вывода массива надо освободить память, не пользуясь функцией стандартной библиотеки по работе с
памятью, далее заново попробовать вывести этот массив.
*/

    unsigned int user2;     //Переменная для ввода размерности массива
printf ("Please, enter the size of the array\n");
scanf ("%d", &user2);
read_arr(user2);


    #endif
return 0;
}
