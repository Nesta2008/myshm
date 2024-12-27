#ifndef TASK_1_H_INCLUDED
#define TASK_1_H_INCLUDED

#define count 6                  // ���������� ��� ����� ������������� ���������� ����� � ������
char numberofclass[5];                   // ����� ������
char name_subject [20];                 //������������ ��������

typedef struct
{
   unsigned int number;                 // ���������� ����� �������
   char family[20];                         //�������
   char name[20];                           // ���
   char patronymic[20];                     // ��������
   char gender[20];                         //���
   char number_class[20];                   //����� ������
   char subject [20];                        // ������������ ��������
   unsigned int score;                  // ������ �� ����
} students;

students catalog[count];        // �������� ������� �� ������� ������ �� ������ ��������� ���� student

void write_catalog();           // �������� ���������� ������� ���������

void print_catalog();          // �������� ������� ������ ���������

void average_score();           // �������� �������� �������� �������� ������

void total ();                  //�������� �������� ������ ���������� ����� � ������

void gender_score();            //�������� ������� �������� ����������� ������� �� ����

void sorter ();                 //�������� ������� ���������� �� �������
#endif // TASK_1_H_INCLUDED
