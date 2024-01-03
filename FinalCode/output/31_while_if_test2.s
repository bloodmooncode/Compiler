	.global	main
	.text
ifWhile:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #3
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L9
.L11:
@######WHILE LOOP begin .L11 - .L12
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #2
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L11
.L12:
@######WHILE LOOP end .L11 - .L12
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #25
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L10
.L9:
.L13:
@######WHILE LOOP begin .L13 - .L14
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L13
.L14:
@######WHILE LOOP end .L13 - .L14
.L10:
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	push	{r0-r9}
	bl	ifWhile
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L15
.L15:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

