#ifndef TASK_2_H_INCLUDED
#define TASK_2_H_INCLUDED
/*
� ���������� ������� ������ ����. ������ ������ ����� ������ �������� ��������� ������:

�. �. �. ������ (�� ��� �������);
�������� �����;
ISBN;
��� �������.
����������, ���� �� � ������ �����, � �������� ������� ���������� �������� �����, �������� � ������� (��������, ����������).
���� ����, �� �������� �� ������� ������������ ������� (��� �������), �. �. �. ������ (��� �������) � ��� �������.
*/
//#define count 15            //���������� � ����� ������� ����

typedef struct{                 //��������� �����
char *first_author;
char *second_autor;
char *third_author;
char *name;
char *ISBN;
unsigned int year;
}data_books;

data_books library[];            // ������ �������� � ������� �� ������

void printlib ();                   //�������� ������� ������ �� ������ ����������
void poisk ();                      //�������� ������� ������ �����

#endif // TASK_2_H_INCLUDED
