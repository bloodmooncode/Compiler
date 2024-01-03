	.global	main
	.data 
n:
	.word	0
	.text
.n_addr:
	.word	n

	.text
bubblesort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-8]
.L47:
@######WHILE LOOP begin .L47 - .L48
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L48
	mov	r10, #0
	str	r10, [fp, #-12]
.L49:
@######WHILE LOOP begin .L49 - .L50
	ldr	r10, [fp, #-12]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L50
	ldr	r10, [fp, #-12]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L51
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	b	.L52
.L51:
.L52:
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L49
.L50:
@######WHILE LOOP end .L49 - .L50
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L47
.L48:
@######WHILE LOOP end .L47 - .L48
	mov	r10, #0
	mov	r0, r10
	b	.L46
.L46:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
insertsort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #1
	str	r10, [fp, #-8]
.L54:
@######WHILE LOOP begin .L54 - .L55
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L55
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
.L56:
@######WHILE LOOP begin .L56 - .L57
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	rsb	r10, r10, #0
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L58
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L58
	mov	r10, #1
	b	.L59
.L58:
	mov	r10, #0
.L59:
	cmp	r10, #0
	beq	.L57
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L56
.L57:
@######WHILE LOOP end .L56 - .L57
	ldr	r10, [fp, #-12]
	push	{r10}
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-8]
	b	.L54
.L55:
@######WHILE LOOP end .L54 - .L55
	mov	r10, #0
	mov	r0, r10
	b	.L53
.L53:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
QuickSort:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	str	r2, [fp, #-12]
	ldr	r10, [fp, #-8]
	mov	r9, r10
	ldr	r10, [fp, #-12]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L61
	ldr	r10, [fp, #-8]
	str	r10, [fp, #-16]
	ldr	r10, [fp, #-12]
	str	r10, [fp, #-20]
	ldr	r10, [fp, #-8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-24]
.L63:
@######WHILE LOOP begin .L63 - .L64
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L64
.L65:
@######WHILE LOOP begin .L65 - .L66
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L67
	ldr	r10, [fp, #-20]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-24]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	cmp	r8, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L67
	mov	r10, #1
	b	.L68
.L67:
	mov	r10, #0
.L68:
	cmp	r10, #0
	beq	.L66
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L65
.L66:
@######WHILE LOOP end .L65 - .L66
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L69
	ldr	r10, [fp, #-20]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L70
.L69:
.L70:
.L71:
@######WHILE LOOP begin .L71 - .L72
	ldr	r10, [fp, #-16]
	mov	r8, r10
	ldr	r10, [fp, #-20]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L73
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-24]
	cmp	r8, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L73
	mov	r10, #1
	b	.L74
.L73:
	mov	r10, #0
.L74:
	cmp	r10, #0
	beq	.L72
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L71
.L72:
@######WHILE LOOP end .L71 - .L72
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-20]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L75
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-20]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-20]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-20]
	b	.L76
.L75:
.L76:
	b	.L63
.L64:
@######WHILE LOOP end .L63 - .L64
	ldr	r10, [fp, #-24]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-28]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	ldr	r10, [fp, #-28]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-28]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-28]
	push	{r0-r9}
	ldr	r10, [fp, #-4]
	mov	r0, r10
	ldr	r10, [fp, #-28]
	mov	r1, r10
	ldr	r10, [fp, #-12]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	str	r10, [fp, #-28]
	b	.L62
.L61:
.L62:
	mov	r10, #0
	mov	r0, r10
	b	.L60
.L60:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
getMid:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #8
	str	r0, [fp, #-4]
	push	{r0-r3}
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r9, r10
	mov	r10, #0
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L78
	push	{r0-r3}
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-8]
	push	{r0-r3}
	ldr	r10, [fp, #-8]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	ldr	r10, [fp, #-8]
	mov	r7, r10
	mov	r10, #1
	sub	r10, r7, r10
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	mov	r0, r10
	b	.L77
	b	.L79
.L78:
	push	{r0-r3}
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r0, r10
	mov	r10, #2
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-8]
	ldr	r9, [fp, #-4]
	add	r10, r9, r10, LSL #2
	ldr	r10, [r10]
	mov	r0, r10
	b	.L77
.L79:
.L77:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
getMost:
	push	{fp, lr}
	add	fp, sp, #0
	ldr	r9, =4024
	sub	sp, sp, r9
	str	r0, [fp, #-4]
	ldr	r9, =-4004
	add	r9, fp, r9
	str	r9, [r9, #-4]
	mov	r10, #0
	ldr	r9, =-4012
	str	r10, [fp, r9]
.L81:
@######WHILE LOOP begin .L81 - .L82
	ldr	r8, =-4012
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #1000
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L82
	mov	r10, #0
	push	{r10}
	ldr	r8, =-4012
	ldr	r10, [fp, r8]
	ldr	r9, =-4008
	ldr	r9, [fp, r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r7, =-4012
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-4012
	str	r10, [fp, r9]
	b	.L81
.L82:
@######WHILE LOOP end .L81 - .L82
	mov	r10, #0
	ldr	r9, =-4012
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-4016
	str	r10, [fp, r9]
.L83:
@######WHILE LOOP begin .L83 - .L84
	ldr	r8, =-4012
	ldr	r10, [fp, r8]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L84
	ldr	r8, =-4012
	ldr	r10, [fp, r8]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-4024
	str	r10, [fp, r9]
	ldr	r7, =-4024
	ldr	r10, [fp, r7]
	ldr	r7, =-4008
	ldr	r7, [fp, r7]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	push	{r10}
	ldr	r8, =-4024
	ldr	r10, [fp, r8]
	ldr	r9, =-4008
	ldr	r9, [fp, r9]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r8, =-4024
	ldr	r10, [fp, r8]
	ldr	r8, =-4008
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	mov	r9, r10
	ldr	r8, =-4016
	ldr	r10, [fp, r8]
	cmp	r9, r10
	movgt	r10, #1
	movle	r10, #0
	cmp	r10, #0
	beq	.L85
	ldr	r8, =-4024
	ldr	r10, [fp, r8]
	ldr	r8, =-4008
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-4016
	str	r10, [fp, r9]
	ldr	r8, =-4024
	ldr	r10, [fp, r8]
	ldr	r9, =-4020
	str	r10, [fp, r9]
	b	.L86
.L85:
.L86:
	ldr	r7, =-4012
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-4012
	str	r10, [fp, r9]
	b	.L83
.L84:
@######WHILE LOOP end .L83 - .L84
	ldr	r9, =-4020
	ldr	r10, [fp, r9]
	mov	r0, r10
	b	.L80
.L80:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
revert:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-16]
.L88:
@######WHILE LOOP begin .L88 - .L89
	ldr	r10, [fp, #-12]
	mov	r9, r10
	ldr	r10, [fp, #-16]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L89
	ldr	r10, [fp, #-12]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-8]
	ldr	r10, [fp, #-16]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-8]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L88
.L89:
@######WHILE LOOP end .L88 - .L89
	mov	r10, #0
	mov	r0, r10
	b	.L87
.L87:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
arrCopy:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
.L91:
@######WHILE LOOP begin .L91 - .L92
	ldr	r10, [fp, #-12]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L92
	ldr	r10, [fp, #-12]
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	push	{r10}
	ldr	r10, [fp, #-12]
	ldr	r9, [fp, #-8]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-12]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L91
.L92:
@######WHILE LOOP end .L91 - .L92
	mov	r10, #0
	mov	r0, r10
	b	.L90
.L90:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
calSum:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #16
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-12]
	mov	r10, #0
	str	r10, [fp, #-16]
.L94:
@######WHILE LOOP begin .L94 - .L95
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L95
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	push	{r0-r3}
	ldr	r10, [fp, #-16]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idivmod
	mov	r10, r1
	pop	{r0-r3}
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movne	r10, #1
	moveq	r10, #0
	cmp	r10, #0
	beq	.L96
	mov	r10, #0
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	b	.L97
.L96:
	ldr	r10, [fp, #-12]
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #0
	str	r10, [fp, #-12]
.L97:
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L94
.L95:
@######WHILE LOOP end .L94 - .L95
	mov	r10, #0
	mov	r0, r10
	b	.L93
.L93:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
avgPooling:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-4]
	str	r1, [fp, #-8]
	mov	r10, #0
	str	r10, [fp, #-16]
	mov	r10, #0
	str	r10, [fp, #-12]
.L99:
@######WHILE LOOP begin .L99 - .L100
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L100
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L101
	ldr	r10, [fp, #-12]
	mov	r8, r10
	ldr	r10, [fp, #-16]
	ldr	r7, [fp, #-4]
	add	r10, r7, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r8, r10
	str	r10, [fp, #-12]
	b	.L102
.L101:
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, [fp, #-8]
	mov	r8, r10
	mov	r10, #1
	sub	r10, r8, r10
	cmp	r9, r10
	moveq	r10, #1
	movne	r10, #0
	cmp	r10, #0
	beq	.L103
	mov	r10, #0
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-20]
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	b	.L104
.L103:
	ldr	r10, [fp, #-12]
	mov	r7, r10
	ldr	r10, [fp, #-16]
	ldr	r6, [fp, #-4]
	add	r10, r6, r10, LSL #2
	ldr	r10, [r10]
	add	r10, r7, r10
	mov	r8, r10
	ldr	r10, [fp, #-20]
	sub	r10, r8, r10
	str	r10, [fp, #-12]
	ldr	r10, [fp, #-16]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r8, [fp, #-4]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	str	r10, [fp, #-20]
	push	{r0-r3}
	ldr	r10, [fp, #-12]
	mov	r0, r10
	ldr	r10, [fp, #-8]
	mov	r1, r10
	bl	__aeabi_idiv
	mov	r10, r0
	pop	{r0-r3}
	push	{r10}
	ldr	r10, [fp, #-16]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
.L104:
.L102:
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L99
.L100:
@######WHILE LOOP end .L99 - .L100
	ldr	r10, .n_addr
	ldr	r10, [r10]
	mov	r7, r10
	ldr	r10, [fp, #-8]
	sub	r10, r7, r10
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
.L105:
@######WHILE LOOP begin .L105 - .L106
	ldr	r10, [fp, #-16]
	mov	r9, r10
	ldr	r10, .n_addr
	ldr	r10, [r10]
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L106
	mov	r10, #0
	push	{r10}
	ldr	r10, [fp, #-16]
	ldr	r9, [fp, #-4]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, [fp, #-16]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	str	r10, [fp, #-16]
	b	.L105
.L106:
@######WHILE LOOP end .L105 - .L106
	mov	r10, #0
	mov	r0, r10
	b	.L98
.L98:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

	.text
main:
	push	{fp, lr}
	add	fp, sp, #0
	sub	sp, sp, #272
	mov	r10, #32
	ldr	r9, .n_addr
	str	r10, [r9]
	add	r9, fp, #-128
	str	r9, [r9, #-4]
	ldr	r9, =-260
	add	r9, fp, r9
	str	r9, [r9, #-4]
	mov	r10, #7
	push	{r10}
	mov	r10, #0
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #23
	push	{r10}
	mov	r10, #1
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #89
	push	{r10}
	mov	r10, #2
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #26
	push	{r10}
	mov	r10, #3
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =282
	push	{r10}
	mov	r10, #4
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #254
	push	{r10}
	mov	r10, #5
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #27
	push	{r10}
	mov	r10, #6
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #5
	push	{r10}
	mov	r10, #7
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #83
	push	{r10}
	mov	r10, #8
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =273
	push	{r10}
	mov	r10, #9
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =574
	push	{r10}
	mov	r10, #10
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =905
	push	{r10}
	mov	r10, #11
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =354
	push	{r10}
	mov	r10, #12
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =657
	push	{r10}
	mov	r10, #13
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =935
	push	{r10}
	mov	r10, #14
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #264
	push	{r10}
	mov	r10, #15
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =639
	push	{r10}
	mov	r10, #16
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =459
	push	{r10}
	mov	r10, #17
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #29
	push	{r10}
	mov	r10, #18
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #68
	push	{r10}
	mov	r10, #19
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =929
	push	{r10}
	mov	r10, #20
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #756
	push	{r10}
	mov	r10, #21
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #452
	push	{r10}
	mov	r10, #22
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =279
	push	{r10}
	mov	r10, #23
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #58
	push	{r10}
	mov	r10, #24
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #87
	push	{r10}
	mov	r10, #25
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #96
	push	{r10}
	mov	r10, #26
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #36
	push	{r10}
	mov	r10, #27
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #39
	push	{r10}
	mov	r10, #28
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #28
	push	{r10}
	mov	r10, #29
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	mov	r10, #1
	push	{r10}
	mov	r10, #30
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	ldr	r10, =290
	push	{r10}
	mov	r10, #31
	ldr	r9, [fp, #-132]
	add	r9, r9, r10, LSL #2
	pop	{r10}
	str	r10, [r9]
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	revert
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L108:
@######WHILE LOOP begin .L108 - .L109
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L109
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L108
.L109:
@######WHILE LOOP end .L108 - .L109
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	bubblesort
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L110:
@######WHILE LOOP begin .L110 - .L111
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L111
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L110
.L111:
@######WHILE LOOP end .L110 - .L111
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	getMid
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	getMost
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	bubblesort
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L112:
@######WHILE LOOP begin .L112 - .L113
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L113
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L112
.L113:
@######WHILE LOOP end .L112 - .L113
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	bl	insertsort
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L114:
@######WHILE LOOP begin .L114 - .L115
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L115
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L114
.L115:
@######WHILE LOOP end .L114 - .L115
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
	mov	r10, #31
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r1, r10
	ldr	r8, =-268
	ldr	r10, [fp, r8]
	mov	r2, r10
	bl	QuickSort
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
.L116:
@######WHILE LOOP begin .L116 - .L117
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L117
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L116
.L117:
@######WHILE LOOP end .L116 - .L117
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	mov	r10, #4
	mov	r1, r10
	bl	calSum
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L118:
@######WHILE LOOP begin .L118 - .L119
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L119
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L118
.L119:
@######WHILE LOOP end .L118 - .L119
	push	{r0-r9}
	ldr	r10, [fp, #-132]
	mov	r0, r10
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r1, r10
	bl	arrCopy
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r8, =-264
	ldr	r10, [fp, r8]
	mov	r0, r10
	mov	r10, #3
	mov	r1, r10
	bl	avgPooling
	mov	r10, r0
	pop	{r0-r9}
	ldr	r9, =-268
	str	r10, [fp, r9]
	mov	r10, #0
	ldr	r9, =-272
	str	r10, [fp, r9]
.L120:
@######WHILE LOOP begin .L120 - .L121
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	mov	r9, r10
	mov	r10, #32
	cmp	r9, r10
	movlt	r10, #1
	movge	r10, #0
	cmp	r10, #0
	beq	.L121
	ldr	r8, =-272
	ldr	r10, [fp, r8]
	ldr	r8, =-264
	ldr	r8, [fp, r8]
	add	r10, r8, r10, LSL #2
	ldr	r10, [r10]
	ldr	r9, =-268
	str	r10, [fp, r9]
	push	{r0-r9}
	ldr	r9, =-268
	ldr	r10, [fp, r9]
	mov	r0, r10
	bl	putint
	mov	r10, r0
	pop	{r0-r9}
	ldr	r7, =-272
	ldr	r10, [fp, r7]
	mov	r8, r10
	mov	r10, #1
	add	r10, r8, r10
	ldr	r9, =-272
	str	r10, [fp, r9]
	b	.L120
.L121:
@######WHILE LOOP end .L120 - .L121
	mov	r10, #0
	mov	r0, r10
	b	.L107
.L107:
	sub	sp, fp, #0
	pop	{fp, pc}
	.ltorg

