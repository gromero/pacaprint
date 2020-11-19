/*
 pacaprint: ptr, func type, num args, arg0, arg1, arg2, arg3
            r3   r4         r5        r6    r7    r8    r9
*/

.globl pacaprint

pacaprint:
//	li      10,  '#'      // POWER9
	pli     10,0xdeadc0de // POWER10
	std	10,  0(3)   

        std     4, 8*1(3)  
	std     5, 8*2(3) 

 	cmpdi	5, 4
	beq	.s4
	cmpdi	5, 3
	beq     .s3
	cmpdi	5, 2
	beq	.s2
	cmpdi	5, 1
	beq	.s1
	blr
	
.s4:    std	6, 8*3(3)
	std	7, 8*4(3)
        std     8, 8*5(3)
        std     9, 8*6(3)
	blr	

.s3:	std	6, 8*3(3)
        std     7, 8*4(3)
        std     8, 8*5(3)
	blr

.s2:    std     6, 8*3(3)
        std     7, 8*4(3)
	blr

.s1:    std     6, 8*3(3)
	blr
