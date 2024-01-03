	.global	main
	.text
wc:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-16]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-20]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-20]
	mov	r10, #1
	str	r10, [fp, #-12]
	b	.L15
.L14:
.L15:
	b	.L13
.L12:
	mov	r10, #0
	str	r10, [fp, #-12]
.L13:
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	ldr	r10, [fp, #-20]
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
	ldr	r9, =2012
	sub	sp, sp, r9
	ldr	r9, =-2000
	add	r9, fp, r9
	str	r9, [r9, #-4]
	mov	r10, #0
	ldr	r9, =-2012
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-2008
	str	r10, [fp, r9]
.L17:
@######WHILE LOOP begin .L17 - .L18
	ldr	r8, =-2008
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L18
	push	{r0-r9}
	bl	getch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-2008
	str	r10, [fp, r9]
	ldr	r8, =-2008
	ldr	r10, [fp, r8]
	push	{r10}
	ldr	r8, =-2012
	ldr	r10, [fp, r8]
	ldr	r9, =-2004
	ldr	r9, [fp, r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r7, =-2012
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-2012
	str	r10, [fp, r9]
	b	.L17
.L18:
@######WHILE LOOP end .L17 - .L18
	push	{r0-r9}
	ldr	r8, =-2004
	ldr	r10, [fp, r8]
	mov	r0, r10
	ldr	r8, =-2012
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	wc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-2008
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-2008
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L16
.L16:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

