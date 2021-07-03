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
/*
localhost:~# gcc EXEC1.c -o EXEC1
localhost:~# gcc execDemo4.c -o execDemo4
gcc: error: execDemo4.c: No such file or directory
gcc: fatal error: no input files
compilation terminated.
localhost:~# gcc execdemo4.c -o execdemo4
localhost:~# ./execdemo4
Hello Everyone

I am EXEC.c called by execv()
*/