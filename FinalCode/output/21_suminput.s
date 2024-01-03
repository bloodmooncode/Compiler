	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	push	{r0-r9}
	mov	r10, #40
	mov	r0, r10
	bl	malloc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .n_addr
	str	r10, [r9]
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L6
	mov	r10, #1
	mov	r0, r10
	b	.L5
	b	.L7
.L6:
.L7:
	mov	r10, #0
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-4]
.L8:
@######WHILE LOOP begin .L8 - .L9
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L9
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	ldr	r10, [fp, #-8]
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	ldr	r7, .a_addr
	ldr	r7, [r7]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L8
.L9:
@######WHILE LOOP end .L8 - .L9
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-12]
	push	{r0-r9}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

