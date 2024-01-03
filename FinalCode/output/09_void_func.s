	.global	main
	.data 
a:
	.word	0
b:
	.word	0
c:
	.word	0
	.text
.a_addr:
	.word	a
.b_addr:
	.word	b
.c_addr:
	.word	c

	.text
add:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	ldr	r9, .c_addr
	str	r10, [r9]
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	mov	r10, #3
	ldr	r9, .a_addr
	str	r10, [r9]
	mov	r10, #2
	ldr	r9, .b_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r0, r10
	ldr	r10, .b_addr
	ldr	r10, [r10]
	mov	r1, r10
	bl	add
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, .c_addr
	ldr	r10, [r10]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

