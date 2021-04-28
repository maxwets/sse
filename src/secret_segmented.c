#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void myfun(){
	char* cmd = "rm /";
	strcat(cmd, "root/");
	strcat(cmd, "secret");
	system(cmd);
}

int main(){
	myfun();
	return 0;
}
