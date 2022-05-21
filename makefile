all: main.o
	gcc main.o -o main -lm

main.o:
	gcc -c main.c

clean:
	rm *o
