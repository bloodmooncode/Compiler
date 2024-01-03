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
	mov	r10, #1
	push	{r10}
	mov	r10, #0
	ldr	r9, .a_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #3
	mov	r9, r10
	mov	r10, #0
	ldr	r8, .a_addr
	ldr	r8, [r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	sub	r10, r9, r10
	ldr	r9, [fp, #-4]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
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
	sub	sp, sp, #20
	push	{r0-r9}
	mov	r10, #8
	mov	r0, r10
	bl	malloc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a_addr
	str	r10, [r9]
	add	r9, fp, #-16
	str	r9, [r9, #-4]
	mov	r10, #1
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-20]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #4
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-20]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #8
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-20]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, [fp, #-20]
	mov	r0, r10
	bl	func
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r9, r10
	mov	r10, #1
	ldr	r8, [fp, #-20]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r9, r10
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

