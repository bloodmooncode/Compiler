	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #5
	str	r10, [fp, #-8]
	mov	r10, #1
	str	r10, [fp, #-12]
	mov	r10, #2
	rsb	r10, r10, #0
	str	r10, [fp, #-16]
	mov	r10, #2
	str	r10, [fp, #-20]
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r6, r10
	mov	r10, #1
	mul	r10, r6, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	mov	r8, r10
	mov	r10, #0
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	bne	.L8
	ldr	r10, [fp, #-4]
	mov	r6, r10
	ldr	r10, [fp, #-8]
	sub	r10, r6, r10
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r5, r10
	mov	r10, #3
	add	r10, r5, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #1
	b	.L11
.L10:
	mov	r10, #0
.L11:
	cmp	r10, #0
	bne	.L8
	mov	r10, #0
	b	.L9
.L8:
	mov	r10, #1
.L9:
	cmp	r10, #0
	beq	.L6
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L7
.L6:
.L7:
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r7, r10
	mov	r10, #67
	add	r10, r7, r10
	mov	r8, r10
	mov	r10, #0
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	bne	.L14
	ldr	r10, [fp, #-4]
	mov	r6, r10
	ldr	r10, [fp, #-8]
	sub	r10, r6, r10
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L16
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r5, r10
	mov	r10, #2
	add	r10, r5, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L16
	mov	r10, #1
	b	.L17
.L16:
	mov	r10, #0
.L17:
	cmp	r10, #0
	bne	.L14
	mov	r10, #0
	b	.L15
.L14:
	mov	r10, #1
.L15:
	cmp	r10, #0
	beq	.L12
	mov	r10, #4
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L13
.L12:
.L13:
	mov	r10, #0
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

