	.global	main
	.text
atoi_:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #1
	str	r10, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-16]
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #43
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	bne	.L16
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #45
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	bne	.L16
	mov	r10, #0
	b	.L17
.L16:
	mov	r10, #1
.L17:
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #45
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L18
	mov	r10, #1
	rsb	r10, r10, #0
	str	r10, [fp, #-12]
	b	.L19
.L18:
.L19:
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L15
.L14:
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #48
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	bne	.L22
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #57
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	bne	.L22
	mov	r10, #0
	b	.L23
.L22:
	mov	r10, #1
.L23:
	cmp	r10, #0
	beq	.L20
	ldr	r10, =2147483647
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L11
	b	.L21
.L20:
.L21:
.L15:
.L24:
@######WHILE LOOP begin .L24 - .L25
	ldr	r10, [fp, #-16]
	ldr	r6, [fp, #-4]
	add	r10, r6, r10, LSL #2
	ldr	r10, [r10]
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L28
	ldr	r10, [fp, #-16]
	ldr	r6, [fp, #-4]
	add	r10, r6, r10, LSL #2
	ldr	r10, [r10]
	mov	r7, r10
	mov	r10, #47
	cmp	r7, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L28
	mov	r10, #1
	b	.L29
.L28:
	mov	r10, #0
.L29:
	cmp	r10, #0
	beq	.L26
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #58
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L26
	mov	r10, #1
	b	.L27
.L26:
	mov	r10, #0
.L27:
	cmp	r10, #0
	beq	.L25
	ldr	r10, [fp, #-8]
	mov	r6, r10
	mov	r10, #10
	mul	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-16]
	ldr	r6, [fp, #-4]
	add	r10, r6, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r7, r10
	mov	r8, r10
	mov	r10, #48
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L24
.L25:
@######WHILE LOOP end .L24 - .L25
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	mul	r10, r9, r10
	mov	r0, r10
	b	.L11
.L11:
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
	ldr	r9, =-2008
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-2012
	str	r10, [fp, r9]
.L31:
@######WHILE LOOP begin .L31 - .L32
	ldr	r8, =-2008
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L32
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
	b	.L31
.L32:
@######WHILE LOOP end .L31 - .L32
	mov	r10, #0
	push	{r10}
	ldr	r8, =-2012
	ldr	r10, [fp, r8]
	ldr	r9, =-2004
	ldr	r9, [fp, r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r8, =-2004
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	atoi_
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-2012
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-2012
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L30
.L30:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

