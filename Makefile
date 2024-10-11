# Common

CC = gcc

# Targets

SRC = $(wildcard *.c)

# Goals

all: main

main: $(SRC)
	$(CC) $< -o $@

clean:
	@rm -f main
