exe : main.o myMathFunc.o
	gcc main.o myMathFunc.o -o exe
main.o: main.c myMath.h
	gcc -c main.c
myMathFunc.o: myMathFunc.c
	gcc -c myMathFunc.c
