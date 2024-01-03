	.global	main
	.text
_getMaxOfAll:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, =999999
	rsb	r10, r10, #0
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-8]
.L7:
@######WHILE LOOP begin .L7 - .L8
	ldr	r10, [fp, #-8]
	mov	r9, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L8
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L9
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-12]
	b	.L10
.L9:
.L10:
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L7
.L8:
@######WHILE LOOP end .L7 - .L8
	ldr	r10, [fp, #-12]
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
	sub	sp, sp, #20
	add	r9, fp, #-12
	str	r9, [r9, #-4]
	mov	r10, #2
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-16]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-16]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #7
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-16]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	mov	r10, #3
	mov	r1, r10
	bl	_getMaxOfAll
	mov	r10, r0
	pop	{r0-r9}
	ldr	r8, [fp, #-16]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

