	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
QuickSort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-24]
.L14:
@######WHILE LOOP begin .L14 - .L15
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L15
.L16:
@######WHILE LOOP begin .L16 - .L17
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L18
	ldr	r10, [fp, #-20]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-24]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L18
	mov	r10, #1
	b	.L19
.L18:
	mov	r10, #0
.L19:
	cmp	r10, #0
	beq	.L17
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L16
.L17:
@######WHILE LOOP end .L16 - .L17
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L20
	ldr	r10, [fp, #-20]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L21
.L20:
.L21:
.L22:
@######WHILE LOOP begin .L22 - .L23
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L24
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-24]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L24
	mov	r10, #1
	b	.L25
.L24:
	mov	r10, #0
.L25:
	cmp	r10, #0
	beq	.L23
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L22
.L23:
@######WHILE LOOP end .L22 - .L23
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L26
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-20]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L27
.L26:
.L27:
	b	.L14
.L15:
@######WHILE LOOP end .L14 - .L15
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-28]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-28]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-28]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-28]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-28]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-28]
	b	.L13
.L12:
.L13:
	mov	r10, #0
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #56
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
	mov	r10, #9
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	ldr	r10, [fp, #-48]
	mov	r1, r10
	ldr	r10, [fp, #-52]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-48]
.L29:
@######WHILE LOOP begin .L29 - .L30
	ldr	r10, [fp, #-48]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L30
	ldr	r10, [fp, #-48]
	ldr	r8, [fp, #-44]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-56]
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-56]
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-48]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-48]
	b	.L29
.L30:
@######WHILE LOOP end .L29 - .L30
	mov	r10, #0
	mov	r0, r10
	b	.L28
.L28:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

