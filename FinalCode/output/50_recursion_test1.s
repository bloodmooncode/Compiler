	.global	main
	.text
fact:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L6
	mov	r10, #1
	mov	r0, r10
	b	.L5
	b	.L7
.L6:
.L7:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	fact
	mov	r10, r0
	pop	{r0-r9}
	mul	r10, r9, r10
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #4
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	fact
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

