	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
insertsort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #1
	str	r10, [fp, #-8]
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
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L12
	mov	r10, #1
	b	.L13
.L12:
	mov	r10, #0
.L13:
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	ldr	r10, [fp, #-12]
	push	{r10}
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L8
.L9:
@######WHILE LOOP end .L8 - .L9
	mov	r10, #0
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
	sub	sp, sp, #52
	mov	r10, #10
	ldr	r9, .n_addr
	str	r10, [r9]
	add	r9, fp, #-40
	str	r9, [r9, #-4]
	mov	r10, #4
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #9
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #5
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #6
	push	{r10}
	mov	r10, #6
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #5
	push	{r10}
	mov	r10, #7
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #7
	push	{r10}
	mov	r10, #8
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #8
	push	{r10}
	mov	r10, #9
	ldr	r9, [fp, #-44]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	bl	insertsort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-48]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-48]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-48]
	ldr	r8, [fp, #-44]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-52]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-52]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-48]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-48]
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
	mov	r10, #0
	mov	r0, r10
	b	.L14
.L14:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

