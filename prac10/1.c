//1.case sensitive
#include <stdio.h>
#include <stdlib.h>
#include<string.h>
int main()
{
  // grep file_name
    char file_name[30],pattern[30],storing[200];
    FILE *file;
    //input file name
    printf("Enter file name\n");
    scanf("%s",file_name);
    //enter the word to be searched
    printf("Enter pattern to be searched\n");
    scanf("%s",pattern);
    file=fopen(file_name,"r");
  //iterating over the file till end of file
    while(!feof(file))
    {
        fgets(storing,1000,file);
        //The strstr() function searches the given string in the specified main string and returns the pointer to the first occurrence of the given string.
        if(strstr(storing,pattern)!=NULL)
        {
            printf("%s", storing);
        }
    }
    fclose(file);
    return 0;
}