	.global	main
	.text
maxSubArray:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #0
	mov	r0, r10
	b	.L9
	b	.L11
.L10:
.L11:
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L12
	mov	r10, #0
	ldr	r9, [fp, #-4]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	mov	r0, r10
	b	.L9
	b	.L13
.L12:
.L13:
	mov	r10, #0
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-16]
	mov	r10, #1
	str	r10, [fp, #-20]
.L14:
@######WHILE LOOP begin .L14 - .L15
	ldr	r10, [fp, #-20]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L15
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	mov	r10, #0
	str	r10, [fp, #-12]
	b	.L17
.L16:
.L17:
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L18
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-16]
	b	.L19
.L18:
.L19:
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L14
.L15:
@######WHILE LOOP end .L14 - .L15
	ldr	r10, [fp, #-16]
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
	sub	sp, sp, #48
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	mov	r10, #4
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #9
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #5
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #6
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #6
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #5
	push	{r10}
	mov	r10, #7
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #7
	push	{r10}
	mov	r10, #8
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #8
	push	{r10}
	mov	r10, #9
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #10
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-48]
	mov	r0, r10
	ldr	r10, [fp, #-4]
	mov	r1, r10
	bl	maxSubArray
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L20
.L20:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

