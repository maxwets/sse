CC=gcc
CFLAGS=-g -Wall -Wextra -Werror
RM=rm -f

SRC=src/
BIN=bin/

EXE=normal segment hex xor letter secretrm secretremove secretunlink

all: build $(EXE)

build:
	mkdir -p bin

normal: $(SRC)normal.c
	$(CC) $(CFLAGS) -o $(BIN)normal $<

segment: $(SRC)segment.c
	$(CC) $(CFLAGS) -o $(BIN)segment $<

hex: $(SRC)hex.c
	$(CC) $(CFLAGS) -o $(BIN)hex $<

xor: $(SRC)xor.c
	$(CC) $(CFLAGS) -o $(BIN)xor $<

letter: $(SRC)letter_by_letter.c
	$(CC) $(CFLAGS) -o $(BIN)letter_by_letter $<

secretrm: $(SRC)secret_rm.c
	$(CC) $(CFLAGS) -o $(BIN)secret_rm $<

secretremove: $(SRC)secret_remove.c
	$(CC) $(CFLAGS) -o $(BIN)secret_remove $<

secretunlink: $(SRC)secret_unlink.c
	$(CC) $(CFLAGS) -o $(BIN)secret_unlink $<

clean: 
	$(RM) $(BIN)*
