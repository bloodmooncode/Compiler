	.global	main
	.data 
a0:
	.word	0
	.text
.a0_addr:
	.word	a0

	.data 
a1:
	.word	0
	.text
.a1_addr:
	.word	a1

	.data 
a2:
	.word	0
	.text
.a2_addr:
	.word	a2

	.data 
a3:
	.word	0
	.text
.a3_addr:
	.word	a3

	.data 
a4:
	.word	0
	.text
.a4_addr:
	.word	a4

	.data 
a5:
	.word	0
	.text
.a5_addr:
	.word	a5

	.data 
a6:
	.word	0
	.text
.a6_addr:
	.word	a6

	.data 
a7:
	.word	0
	.text
.a7_addr:
	.word	a7

	.data 
a8:
	.word	0
	.text
.a8_addr:
	.word	a8

	.data 
a9:
	.word	0
	.text
.a9_addr:
	.word	a9

	.data 
a10:
	.word	0
	.text
.a10_addr:
	.word	a10

	.data 
a11:
	.word	0
	.text
.a11_addr:
	.word	a11

	.data 
a12:
	.word	0
	.text
.a12_addr:
	.word	a12

	.data 
a13:
	.word	0
	.text
.a13_addr:
	.word	a13

	.data 
a14:
	.word	0
	.text
.a14_addr:
	.word	a14

	.data 
a15:
	.word	0
	.text
.a15_addr:
	.word	a15

	.data 
a16:
	.word	0
	.text
.a16_addr:
	.word	a16

	.data 
a17:
	.word	0
	.text
.a17_addr:
	.word	a17

	.data 
a18:
	.word	0
	.text
.a18_addr:
	.word	a18

	.data 
a19:
	.word	0
	.text
.a19_addr:
	.word	a19

	.data 
a20:
	.word	0
	.text
.a20_addr:
	.word	a20

	.data 
a21:
	.word	0
	.text
.a21_addr:
	.word	a21

	.data 
a22:
	.word	0
	.text
.a22_addr:
	.word	a22

	.data 
a23:
	.word	0
	.text
.a23_addr:
	.word	a23

	.data 
a24:
	.word	0
	.text
.a24_addr:
	.word	a24

	.data 
a25:
	.word	0
	.text
.a25_addr:
	.word	a25

	.data 
a26:
	.word	0
	.text
.a26_addr:
	.word	a26

	.data 
a27:
	.word	0
	.text
.a27_addr:
	.word	a27

	.data 
a28:
	.word	0
	.text
.a28_addr:
	.word	a28

	.data 
a29:
	.word	0
	.text
.a29_addr:
	.word	a29

	.data 
a30:
	.word	0
	.text
.a30_addr:
	.word	a30

	.data 
a31:
	.word	0
	.text
.a31_addr:
	.word	a31

	.data 
a32:
	.word	0
	.text
.a32_addr:
	.word	a32

	.data 
a33:
	.word	0
	.text
.a33_addr:
	.word	a33

	.data 
a34:
	.word	0
	.text
.a34_addr:
	.word	a34

	.data 
a35:
	.word	0
	.text
.a35_addr:
	.word	a35

	.data 
a36:
	.word	0
	.text
.a36_addr:
	.word	a36

	.data 
a37:
	.word	0
	.text
.a37_addr:
	.word	a37

	.data 
a38:
	.word	0
	.text
.a38_addr:
	.word	a38

	.data 
a39:
	.word	0
	.text
.a39_addr:
	.word	a39

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
	add	r10, r4, r10
	mov	r5, r10
	ldr	r10, [fp, #-16]
	add	r10, r5, r10
	mov	r6, r10
	ldr	r10, [fp, #-20]
	add	r10, r6, r10
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
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-20]
	sub	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-24]
	sub	r10, r9, r10
	pop	{r9}
	mov	r0, r10
	ldr	r10, [fp, #-28]
	sub	r10, r0, r10
	mov	r1, r10
	ldr	r10, [fp, #-32]
	sub	r10, r1, r10
	mov	r2, r10
	ldr	r10, [fp, #-36]
	add	r10, r2, r10
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
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-68]
	add	r10, r9, r10
	pop	{r9}
	mov	r9, r10
	ldr	r10, [fp, #-72]
	add	r10, r9, r10
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
	sub	r10, r0, r10
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
	sub	sp, sp, #0
	mov	r10, #0
	ldr	r9, .a0_addr
	str	r10, [r9]
	mov	r10, #1
	ldr	r9, .a1_addr
	str	r10, [r9]
	mov	r10, #2
	ldr	r9, .a2_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .a3_addr
	str	r10, [r9]
	mov	r10, #4
	ldr	r9, .a4_addr
	str	r10, [r9]
	mov	r10, #5
	ldr	r9, .a5_addr
	str	r10, [r9]
	mov	r10, #6
	ldr	r9, .a6_addr
	str	r10, [r9]
	mov	r10, #7
	ldr	r9, .a7_addr
	str	r10, [r9]
	mov	r10, #8
	ldr	r9, .a8_addr
	str	r10, [r9]
	mov	r10, #9
	ldr	r9, .a9_addr
	str	r10, [r9]
	mov	r10, #0
	ldr	r9, .a10_addr
	str	r10, [r9]
	mov	r10, #1
	ldr	r9, .a11_addr
	str	r10, [r9]
	mov	r10, #2
	ldr	r9, .a12_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .a13_addr
	str	r10, [r9]
	mov	r10, #4
	ldr	r9, .a14_addr
	str	r10, [r9]
	mov	r10, #5
	ldr	r9, .a15_addr
	str	r10, [r9]
	mov	r10, #6
	ldr	r9, .a16_addr
	str	r10, [r9]
	mov	r10, #7
	ldr	r9, .a17_addr
	str	r10, [r9]
	mov	r10, #8
	ldr	r9, .a18_addr
	str	r10, [r9]
	mov	r10, #9
	ldr	r9, .a19_addr
	str	r10, [r9]
	mov	r10, #0
	ldr	r9, .a20_addr
	str	r10, [r9]
	mov	r10, #1
	ldr	r9, .a21_addr
	str	r10, [r9]
	mov	r10, #2
	ldr	r9, .a22_addr
	str	r10, [r9]
	mov	r10, #3
	ldr	r9, .a23_addr
	str	r10, [r9]
	mov	r10, #4
	ldr	r9, .a24_addr
	str	r10, [r9]
	mov	r10, #5
	ldr	r9, .a25_addr
	str	r10, [r9]
	mov	r10, #6
	ldr	r9, .a26_addr
	str	r10, [r9]
	mov	r10, #7
	ldr	r9, .a27_addr
	str	r10, [r9]
	mov	r10, #8
	ldr	r9, .a28_addr
	str	r10, [r9]
	mov	r10, #9
	ldr	r9, .a29_addr
	str	r10, [r9]
	mov	r10, #0
	ldr	r9, .a30_addr
	str	r10, [r9]
	mov	r10, #1
	ldr	r9, .a31_addr
	str	r10, [r9]
	mov	r10, #4
	ldr	r9, .a32_addr
	str	r10, [r9]
	mov	r10, #5
	ldr	r9, .a33_addr
	str	r10, [r9]
	mov	r10, #6
	ldr	r9, .a34_addr
	str	r10, [r9]
	mov	r10, #7
	ldr	r9, .a35_addr
	str	r10, [r9]
	mov	r10, #8
	ldr	r9, .a36_addr
	str	r10, [r9]
	mov	r10, #9
	ldr	r9, .a37_addr
	str	r10, [r9]
	mov	r10, #0
	ldr	r9, .a38_addr
	str	r10, [r9]
	mov	r10, #1
	ldr	r9, .a39_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a0_addr
	ldr	r10, [r10]
	mov	r0, r10
	ldr	r10, .a1_addr
	ldr	r10, [r10]
	mov	r1, r10
	ldr	r10, .a2_addr
	ldr	r10, [r10]
	mov	r2, r10
	ldr	r10, .a3_addr
	ldr	r10, [r10]
	mov	r3, r10
	ldr	r10, .a7_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a6_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a5_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a4_addr
	ldr	r10, [r10]
	push	{r10}
	bl	testParam8
	pop	{r10}
	pop	{r10}
	pop	{r10}
	pop	{r10}
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, .a0_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a0_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, .a32_addr
	ldr	r10, [r10]
	mov	r0, r10
	ldr	r10, .a33_addr
	ldr	r10, [r10]
	mov	r1, r10
	ldr	r10, .a34_addr
	ldr	r10, [r10]
	mov	r2, r10
	ldr	r10, .a35_addr
	ldr	r10, [r10]
	mov	r3, r10
	ldr	r10, .a15_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a14_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a13_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a12_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a11_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a10_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a9_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a8_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a39_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a38_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a37_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a36_addr
	ldr	r10, [r10]
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
	ldr	r9, .a0_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a0_addr
	ldr	r10, [r10]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, .a0_addr
	ldr	r10, [r10]
	mov	r0, r10
	ldr	r10, .a1_addr
	ldr	r10, [r10]
	mov	r1, r10
	ldr	r10, .a2_addr
	ldr	r10, [r10]
	mov	r2, r10
	ldr	r10, .a3_addr
	ldr	r10, [r10]
	mov	r3, r10
	ldr	r10, .a31_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a30_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a29_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a28_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a27_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a26_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a25_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a24_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a23_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a22_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a21_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a20_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a19_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a18_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a17_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a16_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a15_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a14_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a13_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a12_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a11_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a10_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a9_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a8_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a7_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a6_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a5_addr
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, .a4_addr
	ldr	r10, [r10]
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
	ldr	r9, .a0_addr
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, .a0_addr
	ldr	r10, [r10]
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

