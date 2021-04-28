CC=gcc
YARA=yara
RM=rm -f

CFLAGS=-g -Wall -Wextra -Werror

SRC=src/
BIN=bin/

EXE=normal segment hex xor letter secretrm secretremove secretunlink secretsegmented
RULES=rules.yar

all: build $(EXE)

build:
	mkdir -p bin

yara: build $(EXE)
	@echo "Binaries :"
	$(YARA) $(RULES) $(BIN)
	@echo
	@echo "Source files :"
	$(YARA) $(RULES) $(SRC)
	@echo

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

secretsegmented: $(SRC)secret_segmented.c
	$(CC) $(CFLAGS) -o $(BIN)secret_segmented $<

clean: 
	$(RM) $(BIN)*
