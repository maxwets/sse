#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void printxor(){
	char* str = "\x46\x68\x77\x64\x21\x6c\x64\x21\x63\x68\x75\x62\x6e\x68\x6f\x72\x20";
	char xor = (char) 1;
	for(size_t i=0; i<strlen(str); i++){
		printf("%c", str[i]^xor);
	}
	printf("\n");
}

int main(){
	printxor();
	return 0;
}
