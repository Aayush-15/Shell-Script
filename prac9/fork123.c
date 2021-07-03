#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{
	fork();
	fork();
	fork();
	printf("Hii Aayush!\n");
	return 0;
}