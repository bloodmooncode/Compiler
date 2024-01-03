	.global	main
	.text
fsqrt:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-12]
.L6:
@######WHILE LOOP begin .L6 - .L7
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	sub	r10, r8, r10
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L7
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	add	r10, r8, r10
	str	r10, [fp, #-12]
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-12]
	b	.L6
.L7:
@######WHILE LOOP end .L6 - .L7
	ldr	r10, [fp, #-12]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	mov	r10, #400
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	fsqrt
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
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
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

