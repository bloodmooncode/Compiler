	.global	main
	.text
uniquePaths:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #56
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	bne	.L12
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	bne	.L12
	mov	r10, #0
	b	.L13
.L12:
	mov	r10, #1
.L13:
	cmp	r10, #0
	beq	.L10
	mov	r10, #1
	mov	r0, r10
	b	.L9
	b	.L11
.L10:
.L11:
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-52]
.L14:
@######WHILE LOOP begin .L14 - .L15
	ldr	r10, [fp, #-52]
	mov	r9, r10
	ldr	r10, [fp, #-4]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L15
	mov	r10, #1
	push	{r10}
	ldr	r10, [fp, #-52]
	mov	r6, r10
	mov	r10, #3
	mul	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-8]
	add	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-52]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-52]
	b	.L14
.L15:
@######WHILE LOOP end .L14 - .L15
	mov	r10, #0
	str	r10, [fp, #-52]
.L16:
@######WHILE LOOP begin .L16 - .L17
	ldr	r10, [fp, #-52]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L17
	mov	r10, #1
	push	{r10}
	ldr	r10, [fp, #-4]
	mov	r6, r10
	mov	r10, #1
	sub	r10, r6, r10
	mov	r7, r10
	mov	r10, #3
	mul	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-52]
	add	r10, r8, r10
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-52]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-52]
	b	.L16
.L17:
@######WHILE LOOP end .L16 - .L17
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-52]
.L18:
@######WHILE LOOP begin .L18 - .L19
	ldr	r10, [fp, #-52]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L19
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-56]
.L20:
@######WHILE LOOP begin .L20 - .L21
	ldr	r10, [fp, #-56]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L21
	ldr	r10, [fp, #-52]
	mov	r5, r10
	mov	r10, #1
	add	r10, r5, r10
	mov	r6, r10
	mov	r10, #3
	mul	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-56]
	add	r10, r7, r10
	ldr	r7, [fp, #-48]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-52]
	mov	r5, r10
	mov	r10, #3
	mul	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-56]
	add	r10, r6, r10
	mov	r7, r10
	mov	r10, #1
	add	r10, r7, r10
	ldr	r7, [fp, #-48]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-52]
	mov	r7, r10
	mov	r10, #3
	mul	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-56]
	add	r10, r8, r10
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-56]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-56]
	b	.L20
.L21:
@######WHILE LOOP end .L20 - .L21
	ldr	r10, [fp, #-52]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-52]
	b	.L18
.L19:
@######WHILE LOOP end .L18 - .L19
	mov	r10, #0
	ldr	r9, [fp, #-48]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
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
	sub	sp, sp, #8
	mov	r10, #3
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	uniquePaths
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L22
.L22:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

