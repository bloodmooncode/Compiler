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
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

