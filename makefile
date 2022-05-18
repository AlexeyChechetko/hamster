all: sobel.o
	gcc sobel.o -o sobel.exe -lm

sobel.o:
	gcc -c sobel.c

clean:
	rm *o
