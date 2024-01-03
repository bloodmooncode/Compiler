	.global	main
	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #4
	push	{r0-r9}
	bl	getint
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r0, r10
	b	.L3
.L3:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

