	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #21
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L8
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #101
	mov	r8, r10
	ldr	r10, [fp, #-4]
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #100
	mov	r7, r10
	ldr	r10, [fp, #-4]
	sub	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-8]
	sub	r10, r8, r10
	str	r10, [fp, #-12]
	mov	r10, #5
	mov	r6, r10
	ldr	r10, [fp, #-4]
	mul	r10, r6, r10
	mov	r7, r10
	mov	r10, #1
	mov	r6, r10
	ldr	r10, [fp, #-8]
	mul	r10, r6, r10
	add	r10, r7, r10
	mov	r8, r10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	add	r10, r8, r10
	mov	r9, r10
	mov	r10, #100
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L11
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-16]
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	b	.L12
.L11:
.L12:
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	mov	r10, #0
	mov	r0, r10
	b	.L6
.L6:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

