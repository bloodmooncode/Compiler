	.global	main
	.data 
a:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.text
.a_addr:
	.word	a

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	mov	r10, #4
	ldr	r9, .a_addr
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

