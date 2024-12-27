#ifndef TASK_3_H_INCLUDED
#define TASK_3_H_INCLUDED
/*
�� ����������� �������� 15 �����������, � ����� ��������� ������ ����������� �� �. �. �., �������, ��� � ���������.
���������� ������� � ��������� ������� ����������� �� ������� ��������������, ���������� ������ � ������,
� ����� ������� � ��������� ������� ���� ����������� �����������.
*/

typedef struct
{             //��������� ������ �� �����������
    char *FIO;
    unsigned int *age;
    char *gender;
    char *post;
}person;

person people[];              //������ ����������� �����

unsigned int Sum_people;               //������� ������ ���������� ����� � �������

void printStructs (person *array, unsigned int size);                   //�������� ������� ������ �� ������ ����������

unsigned int mens;                      //���������� ������
unsigned int womans;                    //���������� ������

unsigned int sum_age;                   //������� ���� �����������
unsigned int age_m;                   //������� ������
unsigned int age_w;                   //������� ������

unsigned int Median;                //��������� ������� �����
unsigned int Median_m;               //��������� ������� �������
unsigned int Median_w;               //��������� ������� �������


void statistic ();              //������� ������� ����������

#endif // TASK_3_H_INCLUDED
