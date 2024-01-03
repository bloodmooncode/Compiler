	.global	main
	.text
testParam8:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #32
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r10, [fp, #8]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #12]
	str	r10, [fp, #-24]
	ldr	r10, [fp, #16]
	str	r10, [fp, #-28]
	ldr	r10, [fp, #20]
	str	r10, [fp, #-32]
	ldr	r10, [fp, #-4]
	mov	r3, r10
	ldr	r10, [fp, #-8]
	add	r10, r3, r10
	mov	r4, r10
	ldr	r10, [fp, #-12]
	sub	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-16]
	sub	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-20]
	sub	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-24]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-28]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-32]
	add	r10, r9, r10
	mov	r0, r10
	b	.L6
.L6:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
testParam16:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #64
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r10, [fp, #8]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #12]
	str	r10, [fp, #-24]
	ldr	r10, [fp, #16]
	str	r10, [fp, #-28]
	ldr	r10, [fp, #20]
	str	r10, [fp, #-32]
	ldr	r10, [fp, #24]
	str	r10, [fp, #-36]
	ldr	r10, [fp, #28]
	str	r10, [fp, #-40]
	ldr	r10, [fp, #32]
	str	r10, [fp, #-44]
	ldr	r10, [fp, #36]
	str	r10, [fp, #-48]
	ldr	r10, [fp, #40]
	str	r10, [fp, #-52]
	ldr	r10, [fp, #44]
	str	r10, [fp, #-56]
	ldr	r10, [fp, #48]
	str	r10, [fp, #-60]
	ldr	r10, [fp, #52]
	str	r10, [fp, #-64]
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	push	{r9}
	ldr	r10, [fp, #-4]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-12]
	add	r10, r9, r10
	pop	{r9}
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
	mov	r0, r10
	ldr	r10, [fp, #-28]
	add	r10, r0, r10
	mov	r1, r10
	ldr	r10, [fp, #-32]
	add	r10, r1, r10
	mov	r2, r10
	ldr	r10, [fp, #-36]
	sub	r10, r2, r10
	mov	r3, r10
	ldr	r10, [fp, #-40]
	add	r10, r3, r10
	mov	r4, r10
	ldr	r10, [fp, #-44]
	add	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-48]
	add	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-52]
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-56]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-60]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-64]
	add	r10, r9, r10
	mov	r0, r10
	b	.L7
.L7:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
testParam32:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #128
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r10, [fp, #8]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #12]
	str	r10, [fp, #-24]
	ldr	r10, [fp, #16]
	str	r10, [fp, #-28]
	ldr	r10, [fp, #20]
	str	r10, [fp, #-32]
	ldr	r10, [fp, #24]
	str	r10, [fp, #-36]
	ldr	r10, [fp, #28]
	str	r10, [fp, #-40]
	ldr	r10, [fp, #32]
	str	r10, [fp, #-44]
	ldr	r10, [fp, #36]
	str	r10, [fp, #-48]
	ldr	r10, [fp, #40]
	str	r10, [fp, #-52]
	ldr	r10, [fp, #44]
	str	r10, [fp, #-56]
	ldr	r10, [fp, #48]
	str	r10, [fp, #-60]
	ldr	r10, [fp, #52]
	str	r10, [fp, #-64]
	ldr	r10, [fp, #56]
	str	r10, [fp, #-68]
	ldr	r10, [fp, #60]
	str	r10, [fp, #-72]
	ldr	r10, [fp, #64]
	str	r10, [fp, #-76]
	ldr	r10, [fp, #68]
	str	r10, [fp, #-80]
	ldr	r10, [fp, #72]
	str	r10, [fp, #-84]
	ldr	r10, [fp, #76]
	str	r10, [fp, #-88]
	ldr	r10, [fp, #80]
	str	r10, [fp, #-92]
	ldr	r10, [fp, #84]
	str	r10, [fp, #-96]
	ldr	r10, [fp, #88]
	str	r10, [fp, #-100]
	ldr	r10, [fp, #92]
	str	r10, [fp, #-104]
	ldr	r10, [fp, #96]
	str	r10, [fp, #-108]
	ldr	r10, [fp, #100]
	str	r10, [fp, #-112]
	ldr	r10, [fp, #104]
	str	r10, [fp, #-116]
	ldr	r10, [fp, #108]
	str	r10, [fp, #-120]
	ldr	r10, [fp, #112]
	str	r10, [fp, #-124]
	ldr	r10, [fp, #116]
	str	r10, [fp, #-128]
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
	ldr	r10, [fp, #-4]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-12]
	add	r10, r9, r10
	pop	{r9}
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
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-36]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-40]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-44]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-48]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-52]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-56]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-60]
	sub	r10, r9, r10
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
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-84]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-88]
	sub	r10, r9, r10
	pop	{r9}
	mov	r0, r10
	ldr	r10, [fp, #-92]
	add	r10, r0, r10
	mov	r1, r10
	ldr	r10, [fp, #-96]
	add	r10, r1, r10
	mov	r2, r10
	ldr	r10, [fp, #-100]
	add	r10, r2, r10
	mov	r3, r10
	ldr	r10, [fp, #-104]
	add	r10, r3, r10
	mov	r4, r10
	ldr	r10, [fp, #-108]
	add	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-112]
	add	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-116]
	add	r10, r6, r10
	mov	r7, r10
	ldr	r10, [fp, #-120]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-124]
	add	r10, r8, r10
	mov	r9, r10
	ldr	r10, [fp, #-128]
	add	r10, r9, r10
	mov	r0, r10
	b	.L8
.L8:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #128
	mov	r10, #0
	str	r10, [fp, #-4]
	mov	r10, #1
	str	r10, [fp, #-8]
	mov	r10, #2
	str	r10, [fp, #-12]
	mov	r10, #3
	str	r10, [fp, #-16]
	mov	r10, #4
	str	r10, [fp, #-20]
	mov	r10, #5
	str	r10, [fp, #-24]
	mov	r10, #6
	str	r10, [fp, #-28]
	mov	r10, #7
	str	r10, [fp, #-32]
	mov	r10, #8
	str	r10, [fp, #-36]
	mov	r10, #9
	str	r10, [fp, #-40]
	mov	r10, #0
	str	r10, [fp, #-44]
	mov	r10, #1
	str	r10, [fp, #-48]
	mov	r10, #2
	str	r10, [fp, #-52]
	mov	r10, #3
	str	r10, [fp, #-56]
	mov	r10, #4
	str	r10, [fp, #-60]
	mov	r10, #5
	str	r10, [fp, #-64]
	mov	r10, #6
	str	r10, [fp, #-68]
	mov	r10, #7
	str	r10, [fp, #-72]
	mov	r10, #8
	str	r10, [fp, #-76]
	mov	r10, #9
	str	r10, [fp, #-80]
	mov	r10, #0
	str	r10, [fp, #-84]
	mov	r10, #1
	str	r10, [fp, #-88]
	mov	r10, #2
	str	r10, [fp, #-92]
	mov	r10, #3
	str	r10, [fp, #-96]
	mov	r10, #4
	str	r10, [fp, #-100]
	mov	r10, #5
	str	r10, [fp, #-104]
	mov	r10, #6
	str	r10, [fp, #-108]
	mov	r10, #7
	str	r10, [fp, #-112]
	mov	r10, #8
	str	r10, [fp, #-116]
	mov	r10, #9
	str	r10, [fp, #-120]
	mov	r10, #0
	str	r10, [fp, #-124]
	mov	r10, #1
	str	r10, [fp, #-128]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	ldr	r10, [fp, #-16]
	mov	r3, r10
	ldr	r10, [fp, #-32]
	push	{r10}
	ldr	r10, [fp, #-28]
	push	{r10}
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-20]
	push	{r10}
	bl	testParam8
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	ldr	r10, [fp, #-16]
	mov	r3, r10
	ldr	r10, [fp, #-64]
	push	{r10}
	ldr	r10, [fp, #-60]
	push	{r10}
	ldr	r10, [fp, #-56]
	push	{r10}
	ldr	r10, [fp, #-52]
	push	{r10}
	ldr	r10, [fp, #-48]
	push	{r10}
	ldr	r10, [fp, #-44]
	push	{r10}
	ldr	r10, [fp, #-40]
	push	{r10}
	ldr	r10, [fp, #-36]
	push	{r10}
	ldr	r10, [fp, #-32]
	push	{r10}
	ldr	r10, [fp, #-28]
	push	{r10}
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-20]
	push	{r10}
	bl	testParam16
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	ldr	r10, [fp, #-16]
	mov	r3, r10
	ldr	r10, [fp, #-128]
	push	{r10}
	ldr	r10, [fp, #-124]
	push	{r10}
	ldr	r10, [fp, #-120]
	push	{r10}
	ldr	r10, [fp, #-116]
	push	{r10}
	ldr	r10, [fp, #-112]
	push	{r10}
	ldr	r10, [fp, #-108]
	push	{r10}
	ldr	r10, [fp, #-104]
	push	{r10}
	ldr	r10, [fp, #-100]
	push	{r10}
	ldr	r10, [fp, #-96]
	push	{r10}
	ldr	r10, [fp, #-92]
	push	{r10}
	ldr	r10, [fp, #-88]
	push	{r10}
	ldr	r10, [fp, #-84]
	push	{r10}
	ldr	r10, [fp, #-80]
	push	{r10}
	ldr	r10, [fp, #-76]
	push	{r10}
	ldr	r10, [fp, #-72]
	push	{r10}
	ldr	r10, [fp, #-68]
	push	{r10}
	ldr	r10, [fp, #-64]
	push	{r10}
	ldr	r10, [fp, #-60]
	push	{r10}
	ldr	r10, [fp, #-56]
	push	{r10}
	ldr	r10, [fp, #-52]
	push	{r10}
	ldr	r10, [fp, #-48]
	push	{r10}
	ldr	r10, [fp, #-44]
	push	{r10}
	ldr	r10, [fp, #-40]
	push	{r10}
	ldr	r10, [fp, #-36]
	push	{r10}
	ldr	r10, [fp, #-32]
	push	{r10}
	ldr	r10, [fp, #-28]
	push	{r10}
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-20]
	push	{r10}
	bl	testParam32
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-4]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	mov	r10, #0
	mov	r0, r10
	b	.L9
.L9:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

