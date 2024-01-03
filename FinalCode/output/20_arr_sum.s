	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	push	{r0-r9}
	mov	r10, #20
	mov	r0, r10
	bl	malloc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	mov	r10, #0
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	mov	r10, #1
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	mov	r10, #2
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	mov	r10, #3
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	push	{r10}
	mov	r10, #4
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #4
	str	r10, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
.L5:
@######WHILE LOOP begin .L5 - .L6
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #1
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L6
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-4]
	ldr	r7, .a_addr
	ldr	r7, [r7]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L5
.L6:
@######WHILE LOOP end .L5 - .L6
	ldr	r10, [fp, #-8]
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

