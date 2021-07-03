//5. count lines
//printing lines with matched string
#include <stdio.h>
#include <stdlib.h>
#include<string.h>
int main()
{
   // grep "^unix" file_name
    char file_name[20],word[20],str[100];
    printf("enter the file name : ");
    scanf("%s",file_name);
    printf("enter the word you want to find : ");
    scanf("%s",word);
    FILE *fp;
    fp = fopen(file_name,"r");
    while(fgets(str,100,fp)!=NULL)
    {
        if(strstr(str,word)!=NULL)
        {
            printf("%s",str);
        }
    }
    return 0;
}

