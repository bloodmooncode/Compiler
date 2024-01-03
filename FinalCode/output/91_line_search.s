	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #80
	add	r9, fp, #-48
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-4]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
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
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
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
	mov	r10, #0
	str	r10, [fp, #-76]
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-80]
.L11:
@######WHILE LOOP begin .L11 - .L12
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #10
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-76]
	mov	r8, r10
	mov	r10, #0
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L13
	mov	r10, #1
	b	.L14
.L13:
	mov	r10, #0
.L14:
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-4]
	ldr	r8, [fp, #-52]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-56]
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L15
	mov	r10, #1
	str	r10, [fp, #-76]
	ldr	r10, [fp, #-4]
	str	r10, [fp, #-80]
	b	.L16
.L15:
.L16:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L11
.L12:
@######WHILE LOOP end .L11 - .L12
	ldr	r10, [fp, #-76]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L17
	push	{r0-r9}
	ldr	r10, [fp, #-80]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L18
.L17:
	mov	r10, #0
	str	r10, [fp, #-56]
	push	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
.L18:
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
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

