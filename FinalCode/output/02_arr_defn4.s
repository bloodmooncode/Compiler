	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #72
	add	r9, fp, #-32
	str	r9, [r9, #-4]
	mov	r10, #1
	str	r10, [fp, #-32]
	mov	r10, #2
	str	r10, [fp, #-28]
	mov	r10, #3
	str	r10, [fp, #-24]
	mov	r10, #4
	str	r10, [fp, #-20]
	mov	r10, #5
	str	r10, [fp, #-16]
	mov	r10, #6
	str	r10, [fp, #-12]
	mov	r10, #7
	str	r10, [fp, #-8]
	mov	r10, #8
	str	r10, [fp, #-4]
	add	r9, fp, #-68
	str	r9, [r9, #-4]
	mov	r10, #0
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	mov	r9, r10
	mov	r10, #0
	add	r10, r9, r10
	ldr	r9, [fp, #-36]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-68]
	mov	r10, #0
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	mov	r9, r10
	mov	r10, #1
	add	r10, r9, r10
	ldr	r9, [fp, #-36]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-64]
	mov	r10, #3
	str	r10, [fp, #-60]
	mov	r10, #4
	str	r10, [fp, #-56]
	mov	r10, #5
	str	r10, [fp, #-52]
	mov	r10, #6
	str	r10, [fp, #-48]
	mov	r10, #7
	str	r10, [fp, #-44]
	mov	r10, #8
	str	r10, [fp, #-40]
	mov	r10, #0
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

