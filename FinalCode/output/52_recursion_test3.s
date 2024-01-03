	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.data 
r:
	.word	0
	.text
.r_addr:
	.word	r

	.text
fac:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #2
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L6
	mov	r10, #1
	mov	r0, r10
	b	.L5
	b	.L7
.L6:
.L7:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	fac
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .r_addr
	str	r10, [r9]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, .r_addr
	ldr	r10, [r10]
	mul	r10, r8, r10
	ldr	r9, .r_addr
	str	r10, [r9]
	ldr	r10, .r_addr
	ldr	r10, [r10]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #5
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	fac
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

