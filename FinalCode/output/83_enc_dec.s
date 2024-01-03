	.global	main
	.text
enc:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #25
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #60
	add	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L11
.L10:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #15
	sub	r10, r8, r10
	str	r10, [fp, #-4]
.L11:
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
dec:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #85
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #59
	sub	r10, r8, r10
	str	r10, [fp, #-4]
	b	.L14
.L13:
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #14
	add	r10, r8, r10
	str	r10, [fp, #-4]
.L14:
	ldr	r10, [fp, #-4]
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
	sub	sp, sp, #8
	mov	r10, #400
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	enc
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	dec
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
	b	.L15
.L15:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

