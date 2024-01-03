	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r10, #3
	str	r10, [fp, #-4]
	mov	r10, #8
	str	r10, [fp, #-8]
	mov	r10, #4
	rsb	r10, r10, #0
	str	r10, [fp, #-12]
	mov	r10, #15
	str	r10, [fp, #-16]
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r5, r10
	ldr	r10, [fp, #-4]
	sub	r10, r5, r10
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
	beq	.L9
	ldr	r10, [fp, #-4]
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L9
	mov	r10, #1
	b	.L10
.L9:
	mov	r10, #0
.L10:
	cmp	r10, #0
	bne	.L7
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	mov	r10, #3
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-12]
	mov	r7, r10
	mov	r10, #0
	cmp	r7, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L11
	mov	r10, #1
	b	.L12
.L11:
	mov	r10, #0
.L12:
	cmp	r10, #0
	bne	.L7
	mov	r10, #0
	b	.L8
.L7:
	mov	r10, #1
.L8:
	cmp	r10, #0
	beq	.L5
	ldr	r10, [fp, #-16]
	mov	r7, r10
	ldr	r10, [fp, #-12]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-8]
	rsb	r10, r10, #0
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L6
.L5:
.L6:
	mov	r10, #0
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

