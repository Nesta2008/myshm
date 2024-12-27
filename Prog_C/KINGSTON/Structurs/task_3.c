/*
�� ����������� �������� 15 �����������, � ����� ��������� ������ ����������� �� �. �. �., �������, ��� � ���������.
���������� ������� � ��������� ������� ����������� �� ������� ��������������, ���������� ������ � ������,
� ����� ������� � ��������� ������� ���� ����������� �����������.
*/
#include "task_3.h"
#
person people[]={
{"Ivanov Ivan Ivanovich", 35,"M","Ingenegr"},
{"Sidorova Valentina Igorevna", 32,"W","Ingenegr"},
{"Sidorov Ivan Igorevich", 19,"M","Ingenegr"},
{"Ivanova Svetlana Rinatovna", 42,"W","Ingenegr"},
{"Putilin Sergey Petrovich", 58,"M","Ingenegr"},
{"Abitov Petr Sergeevich", 36,"M","Ingenegr"},
{"Sidorov Sidr Alcholevich", 47,"M","Ingenegr"},
{"Mestniy BOMZH", 60,"M","Glavniy Ingenegr"},
{"Glavniy ZMOT", 58,"W","Glavniy Buhgalter"},
{"Nizamov Igor Petrovich", 34,"M","Ingenegr"},
{"Prosto Petrovich", 38,"M","Dvornik"},
{"Super Petrovich", 42,"M","Dvornik"},
{"Buterbrodov Macdonalds", 50,"M","Povar"},
{"Buterbrodov KFC", 49,"W","Povar"},
{"Buterbrodov BurgerKing", 49,"W","Povar"}
};

unsigned int Sum_people = sizeof(people)/sizeof(people[0]);       //������� ���������� ����� � �������

void printStructs (person *array, unsigned int size)             //������� ������ �� ������ ����������
{
printf ("\n");
for (unsigned int i=0; i<size; i++){
    printf ("%-35s\t", array[i].FIO);
    printf ("%-5d\t", array[i].age);
    printf ("%-5s\t", array[i].gender);
    printf ("%-5s\t\n", array[i].post);
    }
    return 0;
};

int age_sort (const void *a, const void *b){              //�������, ������� ����� ���������� ��� �������� �������
return ( *(int*)a - *(int*)b );
}

int median_age (int *array, unsigned int size)              //������� �������� ���������� �������� ����� ���������� ��������
{
    unsigned int value;
    if(size % 2 == 0)
     value = (array[size/2] + array[size/2+1])/2;
   else
    value = array[size/2 + 1];
   return value;
}


unsigned int mens=0;                      //���������� ������
unsigned int womans=0;                    //���������� ������

unsigned int sum_age=0;                   //������� ���� �����������
unsigned int age_m=0;                   //������� ������
unsigned int age_w=0;                   //������� ������

unsigned int Median=0;                  //��������� ������� �����
unsigned int Median_m=0;               //��������� ������� �������
unsigned int Median_w=0;               //��������� ������� �������

void statistic ()                           //������� ������� ����������
{
for (unsigned int i=0; i<Sum_people; i++){
        unsigned int *varr = &people[i].age;
        sum_age = *varr + sum_age; //������� ������ �������� �����������
        if (people[i].gender=="M") {
            mens++;
            age_m = *varr + age_m;
            } else {
            womans++;
            age_w = *varr + age_w;
            };
    }
unsigned int average=sum_age/Sum_people;
unsigned int average_mens=age_m/mens;
unsigned int average_womans=age_w/womans;

printf ("\nTotal number of men - %d\n", mens);
printf ("\nTotal number of woman - %d\n", womans);
printf ("\nAverage people - %d\n", average);
printf ("\nAverage mens - %d\n", average_mens);
printf ("\nAverage womans - %d\n", average_womans);

unsigned int all_arr[Sum_people];
unsigned int mens_arr[mens];
unsigned int womans_arr[womans];

static unsigned int m=0;                //���������� ��� ����� ������
static unsigned int w=0;                //���������� ��� ����� ������

for (unsigned int i=0; i<Sum_people; i++){              // ��������� ��������� ������� � ���������� �����, � ��� ����� �� �������
    unsigned int *var_age = &people[i].age;
    all_arr[i]=*var_age;
    if (people[i].gender=="M") {
            mens_arr[m]=*var_age;
            m++;
            } else {
            womans_arr[w]=*var_age;
            w++;
            };
}
qsort(all_arr, Sum_people, sizeof(int), age_sort);      // ������� ���������� �� �����������
qsort(mens_arr, mens, sizeof(int), age_sort);
qsort(womans_arr, womans, sizeof(int), age_sort);

Median=median_age (all_arr, Sum_people);                  //��������� ������� �����
Median_m=median_age (mens_arr, mens);                //��������� ������� �������
Median_w=median_age (womans_arr, womans); ;


printf ("\nMedian age people - %d\n", Median);
printf ("\nMedian age mens - %d\n", Median_m);
printf ("\nMedian age womans - %d\n", Median_w);

}

