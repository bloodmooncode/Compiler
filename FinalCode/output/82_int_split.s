	.global	main
	.data 
N:
	.word	0
	.text
.N_addr:
	.word	N

	.data 
newline:
	.word	0
	.text
.newline_addr:
	.word	newline

	.text
split:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, .N_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-12]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-12]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L8
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	mov	r10, #10
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-8]
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
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-12]
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

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #32
	mov	r10, #4
	ldr	r9, .N_addr
	str	r10, [r9]
	mov	r10, #10
	ldr	r9, .newline_addr
	str	r10, [r9]
	add	r9, fp, #-24
	str	r9, [r9, #-4]
	ldr	r10, =1478
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	ldr	r10, [fp, #-28]
	mov	r1, r10
	bl	split
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-4]
.L10:
@######WHILE LOOP begin .L10 - .L11
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #4
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L11
	ldr	r10, [fp, #-4]
	ldr	r8, [fp, #-28]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-32]
	push	{r0-r9}
	ldr	r10, [fp, #-32]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, .newline_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-4]
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

