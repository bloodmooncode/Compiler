	.global	main
	.text
concat:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-16]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-16]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-12]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	mov	r10, #0
	str	r10, [fp, #-20]
.L11:
@######WHILE LOOP begin .L11 - .L12
	ldr	r10, [fp, #-20]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L12
	ldr	r10, [fp, #-20]
	ldr	r8, [fp, #-8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-12]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L11
.L12:
@######WHILE LOOP end .L11 - .L12
	mov	r10, #0
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #164
	add	r9, fp, #-12
	str	r9, [r9, #-4]
	add	r9, fp, #-28
	str	r9, [r9, #-4]
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	add	r9, fp, #-60
	str	r9, [r9, #-4]
	add	r9, fp, #-76
	str	r9, [r9, #-4]
	add	r9, fp, #-92
	str	r9, [r9, #-4]
	add	r9, fp, #-120
	str	r9, [r9, #-4]
	add	r9, fp, #-136
	str	r9, [r9, #-4]
	add	r9, fp, #-152
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-160]
.L14:
@######WHILE LOOP begin .L14 - .L15
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L15
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-16]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-32]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-64]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-80]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	push	{r10}
	ldr	r10, [fp, #-160]
	ldr	r9, [fp, #-96]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-160]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-160]
	b	.L14
.L15:
@######WHILE LOOP end .L14 - .L15
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	ldr	r10, [fp, #-64]
	mov	r1, r10
	ldr	r10, [fp, #-124]
	mov	r2, r10
	bl	concat
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-160]
.L16:
@######WHILE LOOP begin .L16 - .L17
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #6
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L17
	ldr	r10, [fp, #-160]
	ldr	r8, [fp, #-124]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-164]
	push	{r0-r9}
	ldr	r10, [fp, #-164]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-160]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-160]
	b	.L16
.L17:
@######WHILE LOOP end .L16 - .L17
	mov	r10, #10
	str	r10, [fp, #-164]
	push	{r0-r9}
	ldr	r10, [fp, #-164]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L13
.L13:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

