	.global	main
	.data 
N:
	.word	0
	.text
.N_addr:
	.word	N

	.data 
M:
	.word	0
	.text
.M_addr:
	.word	M

	.data 
L:
	.word	0
	.text
.L_addr:
	.word	L

	.text
sub:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #40
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r10, [fp, #8]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #12]
	str	r10, [fp, #-24]
	ldr	r10, [fp, #16]
	str	r10, [fp, #-28]
	ldr	r10, [fp, #20]
	str	r10, [fp, #-32]
	ldr	r10, [fp, #24]
	str	r10, [fp, #-36]
	mov	r10, #0
	str	r10, [fp, #-40]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-40]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-16]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	sub	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-40]
	ldr	r9, [fp, #-28]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-8]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-20]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	sub	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-40]
	ldr	r9, [fp, #-32]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-12]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-40]
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	sub	r10, r8, r10
	push	{r10}
	ldr	r10, [fp, #-40]
	ldr	r9, [fp, #-36]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-40]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-40]
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
	sub	sp, sp, #164
	mov	r10, #3
	ldr	r9, .N_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .M_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .L_addr
	str	r10, [r9]
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
.L13:
@######WHILE LOOP begin .L13 - .L14
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L14
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
	b	.L13
.L14:
@######WHILE LOOP end .L13 - .L14
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	ldr	r10, [fp, #-32]
	mov	r1, r10
	ldr	r10, [fp, #-48]
	mov	r2, r10
	ldr	r10, [fp, #-64]
	mov	r3, r10
	ldr	r10, [fp, #-156]
	push	{r10}
	ldr	r10, [fp, #-140]
	push	{r10}
	ldr	r10, [fp, #-124]
	push	{r10}
	ldr	r10, [fp, #-96]
	push	{r10}
	ldr	r10, [fp, #-80]
	push	{r10}
	bl	sub
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-160]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
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
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
	mov	r10, #10
	str	r10, [fp, #-164]
	mov	r10, #0
	str	r10, [fp, #-160]
	push	{r0-r9}
	ldr	r10, [fp, #-164]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
.L17:
@######WHILE LOOP begin .L17 - .L18
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L18
	ldr	r10, [fp, #-160]
	ldr	r8, [fp, #-140]
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
	b	.L17
.L18:
@######WHILE LOOP end .L17 - .L18
	mov	r10, #10
	str	r10, [fp, #-164]
	mov	r10, #0
	str	r10, [fp, #-160]
	push	{r0-r9}
	ldr	r10, [fp, #-164]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
.L19:
@######WHILE LOOP begin .L19 - .L20
	ldr	r10, [fp, #-160]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L20
	ldr	r10, [fp, #-160]
	ldr	r8, [fp, #-156]
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
	b	.L19
.L20:
@######WHILE LOOP end .L19 - .L20
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
	b	.L12
.L12:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

