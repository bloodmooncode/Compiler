	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #44
	add	r9, fp, #-36
	str	r9, [r9, #-4]
	mov	r10, #5
	str	r10, [fp, #-4]
	mov	r10, #5
	str	r10, [fp, #-8]
	mov	r10, #1
	str	r10, [fp, #-12]
	mov	r10, #2
	rsb	r10, r10, #0
	str	r10, [fp, #-16]
	mov	r10, #1
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-40]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-40]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-40]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #4
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-40]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #5
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-40]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r3}
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r3, r10
	mov	r10, #1
	mul	r10, r3, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	mov	r5, r10
	mov	r10, #4
	add	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-4]
	mov	r5, r10
	ldr	r10, [fp, #-8]
	sub	r10, r5, r10
	add	r10, r6, r10
	mov	r7, r10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r4, r10
	mov	r10, #3
	add	r10, r4, r10
	rsb	r10, r10, #0
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	sub	r10, r7, r10
	mov	r0, r10
	mov	r10, #5
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	ldr	r8, [fp, #-40]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-44]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r3}
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r4, r10
	mov	r10, #67
	add	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-4]
	add	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-8]
	sub	r10, r6, r10
	mov	r7, r10
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r4, r10
	mov	r10, #2
	add	r10, r4, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	rsb	r10, r10, #0
	sub	r10, r7, r10
	mov	r0, r10
	mov	r10, #5
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	ldr	r8, [fp, #-40]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-44]
	push	{r0-r9}
	ldr	r10, [fp, #-44]
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

