	.global	main
	.text
FourWhile:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #6
	str	r10, [fp, #-8]
	mov	r10, #7
	str	r10, [fp, #-12]
	mov	r10, #10
	str	r10, [fp, #-16]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #20
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #3
	add	r10, r8, r10
	str	r10, [fp, #-4]
.L11:
@######WHILE LOOP begin .L11 - .L12
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
.L13:
@######WHILE LOOP begin .L13 - .L14
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #7
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-12]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-16]
	mov	r9, r10
	mov	r10, #20
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #3
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L13
.L14:
@######WHILE LOOP end .L13 - .L14
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L11
.L12:
@######WHILE LOOP end .L11 - .L12
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	mov	r7, r10
	ldr	r10, [fp, #-16]
	add	r10, r7, r10
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-12]
	add	r10, r9, r10
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
	bl	FourWhile
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L17
.L17:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

