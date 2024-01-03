	.global	main
	.text
ifElse:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #5
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L7
	mov	r10, #25
	str	r10, [fp, #-4]
	b	.L8
.L7:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-4]
.L8:
	ldr	r10, [fp, #-4]
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
	sub	sp, sp, #0
	push	{r0-r9}
	bl	ifElse
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

