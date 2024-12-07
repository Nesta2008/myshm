#include <stdio.h>
#include <stdlib.h>

float sum(float x, float z)     //Сложение
    {
        float y = x+z;
        return y;
    }
float subs(float x, float z)    //Вычитание
    {
        float y = x-z;
        return y;
    }

float mult(float x, float z)     //Умножение
    {
        float y = x*z;
        return y;
    }

float division(float x, float z)    //Деление
    {
        float y = x/z;
        return y;
    }

float remains(int x, int z)     //Остаток от деления
    {
        float y = x%z;
        return y;
    }

int OR (int x, int z)       //логическое ИЛИ (побитовая дизъюнкция)
    {
        int y = x | z;
        return y;
    }

int AND (int x, int z)       //логическое И (побитовая конъюнкция)
    {
        int y = x & z;
        return y;
    }

int XOR (int x, int z)       //исключающее ИЛИ
    {
        int y = (x & z) | ((~x) & (~z));
        return y;
    }

int NOT (int x, int z)       //НЕ
    {
        int y = x == z;
        return y;
    }
int main()
{
    printf ("Number_1 \n");

    printf ("%f \t", sum (25, 35));
    printf ("%f \t", sum (12.78, 18.22));
    printf ("%f \n", sum (21.35, 15));

    printf ("%f \t", subs (17,6));
    printf ("%f \t", subs (25, 42));
    printf ("%f \n", subs (21, 13.54));

    printf ("%f \t", mult (65,3));
    printf ("%f \t", mult (3.14, 2.71));
    printf ("%f \n", mult (9.8, 4));

    printf ("%f \t", division (32,2));
    printf ("%f \t", division (35, 2));
    printf ("%f \t", division (16.8, 4));
    printf ("%f \n", division (20, 2.5));

    printf ("%f \t", remains (12, 4));
    printf ("%f \t", remains (15, 4));
    printf ("%f \t", remains (27, 3));
    printf ("%f \n", remains (21.4, 4));

    printf ("\nNumber_2 \n");

    printf ("%d \t", OR (12,5));
    printf ("%d \t", OR (8,7));
    printf ("%d \n", OR (24,64));

    printf ("%d \t", AND (27,3));
    printf ("%d \t", AND (16,0));
    printf ("%d \n", AND (32,1));

    printf ("%d \t", XOR (5,6));
    printf ("%d \t", XOR (5,5));
    printf ("%d \n", XOR (8,0));

    printf ("%d \t", NOT (6,1));
    printf ("%d \t", NOT (1,1));
    printf ("%d \n", NOT (0,0));

    printf ("\nNumber_3 \n");

    float x=72.45;    float z=84.32;
    int a = (int)x +(int)z;
    printf("%d \n", a);

    float x1=44.32;    float z1=51.54;
    float b = x1 +z1;
    printf("%f \n", b);

    int x2=53;    float z2=2.54;
    float b1 = (float)x2 +z2;
    printf("%f \n", b1);

    int x3=12;    int z3=22;
    float b3 = (float)x3 +(float)z3;
    printf("%f \n", b3);

    float x4=64.2154;
    int a4 = (int)x4;
    printf("%d \n", a4);

    int x5=42;
    float a5= (float)x5;
    printf("%f \n",a5);

    return 0;
}
