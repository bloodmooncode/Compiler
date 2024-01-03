	.global	main
	.text
func1:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #1
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
func2:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #2
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L10
.L10:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
func3:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	mov	r10, #4
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L11
.L11:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
func4:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r10, #8
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-4]
	mov	r10, #16
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-12]
	add	r10, r8, r10
	str	r10, [fp, #-4]
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
	sub	sp, sp, #12
	mov	r10, #32
	str	r10, [fp, #-4]
	mov	r10, #32
	str	r10, [fp, #-8]
	mov	r10, #32
	str	r10, [fp, #-12]
	push	{r0-r9}
	bl	func1
	mov	r10, r0
	pop	{r0-r9}
	mov	r4, r10
	push	{r0-r9}
	bl	func2
	mov	r10, r0
	pop	{r0-r9}
	add	r10, r4, r10
	mov	r5, r10
	push	{r0-r9}
	bl	func3
	mov	r10, r0
	pop	{r0-r9}
	add	r10, r5, r10
	mov	r6, r10
	push	{r0-r9}
	bl	func4
	mov	r10, r0
	pop	{r0-r9}
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-4]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-12]
	add	r10, r9, r10
	mov	r0, r10
	b	.L13
.L13:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

