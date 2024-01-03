	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-4]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-12]
	push	{r0-r9}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-8]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #10
	str	r10, [fp, #-12]
	push	{r0-r9}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	bl	putch
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

