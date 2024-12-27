/*
Дан список учеников класса (классный журнал), который содержит следующие поля:

фамилия ученика;
имя ученика;
отчество ученика;
пол ученика;
класс обучения;
наименование предмета;
оценка за урок.
Заполнение классного журнала должно проводиться с консоли. В результате обработки классного журнала нужно
высчитать средний балл учеников, посчитать количество учеников в классе, ранжировать учеников в классе по успеваемости, а также рассчитать зависимость успеваемости ученика от пола.
*/
#include "task_1.h"

void write_catalog(){                       //Функция заполнения каталога
   for (unsigned int i=0; i<count; i++){
        catalog[i].number=i+1;              // Порядковый номер
        //void write_struct(new_student);
        printf ("Enter family next student\t");              //Фамилия
        scanf ("%s", catalog[i].family);

        printf ("Enter name\t");                //ИМя
        scanf ("%s", catalog[i].name);

        printf ("Enter patronymic(Father name)\t");     //Отчество
        scanf ("%s", catalog[i].patronymic);

        printf ("Enter gender (M or W)\t");                  //Пол
        scanf ("%s", catalog[i].gender);

        strcpy (catalog[i].number_class, numberofclass);            //номер класса

        strcpy (catalog[i].subject, name_subject);                  //Предмет

        printf ("Enter score \t");                  // Оценка за урок
        scanf ("%d", &catalog[i].score);
    }
    return 0;
}


void print_catalog (){                          //Функция печати каталога
    printf ("\n");
    unsigned int n = sizeof(catalog)/sizeof(catalog[0]);
    for (int i=0; i<n; i++){
    printf ("%-10s\t", catalog[i].family);
    printf ("%-10s\t", catalog[i].name);
    printf ("%-10s\t", catalog[i].patronymic);
    printf ("%-3s\t", catalog[i].gender);
    printf ("%-5s\t", catalog[i].number_class);
    printf ("%-10s\t", catalog[i].subject);
    printf ("%5d\t\n", catalog[i].score);
    }

}

void average_score(){               //Функция подсчета среднего балла в классе
printf ("\n");
static unsigned int score = 0;
for (unsigned int i=0; i<count; i++){
    score = score + catalog[i].score;
    }
    score = score/count;
    printf ("Average score in class- %d\n", score);
}

void total (){                      //функция подсчета общего количества детей в классе
printf ("\n");
unsigned int n = sizeof(catalog)/sizeof(catalog[0]);
printf ("Total number of children in the class - %d\n", n);
}

void gender_score(){            //функция подсчета успеваемости от пола
printf ("\n");
static unsigned int man_score=0;
static unsigned int woman_score=0;
for (unsigned int i =0; i<count; i++){
    if (catalog[i].gender=="M")   man_score=man_score+catalog[i].score;
    else woman_score=woman_score+catalog[i].score;
    }
    if (man_score>woman_score)  printf ("Boys study better than girls\n");
    else                        printf ("Girls study better than boys\n");
}

int score_sort (const void *a, const void *b){              //функция, которая умеет сравнивать два элемента массива
return ((students*)a)->score-((students*)b)->score;
}

void sorter (){             //функция сортировки класса по успеваемости
    qsort(catalog, count, sizeof(students), score_sort);
}
