	.global	main
	.data 
N:
	.word	0
	.text
.N_addr:
	.word	N

	.data 
newline:
	.word	0
	.text
.newline_addr:
	.word	newline

	.text
factor:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #1
	str	r10, [fp, #-8]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L8
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L9
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L10
.L9:
.L10:
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	ldr	r10, [fp, #-12]
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
	sub	sp, sp, #12
	mov	r10, #4
	ldr	r9, .N_addr
	str	r10, [r9]
	mov	r10, #10
	ldr	r9, .newline_addr
	str	r10, [r9]
	ldr	r10, =1478
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	factor
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

