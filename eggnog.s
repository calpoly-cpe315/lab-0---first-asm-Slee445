.global	main
main:
    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =message1
        bl      printf

    // initialize the return value in the return register
	mov	x0, 0

    //Printing out the other two messages
        ldr     x0, =message2
        bl      printf
        mov     x0, 0
  

        ldr     x0, =message3
        bl      printf
        mov     x0, 0


    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16

    // return from the call
	ret
        
message1:
	.asciz "White and creamy silk\n"
message2:
        .asciz "teasing tantalizing milk\n"
message3:
        .asciz "I crave thy eggnog\n"
