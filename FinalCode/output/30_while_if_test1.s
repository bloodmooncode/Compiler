	.global	main
	.text
whileIf:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #100
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L12
	mov	r10, #25
	str	r10, [fp, #-8]
	b	.L13
.L12:
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L14
	mov	r10, #42
	str	r10, [fp, #-8]
	b	.L15
.L14:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-8]
.L15:
.L13:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	push	{r0-r9}
	bl	whileIf
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L16
.L16:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

