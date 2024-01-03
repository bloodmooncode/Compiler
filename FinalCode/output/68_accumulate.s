	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-4]
.L5:
@######WHILE LOOP begin .L5 - .L6
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #21
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L6
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-4]
	add	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L5
.L6:
@######WHILE LOOP end .L5 - .L6
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

