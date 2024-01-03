	.global	main
	.text
canJump:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #60
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L13
	mov	r10, #1
	mov	r0, r10
	b	.L12
	b	.L14
.L13:
.L14:
	mov	r10, #0
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L15
	mov	r10, #1
	mov	r0, r10
	b	.L12
	b	.L16
.L15:
.L16:
	add	r9, fp, #-48
	str	r9, [r9, #-4]
	mov	r10, #0
	str	r10, [fp, #-56]
.L17:
@######WHILE LOOP begin .L17 - .L18
	ldr	r10, [fp, #-56]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L18
	mov	r10, #0
	push	{r10}
	ldr	r10, [fp, #-56]
	ldr	r9, [fp, #-52]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-56]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-56]
	b	.L17
.L18:
@######WHILE LOOP end .L17 - .L18
	mov	r10, #1
	push	{r10}
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, [fp, #-52]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-56]
.L19:
@######WHILE LOOP begin .L19 - .L20
	ldr	r10, [fp, #-56]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L20
	ldr	r10, [fp, #-56]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-56]
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L21
	ldr	r10, [fp, #-56]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-60]
	b	.L22
.L21:
	ldr	r10, [fp, #-8]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-56]
	sub	r10, r8, r10
	str	r10, [fp, #-60]
.L22:
.L23:
@######WHILE LOOP begin .L23 - .L24
	ldr	r10, [fp, #-60]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L24
	ldr	r10, [fp, #-56]
	mov	r8, r10
	ldr	r10, [fp, #-60]
	add	r10, r8, r10
	ldr	r8, [fp, #-52]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L25
	mov	r10, #1
	push	{r10}
	ldr	r10, [fp, #-56]
	ldr	r9, [fp, #-52]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	b	.L26
.L25:
.L26:
	ldr	r10, [fp, #-60]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-60]
	b	.L23
.L24:
@######WHILE LOOP end .L23 - .L24
	ldr	r10, [fp, #-56]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-56]
	b	.L19
.L20:
@######WHILE LOOP end .L19 - .L20
	mov	r10, #0
	ldr	r9, [fp, #-52]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	mov	r0, r10
	b	.L12
.L12:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #48
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	mov	r10, #3
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #9
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #5
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #6
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #5
	push	{r10}
	mov	r10, #7
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #7
	push	{r10}
	mov	r10, #8
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #8
	push	{r10}
	mov	r10, #9
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #10
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-48]
	mov	r0, r10
	ldr	r10, [fp, #-4]
	mov	r1, r10
	bl	canJump
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L27
.L27:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

