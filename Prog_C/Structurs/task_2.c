/*
� ���������� ������� ������ ����. ������ ������ ����� ������ �������� ��������� ������:

�. �. �. ������ (�� ��� �������);
�������� �����;
ISBN;
��� �������.
����������, ���� �� � ������ �����, � �������� ������� ���������� �������� �����, �������� � ������� (��������, ����������).
���� ����, �� �������� �� ������� ������������ ������� (��� �������), �. �. �. ������ (��� �������) � ��� �������.
*/
#include "task_2.h"

data_books library []={                             //��������� ������� ����������
{"Joan Rouling", "", "", "Harry Potter", "134-5-9112-3125-7", 2001},
{"Jon Eclaff", "", "", "Finish what you started", "978-5-0409-5758-3", 2018},
{"S.N.Vinogradov", "A.F.Kuzmin", "", "Logik. High school textbook", "234-7-8912-4185-7", 1954},
{"Tomas Heys", "Pol Horovic", "", "Learning the Art of Electronics", "978-5-9775-6689-6", 2022},
{"Brian Kernighan", "Dennis Ritchie", "", "The C", "978-5-8459-1975-5", 2018},
{"Pol Horovic", "Y.Hill", "", "The Art of Circuit Design", "147-4-1812-3951-7", 1998},
{"A.I.Vdovikin", "", "", "Entertaining electronic devices", "741-5-9852-3125-7", 1981},
{"Nikolay Rusin", "", "", "STM32", "978-5-0062-4646-1", 2024},
{"Tim Green", "Pit Semig", "Kolin Vells", "Operational amplifiers", "921-4-9112-8524-6", 2015},
{"I.P.Stepanenko", "", "", "Fundamentals of Transistor Theory", "951-6-7532-3125-7", 1977}
};

void printlib (){                               //������� ������ �� ������ ����������
printf ("\n");
    unsigned int n = sizeof(library)/sizeof(library[0]);
    for (unsigned int i=0; i<n; i++){
    printf ("%-15s\t", library[i].first_author);
    printf ("%-15s\t", library[i].second_autor);
    printf ("%-15s\t", library[i].third_author);
    printf ("%-32s\t", library[i].name);
    printf ("ISBN %5s\t", library[i].ISBN);
    printf ("%-5dyear\t\n", library[i].year);
    }
};

void poisk (){                      //������� ������ �����
const char exit [] = "exit";           //���������� ��� ������ �� ����������� �����
char keyword[40];                      //���������� ��� ����� ��������� �����
for (;;) {                              //���� ��������� ������ �� ��������� ��������� ����� �� �����
    printf ("\nPlease Print keyword, if you want to exit, then print - exit \n");
    scanf ("%s",keyword);
    int result = strcmp(keyword, exit);                 //������� ��������� �����. �������� � ����������� string.h
    if (result ==0) break;                              //���� �������� ����� ����� exit, �� �� ������� �� �����
    else {
        unsigned int n = sizeof(library)/sizeof(library[0]);
        for (unsigned int i=0; i<n; i++){
            char *keyword_ptr = strstr(library[i].name, keyword);
            if(keyword_ptr)
            {
                printf ("\nWe found the following matches:\n");
                printf ("%-15s\t", library[i].first_author);
                printf ("%-15s\t", library[i].second_autor);
                printf ("%-15s\t", library[i].third_author);
                printf ("%-32s\t", library[i].name);
                printf ("ISBN %5s\t", library[i].ISBN);
                printf ("%-5dyear\t\n", library[i].year);
            }
        }

    }
}
    printf ("\nSee you again\n");
}
