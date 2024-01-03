	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	mov	r10, #1
	str	r10, [fp, #-4]
	mov	r10, #4
	str	r10, [fp, #-8]
	mov	r10, #28
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-4]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-8]
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L6
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	rsb	r10, r10, #0
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	str	r10, [fp, #-16]
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L7
.L6:
.L7:
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	sub	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-4]
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L8
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	str	r10, [fp, #-16]
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	b	.L9
.L8:
.L9:
	mov	r10, #0
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

