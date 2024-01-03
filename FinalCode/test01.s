	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	add	r9, fp, #-16
	str	r9, [r9, #-4]
	mov	r10, #1
	str	r10, [fp, #-16]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #3
	str	r10, [fp, #-8]
	mov	r10, #4
	str	r10, [fp, #-4]
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

