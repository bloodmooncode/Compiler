	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
fib:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #1
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L8
	mov	r10, #0
	mov	r0, r10
	b	.L7
	b	.L9
.L8:
.L9:
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #1
	mov	r0, r10
	b	.L7
	b	.L11
.L10:
.L11:
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	add	r10, r8, r10
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-16]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	ldr	r10, [fp, #-16]
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
	sub	sp, sp, #4
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .n_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	fib
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L14
.L14:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

