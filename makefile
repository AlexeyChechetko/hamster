all: test.o
	gcc test.o -o test.exe -lm

test.o:
	gcc -c test.c

clean:
	rm *o
