#include <stdio.h>
#include <stdlib.h>

float NUMBER_1 = 2.78;
int NUMBER_2 = 651;
int NUMBER_3 = 22;
int NUMBER_4 = 57;
float NUMBER_5 = 518;
float NUMBER_6 = 43.15432;

void printVar1(void)
    {
        float NUMBER_1 = 1.32;
        int NUMBER_2 = 15;
        float NUMBER_3 = 0.1567;
        int NUMBER_4 = 22;
        int NUMBER_5 = 518;
        float NUMBER_6 = 287.154;
        printf("%f \t", NUMBER_1);
        printf("%d \t", NUMBER_2);
        printf("%f \t", NUMBER_3);
        printf("%d \t", NUMBER_4);
        printf("%d \t", NUMBER_5);
        printf("%f \t", NUMBER_6);
    }

void printVar2(void)
    {
        printf("%f \t", NUMBER_1);
        printf("%d \t", NUMBER_2);
        printf("%d \t", NUMBER_3);
        printf("%d \t", NUMBER_4);
        printf("%f \t", NUMBER_5);
        printf("%f \t", NUMBER_6);
    }

int main()
{
    printVar1();
    printf("\n");
    printVar2();
    return 0;
}
