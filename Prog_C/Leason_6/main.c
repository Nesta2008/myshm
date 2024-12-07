/*
��������� ���������, ������� ���������� ���������� ���� ������� � �������, � ����� � ������� ������������� (switch case), ������� �������� ������� � �������
����� ������� scanf � ��������� ������ ������ �������:

- ������� � ������� ������� �� ������ �� ���� � ������� ����� while.
- ������� ������� ��������� �������� �� �������.
- ������� ���� ������ � ������� � ������� ����� � ��� ������������������, � ������� �� �����, � ����� ��� ������ ����� for � �������� ���������� ��������� ������
����� �� ����������� � ������� �� � ������� ������ �� ������� �������� ������.
- ����� � ������������� ����� ��������� �� ����������: ��� �������� ������������� �������������� ������� �� ������� ��������� �����
� ����������� �������� ������� �� ������.
*/

/*
������ � ������������
����� ���������� ����� ���, ����� �� ������ ������ ����������� ��� ����� ������ ����������� �����.
������� ������ ������� scanf: scanf (��������� ������, ���������), ������������� ���������� printf.
int x;
scanf(�%d�, &x);
��� � ��������� ������������� ��������, �������� � �������.
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
            scanf("%d", &MAS[i]); //��������� ������
        }

        for(int i=0; i<n; i++)
        {
            printf("\t %d", MAS[i]);
        }
        printf("\n");
        for(int i = 0 ; i < n - 1; i++) {
// ���������� ��� �������� ��������.
       for(int j = 0 ; j < n - i - 1 ; j++) {
           if(MAS[j] > MAS[j+1]) {
              // ���� ��� ���� � ������������ �������, ��
              //  ������ �� �������.
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
