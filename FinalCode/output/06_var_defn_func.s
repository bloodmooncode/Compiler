	.global	main
	.text
defn:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #0
	mov	r10, #4
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
	push	{r0-r9}
	bl	defn
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

