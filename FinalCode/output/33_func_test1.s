	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.text
myFunc:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	mov	r10, #2
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-16]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L8
	mov	r10, #0
	mov	r0, r10
	b	.L7
	b	.L9
.L8:
.L9:
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	ldr	r10, [fp, #-4]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	add	r10, r9, r10
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
	mov	r10, #3
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	mov	r10, #1
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	mov	r10, #1
	mov	r2, r10
	bl	myFunc
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-4]
	add	r10, r9, r10
	mov	r0, r10
	b	.L12
.L12:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

