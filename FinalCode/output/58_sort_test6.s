	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
counting_sort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #68
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	add	r9, fp, #-52
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-68]
	mov	r10, #0
	str	r10, [fp, #-60]
	mov	r10, #0
	str	r10, [fp, #-64]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-68]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	mov	r10, #0
	push	{r10}
	ldr	r10, [fp, #-68]
	ldr	r9, [fp, #-56]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-68]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-68]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-60]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-60]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	ldr	r7, [fp, #-56]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-60]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, [fp, #-56]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-60]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-60]
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	mov	r10, #1
	str	r10, [fp, #-68]
.L14:
@######WHILE LOOP begin .L14 - .L15
	ldr	r10, [fp, #-68]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L15
	ldr	r10, [fp, #-68]
	ldr	r7, [fp, #-56]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-68]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	ldr	r7, [fp, #-56]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-68]
	ldr	r9, [fp, #-56]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-68]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-68]
	b	.L14
.L15:
@######WHILE LOOP end .L14 - .L15
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-64]
.L16:
@######WHILE LOOP begin .L16 - .L17
	ldr	r10, [fp, #-64]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L17
	ldr	r10, [fp, #-64]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	ldr	r7, [fp, #-56]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-64]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, [fp, #-56]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-64]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-64]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r8, [fp, #-56]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, [fp, #-8]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-64]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-64]
	b	.L16
.L17:
@######WHILE LOOP end .L16 - .L17
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
	sub	sp, sp, #96
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
	add	r9, fp, #-88
	str	r9, [r9, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	ldr	r10, [fp, #-92]
	mov	r1, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r2, r10
	bl	counting_sort
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
	ldr	r8, [fp, #-92]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-96]
	push	{r0-r9}
	ldr	r10, [fp, #-96]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-96]
	push	{r0-r9}
	ldr	r10, [fp, #-96]
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

