	.global	main
	.text
climbStairs:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #52
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #4
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L7
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L6
	b	.L8
.L7:
.L8:
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	mov	r10, #0
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	str	r10, [fp, #-52]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-52]
	mov	r9, r10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-52]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	ldr	r7, [fp, #-48]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-52]
	mov	r7, r10
	mov	r10, #2
	sub	r10, r7, r10
	ldr	r7, [fp, #-48]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-52]
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-52]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-52]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-4]
	ldr	r9, [fp, #-48]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	mov	r0, r10
	b	.L6
.L6:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #5
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	climbStairs
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

