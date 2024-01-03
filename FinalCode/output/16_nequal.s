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
	sub	sp, sp, #0
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
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, .b_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L6
	mov	r10, #1
	mov	r0, r10
	b	.L5
	b	.L7
.L6:
	mov	r10, #0
	mov	r0, r10
	b	.L5
.L7:
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

