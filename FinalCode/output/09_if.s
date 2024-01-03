	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	mov	r10, #10
	ldr	r9, .a_addr
	str	r10, [r9]
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L5
	mov	r10, #1
	mov	r0, r10
	b	.L4
	b	.L6
.L5:
.L6:
	mov	r10, #0
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

