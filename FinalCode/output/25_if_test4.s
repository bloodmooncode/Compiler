	.global	main
	.text
if_ifElse_:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L8
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #25
	str	r10, [fp, #-4]
	b	.L11
.L10:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #15
	add	r10, r8, r10
	str	r10, [fp, #-4]
.L11:
	b	.L9
.L8:
.L9:
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L7
.L7:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	push	{r0-r9}
	bl	if_ifElse_
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L12
.L12:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

