#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int myfun(){
	return unlink("/root/secret");
}

int main(){
	return myfun();
}
