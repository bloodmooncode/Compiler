	.global	main
	.text
fib:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L7
	mov	r10, #0
	mov	r0, r10
	b	.L6
	b	.L8
.L7:
.L8:
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L9
	mov	r10, #1
	mov	r0, r10
	b	.L6
	b	.L10
.L9:
.L10:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-12]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	fib
	mov	r10, r0
	pop	{r0-r9}
	mov	r9, r10
	push	{r0-r9}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	bl	fib
	mov	r10, r0
	pop	{r0-r9}
	add	r10, r9, r10
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
	sub	sp, sp, #4
	mov	r10, #10
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	fib
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

