//3.starting
 // grep -n file_name
//Prints searched line and nlines after the result.
#include <stdio.h>
#include <stdlib.h>
#include<string.h>
int main()
{
 // grep -n file_name
    char file_name[30],pattern[30],storing[200];
    FILE *file;
    printf("Enter file name\n");
    scanf("%s",file_name);
    printf("Enter pattern to be searched\n");
    scanf("%s", pattern);
    file=fopen(file_name,"r");
    int counter = 0;
    while(!feof(file))
    {
        fgets(storing,1000,file);
        if(strstr(storing,pattern)!=NULL)
        {
            ++counter;
            printf("%d -> %s", counter, storing);
        }
        else
        {
            ++counter;
        }
    }
    fclose(file);
    return 0;
}