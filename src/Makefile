CC=gcc
CFLAGS=-g -Wall -Wextra
EXE=normal segment hex wide

all: $(EXE)

normal: normal.c
	$(CC) $(CFLAGS) -o normal normal.c

segment: segment.c
	$(CC) $(CFLAGS) -o segment segment.c

hex: hex.c
	$(CC) $(CFLAGS) -o hex hex.c

wide: wide.c
	$(CC) $(CFLAGS) -o wide wide.c

clean:
	rm -rf $(EXE)
