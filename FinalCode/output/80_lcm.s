	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
gcd:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #24
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-4]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L7
	ldr	r10, [fp, #-4]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-20]
	str	r10, [fp, #-8]
	b	.L8
.L7:
.L8:
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	str	r10, [fp, #-24]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-24]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-24]
	str	r10, [fp, #-8]
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	str	r10, [fp, #-24]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	mul	r10, r8, r10
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
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
	sub	sp, sp, #8
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	gcd
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

