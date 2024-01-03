	.global	main
	.text
ifElseElseIf:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #66
	str	r10, [fp, #-4]
	ldr	r10, =8923
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L9
	mov	r10, #25
	str	r10, [fp, #-8]
	b	.L10
.L9:
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L11
	mov	r10, #42
	str	r10, [fp, #-8]
	b	.L12
.L11:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-8]
.L12:
.L10:
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	push	{r0-r9}
	bl	ifElseElseIf
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L13
.L13:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

