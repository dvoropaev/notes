.PHONY: all clean

hello:	main.c libHello.so
	gcc main.c -L. -lHello -o hello

libHello.so: hello.c hello.h
	gcc  -o libHello.so -shared -fPIC ./hello.c

clean:
	rm -rf hello *.o *.iso
