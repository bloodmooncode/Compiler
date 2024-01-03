	.global	main
	.data 
a:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.text
.a_addr:
	.word	a

	.text
func:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-16]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L8
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #5
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	mov	r6, r10
	mov	r10, #5
	mul	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-12]
	add	r10, r7, r10
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	ldr	r10, [fp, #-16]
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
	push	{r0-r9}
	ldr	r10, .a_addr
	mov	r0, r10
	bl	func
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

