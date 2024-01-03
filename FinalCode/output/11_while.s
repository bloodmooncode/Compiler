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
	mov	r10, #0
	ldr	r9, .b_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .a_addr
	str	r10, [r9]
.L5:
@######WHILE LOOP begin .L5 - .L6
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L6
	ldr	r10, .b_addr
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, .a_addr
	ldr	r10, [r10]
	add	r10, r8, r10
	ldr	r9, .b_addr
	str	r10, [r9]
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, .a_addr
	str	r10, [r9]
	b	.L5
.L6:
@######WHILE LOOP end .L5 - .L6
	ldr	r10, .b_addr
	ldr	r10, [r10]
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

