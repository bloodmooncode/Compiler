	.global	main
	.text
palindrome:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #32
	str	r0, [fp, #-4]
	add	r9, fp, #-20
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-28]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-28]
	mov	r9, r10
	mov	r10, #4
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	mov	r10, #10
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	push	{r10}
	ldr	r10, [fp, #-28]
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	mov	r10, #10
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-28]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-28]
	b	.L10
.L11:
@######WHILE LOOP end .L10 - .L11
	mov	r10, #0
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #3
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L14
	mov	r10, #1
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #2
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	cmp	r8, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L14
	mov	r10, #1
	b	.L15
.L14:
	mov	r10, #0
.L15:
	cmp	r10, #0
	beq	.L12
	mov	r10, #1
	str	r10, [fp, #-32]
	b	.L13
.L12:
	mov	r10, #0
	str	r10, [fp, #-32]
.L13:
	ldr	r10, [fp, #-32]
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
	sub	sp, sp, #8
	ldr	r10, =1221
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	palindrome
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L17
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L18
.L17:
	mov	r10, #0
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
.L18:
	mov	r10, #10
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L16
.L16:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

