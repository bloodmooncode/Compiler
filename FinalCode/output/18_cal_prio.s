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

	.data 
c:
	.word	0
	.text
.c_addr:
	.word	c

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .b_addr
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .c_addr
	str	r10, [r9]
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, .b_addr
	ldr	r10, [r10]
	mov	r7, r10
	ldr	r10, .c_addr
	ldr	r10, [r10]
	mul	r10, r7, r10
	add	r10, r8, r10
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

