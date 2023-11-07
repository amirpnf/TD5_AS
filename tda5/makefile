# Makefile TP Flex

# $@ : the current target
# $^ : the current prerequisites
# $< : the first current prerequisite

CC=gcc
CFLAGS=-Wall 
LDLIBS=-ly 

all: td5

td5: parser.o lexer.o
	$(CC) $^ $(LDLIBS) -o $@
	
%.c: %.y 
	bison -d $< -o $@

%.c: %.lex
	flex -o $@ $<

clean:
	rm -f lex.yy.*
	rm -f *.o
	rm -f td5
