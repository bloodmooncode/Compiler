	.global	main
	.data 
g:
	.word	0
	.text
.g_addr:
	.word	g

	.data 
h:
	.word	0
	.text
.h_addr:
	.word	h

	.data 
f:
	.word	0
	.text
.f_addr:
	.word	f

	.data 
e:
	.word	0
	.text
.e_addr:
	.word	e

	.text
EightWhile:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #6
	str	r10, [fp, #-8]
	mov	r10, #7
	str	r10, [fp, #-12]
	mov	r10, #10
	str	r10, [fp, #-16]
.L13:
@######WHILE LOOP begin .L13 - .L14
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #20
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L14
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #3
	add	r10, r8, r10
	str	r10, [fp, #-4]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
.L17:
@######WHILE LOOP begin .L17 - .L18
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #7
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L18
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-12]
.L19:
@######WHILE LOOP begin .L19 - .L20
	ldr	r10, [fp, #-16]
	mov	r9, r10
	mov	r10, #20
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L20
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #3
	add	r10, r8, r10
	str	r10, [fp, #-16]
.L21:
@######WHILE LOOP begin .L21 - .L22
	ldr	r10, .e_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L22
	ldr	r10, .e_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, .e_addr
	str	r10, [r9]
.L23:
@######WHILE LOOP begin .L23 - .L24
	ldr	r10, .f_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #2
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L24
	ldr	r10, .f_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	ldr	r9, .f_addr
	str	r10, [r9]
.L25:
@######WHILE LOOP begin .L25 - .L26
	ldr	r10, .g_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #3
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L26
	ldr	r10, .g_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #10
	add	r10, r8, r10
	ldr	r9, .g_addr
	str	r10, [r9]
.L27:
@######WHILE LOOP begin .L27 - .L28
	ldr	r10, .h_addr
	ldr	r10, [r10]
	mov	r9, r10
	mov	r10, #10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L28
	ldr	r10, .h_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #8
	add	r10, r8, r10
	ldr	r9, .h_addr
	str	r10, [r9]
	b	.L27
.L28:
@######WHILE LOOP end .L27 - .L28
	ldr	r10, .h_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r9, .h_addr
	str	r10, [r9]
	b	.L25
.L26:
@######WHILE LOOP end .L25 - .L26
	ldr	r10, .g_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #8
	sub	r10, r8, r10
	ldr	r9, .g_addr
	str	r10, [r9]
	b	.L23
.L24:
@######WHILE LOOP end .L23 - .L24
	ldr	r10, .f_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, .f_addr
	str	r10, [r9]
	b	.L21
.L22:
@######WHILE LOOP end .L21 - .L22
	ldr	r10, .e_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, .e_addr
	str	r10, [r9]
	b	.L19
.L20:
@######WHILE LOOP end .L19 - .L20
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L17
.L18:
@######WHILE LOOP end .L17 - .L18
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L13
.L14:
@######WHILE LOOP end .L13 - .L14
	ldr	r10, [fp, #-4]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	mov	r6, r10
	ldr	r10, [fp, #-16]
	add	r10, r6, r10
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-12]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, .e_addr
	ldr	r10, [r10]
	mov	r6, r10
	ldr	r10, [fp, #-16]
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, .g_addr
	ldr	r10, [r10]
	sub	r10, r7, r10
	mov	r8, r10
	ldr	r10, .h_addr
	ldr	r10, [r10]
	add	r10, r8, r10
	sub	r10, r9, r10
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
	sub	sp, sp, #0
	mov	r10, #1
	ldr	r9, .g_addr
	str	r10, [r9]
	mov	r10, #2
	ldr	r9, .h_addr
	str	r10, [r9]
	mov	r10, #4
	ldr	r9, .e_addr
	str	r10, [r9]
	mov	r10, #6
	ldr	r9, .f_addr
	str	r10, [r9]
	push	{r0-r9}
	bl	EightWhile
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L29
.L29:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

