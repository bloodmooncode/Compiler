	.global	main
	.data 
field:
	.word	0
	.text
.field_addr:
	.word	field

	.text
func:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	str	r0, [fp, #-4]
	mov	r10, #3
	mov	r9, r10
	mov	r10, #0
	ldr	r8, .field_addr
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
	sub	sp, sp, #28
	push	{r0-r9}
	mov	r10, #8
	mov	r0, r10
	bl	malloc
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .field_addr
	str	r10, [r9]
	add	r9, fp, #-4
	str	r9, [r9, #-4]
	add	r9, fp, #-20
	str	r9, [r9, #-4]
	mov	r10, #1
	push	{r10}
	mov	r10, #0
	ldr	r9, .field_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #2
	push	{r10}
	mov	r10, #1
	ldr	r9, .field_addr
	ldr	r9, [r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	rsb	r10, r10, #0
	push	{r10}
	mov	r10, #0
	mov	r8, r10
	mov	r10, #0
	add	r10, r8, r10
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	ldr	r7, [fp, #-24]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #2
	sub	r10, r8, r10
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	ldr	r8, [fp, #-24]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-28]
	mov	r10, #16
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-24]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, [fp, #-24]
	mov	r0, r10
	bl	func
	mov	r10, r0
	pop	{r0-r9}
	mov	r8, r10
	mov	r10, #2
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-28]
	add	r10, r9, r10
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

