	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.data 
b:
	.word	0
	.text
.b_addr:
	.word	b

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #10
	ldr	r9, .a_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .b_addr
	str	r10, [r9]
	push	{r0-r3}
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r0, r10
	ldr	r10, .b_addr
	ldr	r10, [r10]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

