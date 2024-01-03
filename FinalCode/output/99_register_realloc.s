	.global	main
	.text
func:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #156
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	mov	r10, #1
	str	r10, [fp, #-16]
	mov	r10, #2
	str	r10, [fp, #-20]
	mov	r10, #3
	str	r10, [fp, #-24]
	mov	r10, #4
	str	r10, [fp, #-28]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-16]
	add	r10, r8, r10
	str	r10, [fp, #-32]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-20]
	add	r10, r8, r10
	str	r10, [fp, #-36]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-24]
	add	r10, r8, r10
	str	r10, [fp, #-40]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-28]
	add	r10, r8, r10
	str	r10, [fp, #-44]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-32]
	add	r10, r8, r10
	str	r10, [fp, #-48]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-36]
	add	r10, r8, r10
	str	r10, [fp, #-52]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-40]
	add	r10, r8, r10
	str	r10, [fp, #-56]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-44]
	add	r10, r8, r10
	str	r10, [fp, #-60]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-48]
	add	r10, r8, r10
	str	r10, [fp, #-64]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-52]
	add	r10, r8, r10
	str	r10, [fp, #-68]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-56]
	add	r10, r8, r10
	str	r10, [fp, #-72]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-60]
	add	r10, r8, r10
	str	r10, [fp, #-76]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-64]
	add	r10, r8, r10
	str	r10, [fp, #-80]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-68]
	add	r10, r8, r10
	str	r10, [fp, #-84]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-72]
	add	r10, r8, r10
	str	r10, [fp, #-88]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-76]
	add	r10, r8, r10
	str	r10, [fp, #-92]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-80]
	add	r10, r8, r10
	str	r10, [fp, #-96]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-84]
	add	r10, r8, r10
	str	r10, [fp, #-100]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-88]
	add	r10, r8, r10
	str	r10, [fp, #-104]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-92]
	add	r10, r8, r10
	str	r10, [fp, #-108]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-96]
	add	r10, r8, r10
	str	r10, [fp, #-112]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-100]
	add	r10, r8, r10
	str	r10, [fp, #-116]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-104]
	add	r10, r8, r10
	str	r10, [fp, #-120]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-108]
	add	r10, r8, r10
	str	r10, [fp, #-124]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-112]
	add	r10, r8, r10
	str	r10, [fp, #-128]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-116]
	add	r10, r8, r10
	str	r10, [fp, #-132]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-120]
	add	r10, r8, r10
	str	r10, [fp, #-136]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-124]
	add	r10, r8, r10
	str	r10, [fp, #-140]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-128]
	add	r10, r8, r10
	str	r10, [fp, #-144]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-132]
	add	r10, r8, r10
	str	r10, [fp, #-148]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-136]
	add	r10, r8, r10
	str	r10, [fp, #-152]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-140]
	add	r10, r8, r10
	str	r10, [fp, #-156]
	ldr	r10, [fp, #-4]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #10
	add	r10, r8, r10
	str	r10, [fp, #-12]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-128]
	add	r10, r8, r10
	str	r10, [fp, #-144]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-132]
	add	r10, r8, r10
	str	r10, [fp, #-148]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-136]
	add	r10, r8, r10
	str	r10, [fp, #-152]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-140]
	add	r10, r8, r10
	str	r10, [fp, #-156]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-112]
	add	r10, r8, r10
	str	r10, [fp, #-128]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-116]
	add	r10, r8, r10
	str	r10, [fp, #-132]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-120]
	add	r10, r8, r10
	str	r10, [fp, #-136]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-124]
	add	r10, r8, r10
	str	r10, [fp, #-140]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-96]
	add	r10, r8, r10
	str	r10, [fp, #-112]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-100]
	add	r10, r8, r10
	str	r10, [fp, #-116]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-104]
	add	r10, r8, r10
	str	r10, [fp, #-120]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-108]
	add	r10, r8, r10
	str	r10, [fp, #-124]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-80]
	add	r10, r8, r10
	str	r10, [fp, #-96]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-84]
	add	r10, r8, r10
	str	r10, [fp, #-100]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-88]
	add	r10, r8, r10
	str	r10, [fp, #-104]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-92]
	add	r10, r8, r10
	str	r10, [fp, #-108]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-64]
	add	r10, r8, r10
	str	r10, [fp, #-80]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-68]
	add	r10, r8, r10
	str	r10, [fp, #-84]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-72]
	add	r10, r8, r10
	str	r10, [fp, #-88]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-76]
	add	r10, r8, r10
	str	r10, [fp, #-92]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-48]
	add	r10, r8, r10
	str	r10, [fp, #-64]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-52]
	add	r10, r8, r10
	str	r10, [fp, #-68]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-56]
	add	r10, r8, r10
	str	r10, [fp, #-72]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-60]
	add	r10, r8, r10
	str	r10, [fp, #-76]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-32]
	add	r10, r8, r10
	str	r10, [fp, #-48]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-36]
	add	r10, r8, r10
	str	r10, [fp, #-52]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-40]
	add	r10, r8, r10
	str	r10, [fp, #-56]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-44]
	add	r10, r8, r10
	str	r10, [fp, #-60]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-16]
	add	r10, r8, r10
	str	r10, [fp, #-32]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-20]
	add	r10, r8, r10
	str	r10, [fp, #-36]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-24]
	add	r10, r8, r10
	str	r10, [fp, #-40]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-28]
	add	r10, r8, r10
	str	r10, [fp, #-44]
	mov	r10, #1
	mov	r8, r10
	ldr	r10, [fp, #-144]
	add	r10, r8, r10
	str	r10, [fp, #-16]
	mov	r10, #2
	mov	r8, r10
	ldr	r10, [fp, #-148]
	add	r10, r8, r10
	str	r10, [fp, #-20]
	mov	r10, #3
	mov	r8, r10
	ldr	r10, [fp, #-152]
	add	r10, r8, r10
	str	r10, [fp, #-24]
	mov	r10, #4
	mov	r8, r10
	ldr	r10, [fp, #-156]
	add	r10, r8, r10
	str	r10, [fp, #-28]
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	ldr	r10, [fp, #-12]
	mov	r9, r10
	ldr	r10, [fp, #-16]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-20]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-24]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-28]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-32]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-36]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-40]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-44]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-48]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-52]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-56]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-60]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-64]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-68]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-72]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-76]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-80]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-84]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-88]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-92]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-96]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-100]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-104]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-108]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-112]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-116]
	add	r10, r9, r10
	pop	{r9}
	mov	r0, r10
	ldr	r10, [fp, #-120]
	add	r10, r0, r10
	mov	r1, r10
	ldr	r10, [fp, #-124]
	add	r10, r1, r10
	mov	r2, r10
	ldr	r10, [fp, #-128]
	sub	r10, r2, r10
	mov	r3, r10
	ldr	r10, [fp, #-132]
	sub	r10, r3, r10
	mov	r4, r10
	ldr	r10, [fp, #-136]
	sub	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-140]
	sub	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-144]
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-148]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-152]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-156]
	add	r10, r9, r10
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
	sub	sp, sp, #8
	mov	r10, #1
	str	r10, [fp, #-4]
	ldr	r10, [fp, #-4]
	mov	r8, r10
	mov	r10, #2
	mov	r7, r10
	mov	r10, #9
	mul	r10, r7, r10
	add	r10, r8, r10
	str	r10, [fp, #-8]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	func
	mov	r10, r0
	pop	{r0-r9}
	mov	r0, r10
	b	.L5
.L5:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

