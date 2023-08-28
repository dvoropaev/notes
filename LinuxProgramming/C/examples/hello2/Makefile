.PHONY: all clean

hello:	main.o hello.o
	gcc main.o hello.c -o hello

main.o: main.c
	gcc  -o main.o -c ./main.c

hello.o: hello.c hello.h
	gcc  -o hello.o -c ./hello.c

clean:
	rm -rf hello *.o
