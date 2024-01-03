	.global	main
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
	mov	r10, #48
	mov	r0, r10
	bl	malloc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a_addr
	str	r10, [r9]
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #3
	mov	r7, r10
	mov	r10, #4
	add	r10, r7, r10
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	cmp	r9, r10
	movle	r10, #1
	movgt	r10, #0
	cmp	r10, #0
	beq	.L8
	ldr	r10, [fp, #-4]
	str	r10, [fp, #-12]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movge	r10, #1
	movlt	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #4
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-4]
	mov	r7, r10
	ldr	r10, [fp, #-12]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #3
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L13
	mov	r10, #1
	b	.L14
.L13:
	mov	r10, #0
.L14:
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-8]
	push	{r10}
	ldr	r10, [fp, #-4]
	mov	r6, r10
	ldr	r10, [fp, #-12]
	sub	r10, r6, r10
	mov	r7, r10
	mov	r10, #4
	mul	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-12]
	add	r10, r8, r10
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	str	r10, [fp, #-8]
	b	.L12
.L11:
.L12:
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	mov	r10, #0
	mov	r0, r10
	b	.L6
.L6:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

