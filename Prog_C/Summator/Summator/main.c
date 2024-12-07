#include <stdio.h>
#include <stdlib.h>
int XOR (a,b)
{
    int s1 = ~((~(a|b))|(a&b));
    return s1;
}

int Sum (a, b, c)
{
    int s1 = ~((~(a|b))|(a&b));
    int s2 = a&b;
    int s3 = ~((~(s1|c))|(s1&c)); //(s1&c)|((~s1)&(~c));
    int s4 = s1&c;
    int s5 = s4|s2;
    return s3;
}
int Pin (a, b, c)
{
    int s1 = ~((~(a|b))|(a&b));
    int s2 = a&b;
    int s3 = ~((~(s1|c))|(s1&c));
    int s4 = s1&c;
    int s5 = s4|s2;
    return s5;
}

/*__________________________________________________________________________*/
int main()
{

    int A [4] = {1,1,0,1};
    int B [4] = {0,1,0,1};
    int P [4] = {0,0,0,0};
    int S [4] = {0,0,0,0};

    S [0] = Sum (A[3], B[3], 0);
    P [0] = Pin (A[3], B[3], 0);

    S [1] = Sum (A[2], B[2], S [0]);
    P [1] = Pin (A[2], B[2], S [0]);

    S [2] = Sum (A[1], B[1], S [1]);
    P [2] = Pin (A[1], B[1], S [1]);

    S [3] = Sum (A[0], B[0], S [2]);
    P [3] = Pin (A[0], B[0], S [2]);


    printf ("\n %d %d %d %d \t", A[0], A[1], A[2], A[3]);
    printf ("%d %d %d %d \t", B[0], B[1], B[2], B[3]);

    printf ("%d %d %d %d \t", S[0], S[1], S[2], S[3]);
    printf ("%d \t",P[3]);

    return 0;
}
