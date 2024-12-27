#ifndef TASK_3_H_INCLUDED
#define TASK_3_H_INCLUDED
/*
На предприятии работает 15 сотрудников, в полях структуры должны содержаться их Ф. И. О., возраст, пол и должность.
Посчитайте средний и медианный возраст сотрудников по половой принадлежности, количество мужчин и женщин,
а также средний и медианный возраст всех сотрудников предприятия.
*/

typedef struct
{             //структура данных по сотрудникам
    char *FIO;
    unsigned int *age;
    char *gender;
    char *post;
}person;

person people[];              //Массив сотрудников общий

unsigned int Sum_people;               //Подсчет общего количества людей в массиве

void printStructs (person *array, unsigned int size);                   //Прототип Функции вывода на печать библиотеки

unsigned int mens;                      //Количество мужчин
unsigned int womans;                    //Количество женщин

unsigned int sum_age;                   //возраст всех сотрудников
unsigned int age_m;                   //возраст мужчин
unsigned int age_w;                   //возраст женщин

unsigned int Median;                //медианный возраст общий
unsigned int Median_m;               //медианный возраст мужской
unsigned int Median_w;               //медианный возраст женский


void statistic ();              //функция расчета статистики

#endif // TASK_3_H_INCLUDED
