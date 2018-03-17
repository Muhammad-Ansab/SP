exe : main.o myStrFunc.o
	gcc main.o myStrFunc.o -o exe
main.o: main.c myStrFunc.h
	gcc -c main.c
myStrFunc.o: myStrFunc.c
	gcc -c myStrFunc.c
