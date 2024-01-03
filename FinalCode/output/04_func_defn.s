	.global	main
	.data 
a:
	.word	0
	.text
.a_addr:
	.word	a

	.text
func:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	str	r0, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L4
.L4:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #10
	ldr	r9, .a_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	func
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

