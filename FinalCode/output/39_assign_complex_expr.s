	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #5
	str	r10, [fp, #-8]
	mov	r10, #1
	str	r10, [fp, #-12]
	mov	r10, #2
	rsb	r10, r10, #0
	str	r10, [fp, #-16]
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r5, r10
	mov	r10, #1
	mul	r10, r5, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	mov	r7, r10
	ldr	r10, [fp, #-4]
	mov	r6, r10
	ldr	r10, [fp, #-8]
	sub	r10, r6, r10
	add	r10, r7, r10
	mov	r8, r10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r5, r10
	mov	r10, #3
	add	r10, r5, r10
	rsb	r10, r10, #0
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r6, r10
	mov	r10, #67
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-4]
	mov	r5, r10
	ldr	r10, [fp, #-8]
	sub	r10, r5, r10
	rsb	r10, r10, #0
	add	r10, r7, r10
	mov	r8, r10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r5, r10
	mov	r10, #2
	add	r10, r5, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	rsb	r10, r10, #0
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #3
	add	r10, r8, r10
	str	r10, [fp, #-20]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
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

