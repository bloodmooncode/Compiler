	.global	main
	.data 
N:
	.word	0
	.text
.N_addr:
	.word	N

	.text
insert:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
.L8:
@######WHILE LOOP begin .L8 - .L9
	ldr	r10, [fp, #-8]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L10
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, .N_addr
	ldr	r10, [r10]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L10
	mov	r10, #1
	b	.L11
.L10:
	mov	r10, #0
.L11:
	cmp	r10, #0
	beq	.L9
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L8
.L9:
@######WHILE LOOP end .L8 - .L9
	ldr	r10, .N_addr
	ldr	r10, [r10]
	str	r10, [fp, #-16]
.L12:
@######WHILE LOOP begin .L12 - .L13
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L13
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-8]
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L12
.L13:
@######WHILE LOOP end .L12 - .L13
	mov	r10, #0
	mov	r0, r10
	b	.L7
.L7:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #56
	mov	r10, #10
	ldr	r9, .N_addr
	str	r10, [r9]
	add	r9, fp, #-44
	str	r9, [r9, #-4]
	mov	r10, #1
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
	mov	r10, #4
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #7
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #8
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #11
	push	{r10}
	mov	r10, #5
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #13
	push	{r10}
	mov	r10, #6
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #18
	push	{r10}
	mov	r10, #7
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #56
	push	{r10}
	mov	r10, #8
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #78
	push	{r10}
	mov	r10, #9
	ldr	r9, [fp, #-48]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	str	r10, [fp, #-56]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-48]
	mov	r0, r10
	ldr	r10, [fp, #-52]
	mov	r1, r10
	bl	insert
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-52]
.L15:
@######WHILE LOOP begin .L15 - .L16
	ldr	r10, [fp, #-56]
	mov	r9, r10
	ldr	r10, .N_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L16
	ldr	r10, [fp, #-56]
	ldr	r8, [fp, #-48]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-52]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-52]
	push	{r0-r9}
	ldr	r10, [fp, #-52]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	ldr	r10, [fp, #-56]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-56]
	b	.L15
.L16:
@######WHILE LOOP end .L15 - .L16
	mov	r10, #0
	mov	r0, r10
	b	.L14
.L14:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

