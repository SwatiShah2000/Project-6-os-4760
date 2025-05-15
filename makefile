# Makefile for CS 4760 Assignment #6 - Memory Management

CC = gcc
CFLAGS = -Wall -g
DEPS = oss.h
OBJ_OSS = oss.o
OBJ_USER = user.o

all: oss user

oss: $(OBJ_OSS)
	$(CC) $(CFLAGS) -o $@ $^

user: $(OBJ_USER)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $

clean:
	rm -f *.o oss user *.log

.PHONY: all clean
