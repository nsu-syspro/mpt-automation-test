# Common

CC = gcc

# Targets

SRC = $(wildcard *.c)

INPUT = $(wildcard tests/*.in)
EXPECTED = $(INPUT:.in=.expected)
TESTS = $(INPUT:.in=.test)

# Goals

.PHONY: all clean test %.test

all: main

main: $(SRC)
	$(CC) $< -o $@

clean:
	@rm -f main

test: $(TESTS)

%.test: %.in %.expected main
	./main < $*.in 2>&1 | diff -u $*.expected -
