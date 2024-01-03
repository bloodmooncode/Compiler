	.global	main
	.data 
x:
	.word	4
	.text
.x_addr:
	.word	x

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	ldr	r10, .x_addr
	ldr	r10, [r10]
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

