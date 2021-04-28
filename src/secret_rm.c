#include <stdio.h>
#include <stdlib.h>

void myfun(){
	system("rm root/secret");
}

int main(){
	myfun();
	return 0;
}
