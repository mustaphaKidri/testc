CC=gcc

CFLAGS=-W -Wall -ansi -pedantic -g
LDFLAGS=

EXEC = test

all: $(EXEC)

SRC=  $(wildcard *.c)
OBJS= $(SRC:.c=.o)

test: main.o


$(EXEC): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean mrproper

clean:
	@rm -rf *.o
	
mrproper: clean
	@rm -rf $(EXEC)
