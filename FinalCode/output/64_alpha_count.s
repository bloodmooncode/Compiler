	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #2016
	ldr	r9, =-2000
	add	r9, fp, r9
	str	r9, [r9, #-4]
	mov	r10, #0
	ldr	r9, =-2016
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-2012
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-2008
	str	r10, [fp, r9]
.L6:
@######WHILE LOOP begin .L6 - .L7
	ldr	r8, =-2008
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L7
	push	{r0-r9}
	bl	getch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-2008
	str	r10, [fp, r9]
	ldr	r6, =-2008
	ldr	r10, [fp, r6]
	mov	r7, r10
	mov	r10, #40
	cmp	r7, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r6, =-2008
	ldr	r10, [fp, r6]
	mov	r7, r10
	mov	r10, #91
	cmp	r7, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L12
	mov	r10, #1
	b	.L13
.L12:
	mov	r10, #0
.L13:
	cmp	r10, #0
	bne	.L10
	ldr	r6, =-2008
	ldr	r10, [fp, r6]
	mov	r7, r10
	mov	r10, #96
	cmp	r7, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r6, =-2008
	ldr	r10, [fp, r6]
	mov	r7, r10
	mov	r10, #123
	cmp	r7, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L14
	mov	r10, #1
	b	.L15
.L14:
	mov	r10, #0
.L15:
	cmp	r10, #0
	bne	.L10
	mov	r10, #0
	b	.L11
.L10:
	mov	r10, #1
.L11:
	cmp	r10, #0
	beq	.L8
	ldr	r7, =-2016
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-2016
	str	r10, [fp, r9]
	b	.L9
.L8:
.L9:
	ldr	r7, =-2012
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-2012
	str	r10, [fp, r9]
	b	.L6
.L7:
@######WHILE LOOP end .L6 - .L7
	push	{r0-r9}
	ldr	r9, =-2016
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

