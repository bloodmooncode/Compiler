	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
select_sort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #24
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-12]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-20]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-16]
	str	r10, [fp, #-20]
	b	.L15
.L14:
.L15:
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	ldr	r10, [fp, #-20]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-20]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-24]
	ldr	r10, [fp, #-12]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-20]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	b	.L17
.L16:
.L17:
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	mov	r10, #0
	mov	r0, r10
	b	.L9
.L9:
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
	mov	r10, #0
	str	r10, [fp, #-48]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r1, r10
	bl	select_sort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-48]
.L19:
@######WHILE LOOP begin .L19 - .L20
	ldr	r10, [fp, #-48]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L20
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
	b	.L19
.L20:
@######WHILE LOOP end .L19 - .L20
	mov	r10, #0
	mov	r0, r10
	b	.L18
.L18:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

