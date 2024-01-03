	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
Merge:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #124
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r10, [fp, #-12]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	sub	r10, r8, r10
	str	r10, [fp, #-24]
	add	r9, fp, #-64
	str	r9, [r9, #-4]
	add	r9, fp, #-108
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-116]
	mov	r10, #0
	str	r10, [fp, #-120]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-116]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-116]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-116]
	ldr	r9, [fp, #-68]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-116]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-116]
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
.L17:
@######WHILE LOOP begin .L17 - .L18
	ldr	r10, [fp, #-120]
	mov	r9, r10
	ldr	r10, [fp, #-24]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L18
	ldr	r10, [fp, #-120]
	mov	r7, r10
	ldr	r10, [fp, #-12]
	add	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-120]
	ldr	r9, [fp, #-112]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-120]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-120]
	b	.L17
.L18:
@######WHILE LOOP end .L17 - .L18
	mov	r10, #0
	str	r10, [fp, #-116]
	mov	r10, #0
	str	r10, [fp, #-120]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-124]
.L19:
@######WHILE LOOP begin .L19 - .L20
	ldr	r10, [fp, #-116]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	cmp	r8, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L21
	ldr	r10, [fp, #-120]
	mov	r8, r10
	ldr	r10, [fp, #-24]
	cmp	r8, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L21
	mov	r10, #1
	b	.L22
.L21:
	mov	r10, #0
.L22:
	cmp	r10, #0
	beq	.L20
	ldr	r10, [fp, #-116]
	ldr	r8, [fp, #-68]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-120]
	ldr	r7, [fp, #-112]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L23
	ldr	r10, [fp, #-116]
	ldr	r8, [fp, #-68]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-124]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-124]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-124]
	ldr	r10, [fp, #-116]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-116]
	b	.L24
.L23:
	ldr	r10, [fp, #-120]
	ldr	r8, [fp, #-112]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-124]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-124]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-124]
	ldr	r10, [fp, #-120]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-120]
.L24:
	b	.L19
.L20:
@######WHILE LOOP end .L19 - .L20
.L25:
@######WHILE LOOP begin .L25 - .L26
	ldr	r10, [fp, #-116]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L26
	ldr	r10, [fp, #-116]
	ldr	r8, [fp, #-68]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-124]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-124]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-124]
	ldr	r10, [fp, #-116]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-116]
	b	.L25
.L26:
@######WHILE LOOP end .L25 - .L26
.L27:
@######WHILE LOOP begin .L27 - .L28
	ldr	r10, [fp, #-120]
	mov	r9, r10
	ldr	r10, [fp, #-24]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L28
	ldr	r10, [fp, #-120]
	ldr	r8, [fp, #-112]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-124]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-124]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-124]
	ldr	r10, [fp, #-120]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-120]
	b	.L27
.L28:
@######WHILE LOOP end .L27 - .L28
	mov	r10, #0
	mov	r0, r10
	b	.L14
.L14:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
MergeSort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
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
	beq	.L30
	push	{r0-r3}
	ldr	r10, [fp, #-8]
	mov	r7, r10
	ldr	r10, [fp, #-12]
	add	r10, r7, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-16]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-16]
	mov	r2, r10
	bl	MergeSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-20]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	bl	MergeSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-16]
	mov	r2, r10
	ldr	r10, [fp, #-12]
	mov	r3, r10
	bl	Merge
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-20]
	b	.L31
.L30:
.L31:
	mov	r10, #0
	mov	r0, r10
	b	.L29
.L29:
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
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	ldr	r10, [fp, #-48]
	mov	r1, r10
	ldr	r10, [fp, #-52]
	mov	r2, r10
	bl	MergeSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-48]
.L33:
@######WHILE LOOP begin .L33 - .L34
	ldr	r10, [fp, #-48]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L34
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
	b	.L33
.L34:
@######WHILE LOOP end .L33 - .L34
	mov	r10, #0
	mov	r0, r10
	b	.L32
.L32:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

