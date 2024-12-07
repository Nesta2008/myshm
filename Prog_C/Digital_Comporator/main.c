#include <stdio.h>
#include <stdlib.h>

int NXOR (a,b)
{
    int z = !((a&(!b))|b&(!a));
    return z;
}

int A [4] = {1,1,0,0};
int B [4] = {1,0,1,1};
int main()
{
    int FAB= NXOR(A[0],B[0])  &   NXOR(A[1],B[1])   &   NXOR(A[2],B[2])   &   NXOR(A[3],B[3]);
    int AND_Sum0 = (A[0]&(!B[0]))   &   NXOR(A[1],B[1]) &   NXOR(A[2],B[2]) &   NXOR(A[3],B[3]);
    int AND_Sum1 = ((!A[0])&B[0])   &   NXOR(A[1],B[1]) &   NXOR(A[2],B[2]) &   NXOR(A[3],B[3]);
    int AND_Sum2 = (A[1]&(!B[1]))   &   NXOR(A[2],B[2]) &   NXOR(A[3],B[3]);
    int AND_Sum3 = ((!A[1])&B[1])   &   NXOR(A[2],B[2]) &   NXOR(A[3],B[3]);
    int AND_Sum4 = (A[2]&(!B[2]))   &   NXOR(A[3],B[3]);
    int AND_Sum5 = ((!A[2])&B[2])   &   NXOR(A[3],B[3]);
    int FB = ((!A[3])&B[3]) |   AND_Sum5    |   AND_Sum3    |   AND_Sum1;
    int FA = (A[3]&(!B[3])) |   AND_Sum4    |   AND_Sum2    |   AND_Sum0;


  /*  int NXOR0 = NXOR (A[0], B[0]);
    int NXOR1 = NXOR (A[1], B[1]);
    int NXOR2 = NXOR (A[2], B[2]);
    int NXOR3 = NXOR (A[3], B[3]);

    int NOT_B0 = !B[0];
    int NOT_B1 = !B[1];
    int NOT_B2 = !B[2];
    int NOT_B3 = !B[3];

    int AND_Sum = NXOR0&NXOR1&NXOR2&NXOR3;
    int AND_Sum0 = NXOR1&NXOR2&NXOR3&NOT_B0&A[0];
    int AND_Sum1 = NXOR2&NXOR3&NOT_B1&A[1];
    int AND_Sum2 = NXOR3&NOT_B2&A[2];
    int AND_Sum3 = NOT_B3&A[3];

    int OR = AND_Sum0|AND_Sum1|AND_Sum2|AND_Sum3;

    int NOR = !(AND_Sum0|OR);

    int FAB= AND_Sum;
    int FA=OR;
    int FB=NOR;
*/
   /* int NXOR0 = NXOR (A[0], B[0]);
    int AND0 = A[0]&(!B[0]);

    int NXOR1 = NXOR (A[1], B[1]);
    int AND1 = A[1]&(!B[1]);

    int NXOR2 = NXOR (A[2], B[2]);
    int AND2 = A[2]&(!B[2]);

    int NXOR3 = NXOR (A[3], B[3]);
    int AND3 = A[3]&(!B[3]);

    int AND_Sum0 = NXOR0&NXOR1&NXOR2&NXOR3;
    int AND_Sum1 = AND0& NXOR1&NXOR2&NXOR3;
    int AND_Sum2 = AND1&NXOR2&NXOR3;
    int AND_Sum3 = AND1&NXOR3;
    int OR = AND_Sum1|AND_Sum2|AND_Sum3|AND3;
    int NOR = !(AND_Sum0|OR);
    int FAB= AND_Sum0;
    int FA=OR;
    int FB=NOR;
*/
    printf ("%d %d %d %d",A[0],A[1],A[2],A[3]);
    printf ("\t\t %d %d %d %d",B[0],B[1],B[2],B[3]);
    printf ("\t\t %d\t%d\t%d",FA,FAB,FB);
    return 0;
}
