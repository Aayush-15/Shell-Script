//4.non matching
//printing non matching
#include <stdio.h>
#include <stdlib.h>
#include<string.h>
int main()
{
  // grep -v file_name
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
        //if the lines matches do not print
        if(strstr(storing,pattern)!=NULL)
        {
            ++counter;
        }
        //if the string is not in the line print the line
        else
        {
            ++counter;
            printf("%s", storing);
        }
    }
    fclose(file);
    return 0;

}