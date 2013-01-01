test: main.o
	gcc -o test main.o 

main.o: main.c
	gcc -g -o main.o -c main.c -Wall 
