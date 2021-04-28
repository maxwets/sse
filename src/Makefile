CC=gcc
CFLAGS=-g -Wall -Wextra
EXE=normal segment hex xor letter secretrm secretremove secretunlink

all: $(EXE) movebin

normal: normal.c
	$(CC) $(CFLAGS) -o normal normal.c

segment: segment.c
	$(CC) $(CFLAGS) -o segment segment.c

hex: hex.c
	$(CC) $(CFLAGS) -o hex hex.c

xor: xor.c
	$(CC) $(CFLAGS) -o xor xor.c

letter: letter_by_letter.c
	$(CC) $(CFLAGS) -o letter_by_letter letter_by_letter.c

secretrm: secret_rm.c
	$(CC) $(CFLAGS) -o secret_rm secret_rm.c

secretremove: secret_remove.c
	$(CC) $(CFLAGS) -o secret_remove secret_remove.c

secretunlink: secret_unlink.c
	$(CC) $(CFLAGS) -o secret_unlink secret_unlink.c

movebin: 
	mv normal ../bin/normal
	mv segment ../bin/segment
	mv hex ../bin/hex
	mv xor ../bin/xor
	mv letter_by_letter ../bin/letter_by_letter
	mv secret_rm ../bin/secret_rm
	mv secret_remove ../bin/secret_remove
	mv secret_unlink ../bin/secret_unlink
clean:
	rm -f ../bin/*
