	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #72
	add	r9, fp, #-48
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-4]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-4]
	ldr	r9, [fp, #-52]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	mov	r10, #10
	str	r10, [fp, #-72]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-56]
	ldr	r10, [fp, #-72]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-60]
	mov	r10, #0
	str	r10, [fp, #-64]
	push	{r0-r3}
	ldr	r10, [fp, #-60]
	mov	r7, r10
	ldr	r10, [fp, #-64]
	add	r10, r7, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-68]
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-68]
	ldr	r7, [fp, #-52]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-56]
	cmp	r8, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-64]
	mov	r8, r10
	ldr	r10, [fp, #-60]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L14
	mov	r10, #1
	b	.L15
.L14:
	mov	r10, #0
.L15:
	cmp	r10, #0
	beq	.L13
	push	{r0-r3}
	ldr	r10, [fp, #-60]
	mov	r7, r10
	ldr	r10, [fp, #-64]
	add	r10, r7, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-68]
	ldr	r10, [fp, #-56]
	mov	r9, r10
	ldr	r10, [fp, #-68]
	ldr	r8, [fp, #-52]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-68]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-60]
	b	.L17
.L16:
	ldr	r10, [fp, #-68]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-64]
.L17:
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	ldr	r10, [fp, #-56]
	mov	r9, r10
	ldr	r10, [fp, #-68]
	ldr	r8, [fp, #-52]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L18
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L19
.L18:
	mov	r10, #0
	str	r10, [fp, #-56]
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
.L19:
	mov	r10, #10
	str	r10, [fp, #-56]
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

