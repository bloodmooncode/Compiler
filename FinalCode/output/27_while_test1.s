	.global	main
	.text
doubleWhile:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #7
	str	r10, [fp, #-8]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #100
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L8
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #30
	add	r10, r8, r10
	str	r10, [fp, #-4]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #100
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #6
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #100
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L6
.L6:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	push	{r0-r9}
	bl	doubleWhile
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

