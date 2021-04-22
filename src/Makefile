CC=gcc
CFLAGS=-g -Wall -Wextra
EXE=normal segment hex xor

all: $(EXE)

normal: normal.c
	$(CC) $(CFLAGS) -o normal normal.c

segment: segment.c
	$(CC) $(CFLAGS) -o segment segment.c

hex: hex.c
	$(CC) $(CFLAGS) -o hex hex.c

xor: xor.c
	$(CC) $(CFLAGS) -o xor xor.c

clean:
	rm -f $(EXE)
