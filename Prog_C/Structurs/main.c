#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#include "task_1.h"
#include "task_2.h"
#include "task_3.h"

#define Number_task 3       //выбор варианта задания


int main()
{
#if Number_task ==1
printf ("Hello, dear teacher\nPlease, Please enter the class number\n");
scanf ("%s", numberofclass);
printf ("\nThe class number\t%s", numberofclass);
printf ("\nPlease, enter name subject\t");
scanf ("%s", name_subject);


write_catalog();
print_catalog();
average_score();
total ();
gender_score();
sorter ();
print_catalog();


#elif Number_task==2
printlib ();
poisk ();

#elif Number_task==3

printStructs (people, Sum_people);
statistic ();

#endif
    return 0;
}
