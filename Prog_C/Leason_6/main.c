/*
Составьте программу, которая изначально предлагает ввод команды с консоли, а затем с помощью переключателя (switch case), который получает команды с консоли
через функцию scanf и выполняет четыре разные функции:

- Выводит в столбик счётчик от девяти до нуля с помощью цикла while.
- Выводит таблицу умножения Пифагора на консоль.
- Ожидает ввод данных с консоли и выводит числа в той последовательности, в которой их ввели, а затем при помощи цикла for и условных операторов сортирует данные
числа по возрастанию и выводит их в консоль следом за выводом исходных данных.
- Задаёт в переключателе режим «Значение по умолчанию»: при введении пользователем несуществующей команды на консоль выводится текст
с требованием введения команды из списка.
*/

/*
Советы и рекомендации
Можно объединять вывод так, чтобы на снимке экрана поместилось как можно больше результатов работ.
Принцип работы функции scanf: scanf (форматная строка, аргументы), спецификаторы аналогичны printf.
int x;
scanf(“%d”, &x);
где х принимает целочисленное значение, введённое с консоли.
*/
#include <stdio.h>
#include <stdlib.h>

int i,k;
#define n 10
int MAS[n];

int mult (i,k)
{
    int z = i*k;
    return z;
}
int main()
{
int task;
printf (" Please, enter the number of the required program \n");
printf ("\t1 - counter \n\t2 - multiplication table\n\t3 - sorter 10 number\n");
for(;;)
{
    scanf("%d", &task);
    if (task==1||task==2||task==3)
        {
         break;
        } else
    printf("Again please\n");
}
switch (task)
{
    case 1:
        i=0;
        while (i<10)
        {
            printf ("\t \t %d \n", i);
            i++;
        };
        break;

    case 2:
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", 0,1,2,3,4,5,6,7,8,9);
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        i++;
        printf("\n %d \t %d \t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d", i,mult(i,1),mult(i,2),mult(i,3),mult(i,4),mult(i,5),mult(i,6),mult(i,7),mult(i,8),mult(i,9));
        break;

    case 3:

        for(int i = 0 ; i < n; i++)
        {
            scanf("%d", &MAS[i]); //Заполнили массив
        }

        for(int i=0; i<n; i++)
        {
            printf("\t %d", MAS[i]);
        }
        printf("\n");
        for(int i = 0 ; i < n - 1; i++) {
// сравниваем два соседних элемента.
       for(int j = 0 ; j < n - i - 1 ; j++) {
           if(MAS[j] > MAS[j+1]) {
              // если они идут в неправильном порядке, то
              //  меняем их местами.
              int tmp = MAS[j];
              MAS[j] = MAS[j+1] ;
              MAS[j+1] = tmp;
           }
        }
    }
        for(int i=0; i<n; i++)
        {
            printf("\t %d", MAS[i]);
        }

       break;


}

    return 0;
}
