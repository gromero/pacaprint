#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

void pacaprint(uint64_t *buf, uint64_t type, uint64_t func, ...);

int main()
{
 uint64_t *rb = malloc(sizeof(uint64_t) * 6);
 int i; 

 uint64_t t = 1;
 uint64_t f = 1;
 uint64_t arg0 = 10;
 uint64_t arg1 = 11;
 uint64_t arg2 = 12;
 uint64_t arg3 = 13;

 pacaprint(rb, t, f, arg0, arg1, arg2, arg3);
 
 printf("%c ", *(char *)rb);
 for (i = 0; i < 6; i++)
	printf("%ld ", *(rb+i+1));
 printf("\n");
 
}
