	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #28
	add	r9, fp, #-20
	str	r9, [r9, #-4]
	mov	r10, #56
	str	r10, [fp, #-4]
	mov	r10, #12
	str	r10, [fp, #-8]
	mov	r10, #1
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r3}
	push	{r0-r3}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r6, r10
	ldr	r10, [fp, #-8]
	add	r10, r6, r10
	mov	r0, r10
	mov	r10, #5
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	ldr	r8, [fp, #-24]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-28]
	push	{r0-r9}
	ldr	r10, [fp, #-28]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

