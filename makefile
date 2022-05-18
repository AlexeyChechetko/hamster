all: gauss.o
	gcc gauss.o -o gauss -lm

gauss.o:
	gcc -c gauss.c

clean:
	rm *o
