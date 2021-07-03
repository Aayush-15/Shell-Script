//2.line count
//count lines
#include <stdio.h>
#include <stdlib.h>
#include<string.h>
int main()
{
  // grep -c file_name
    char file_name[30],pattern[30],storing[200];
    FILE *file;
    //input file name
    printf("Enter file name\n");
    scanf("%s",file_name);
       //enter the word to be searched
    printf("Enter pattern to be searched\n");
    scanf("%s", pattern);
    file=fopen(file_name,"r");
    int counter = 0;
    while(!feof(file))
    {
      //It stops when either (n-1) characters are read, the newline character is read, or the end-of-file is reached, whichever comes first.
        fgets(storing,1000,file);
        if(strstr(storing,pattern)!=NULL)
        {
            counter++;
            // printf("%s", storing);
        }
    }
    printf("%d line(s) matched", counter);
    fclose(file);
    return 0;
}
