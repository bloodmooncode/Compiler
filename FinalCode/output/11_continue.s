	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #10
	str	r10, [fp, #-4]
.L6:
@######WHILE LOOP begin .L6 - .L7
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L7
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L8
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L6
	b	.L9
.L8:
.L9:
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L5
	b	.L6
.L7:
@######WHILE LOOP end .L6 - .L7
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

