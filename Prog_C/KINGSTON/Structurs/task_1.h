#ifndef TASK_1_H_INCLUDED
#define TASK_1_H_INCLUDED

#define count 6                  // переменная для ввода максимального количества людей в классе
char numberofclass[5];                   // номер класса
char name_subject [20];                 //наименование предмета

typedef struct
{
   unsigned int number;                 // порядковый номер ученика
   char family[20];                         //фамилия
   char name[20];                           // имя
   char patronymic[20];                     // отчество
   char gender[20];                         //пол
   char number_class[20];                   //номер класса
   char subject [20];                        // наименование предмета
   unsigned int score;                  // оценка за урок
} students;

students catalog[count];        // создание массива со списком класса на основе структуры типа student

void write_catalog();           // Прототип заполнения массива структуры

void print_catalog();          // Прототип массива печати структуры

void average_score();           // Прототип рассчета среднего значения оценок

void total ();                  //Прототип подсчета общего количества детей в классе

void gender_score();            //Прототип функции подсчета успевамости ученика от пола

void sorter ();                 //Прототип функции сортировки по оценкам
#endif // TASK_1_H_INCLUDED
