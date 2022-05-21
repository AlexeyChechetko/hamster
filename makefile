main: main.o
	gcc main.o -o main -lm

main.o:
	gcc -c main.c

gauss: gauss.o
	gcc gauss.o -o gauss -lm

gauss.o:
	gcc -c gauss.c

clean:
	rm *o
