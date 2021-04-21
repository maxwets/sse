#include <stdlib.h>
#include <stdio.h>

void widePrint() {
    printf("G\x00i\x00v\x00%c\x00 \x00m\x00%c\x00 \x00%c\x00i\x00t\x00%c\x00o\x00i\x00n\x00s\x00\x21\n",'e','e','b','c');
}

int main() {
	widePrint();
}
