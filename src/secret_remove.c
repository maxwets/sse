#include <stdio.h>
#include <stdlib.h>

int myfun(){
	return remove("/root/secret");
}

int main(){
	return myfun();
}
