CC=gcc
CFLAGS=-g -Wall -Wextra -Werror
RM=rm -f

SRC=src/
BIN=bin/

EXE=normal segment hex xor letter secretrm secretremove

all: $(EXE)

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

clean: 
	$(RM) $(BIN)normal
	$(RM) $(BIN)segment
	$(RM) $(BIN)hex
	$(RM) $(BIN)xor
	$(RM) $(BIN)letter_by_letter
	$(RM) $(BIN)secret_rm
	$(RM) $(BIN)secret_remove
