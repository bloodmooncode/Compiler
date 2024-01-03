	.global	main
	.data 
a:
	.word	5
	.text
.a_addr:
	.word	a

	.data 
s:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
.s_addr:
	.word	s

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #0
	str	r10, [fp, #-4]
.L5:
@######WHILE LOOP begin .L5 - .L6
	ldr	r10, [fp, #-4]
	ldr	r8, .s_addr
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, .a_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movle	r10, #1
	movgt	r10, #0
	cmp	r10, #0
	beq	.L6
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L5
.L6:
@######WHILE LOOP end .L5 - .L6
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

