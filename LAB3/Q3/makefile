exe : myMain.o myStrFunc.o myMathFunc.o
	gcc myMain.o myStrFunc.o myMathFunc.o -o exe

myMain.o: myMain.c myStrFunc.h myMath.h
	gcc -c myMain.c

myStrFunc.o: myStrFunc.c
	gcc -c myStrFunc.c

myMathFunc.o: myMathFunc.c
	gcc -c myMathFunc.c
