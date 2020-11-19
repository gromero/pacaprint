main:	main.c pacaprint.S
	gcc main.c pacaprint.S -o main

clean:
	rm -fr *.o
	rm -fr main
