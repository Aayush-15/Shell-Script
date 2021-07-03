#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{

	char *args[] = {"./EXEC1", NULL};
	execvp(args[0], args);
	printf("This Will Not Be Printed\n\n");
	return 0;
}