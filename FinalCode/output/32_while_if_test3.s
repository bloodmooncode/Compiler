	.global	main
	.text
deepWhileBr:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	str	r10, [fp, #-12]
.L9:
@######WHILE LOOP begin .L9 - .L10
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #75
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #42
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #100
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #99
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-20]
	mov	r10, #1
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L15
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #2
	mul	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L16
.L15:
.L16:
	b	.L14
.L13:
.L14:
	b	.L12
.L11:
.L12:
	b	.L9
.L10:
@######WHILE LOOP end .L9 - .L10
	ldr	r10, [fp, #-12]
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
	sub	sp, sp, #4
	mov	r10, #2
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-4]
	mov	r1, r10
	bl	deepWhileBr
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L17
.L17:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

