	.file	"keygen.c"
	.text
	.p2align 4
	.type	modp_R2, @function
modp_R2:
.LFB5528:
	.cfi_startproc
	leal	(%rdi,%rdi), %eax
	movl	%esi, %edx
	movl	%edi, %ecx
	negl	%eax
	subl	%edi, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%edi, %esi
	leal	(%rax,%rsi), %edi
	movq	%rdx, %rax
	movl	%ecx, %esi
	imulq	%rdi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ecx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ecx, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rdi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ecx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ecx, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rdi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ecx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ecx, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rdi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ecx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ecx, %edi
	addl	%edi, %eax
	movl	%eax, %eax
	imulq	%rax, %rax
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	%rsi, %rdx
	addq	%rax, %rdx
	shrq	$31, %rdx
	subl	%ecx, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%ecx, %eax
	addl	%edx, %eax
	shrl	%eax
	ret
	.cfi_endproc
.LFE5528:
	.size	modp_R2, .-modp_R2
	.p2align 4
	.type	modp_mkgm2, @function
modp_mkgm2:
.LFB5531:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r10
	movq	%rsi, %r11
	movl	%r8d, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r9d, %esi
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r9d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1, %r12d
	movq	%r13, %r9
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	movl	%edx, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	%cl, %r12
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	modp_R2
	movl	%eax, %ecx
	movl	%ebp, %eax
	imulq	%rcx, %rax
	movq	%rcx, (%rsp)
	imulq	%rax, %r9
	andl	$2147483647, %r9d
	imulq	%r14, %r9
	addq	%rax, %r9
	shrq	$31, %r9
	subl	%r8d, %r9d
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %r9d
	cmpl	$9, %ebx
	ja	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$9, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$8, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$7, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$6, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$5, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$4, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$3, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	leal	8(%rbx), %edx
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$2, %ebx
	je	.L4
	imulq	%r9, %r9
	movq	%r13, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
	cmpl	$8, %edx
	jne	.L4
	imulq	%r9, %r9
	movq	%r9, %rax
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r8d, %r9d
	addl	%eax, %r9d
.L4:
	movl	$-2147483648, %ebp
	leal	-2(%r8), %r15d
	movl	$30, %ecx
	subl	%r8d, %ebp
	movl	%ebp, %edx
	.p2align 4,,10
	.p2align 3
.L6:
	imulq	%rdx, %rdx
	movq	%r13, %rax
	movl	%r15d, %edi
	shrl	%cl, %edi
	andl	$1, %edi
	imulq	%rdx, %rax
	negl	%edi
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	andl	%r8d, %edx
	leal	(%rax,%rdx), %esi
	movq	%r13, %rdx
	movq	%rsi, %rax
	imulq	%r9, %rsi
	imulq	%rsi, %rdx
	andl	$2147483647, %edx
	imulq	%r14, %rdx
	addq	%rsi, %rdx
	shrq	$31, %rdx
	subl	%r8d, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %edx
	xorl	%eax, %edx
	andl	%edi, %edx
	xorl	%eax, %edx
	subl	$1, %ecx
	jnb	.L6
	movl	%edx, %esi
	movq	%r13, %rax
	movl	$10, %ecx
	imulq	%rsi, %rax
	subl	%ebx, %ecx
	leaq	REV10(%rip), %rdi
	xorl	%ebx, %ebx
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	andl	%r8d, %edx
	addl	%eax, %edx
	movq	%r13, %rax
	movl	%edx, %edx
	imulq	(%rsp), %rdx
	imulq	%rdx, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	andl	%r8d, %edx
	leal	(%rax,%rdx), %esi
	movl	%ebp, %eax
	xorl	%edx, %edx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L35:
	movq	%rdx, %rbx
	salq	%cl, %rbx
	movzwl	(%rdi,%rbx,2), %ebx
.L8:
	movl	%ebp, (%r10,%rbx,4)
	imulq	%r9, %rbp
	addq	$1, %rdx
	movl	%eax, (%r11,%rbx,4)
	movq	%r13, %rbx
	imulq	%rsi, %rax
	imulq	%rbp, %rbx
	andl	$2147483647, %ebx
	imulq	%r14, %rbx
	addq	%rbp, %rbx
	shrq	$31, %rbx
	subl	%r8d, %ebx
	movl	%ebx, %ebp
	sarl	$31, %ebp
	andl	%r8d, %ebp
	addl	%ebx, %ebp
	movq	%rax, %rbx
	movq	%r13, %rax
	imulq	%rbx, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rbx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	%r8d, %ebx
	addl	%ebx, %eax
	cmpq	%rdx, %r12
	jne	.L35
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5531:
	.size	modp_mkgm2, .-modp_mkgm2
	.p2align 4
	.type	poly_big_to_fp, @function
poly_big_to_fp:
.LFB5550:
	.cfi_startproc
	movq	%rcx, %r10
	movq	%rdi, %r9
	movl	%r8d, %ecx
	testq	%rdx, %rdx
	je	.L67
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movsd	.LC1(%rip), %xmm3
	movq	%rdx, %rdi
	salq	$2, %r10
	movl	$8, %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movsd	.LC2(%rip), %xmm4
	leaq	0(,%rdx,4), %r11
	salq	%cl, %r8
	movsd	.LC3(%rip), %xmm5
	pxor	%xmm2, %xmm2
	movsd	.LC4(%rip), %xmm6
	movsd	.LC5(%rip), %xmm7
	addq	%r9, %r8
	movsd	.LC6(%rip), %xmm8
	movsd	.LC7(%rip), %xmm9
	movsd	.LC8(%rip), %xmm10
	movsd	.LC9(%rip), %xmm11
	.p2align 4,,10
	.p2align 3
.L39:
	movl	-4(%rsi,%r11), %eax
	movl	(%rsi), %edx
	pxor	%xmm0, %xmm0
	shrl	$30, %eax
	negl	%eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	shrl	%ecx
	andl	$1, %ebx
	xorl	%ecx, %edx
	addl	%ebx, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm0
	addsd	%xmm2, %xmm0
	cmpq	$1, %rdi
	je	.L38
	movl	4(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$2, %rdi
	je	.L38
	movl	8(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$3, %rdi
	je	.L38
	movl	12(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm5, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$4, %rdi
	je	.L38
	movl	16(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm6, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$5, %rdi
	je	.L38
	movl	20(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$6, %rdi
	je	.L38
	movl	24(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm8, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$7, %rdi
	je	.L38
	movl	28(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm9, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$8, %rdi
	je	.L38
	movl	32(%rsi), %edx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %edx
	addl	%ebp, %edx
	movl	%edx, %ebp
	movl	%edx, %ebx
	addl	%edx, %edx
	andl	$2147483647, %ebx
	andl	%eax, %edx
	shrl	$31, %ebp
	subl	%edx, %ebx
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm10, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	$10, %rdi
	jne	.L38
	xorl	36(%rsi), %ecx
	pxor	%xmm1, %xmm1
	addl	%ebp, %ecx
	movl	%ecx, %edx
	addl	%ecx, %ecx
	andl	$2147483647, %edx
	andl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm11, %xmm1
	addsd	%xmm1, %xmm0
.L38:
	movsd	%xmm0, (%r9)
	addq	$8, %r9
	addq	%r10, %rsi
	cmpq	%r8, %r9
	jne	.L39
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L67:
	.cfi_restore 3
	.cfi_restore 6
	movl	$8, %edx
	xorl	%esi, %esi
	salq	%cl, %rdx
	jmp	memset@PLT
	.cfi_endproc
.LFE5550:
	.size	poly_big_to_fp, .-poly_big_to_fp
	.p2align 4
	.type	poly_sub_scaled, @function
poly_sub_scaled:
.LFB5552:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$1, %ebx
	movl	72(%rsp), %r14d
	movq	%rcx, -8(%rsp)
	movl	80(%rsp), %ecx
	movq	%rdi, -32(%rsp)
	salq	%cl, %rbx
	leaq	0(,%rdx,4), %rcx
	movl	64(%rsp), %edx
	movq	%rcx, -56(%rsp)
	leaq	0(,%r8,4), %rcx
	movq	%rbx, -24(%rsp)
	subq	$1, %rbx
	movq	%rcx, -72(%rsp)
	leaq	0(,%r9,4), %rcx
	movq	%rcx, -80(%rsp)
	movq	%rbx, -96(%rsp)
	testq	%r8, %r8
	je	.L68
	cmpq	%rdx, %rsi
	jbe	.L68
	leaq	0(,%rdx,4), %rbx
	movq	%rdi, -16(%rsp)
	subq	%rdx, %rax
	movq	%r8, %r13
	movq	$0, -40(%rsp)
	movq	%rax, %r15
	movq	%rbx, -64(%rsp)
	movl	$31, %ebx
	subl	%r14d, %ebx
	.p2align 4,,10
	.p2align 3
.L76:
	movq	-40(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	-8(%rsp), %rbp
	movl	(%rcx,%rax,4), %edi
	movq	-16(%rsp), %rcx
	movq	%rax, %r12
	negl	%edi
	movq	%rcx, -104(%rsp)
	movl	%edi, -44(%rsp)
	movslq	%edi, %r11
	movq	-24(%rsp), %rdi
	addq	%rdi, %rax
	movq	%rax, -88(%rsp)
	.p2align 4,,10
	.p2align 3
.L75:
	movq	-72(%rsp), %rax
	xorl	%edx, %edx
	movq	-104(%rsp), %r9
	xorl	%esi, %esi
	addq	-64(%rsp), %r9
	xorl	%r8d, %r8d
	movslq	%edx, %rdi
	movl	-4(%rbp,%rax), %eax
	movl	%eax, %r10d
	movl	%eax, -48(%rsp)
	shrl	$30, %r10d
	negl	%r10d
	shrl	%r10d
	.p2align 4,,10
	.p2align 3
.L71:
	movl	%r10d, %edx
	cmpq	%rsi, %r13
	jbe	.L70
	movl	0(%rbp,%rsi,4), %edx
.L70:
	movl	%edx, %eax
	movl	%r14d, %ecx
	sall	%cl, %eax
	movl	%ebx, %ecx
	andl	$2147483647, %eax
	shrl	%cl, %edx
	orl	%r8d, %eax
	movl	%edx, %r8d
	movl	(%r9,%rsi,4), %edx
	imulq	%r11, %rax
	addq	%rdx, %rax
	leaq	(%rax,%rdi), %rdx
	movl	%edx, %eax
	shrq	$31, %rdx
	andl	$2147483647, %eax
	movslq	%edx, %rdi
	movl	%eax, (%r9,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %r15
	jne	.L71
	cmpq	%r12, -96(%rsp)
	je	.L85
	movq	-56(%rsp), %rcx
	addq	-80(%rsp), %rbp
	addq	$1, %r12
	addq	%rcx, -104(%rsp)
	cmpq	%r12, -88(%rsp)
	jne	.L75
.L74:
	addq	$1, -40(%rsp)
	movq	-56(%rsp), %rdi
	movq	-40(%rsp), %rax
	addq	%rdi, -16(%rsp)
	cmpq	%rax, -24(%rsp)
	jne	.L76
.L68:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
	movq	-96(%rsp), %rax
	negl	-44(%rsp)
	addq	-80(%rsp), %rbp
	leaq	1(%rax), %r12
	cmpq	-88(%rsp), %r12
	je	.L74
	movq	-32(%rsp), %rax
	movslq	-44(%rsp), %r11
	movq	%rax, -104(%rsp)
	jmp	.L75
	.cfi_endproc
.LFE5552:
	.size	poly_sub_scaled, .-poly_sub_scaled
	.p2align 4
	.type	poly_small_mkgauss, @function
poly_small_mkgauss:
.LFB5567:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %ecx
	leaq	gauss_1024_12289(%rip), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movabsq	$9223372036854775807, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%rsi, 56(%rsp)
	leaq	64(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	movl	$1, %eax
	movq	%rsi, 40(%rsp)
	movl	$0, 20(%rsp)
	salq	%cl, %rax
	movl	$10, %ecx
	subl	%edx, %ecx
	movl	$1, %edx
	leaq	-1(%rax), %rbx
	addq	%rsi, %rax
	sall	%cl, %edx
	movq	%rbx, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rax, 48(%rsp)
.L87:
	movq	40(%rsp), %rax
	subq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
.L97:
	movl	$0, 12(%rsp)
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L89:
	movl	$8, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	falcon_inner_i_shake256_extract@PLT
	movq	64(%rsp), %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movabsq	$-1283868770400643928, %rax
	movl	$8, %edx
	movq	%rcx, %rbx
	andq	%r12, %rcx
	addq	%rax, %rcx
	shrq	$63, %rbx
	shrq	$63, %rcx
	movl	%ecx, 8(%rsp)
	call	falcon_inner_i_shake256_extract@PLT
	movq	64(%rsp), %r10
	movl	8(%rsp), %ecx
	xorl	%edi, %edi
	movl	$1, %esi
	andq	%r12, %r10
	.p2align 4,,10
	.p2align 3
.L88:
	movq	%r10, %rdx
	subq	(%r15,%rsi,8), %rdx
	movl	%ecx, %eax
	shrq	$63, %rdx
	xorl	$1, %eax
	xorl	$1, %edx
	andl	%edx, %eax
	orl	%edx, %ecx
	negl	%eax
	andl	%esi, %eax
	addq	$1, %rsi
	orl	%eax, %edi
	cmpq	$27, %rsi
	jne	.L88
	movl	%ebx, %eax
	addl	$1, %r14d
	negl	%eax
	xorl	%edi, %eax
	addl	%ebx, %eax
	addl	%eax, 12(%rsp)
	cmpl	%r14d, 16(%rsp)
	ja	.L89
	movl	12(%rsp), %ebx
	leal	127(%rbx), %eax
	cmpl	$254, %eax
	ja	.L97
	movl	%ebx, %eax
	movq	32(%rsp), %rdi
	andl	$1, %eax
	cmpq	%rdi, 24(%rsp)
	jne	.L91
	cmpl	%eax, 20(%rsp)
	je	.L97
.L92:
	movq	40(%rsp), %rax
	movzbl	12(%rsp), %ebx
	addq	$1, %rax
	movb	%bl, -1(%rax)
	movq	%rax, 40(%rsp)
	cmpq	%rax, 48(%rsp)
	jne	.L87
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L99
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L91:
	.cfi_restore_state
	xorl	%eax, 20(%rsp)
	jmp	.L92
.L99:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5567:
	.size	poly_small_mkgauss, .-poly_small_mkgauss
	.p2align 4
	.type	modp_iNTT2_ext.part.0, @function
modp_iNTT2_ext.part.0:
.LFB5570:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r9d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r13, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$1, %ebx
	salq	%cl, %rbx
	movq	%rdi, -40(%rsp)
	movq	%rsi, -48(%rsp)
	movq	%rdx, -32(%rsp)
	movl	%ecx, -4(%rsp)
	movq	%rbx, -24(%rsp)
	movq	%rbx, -56(%rsp)
	cmpq	$1, %rsi
	jne	.L135
	.p2align 4,,10
	.p2align 3
.L101:
	movq	-48(%rsp), %rsi
	shrq	-56(%rsp)
	movq	-56(%rsp), %rdi
	movq	%rsi, %rbx
	addq	%rsi, %rsi
	movq	%rsi, -48(%rsp)
	leaq	0(,%rbx,4), %r15
	testq	%rbx, %rbx
	je	.L107
	movq	-32(%rsp), %rdx
	salq	$2, %rsi
	movq	-40(%rsp), %rbp
	movq	%rsi, -64(%rsp)
	leaq	(%rdx,%rdi,8), %rsi
	leaq	(%rdx,%rdi,4), %r12
	movq	%rsi, -72(%rsp)
	.p2align 4,,10
	.p2align 3
.L109:
	movl	(%r12), %r11d
	movq	%rbp, %r8
	leaq	(%r15,%rbp), %rdi
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L108:
	movl	(%r8), %edx
	movl	(%rdi), %esi
	addq	$1, %r9
	addq	$4, %r8
	addq	$4, %rdi
	leal	(%rsi,%rdx), %r10d
	subl	%esi, %edx
	subl	%eax, %r10d
	movl	%r10d, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%r10d, %ecx
	movl	%ecx, -4(%r8)
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%r11, %rcx
	movq	%rcx, %rdx
	imulq	%r14, %rdx
	andl	$2147483647, %edx
	imulq	%r13, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	%eax, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%ecx, %edx
	movl	%edx, -4(%rdi)
	cmpq	%rbx, %r9
	jne	.L108
	addq	$4, %r12
	addq	-64(%rsp), %rbp
	cmpq	%r12, -72(%rsp)
	jne	.L109
.L107:
	cmpq	$1, -56(%rsp)
	jne	.L101
	movzbl	-4(%rsp), %ecx
	movl	$-2147483648, %edi
	movq	-24(%rsp), %r9
	xorl	%esi, %esi
	movq	-40(%rsp), %r8
	shrl	%cl, %edi
	.p2align 4,,10
	.p2align 3
.L113:
	movl	(%r8), %ecx
	addq	$1, %rsi
	addq	$4, %r8
	imulq	%rdi, %rcx
	movq	%rcx, %rdx
	imulq	%r14, %rdx
	andl	$2147483647, %edx
	imulq	%r13, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	%eax, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%ecx, %edx
	movl	%edx, -4(%r8)
	cmpq	%rsi, %r9
	jne	.L113
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L135:
	.cfi_restore_state
	movq	%rbx, -48(%rsp)
	leaq	0(,%rsi,4), %r15
	movq	$1, -16(%rsp)
.L105:
	movq	-16(%rsp), %rdi
	movq	%r15, %rdx
	shrq	-48(%rsp)
	movq	-48(%rsp), %rsi
	movq	%rdi, %rbx
	addq	%rdi, %rdi
	imulq	%rbx, %rdx
	movq	%rdi, -16(%rsp)
	movq	%rdx, -72(%rsp)
	testq	%rbx, %rbx
	je	.L102
	imulq	%r15, %rdi
	movq	-32(%rsp), %rdx
	movq	-40(%rsp), %rbp
	leaq	(%rdx,%rsi,4), %r12
	movq	%rdi, -56(%rsp)
	leaq	(%rdx,%rsi,8), %rdi
	movq	%rdi, -64(%rsp)
	.p2align 4,,10
	.p2align 3
.L104:
	movq	-72(%rsp), %rsi
	movl	(%r12), %r11d
	movq	%rbp, %rdi
	xorl	%r9d, %r9d
	addq	%rbp, %rsi
	.p2align 4,,10
	.p2align 3
.L103:
	movl	(%rdi), %r10d
	movl	(%rsi), %r8d
	addq	$1, %r9
	leal	(%r10,%r8), %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%edx, %ecx
	movl	%r10d, %edx
	subl	%r8d, %edx
	movl	%ecx, (%rdi)
	addq	%r15, %rdi
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%r11, %rcx
	movq	%rcx, %rdx
	imulq	%r14, %rdx
	andl	$2147483647, %edx
	imulq	%r13, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	%eax, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rsi)
	addq	%r15, %rsi
	cmpq	%rbx, %r9
	jne	.L103
	addq	$4, %r12
	addq	-56(%rsp), %rbp
	cmpq	%r12, -64(%rsp)
	jne	.L104
.L102:
	cmpq	$1, -48(%rsp)
	jne	.L105
	movzbl	-4(%rsp), %ecx
	movl	$-2147483648, %esi
	movq	-40(%rsp), %r8
	shrl	%cl, %esi
	xorl	%ecx, %ecx
.L111:
	movl	(%r8), %edi
	addq	$1, %rcx
	imulq	%rsi, %rdi
	movq	%rdi, %rdx
	imulq	%r14, %rdx
	andl	$2147483647, %edx
	imulq	%r13, %rdx
	addq	%rdi, %rdx
	shrq	$31, %rdx
	subl	%eax, %edx
	movl	%edx, %edi
	sarl	$31, %edi
	andl	%eax, %edi
	addl	%edi, %edx
	movl	%edx, (%r8)
	addq	%r15, %r8
	cmpq	%rcx, -24(%rsp)
	jne	.L111
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5570:
	.size	modp_iNTT2_ext.part.0, .-modp_iNTT2_ext.part.0
	.p2align 4
	.type	modp_NTT2_ext.part.0.constprop.0, @function
modp_NTT2_ext.part.0.constprop.0:
.LFB5578:
	.cfi_startproc
	movdqa	.LC10(%rip), %xmm9
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	movl	%ecx, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %ecx
	movl	%r8d, %r14d
	movq	%r15, %xmm5
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	salq	%cl, %rax
	movq	%r14, %xmm6
	punpcklqdq	%xmm5, %xmm5
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	punpcklqdq	%xmm6, %xmm6
	movdqa	%xmm5, %xmm8
	movq	%r15, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movdqa	%xmm6, %xmm10
	psrlq	$32, %xmm8
	movq	%rax, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	psrlq	$32, %xmm10
	movq	%rdi, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	$1, -48(%rsp)
	.p2align 4,,10
	.p2align 3
.L144:
	movq	%r12, %rdx
	shrq	%r12
	leaq	0(,%r12,4), %rax
	je	.L137
	movq	-16(%rsp), %rbx
	movq	-48(%rsp), %rsi
	leaq	16(%rax), %r11
	leaq	0(,%rdx,4), %rdi
	shrq	$3, %rdx
	movq	%rdi, -96(%rsp)
	movd	%r13d, %xmm7
	movl	$16, %r10d
	leaq	(%rbx,%rsi,4), %rbp
	leaq	(%rbx,%rsi,8), %rbx
	pshufd	$0, %xmm7, %xmm4
	movq	%rdx, %r9
	movq	%rbx, -88(%rsp)
	leaq	0(,%rdx,4), %rbx
	salq	$4, %r9
	leaq	1(%rbx), %rdx
	movq	%rbx, -72(%rsp)
	addq	$2, %rbx
	movq	%rbx, -56(%rsp)
	movq	-24(%rsp), %rbx
	movq	%rdx, -64(%rsp)
	subq	$16, %rbx
	addq	%rbx, %rax
	movq	%rbx, -112(%rsp)
	movq	%rax, -104(%rsp)
	leaq	-1(%r12), %rax
	movq	%rax, -80(%rsp)
	.p2align 4,,10
	.p2align 3
.L141:
	movq	-112(%rsp), %rax
	leaq	-16(%r11), %rsi
	movq	-104(%rsp), %rbx
	movl	0(%rbp), %ecx
	addq	%r10, %rax
	cmpq	%rsi, %r10
	leaq	-16(%r10), %rsi
	setle	%dil
	cmpq	%rsi, %r11
	leaq	(%rbx,%r10), %rdx
	movl	%ecx, %ebx
	setle	%sil
	orb	%dil, %sil
	je	.L159
	cmpq	$3, -80(%rsp)
	jbe	.L159
	movd	%ecx, %xmm7
	movq	-112(%rsp), %rsi
	xorl	%ecx, %ecx
	pshufd	$0, %xmm7, %xmm7
	movdqa	%xmm7, %xmm11
	addq	%r11, %rsi
	punpckldq	%xmm7, %xmm11
	punpckhdq	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L139:
	movdqu	(%rsi,%rcx), %xmm1
	movdqa	%xmm10, %xmm12
	movdqu	(%rax,%rcx), %xmm3
	movdqa	%xmm1, %xmm13
	punpckldq	%xmm1, %xmm13
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm11, %xmm13
	pmuludq	%xmm7, %xmm1
	movdqa	%xmm13, %xmm0
	pmuludq	%xmm13, %xmm12
	movdqa	%xmm13, %xmm2
	psrlq	$32, %xmm0
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm6, %xmm0
	paddq	%xmm12, %xmm0
	psllq	$32, %xmm0
	paddq	%xmm0, %xmm2
	pand	%xmm9, %xmm2
	movdqa	%xmm2, %xmm12
	movdqa	%xmm2, %xmm0
	psrlq	$32, %xmm12
	pmuludq	%xmm8, %xmm2
	pmuludq	%xmm5, %xmm12
	pmuludq	%xmm5, %xmm0
	paddq	%xmm2, %xmm12
	movdqa	%xmm1, %xmm2
	psllq	$32, %xmm12
	pmuludq	%xmm6, %xmm2
	paddq	%xmm12, %xmm0
	movdqa	%xmm1, %xmm12
	paddq	%xmm13, %xmm0
	psrlq	$32, %xmm12
	movdqa	%xmm10, %xmm13
	pmuludq	%xmm1, %xmm13
	pmuludq	%xmm6, %xmm12
	psrlq	$31, %xmm0
	paddq	%xmm13, %xmm12
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm2
	pand	%xmm9, %xmm2
	movdqa	%xmm2, %xmm13
	movdqa	%xmm2, %xmm12
	psrlq	$32, %xmm13
	pmuludq	%xmm8, %xmm2
	pmuludq	%xmm5, %xmm13
	pmuludq	%xmm5, %xmm12
	paddq	%xmm2, %xmm13
	movdqa	%xmm12, %xmm2
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm2
	paddq	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	psrlq	$31, %xmm1
	psubd	%xmm4, %xmm2
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psubd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pand	%xmm4, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm0, %xmm2
	psubd	%xmm0, %xmm3
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm4, %xmm1
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rax,%rcx)
	movdqa	%xmm3, %xmm1
	psrad	$31, %xmm3
	pand	%xmm4, %xmm3
	paddd	%xmm1, %xmm3
	movups	%xmm3, (%rsi,%rcx)
	addq	$16, %rcx
	cmpq	%r9, %rcx
	jne	.L139
	addq	%r9, %rax
	addq	%r9, %rdx
	cmpq	-72(%rsp), %r12
	je	.L143
	movl	(%rdx), %edi
	movl	(%rax), %esi
	imulq	%rbx, %rdi
	movq	%rdi, %rcx
	imulq	%r14, %rcx
	andl	$2147483647, %ecx
	imulq	%r15, %rcx
	addq	%rdi, %rcx
	shrq	$31, %rcx
	subl	%r13d, %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %ecx
	movl	%esi, %edi
	subl	%r13d, %edi
	subl	%ecx, %esi
	addl	%ecx, %edi
	movl	%esi, %ecx
	movl	%edi, %r8d
	sarl	$31, %ecx
	sarl	$31, %r8d
	andl	%r13d, %ecx
	andl	%r13d, %r8d
	addl	%ecx, %esi
	addl	%r8d, %edi
	movl	%edi, (%rax)
	movl	%esi, (%rdx)
	cmpq	-64(%rsp), %r12
	jbe	.L143
	movl	4(%rdx), %edi
	movq	%r14, %rcx
	movl	4(%rax), %esi
	imulq	%rbx, %rdi
	imulq	%rdi, %rcx
	andl	$2147483647, %ecx
	imulq	%r15, %rcx
	addq	%rdi, %rcx
	shrq	$31, %rcx
	subl	%r13d, %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %ecx
	movl	%esi, %edi
	subl	%r13d, %edi
	subl	%ecx, %esi
	addl	%ecx, %edi
	movl	%esi, %ecx
	movl	%edi, %r8d
	sarl	$31, %ecx
	sarl	$31, %r8d
	andl	%r13d, %ecx
	andl	%r13d, %r8d
	addl	%ecx, %esi
	addl	%r8d, %edi
	movl	%edi, 4(%rax)
	movl	%esi, 4(%rdx)
	cmpq	-56(%rsp), %r12
	jbe	.L143
	movl	8(%rdx), %edi
	movl	8(%rax), %esi
	imulq	%rbx, %rdi
	movl	%esi, %r8d
	subl	%r13d, %r8d
	movq	%rdi, %rcx
	imulq	%r14, %rcx
	andl	$2147483647, %ecx
	imulq	%r15, %rcx
	addq	%rcx, %rdi
	shrq	$31, %rdi
	subl	%r13d, %edi
	movl	%edi, %ecx
	sarl	$31, %ecx
	andl	%r13d, %ecx
	addl	%edi, %ecx
	addl	%ecx, %r8d
	subl	%ecx, %esi
	movl	%r8d, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%r8d, %edi
	movl	%edi, 8(%rax)
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%esi, %eax
	movl	%eax, 8(%rdx)
.L143:
	movq	-96(%rsp), %rax
	addq	$4, %rbp
	addq	%rax, %r11
	addq	%rax, %r10
	cmpq	-88(%rsp), %rbp
	jne	.L141
.L137:
	salq	-48(%rsp)
	movq	-48(%rsp), %rax
	cmpq	%rax, -32(%rsp)
	ja	.L144
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	.cfi_restore_state
	movq	-104(%rsp), %rsi
	movq	%r12, -40(%rsp)
	addq	%r11, %rsi
	movq	%rsi, %r12
	.p2align 4,,10
	.p2align 3
.L149:
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	addq	$4, %rdx
	addq	$4, %rax
	imulq	%rbx, %rcx
	movl	%esi, %r8d
	subl	%r13d, %r8d
	movq	%rcx, %rdi
	imulq	%r14, %rdi
	andl	$2147483647, %edi
	imulq	%r15, %rdi
	addq	%rcx, %rdi
	shrq	$31, %rdi
	subl	%r13d, %edi
	movl	%edi, %ecx
	sarl	$31, %ecx
	andl	%r13d, %ecx
	addl	%edi, %ecx
	addl	%ecx, %r8d
	subl	%ecx, %esi
	movl	%r8d, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%r8d, %edi
	movl	%edi, -4(%rax)
	movl	%esi, %edi
	sarl	$31, %esi
	andl	%r13d, %esi
	leal	(%rsi,%rdi), %esi
	movl	%esi, -4(%rdx)
	cmpq	%r12, %rdx
	jne	.L149
	movq	-40(%rsp), %r12
	jmp	.L143
	.cfi_endproc
.LFE5578:
	.size	modp_NTT2_ext.part.0.constprop.0, .-modp_NTT2_ext.part.0.constprop.0
	.p2align 4
	.type	modp_iNTT2_ext.part.0.constprop.0, @function
modp_iNTT2_ext.part.0.constprop.0:
.LFB5577:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r14, %xmm5
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	punpcklqdq	%xmm5, %xmm5
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movdqa	%xmm5, %xmm9
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	psrlq	$32, %xmm9
	movl	%edx, %ecx
	salq	%cl, %rax
	movq	%rbx, %xmm4
	movd	%ebx, %xmm7
	movq	%rbx, %r15
	punpcklqdq	%xmm4, %xmm4
	pshufd	$0, %xmm7, %xmm3
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	movdqa	%xmm4, %xmm7
	movdqa	.LC10(%rip), %xmm8
	movq	%rdi, -8(%rsp)
	psrlq	$32, %xmm7
	movq	%rsi, (%rsp)
	movl	%edx, 20(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, -56(%rsp)
	movq	%rax, -32(%rsp)
	movq	$1, -16(%rsp)
	.p2align 4,,10
	.p2align 3
.L168:
	movq	-16(%rsp), %rbx
	shrq	-32(%rsp)
	movq	-32(%rsp), %rdi
	movq	%rbx, %rbp
	addq	%rbx, %rbx
	movq	%rbx, -16(%rsp)
	leaq	0(,%rbp,4), %rax
	testq	%rbp, %rbp
	je	.L161
	movq	(%rsp), %rsi
	salq	$2, %rbx
	movq	%rbp, %r11
	movl	$16, %r9d
	movq	%rbx, -104(%rsp)
	leaq	16(%rax), %rbx
	shrq	$2, %r11
	leaq	(%rsi,%rdi,4), %r13
	leaq	(%rsi,%rdi,8), %rdi
	movq	%rdi, -112(%rsp)
	movq	%rbp, %rdi
	andq	$-4, %rdi
	leaq	0(,%rdi,4), %rsi
	movq	%rdi, -64(%rsp)
	movq	%rsi, -72(%rsp)
	leaq	1(%rdi), %rsi
	addq	$2, %rdi
	movq	%rdi, -40(%rsp)
	movq	-8(%rsp), %rdi
	movq	%rsi, -48(%rsp)
	subq	$16, %rdi
	addq	%rdi, %rax
	movq	%rdi, -88(%rsp)
	movq	%rax, -96(%rsp)
	leaq	-1(%rbp), %rax
	movq	%rax, -80(%rsp)
	.p2align 4,,10
	.p2align 3
.L165:
	movq	-96(%rsp), %rdi
	leaq	-16(%rbx), %rcx
	movq	-88(%rsp), %r10
	movl	0(%r13), %r12d
	addq	%r9, %rdi
	cmpq	%r9, %rcx
	leaq	-16(%r9), %rcx
	setge	%sil
	cmpq	%rbx, %rcx
	leaq	(%r10,%r9), %rax
	setge	%cl
	orb	%sil, %cl
	je	.L172
	cmpq	$3, -80(%rsp)
	jbe	.L172
	movd	%r12d, %xmm6
	leaq	(%r10,%rbx), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	pshufd	$0, %xmm6, %xmm6
	movdqa	%xmm6, %xmm10
	punpckldq	%xmm6, %xmm10
	punpckhdq	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L163:
	movdqu	(%rax,%rdx), %xmm1
	movdqu	(%rsi,%rdx), %xmm11
	movdqa	%xmm9, %xmm12
	addq	$1, %rcx
	movdqa	%xmm1, %xmm2
	psubd	%xmm11, %xmm1
	paddd	%xmm11, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	psrad	$31, %xmm0
	pand	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%rax,%rdx)
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pand	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm11
	punpckldq	%xmm0, %xmm11
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm10, %xmm11
	pmuludq	%xmm6, %xmm0
	movdqa	%xmm11, %xmm1
	pmuludq	%xmm11, %xmm12
	movdqa	%xmm11, %xmm2
	psrlq	$32, %xmm1
	pmuludq	%xmm5, %xmm2
	pmuludq	%xmm5, %xmm1
	paddq	%xmm12, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm2, %xmm12
	movdqa	%xmm2, %xmm1
	psrlq	$32, %xmm12
	pmuludq	%xmm7, %xmm2
	pmuludq	%xmm4, %xmm12
	pmuludq	%xmm4, %xmm1
	paddq	%xmm2, %xmm12
	movdqa	%xmm0, %xmm2
	psllq	$32, %xmm12
	pmuludq	%xmm5, %xmm2
	paddq	%xmm12, %xmm1
	movdqa	%xmm9, %xmm12
	paddq	%xmm11, %xmm1
	pmuludq	%xmm0, %xmm12
	movdqa	%xmm0, %xmm11
	psrlq	$32, %xmm11
	psrlq	$31, %xmm1
	pmuludq	%xmm5, %xmm11
	paddq	%xmm12, %xmm11
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm2, %xmm12
	movdqa	%xmm2, %xmm11
	psrlq	$32, %xmm12
	pmuludq	%xmm7, %xmm2
	pmuludq	%xmm4, %xmm12
	pmuludq	%xmm4, %xmm11
	paddq	%xmm2, %xmm12
	movdqa	%xmm11, %xmm2
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$31, %xmm0
	shufps	$136, %xmm0, %xmm1
	psubd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pand	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%rsi,%rdx)
	addq	$16, %rdx
	cmpq	%rcx, %r11
	jne	.L163
	movq	-72(%rsp), %rsi
	addq	%rsi, %rax
	addq	%rsi, %rdi
	cmpq	-64(%rsp), %rbp
	je	.L167
	movl	(%rax), %ecx
	movl	(%rdi), %r8d
	movq	-56(%rsp), %r10
	leal	(%rcx,%r8), %edx
	subl	%r8d, %ecx
	subl	%r15d, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %edx
	movl	%edx, (%rax)
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	%r15d, %edx
	addl	%edx, %ecx
	movq	%r14, %rdx
	movl	%ecx, %ecx
	imulq	%r12, %rcx
	imulq	%rcx, %rdx
	andl	$2147483647, %edx
	imulq	%r10, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	%r15d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	cmpq	-48(%rsp), %rbp
	jbe	.L167
	movl	4(%rax), %ecx
	movl	4(%rdi), %r8d
	leal	(%rcx,%r8), %edx
	subl	%r8d, %ecx
	subl	%r15d, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %edx
	movl	%edx, 4(%rax)
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	%r15d, %edx
	addl	%edx, %ecx
	movq	%r14, %rdx
	movl	%ecx, %ecx
	imulq	%r12, %rcx
	imulq	%rcx, %rdx
	andl	$2147483647, %edx
	imulq	%r10, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	%r15d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	addl	%ecx, %edx
	movl	%edx, 4(%rdi)
	cmpq	-40(%rsp), %rbp
	jbe	.L167
	movl	8(%rax), %edx
	movl	8(%rdi), %r8d
	leal	(%r8,%rdx), %esi
	subl	%r8d, %edx
	subl	%r15d, %esi
	movl	%esi, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	addl	%esi, %ecx
	movl	%ecx, 8(%rax)
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r15d, %eax
	addl	%eax, %edx
	movl	%edx, %edx
	imulq	%r12, %rdx
	movq	%rdx, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%r10, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	cltd
	andl	%r15d, %edx
	addl	%eax, %edx
	movl	%edx, 8(%rdi)
.L167:
	movq	-104(%rsp), %rax
	addq	$4, %r13
	addq	%rax, %rbx
	addq	%rax, %r9
	cmpq	%r13, -112(%rsp)
	jne	.L165
.L161:
	cmpq	$1, -32(%rsp)
	jne	.L168
	movzbl	20(%rsp), %ecx
	movq	8(%rsp), %rbx
	movl	$-2147483648, %eax
	shrl	%cl, %eax
	movl	%eax, %ecx
	leaq	-1(%rbx), %rax
	movq	%rcx, %xmm5
	cmpq	$6, %rax
	jbe	.L173
	movq	%r14, %xmm4
	pshufd	$0, %xmm5, %xmm5
	shrq	$2, %rbx
	xorl	%edx, %edx
	movq	-56(%rsp), %xmm3
	movd	%r15d, %xmm7
	punpcklqdq	%xmm4, %xmm4
	movq	%rbx, %rsi
	movdqa	%xmm5, %xmm10
	pshufd	$0, %xmm7, %xmm9
	movq	-8(%rsp), %rax
	movdqa	%xmm4, %xmm7
	punpcklqdq	%xmm3, %xmm3
	psrlq	$32, %xmm7
	punpckldq	%xmm5, %xmm10
	movdqa	.LC10(%rip), %xmm8
	movdqa	%xmm3, %xmm6
	punpckhdq	%xmm5, %xmm5
	psrlq	$32, %xmm6
.L170:
	movdqu	(%rax), %xmm1
	movdqa	%xmm7, %xmm0
	movdqa	%xmm4, %xmm2
	addq	$1, %rdx
	addq	$16, %rax
	movdqa	%xmm1, %xmm12
	punpckldq	%xmm1, %xmm12
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm10, %xmm12
	pmuludq	%xmm5, %xmm1
	pmuludq	%xmm12, %xmm0
	pmuludq	%xmm12, %xmm2
	movdqa	%xmm12, %xmm11
	psrlq	$32, %xmm11
	pmuludq	%xmm4, %xmm11
	paddq	%xmm11, %xmm0
	psllq	$32, %xmm0
	paddq	%xmm0, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm2, %xmm11
	movdqa	%xmm2, %xmm0
	psrlq	$32, %xmm11
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm3, %xmm11
	pmuludq	%xmm3, %xmm0
	paddq	%xmm2, %xmm11
	movdqa	%xmm4, %xmm2
	psllq	$32, %xmm11
	pmuludq	%xmm1, %xmm2
	paddq	%xmm11, %xmm0
	movdqa	%xmm7, %xmm11
	paddq	%xmm12, %xmm0
	pmuludq	%xmm1, %xmm11
	movdqa	%xmm1, %xmm12
	psrlq	$32, %xmm12
	psrlq	$31, %xmm0
	pmuludq	%xmm4, %xmm12
	paddq	%xmm12, %xmm11
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm2, %xmm12
	movdqa	%xmm2, %xmm11
	psrlq	$32, %xmm12
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm3, %xmm12
	pmuludq	%xmm3, %xmm11
	paddq	%xmm2, %xmm12
	movdqa	%xmm11, %xmm2
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm2
	paddq	%xmm2, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm0
	psubd	%xmm9, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm9, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rsi, %rdx
	jne	.L170
	movq	8(%rsp), %rax
	movq	-8(%rsp), %rbx
	movq	%rax, %rdx
	andq	$-4, %rdx
	leaq	(%rbx,%rdx,4), %rbx
	movq	%rbx, -8(%rsp)
	cmpq	%rdx, %rax
	je	.L160
.L169:
	movq	-8(%rsp), %rbx
	movq	-56(%rsp), %rdi
	movq	8(%rsp), %r11
	movl	(%rbx), %esi
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, (%rbx)
	leaq	1(%rdx), %rax
	cmpq	%rax, %r11
	jbe	.L160
	movl	4(%rbx), %esi
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, 4(%rbx)
	leaq	2(%rdx), %rax
	cmpq	%rax, %r11
	jbe	.L160
	movl	8(%rbx), %esi
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, 8(%rbx)
	leaq	3(%rdx), %rax
	cmpq	%rax, %r11
	jbe	.L160
	movl	12(%rbx), %esi
	movq	%r14, %rax
	imulq	%rcx, %rsi
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, 12(%rbx)
	leaq	4(%rdx), %rax
	cmpq	%rax, %r11
	jbe	.L160
	movl	16(%rbx), %esi
	movq	%r14, %rax
	imulq	%rcx, %rsi
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, 16(%rbx)
	leaq	5(%rdx), %rax
	cmpq	%rax, %r11
	jbe	.L160
	movl	20(%rbx), %esi
	movq	%r14, %rax
	addq	$6, %rdx
	imulq	%rcx, %rsi
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %eax
	movl	%eax, 20(%rbx)
	cmpq	%rdx, %r11
	jbe	.L160
	movl	24(%rbx), %edx
	movq	%r14, %rax
	imulq	%rcx, %rdx
	imulq	%rdx, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r15d, %eax
	cltd
	andl	%r15d, %edx
	addl	%edx, %eax
	movl	%eax, 24(%rbx)
.L160:
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L172:
	.cfi_restore_state
	movq	%r9, -24(%rsp)
	movq	-56(%rsp), %r9
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L162:
	movl	(%rax,%rdx,4), %ecx
	movl	(%rdi,%rdx,4), %r10d
	leal	(%r10,%rcx), %r8d
	subl	%r10d, %ecx
	subl	%r15d, %r8d
	movl	%r8d, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%r8d, %esi
	movl	%esi, (%rax,%rdx,4)
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%ecx, %esi
	movl	%esi, %esi
	imulq	%r12, %rsi
	movq	%rsi, %rcx
	imulq	%r14, %rcx
	andl	$2147483647, %ecx
	imulq	%r9, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	%r15d, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	addl	%esi, %ecx
	movl	%ecx, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rbp
	jne	.L162
	movq	-24(%rsp), %r9
	jmp	.L167
.L173:
	xorl	%edx, %edx
	jmp	.L169
	.cfi_endproc
.LFE5577:
	.size	modp_iNTT2_ext.part.0.constprop.0, .-modp_iNTT2_ext.part.0.constprop.0
	.p2align 4
	.type	modp_iNTT2_ext.part.0.constprop.1, @function
modp_iNTT2_ext.part.0.constprop.1:
.LFB5576:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	movl	%r8d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r15, %xmm4
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	punpcklqdq	%xmm4, %xmm4
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	movl	%edx, %ecx
	movdqa	%xmm4, %xmm8
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	salq	%cl, %rax
	movq	%r12, %xmm3
	movd	%r12d, %xmm7
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	punpcklqdq	%xmm3, %xmm3
	pshufd	$0, %xmm7, %xmm2
	movq	%r12, %r14
	movdqa	%xmm3, %xmm6
	psrlq	$32, %xmm8
	psrlq	$32, %xmm6
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movdqa	.LC10(%rip), %xmm7
	movq	%rdi, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%edx, 4(%rsp)
	movq	%rax, -8(%rsp)
	movq	%rax, -40(%rsp)
	movq	$1, -32(%rsp)
	.p2align 4,,10
	.p2align 3
.L197:
	movq	-32(%rsp), %rbx
	shrq	-40(%rsp)
	movq	-40(%rsp), %rdx
	movq	%rbx, %rbp
	addq	%rbx, %rbx
	movq	%rbx, -32(%rsp)
	leaq	0(,%rbp,8), %rax
	testq	%rbp, %rbp
	je	.L191
	movq	-16(%rsp), %rsi
	leaq	0(,%rbx,8), %r13
	leaq	28(%rax), %rbx
	movl	$28, %r11d
	movq	%rbx, -112(%rsp)
	leaq	(%rsi,%rdx,4), %rdi
	movq	%rdi, -120(%rsp)
	movq	-24(%rsp), %rdi
	leaq	(%rdi,%rax), %rbx
	leaq	-28(%rdi,%rax), %rax
	movq	%rdi, %r8
	movq	%rbx, -104(%rsp)
	leaq	(%rsi,%rdx,8), %rbx
	leaq	-1(%rbp), %rdx
	movq	%rbx, -96(%rsp)
	movq	%rdx, %rbx
	movq	%rdx, -80(%rsp)
	andq	$-4, %rdx
	shrq	$2, %rbx
	leaq	0(,%rdx,8), %rsi
	movq	%rax, -88(%rsp)
	movq	%rsi, -72(%rsp)
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rsp)
	leaq	2(%rdx), %rsi
	addq	$3, %rdx
	movq	%rsi, -56(%rsp)
	movq	%rdx, -48(%rsp)
	.p2align 4,,10
	.p2align 3
.L195:
	movq	-112(%rsp), %rdi
	movq	-88(%rsp), %rdx
	movq	-120(%rsp), %rax
	leaq	-28(%rdi), %rcx
	addq	%r11, %rdx
	cmpq	%r11, %rcx
	leaq	-28(%r11), %rcx
	movl	(%rax), %r9d
	setge	%sil
	cmpq	%rdi, %rcx
	setge	%cl
	orb	%sil, %cl
	je	.L199
	cmpq	$5, -80(%rsp)
	jbe	.L199
	movd	%r9d, %xmm5
	movq	-104(%rsp), %rcx
	movq	%r8, %rax
	xorl	%esi, %esi
	pshufd	$0, %xmm5, %xmm5
	movdqa	%xmm5, %xmm9
	punpckldq	%xmm5, %xmm9
	punpckhdq	%xmm5, %xmm5
	.p2align 4,,10
	.p2align 3
.L193:
	movdqu	(%rax), %xmm0
	addq	$1, %rsi
	addq	$32, %rax
	addq	$32, %rcx
	movdqu	-16(%rax), %xmm1
	movdqu	-32(%rcx), %xmm10
	movdqa	%xmm8, %xmm12
	shufps	$136, %xmm1, %xmm0
	movdqu	-16(%rcx), %xmm1
	shufps	$136, %xmm1, %xmm10
	movdqa	%xmm10, %xmm11
	paddd	%xmm0, %xmm11
	psubd	%xmm10, %xmm0
	psubd	%xmm2, %xmm11
	movdqa	%xmm11, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm11, %xmm1
	pshufd	$85, %xmm1, %xmm11
	movd	%xmm1, -32(%rax)
	movd	%xmm11, -24(%rax)
	movdqa	%xmm1, %xmm11
	punpckhdq	%xmm1, %xmm11
	pshufd	$255, %xmm1, %xmm1
	movd	%xmm1, -8(%rax)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm0
	pand	%xmm2, %xmm0
	movd	%xmm11, -16(%rax)
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm11
	punpckldq	%xmm0, %xmm11
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm9, %xmm11
	pmuludq	%xmm5, %xmm0
	movdqa	%xmm11, %xmm1
	pmuludq	%xmm11, %xmm12
	movdqa	%xmm11, %xmm10
	psrlq	$32, %xmm1
	pmuludq	%xmm4, %xmm10
	pmuludq	%xmm4, %xmm1
	paddq	%xmm12, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm10
	pand	%xmm7, %xmm10
	movdqa	%xmm10, %xmm12
	movdqa	%xmm10, %xmm1
	psrlq	$32, %xmm12
	pmuludq	%xmm6, %xmm10
	pmuludq	%xmm3, %xmm12
	pmuludq	%xmm3, %xmm1
	paddq	%xmm10, %xmm12
	movdqa	%xmm0, %xmm10
	psllq	$32, %xmm12
	pmuludq	%xmm4, %xmm10
	paddq	%xmm12, %xmm1
	movdqa	%xmm8, %xmm12
	paddq	%xmm11, %xmm1
	pmuludq	%xmm0, %xmm12
	movdqa	%xmm0, %xmm11
	psrlq	$32, %xmm11
	psrlq	$31, %xmm1
	pmuludq	%xmm4, %xmm11
	paddq	%xmm12, %xmm11
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm10
	pand	%xmm7, %xmm10
	movdqa	%xmm10, %xmm12
	movdqa	%xmm10, %xmm11
	psrlq	$32, %xmm12
	pmuludq	%xmm6, %xmm10
	pmuludq	%xmm3, %xmm12
	pmuludq	%xmm3, %xmm11
	paddq	%xmm10, %xmm12
	movdqa	%xmm11, %xmm10
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm10
	paddq	%xmm10, %xmm0
	psrlq	$31, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psubd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0
	movd	%xmm1, -32(%rcx)
	movd	%xmm0, -24(%rcx)
	movdqa	%xmm1, %xmm0
	punpckhdq	%xmm1, %xmm0
	pshufd	$255, %xmm1, %xmm1
	movd	%xmm0, -16(%rcx)
	movd	%xmm1, -8(%rcx)
	cmpq	%rsi, %rbx
	jne	.L193
	movq	-72(%rsp), %rdi
	leaq	(%r8,%rdi), %rax
	addq	%rdi, %rdx
	movl	(%rax), %esi
	movl	(%rdx), %r10d
	movl	%esi, %ecx
	subl	%r10d, %esi
	subl	%r14d, %ecx
	addl	%r10d, %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%r14d, %edi
	addl	%edi, %ecx
	movl	%ecx, (%rax)
	movl	%esi, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %esi
	movl	%esi, %esi
	imulq	%r9, %rsi
	movq	%rsi, %rcx
	imulq	%r15, %rcx
	andl	$2147483647, %ecx
	imulq	%r12, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	%r14d, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%esi, %ecx
	movl	%ecx, (%rdx)
	cmpq	-64(%rsp), %rbp
	jbe	.L196
	movl	8(%rax), %esi
	movl	8(%rdx), %r10d
	movl	%esi, %ecx
	subl	%r10d, %esi
	subl	%r14d, %ecx
	addl	%r10d, %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%r14d, %edi
	addl	%edi, %ecx
	movl	%ecx, 8(%rax)
	movl	%esi, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %esi
	movq	%r15, %rcx
	movl	%esi, %esi
	imulq	%r9, %rsi
	imulq	%rsi, %rcx
	andl	$2147483647, %ecx
	imulq	%r12, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	%r14d, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%esi, %ecx
	movl	%ecx, 8(%rdx)
	cmpq	-56(%rsp), %rbp
	jbe	.L196
	movl	16(%rax), %esi
	movl	16(%rdx), %r10d
	movl	%esi, %ecx
	subl	%r10d, %esi
	subl	%r14d, %ecx
	addl	%r10d, %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%r14d, %edi
	addl	%edi, %ecx
	movl	%ecx, 16(%rax)
	movl	%esi, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %esi
	movq	%r15, %rcx
	movl	%esi, %esi
	imulq	%r9, %rsi
	imulq	%rsi, %rcx
	andl	$2147483647, %ecx
	imulq	%r12, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	%r14d, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%esi, %ecx
	movl	%ecx, 16(%rdx)
	cmpq	-48(%rsp), %rbp
	jbe	.L196
	movl	24(%rax), %ecx
	movl	24(%rdx), %r10d
	movl	%ecx, %edi
	subl	%r10d, %ecx
	subl	%r14d, %edi
	addl	%r10d, %edi
	movl	%edi, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%edi, %esi
	movl	%esi, 24(%rax)
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	imulq	%r15, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rdx)
.L196:
	addq	$4, -120(%rsp)
	addq	%r13, %r11
	movq	-120(%rsp), %rax
	addq	%r13, %r8
	addq	%r13, -112(%rsp)
	addq	%r13, -104(%rsp)
	cmpq	-96(%rsp), %rax
	jne	.L195
.L191:
	cmpq	$1, -40(%rsp)
	jne	.L197
	movzbl	4(%rsp), %ecx
	movl	$-2147483648, %esi
	movq	-8(%rsp), %r8
	xorl	%edx, %edx
	movq	-24(%rsp), %rdi
	shrl	%cl, %esi
	.p2align 4,,10
	.p2align 3
.L198:
	movl	(%rdi,%rdx,8), %ecx
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	imulq	%r15, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdi,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L198
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L199:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L192:
	movl	(%r8,%rax,8), %ecx
	movl	(%rdx,%rax,8), %edi
	leal	(%rdi,%rcx), %r10d
	subl	%edi, %ecx
	subl	%r14d, %r10d
	movl	%r10d, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%r10d, %esi
	movl	%esi, (%r8,%rax,8)
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%ecx, %esi
	movl	%esi, %esi
	imulq	%r9, %rsi
	movq	%rsi, %rcx
	imulq	%r15, %rcx
	andl	$2147483647, %ecx
	imulq	%r12, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	%r14d, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%esi, %ecx
	movl	%ecx, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L192
	jmp	.L196
	.cfi_endproc
.LFE5576:
	.size	modp_iNTT2_ext.part.0.constprop.1, .-modp_iNTT2_ext.part.0.constprop.1
	.p2align 4
	.type	zint_rebuild_CRT.constprop.3, @function
zint_rebuild_CRT.constprop.3:
.LFB5579:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r8, %r9
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	$2147473409, (%r8)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, (%rsp)
	cmpq	$1, %rsi
	jbe	.L227
	movq	%rdx, %rax
	movq	%rdi, 48(%rsp)
	leaq	4(%r8), %rbp
	movl	$1, %r14d
	salq	$2, %rax
	movq	%rax, 56(%rsp)
	leaq	12+PRIMES(%rip), %rax
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L226:
	movq	24(%rsp), %rax
	movl	$2, %edx
	leaq	0(,%r14,4), %r15
	movl	(%rax), %r11d
	movl	8(%rax), %r12d
	movl	$2, %eax
	subl	%r11d, %eax
	movl	%r11d, %ecx
	movl	%r11d, %r10d
	movl	%r11d, %edi
	imull	%eax, %ecx
	movq	%r11, %r8
	subl	%ecx, %edx
	movl	%r11d, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	movl	%r11d, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	imull	%eax, %r10d
	subl	$2, %r10d
	imull	%eax, %r10d
	andl	$2147483647, %r10d
	movl	%r10d, %esi
	call	modp_R2
	cmpq	$0, (%rsp)
	je	.L225
	movl	%r12d, %ebx
	movq	%rbp, 32(%rsp)
	movq	48(%rsp), %rdi
	xorl	%r13d, %r13d
	movq	%rbx, 8(%rsp)
	movl	%eax, %ebx
	leaq	-1(%r14), %rax
	movq	56(%rsp), %r12
	movq	%rax, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L224:
	movl	(%rdi,%r15), %ebp
	movq	16(%rsp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L222:
	imulq	%rbx, %rax
	movq	%rax, %rdx
	imulq	%r10, %rdx
	andl	$2147483647, %edx
	imulq	%r11, %rdx
	addq	%rdx, %rax
	movl	(%rdi,%rsi,4), %edx
	shrq	$31, %rax
	subl	%r8d, %eax
	subl	%r8d, %edx
	movl	%eax, %ecx
	subl	%r8d, %eax
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%edx, %eax
	cltd
	andl	%r8d, %edx
	addl	%edx, %eax
	subq	$1, %rsi
	jnb	.L222
	subl	%eax, %ebp
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	leal	0(%rbp,%rax), %edx
	imulq	8(%rsp), %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	andl	%r8d, %edx
	leal	(%rax,%rdx), %ebp
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L223:
	movl	(%r9,%rdx,4), %eax
	movl	(%rdi,%rdx,4), %esi
	imulq	%rbp, %rax
	addq	%rsi, %rcx
	addq	%rcx, %rax
	movl	%eax, %ecx
	shrq	$31, %rax
	andl	$2147483647, %ecx
	movl	%ecx, (%rdi,%rdx,4)
	addq	$1, %rdx
	movl	%eax, %ecx
	cmpq	%r14, %rdx
	jne	.L223
	movl	%eax, (%rdi,%r15)
	addq	$1, %r13
	addq	%r12, %rdi
	cmpq	(%rsp), %r13
	jne	.L224
	movq	32(%rsp), %rbp
.L225:
	movq	%r9, %rdx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L221:
	movl	(%rdx), %eax
	addq	$4, %rdx
	imulq	%r11, %rax
	addq	%rcx, %rax
	movl	%eax, %ecx
	shrq	$31, %rax
	andl	$2147483647, %ecx
	movl	%ecx, -4(%rdx)
	movl	%eax, %ecx
	cmpq	%rdx, %rbp
	jne	.L221
	movl	%eax, 0(%rbp)
	addq	$1, %r14
	addq	$4, %rbp
	addq	$12, 24(%rsp)
	cmpq	40(%rsp), %r14
	jne	.L226
	movq	48(%rsp), %r15
.L227:
	movq	64(%rsp), %r11
	movq	40(%rsp), %rax
	xorl	%r8d, %r8d
	movq	(%rsp), %rbp
	salq	$2, %r11
	cmpq	$0, (%rsp)
	leaq	-1(%rax), %r10
	movq	%rax, %rbx
	je	.L216
	.p2align 4,,10
	.p2align 3
.L228:
	movq	%r10, %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	je	.L232
	.p2align 4,,10
	.p2align 3
.L229:
	movl	(%r9,%rdx,4), %r12d
	sall	$30, %ecx
	movl	(%r15,%rdx,4), %eax
	movl	%r12d, %edi
	shrl	%edi
	orl	%ecx, %edi
	movl	%r12d, %ecx
	movl	%edi, %r12d
	andl	$1, %ecx
	subl	%eax, %r12d
	subl	%edi, %eax
	movl	%esi, %edi
	sarl	$31, %r12d
	shrl	$31, %eax
	andl	$1, %edi
	orl	%r12d, %eax
	subl	$1, %edi
	andl	%edi, %eax
	orl	%eax, %esi
	subq	$1, %rdx
	jnb	.L229
	sarl	$31, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L231:
	movl	(%r15,%rdx,4), %ecx
	movl	%ecx, %eax
	subl	%edi, %eax
	subl	(%r9,%rdx,4), %eax
	movl	%eax, %edi
	andl	$2147483647, %eax
	xorl	%ecx, %eax
	shrl	$31, %edi
	andl	%esi, %eax
	xorl	%eax, %ecx
	movl	%ecx, (%r15,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L231
.L232:
	addq	$1, %r8
	addq	%r11, %r15
	cmpq	%r8, %rbp
	jne	.L228
.L216:
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5579:
	.size	zint_rebuild_CRT.constprop.3, .-zint_rebuild_CRT.constprop.3
	.p2align 4
	.type	poly_sub_scaled_ntt, @function
poly_sub_scaled_ntt:
.LFB5553:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r9, %rax
	movl	$4, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	movq	320(%rsp), %rbx
	movl	344(%rsp), %r15d
	movq	%rcx, 216(%rsp)
	movq	%rdi, 224(%rsp)
	movq	%rbx, 72(%rsp)
	movl	328(%rsp), %ebx
	movl	%r15d, %ecx
	salq	%cl, %r9
	movq	%rdx, 240(%rsp)
	leaq	1(%r8), %rdx
	movl	%ebx, 252(%rsp)
	movl	336(%rsp), %ebx
	movq	%rdx, %r10
	movq	%rsi, 232(%rsp)
	movl	$1, %esi
	movl	%ebx, 248(%rsp)
	movq	352(%rsp), %rbx
	salq	%cl, %rsi
	movq	%rdx, 136(%rsp)
	salq	%cl, %rdx
	movq	%rbx, %rdi
	movq	%r8, 112(%rsp)
	addq	%r9, %rdi
	movl	%r15d, 92(%rsp)
	movq	%rdi, 144(%rsp)
	addq	%r9, %rdi
	movq	%rdi, 104(%rsp)
	leaq	(%rdi,%rdx,4), %rdi
	movq	%rbx, 48(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%r9, 120(%rsp)
	movq	%rdx, 128(%rsp)
	movq	%rdi, 56(%rsp)
	testq	%r10, %r10
	je	.L247
	salq	$2, %rax
	movl	%r8d, %ecx
	leaq	0(,%r10,4), %r15
	movq	$0, 96(%rsp)
	movq	%rax, 40(%rsp)
	leaq	4+PRIMES(%rip), %rax
	subl	$1, %ecx
	movl	$2147473409, %r14d
	movq	%rax, 80(%rsp)
	leaq	-1(%rsi), %rax
	movq	%rax, 200(%rsp)
	leaq	(%r9,%rdx,2), %rax
	addq	%rdi, %r9
	leaq	(%rbx,%rax,2), %rax
	movq	%rsi, %rbx
	shrq	$2, %rsi
	movl	%ecx, 164(%rsp)
	movq	%rax, 184(%rsp)
	movq	%rsi, %rax
	movq	%rbx, %rsi
	leaq	-4(%r15), %rcx
	salq	$4, %rax
	andq	$-4, %rsi
	movq	%rcx, 176(%rsp)
	movq	%rax, 168(%rsp)
	movq	%rsi, 192(%rsp)
	movq	%r9, 208(%rsp)
.L269:
	movl	$2, %edx
	movl	$2, %eax
	movl	%r14d, %edi
	movl	%r14d, %r12d
	subl	%r14d, %edx
	movl	$-2147483648, %ebx
	movl	%edx, %ecx
	subl	%r14d, %ebx
	imull	%r14d, %ecx
	subl	%ecx, %eax
	imull	%eax, %edx
	movl	$2, %eax
	movl	%edx, %ecx
	imull	%r14d, %ecx
	subl	%ecx, %eax
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r14d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %edx
	imull	%r14d, %edx
	subl	$2, %edx
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %r13d
	movl	%r13d, %esi
	movl	%r13d, 160(%rsp)
	call	modp_R2
	movl	164(%rsp), %edi
	movl	%eax, %ebp
	testl	%edi, %edi
	je	.L248
	movl	%eax, %esi
	xorl	%ecx, %ecx
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L250:
	btl	%ecx, %edi
	movl	%esi, %eax
	jnc	.L249
	imulq	%rax, %rbx
	movq	%rbx, %rsi
	imulq	%r13, %rsi
	andl	$2147483647, %esi
	imulq	%r12, %rsi
	addq	%rbx, %rsi
	shrq	$31, %rsi
	subl	%r14d, %esi
	movl	%esi, %ebx
	sarl	$31, %ebx
	andl	%r14d, %ebx
	addl	%esi, %ebx
.L249:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %rsi
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	addl	%eax, %esi
	movl	%edx, %eax
	sall	%cl, %eax
	cmpl	%eax, %edi
	jnb	.L250
.L248:
	movq	80(%rsp), %rax
	movl	92(%rsp), %edx
	movl	%r14d, %r8d
	movl	160(%rsp), %r9d
	movq	144(%rsp), %rsi
	movl	(%rax), %ecx
	movq	48(%rsp), %rdi
	call	modp_mkgm2
	cmpq	$2, 200(%rsp)
	jbe	.L275
	movd	%r14d, %xmm5
	movq	168(%rsp), %rdx
	movq	72(%rsp), %rsi
	xorl	%eax, %eax
	movq	184(%rsp), %rcx
	pshufd	$0, %xmm5, %xmm1
	.p2align 4,,10
	.p2align 3
.L252:
	movdqu	(%rsi,%rax), %xmm0
	movdqu	(%rsi,%rax), %xmm3
	psrad	$31, %xmm0
	pand	%xmm1, %xmm0
	paddd	%xmm3, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.L252
	movq	192(%rsp), %rax
	movq	%rax, %rdx
	cmpq	%rax, 32(%rsp)
	je	.L253
.L251:
	movq	32(%rsp), %rax
	subq	%rdx, %rax
	cmpq	$1, %rax
	je	.L254
	movq	72(%rsp), %rdi
	movd	%r14d, %xmm4
	pshufd	$0xe0, %xmm4, %xmm2
	movq	(%rdi,%rdx,4), %xmm1
	movq	128(%rsp), %rdi
	movdqa	%xmm1, %xmm0
	leaq	(%rdi,%rdx), %rcx
	movq	120(%rsp), %rdi
	psrad	$31, %xmm0
	pand	%xmm2, %xmm0
	leaq	(%rdi,%rcx,2), %rcx
	movq	48(%rsp), %rdi
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%rdi,%rcx,2)
	movq	%rax, %rcx
	andq	$-2, %rcx
	addq	%rcx, %rdx
	cmpq	%rax, %rcx
	je	.L253
.L254:
	movq	72(%rsp), %rax
	movq	56(%rsp), %rdi
	movl	(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%ecx, %eax
	movl	%eax, (%rdi,%rdx,4)
.L253:
	movl	92(%rsp), %eax
	testl	%eax, %eax
	je	.L256
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdi
	movl	%r14d, %ecx
	movl	%eax, %edx
	movl	160(%rsp), %r8d
	call	modp_NTT2_ext.part.0.constprop.0
.L256:
	movq	96(%rsp), %rdi
	movq	104(%rsp), %rax
	movl	%ebp, %r10d
	xorl	%r8d, %r8d
	movq	%r10, 152(%rsp)
	movq	176(%rsp), %rbp
	leaq	(%rax,%rdi,4), %r9
	movq	112(%rsp), %r11
	movq	216(%rsp), %rdi
	movq	%r9, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L259:
	xorl	%eax, %eax
	testq	%r11, %r11
	je	.L257
	leaq	-1(%r11), %rsi
	.p2align 4,,10
	.p2align 3
.L258:
	imulq	%r10, %rax
	movq	%rax, %rdx
	imulq	%r13, %rdx
	andl	$2147483647, %edx
	imulq	%r12, %rdx
	addq	%rdx, %rax
	movl	(%rdi,%rsi,4), %edx
	shrq	$31, %rax
	subl	%r14d, %eax
	subl	%r14d, %edx
	movl	%eax, %ecx
	subl	%r14d, %eax
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%r14d, %edx
	addl	%edx, %eax
	cltd
	andl	%r14d, %edx
	addl	%edx, %eax
	subq	$1, %rsi
	jnb	.L258
	movl	-4(%rdi,%rbp), %ecx
	shrl	$30, %ecx
	negl	%ecx
	andl	%ebx, %ecx
	subl	%ecx, %eax
	cltd
	andl	%r14d, %edx
	addl	%edx, %eax
.L257:
	movl	%eax, (%r9)
	addq	$1, %r8
	addq	40(%rsp), %rdi
	addq	%r15, %r9
	cmpq	%r8, 32(%rsp)
	jne	.L259
	movl	92(%rsp), %eax
	movq	32(%rsp), %r11
	movq	$1, 24(%rsp)
	testl	%eax, %eax
	je	.L262
	.p2align 4,,10
	.p2align 3
.L266:
	movq	%r11, %rax
	shrq	%r11
	movq	%r11, %rbx
	imulq	%r15, %rbx
	movq	%rbx, (%rsp)
	testq	%r11, %r11
	je	.L263
	imulq	%r15, %rax
	movq	48(%rsp), %rbx
	movq	24(%rsp), %rdi
	leaq	(%rbx,%rdi,4), %rbp
	movq	%rax, 16(%rsp)
	leaq	(%rbx,%rdi,8), %rax
	movq	64(%rsp), %rbx
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L265:
	movq	(%rsp), %rax
	movl	0(%rbp), %r10d
	movq	%rbx, %rdi
	xorl	%r9d, %r9d
	leaq	(%rax,%rbx), %rsi
	.p2align 4,,10
	.p2align 3
.L264:
	movl	(%rsi), %ecx
	movl	(%rdi), %edx
	addq	$1, %r9
	imulq	%r10, %rcx
	movq	%rcx, %rax
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%r14d, %ecx
	subl	%eax, %edx
	addl	%eax, %ecx
	movl	%edx, %eax
	movl	%ecx, %r8d
	sarl	$31, %eax
	sarl	$31, %r8d
	andl	%r14d, %eax
	andl	%r14d, %r8d
	addl	%eax, %edx
	addl	%r8d, %ecx
	movl	%ecx, (%rdi)
	addq	%r15, %rdi
	movl	%edx, (%rsi)
	addq	%r15, %rsi
	cmpq	%r9, %r11
	jne	.L264
	addq	$4, %rbp
	addq	16(%rsp), %rbx
	cmpq	%rbp, 8(%rsp)
	jne	.L265
.L263:
	salq	24(%rsp)
	movq	24(%rsp), %rax
	cmpq	%rax, 32(%rsp)
	ja	.L266
.L262:
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	208(%rsp), %rsi
	movq	152(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L261:
	movl	(%rdx), %eax
	movl	(%rcx), %r8d
	addq	$4, %rcx
	imulq	%rax, %r8
	movq	%r8, %rax
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%r14d, %r8d
	addl	%eax, %r8d
	movl	%r8d, %r8d
	imulq	%rdi, %r8
	movq	%r8, %rax
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r12, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%r14d, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%r14d, %r8d
	addl	%r8d, %eax
	movl	%eax, (%rdx)
	addq	%r15, %rdx
	cmpq	%rcx, %rsi
	jne	.L261
	movl	92(%rsp), %eax
	testl	%eax, %eax
	je	.L267
	movl	160(%rsp), %r9d
	movq	64(%rsp), %rdi
	movl	%r14d, %r8d
	movl	%eax, %ecx
	movq	144(%rsp), %rdx
	movq	136(%rsp), %rsi
	call	modp_iNTT2_ext.part.0
.L267:
	movq	96(%rsp), %rdi
	addq	$12, 80(%rsp)
	movq	80(%rsp), %rbx
	leaq	1(%rdi), %rax
	cmpq	%rdi, 112(%rsp)
	je	.L268
	movq	%rax, 96(%rsp)
	movl	-4(%rbx), %r14d
	jmp	.L269
.L275:
	xorl	%edx, %edx
	jmp	.L251
.L268:
	movq	136(%rsp), %rsi
	movq	56(%rsp), %r8
	xorl	%ebp, %ebp
	movq	104(%rsp), %rdi
	movq	32(%rsp), %rcx
	movq	%rsi, %rdx
	call	zint_rebuild_CRT.constprop.3
	movl	252(%rsp), %eax
	movq	224(%rsp), %rbx
	movl	$31, %r11d
	movq	232(%rsp), %rdi
	movq	240(%rsp), %r12
	leaq	(%rbx,%rax,4), %r8
	subl	248(%rsp), %r11d
	movq	%rdi, %rbx
	salq	$2, %r12
	subq	%rax, %rbx
	cmpq	%rax, %rdi
	jbe	.L246
	movq	%r12, (%rsp)
	movq	104(%rsp), %r14
	movq	136(%rsp), %r12
	movl	248(%rsp), %r13d
.L272:
	movl	-4(%r14,%r15), %r10d
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movl	%eax, %edi
	shrl	$30, %r10d
	negl	%r10d
	shrl	%r10d
	.p2align 4,,10
	.p2align 3
.L271:
	movl	%r10d, %eax
	cmpq	%rdx, %r12
	jbe	.L270
	movl	(%r14,%rdx,4), %eax
.L270:
	movl	%eax, %esi
	movl	%r13d, %ecx
	sall	%cl, %esi
	movl	%r11d, %ecx
	shrl	%cl, %eax
	andl	$2147483647, %esi
	orl	%r9d, %esi
	movl	%eax, %r9d
	movl	(%r8,%rdx,4), %eax
	subl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	shrl	$31, %eax
	andl	$2147483647, %ecx
	movl	%eax, %edi
	movl	%ecx, (%r8,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L271
	addq	$1, %rbp
	addq	%r15, %r14
	addq	(%rsp), %r8
	cmpq	%rbp, 32(%rsp)
	jne	.L272
.L246:
	addq	$264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L247:
	.cfi_restore_state
	movq	%rdi, %r8
	movq	104(%rsp), %rdi
	movq	%rsi, %rcx
	xorl	%edx, %edx
	addq	$264, %rsp
	.cfi_def_cfa_offset 56
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	zint_rebuild_CRT.constprop.3
	.cfi_endproc
.LFE5553:
	.size	poly_sub_scaled_ntt, .-poly_sub_scaled_ntt
	.p2align 4
	.type	zint_co_reduce_mod, @function
zint_co_reduce_mod:
.LFB5545:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	(%rdi), %eax
	movl	(%rsi), %edx
	movl	56(%rsp), %ecx
	movl	%eax, %r14d
	imull	64(%rsp), %eax
	imull	%edx, %ecx
	imull	%r9d, %r14d
	imull	72(%rsp), %edx
	addl	%ecx, %r14d
	imull	%r8d, %r14d
	leal	(%rax,%rdx), %r13d
	imull	%r8d, %r13d
	leaq	-4(,%r12,4), %rax
	leaq	(%rdi,%rax), %rdx
	addq	%rsi, %rax
	movq	%rdx, -16(%rsp)
	andl	$2147483647, %r14d
	movq	%rax, -8(%rsp)
	andl	$2147483647, %r13d
	testq	%r12, %r12
	je	.L314
	movq	%rdi, %r11
	movq	%rsi, %rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L318:
	movl	(%r11,%rsi,4), %eax
	movl	(%rbx,%rsi,4), %ebp
	movq	56(%rsp), %r15
	movl	(%r10,%rsi,4), %r8d
	movq	%rax, %rcx
	imulq	64(%rsp), %rax
	imulq	%rbp, %r15
	imulq	%r9, %rcx
	imulq	72(%rsp), %rbp
	addq	%r15, %rcx
	addq	%rdi, %rcx
	movq	%r8, %rdi
	addq	%rbp, %rax
	imulq	%r14, %rdi
	addq	%rax, %rdx
	imulq	%r13, %r8
	addq	%rcx, %rdi
	addq	%r8, %rdx
	testq	%rsi, %rsi
	je	.L315
	movl	%edi, %eax
	sarq	$31, %rdi
	andl	$2147483647, %eax
	movl	%eax, -4(%r11,%rsi,4)
	movl	%edx, %eax
	sarq	$31, %rdx
	andl	$2147483647, %eax
	movl	%eax, -4(%rbx,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %r12
	jne	.L318
.L317:
	movq	-16(%rsp), %rax
	xorl	%r9d, %r9d
	movl	%edi, (%rax)
	movq	-8(%rsp), %rax
	shrq	$63, %rdi
	movq	%rdi, %rbp
	movl	%edi, %esi
	movl	%edx, (%rax)
	xorl	%eax, %eax
	movl	%eax, %ecx
	.p2align 4,,10
	.p2align 3
.L319:
	movl	(%r11,%r9,4), %eax
	movq	%r9, %r8
	subl	%ecx, %eax
	subl	(%r10,%r9,4), %eax
	leaq	1(%r9), %r9
	shrl	$31, %eax
	movl	%eax, %ecx
	cmpq	%r9, %r12
	jne	.L319
	movl	$1, %edi
	movl	%ebp, %r9d
	xorl	%ecx, %ecx
	subl	%eax, %edi
	negl	%r9d
	movl	%esi, %eax
	orl	%ebp, %edi
	shrl	%r9d
	negl	%edi
	.p2align 4,,10
	.p2align 3
.L321:
	movl	(%r11,%rcx,4), %esi
	subl	%eax, %esi
	movl	(%r10,%rcx,4), %eax
	xorl	%r9d, %eax
	andl	%edi, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	andl	$2147483647, %eax
	movl	%eax, (%r11,%rcx,4)
	movl	%esi, %eax
	movq	%rcx, %rsi
	addq	$1, %rcx
	shrl	$31, %eax
	cmpq	%rsi, %r8
	jne	.L321
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	shrq	$63, %rax
	movl	%ecx, %edx
	movl	%eax, %edi
	.p2align 4,,10
	.p2align 3
.L323:
	movl	(%rbx,%r9,4), %ecx
	subl	%edx, %ecx
	subl	(%r10,%r9,4), %ecx
	movl	%ecx, %edx
	movq	%r9, %rcx
	addq	$1, %r9
	shrl	$31, %edx
	cmpq	%r8, %rcx
	jne	.L323
	movl	%edx, %ecx
	movl	$1, %edx
	movl	%eax, %r9d
	subl	%ecx, %edx
	negl	%r9d
	xorl	%ecx, %ecx
	orl	%eax, %edx
	shrl	%r9d
	movl	%edi, %eax
	negl	%edx
	.p2align 4,,10
	.p2align 3
.L325:
	movl	(%rbx,%rcx,4), %edi
	movq	%rcx, %rsi
	subl	%eax, %edi
	movl	(%r10,%rcx,4), %eax
	xorl	%r9d, %eax
	andl	%edx, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	andl	$2147483647, %eax
	movl	%eax, (%rbx,%rcx,4)
	movl	%edi, %eax
	addq	$1, %rcx
	shrl	$31, %eax
	cmpq	%r8, %rsi
	jne	.L325
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	.cfi_restore_state
	sarq	$31, %rdi
	sarq	$31, %rdx
	cmpq	$1, %r12
	je	.L317
	movl	$1, %esi
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L314:
	movq	-8(%rsp), %rax
	movl	$0, (%rdx)
	movl	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5545:
	.size	zint_co_reduce_mod, .-zint_co_reduce_mod
	.p2align 4
	.type	solve_NTRU_binary_depth1, @function
solve_NTRU_binary_depth1:
.LFB5564:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	movq	%rcx, %r15
	movl	%edi, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pxor	%xmm10, %xmm10
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rax, %rbx
	salq	%cl, %rbx
	subq	$1672, %rsp
	.cfi_def_cfa_offset 1728
	movq	%rdx, 344(%rsp)
	leal	-1(%rdi), %edx
	movl	%edx, %ecx
	movq	%rbx, 384(%rsp)
	salq	%cl, %rax
	movl	%edi, 1016(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	shrq	%rax
	leaq	0(,%rax,8), %rdi
	movq	%rsi, 408(%rsp)
	movq	%rax, %rsi
	shrq	$3, %rbx
	movq	%rax, 8(%rsp)
	movl	$2, %eax
	leaq	(%r15,%rdi), %r9
	salq	%cl, %rax
	movl	%edx, 36(%rsp)
	leaq	(%r9,%rdi), %r14
	leaq	0(,%rax,4), %rdx
	movq	%rax, 504(%rsp)
	leaq	(%rax,%rsi,2), %rax
	leaq	(%rdi,%rax,4), %rax
	movq	%rdi, 272(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rsi, %rax
	salq	$4, %rsi
	movq	%rsi, 48(%rsp)
	movq	%rdi, %rsi
	leaq	32(%rdi), %rdi
	subq	$1, %rax
	movq	%rdi, 152(%rsp)
	leaq	0(,%rbx,4), %rdi
	movq	%rbx, 160(%rsp)
	salq	$5, %rbx
	movq	%rbx, 176(%rsp)
	leaq	(%r15,%rbx), %rcx
	addq	%r9, %rbx
	movq	%r14, 120(%rsp)
	addq	%rdx, %r14
	movq	%rbx, 112(%rsp)
	leaq	1(%rdi), %rbx
	movq	%r14, 128(%rsp)
	leaq	PRIMES(%rip), %r14
	movq	%rbx, 184(%rsp)
	leaq	2(%rdi), %rbx
	movq	%rax, 232(%rsp)
	leaq	-8(%rdx), %rax
	movq	%rdx, 352(%rsp)
	movq	%r14, 264(%rsp)
	movq	%rdi, 168(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rbx, 192(%rsp)
	movq	%r14, 64(%rsp)
	movq	%rax, 136(%rsp)
	leaq	-8(%rsi,%rdx), %rax
	movdqa	.LC10(%rip), %xmm8
	movq	%rax, 144(%rsp)
.L341:
	movq	64(%rsp), %rax
	movl	$2, %edx
	movl	(%rax), %r11d
	movl	$2, %eax
	subl	%r11d, %edx
	movl	%r11d, %ecx
	movl	%r11d, %edi
	movq	%r11, %r8
	imull	%edx, %ecx
	subl	%ecx, %eax
	movl	%r11d, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	movl	%r11d, %ecx
	imull	%eax, %edx
	movl	$2, %eax
	imull	%edx, %ecx
	subl	%ecx, %eax
	imull	%edx, %eax
	movl	%r11d, %edx
	imull	%eax, %edx
	subl	$2, %edx
	imull	%eax, %edx
	andl	$2147483647, %edx
	movl	%edx, %esi
	movl	%edx, %r10d
	call	modp_R2
	movl	$-2147483648, %ecx
	movl	%r10d, %edx
	movl	%eax, %ebx
	subl	%r11d, %ecx
	imulq	%rbx, %rcx
	movq	%rcx, %rax
	imulq	%rdx, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rax, %rcx
	shrq	$31, %rcx
	subl	%r11d, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%eax, %ecx
	movq	120(%rsp), %rax
	addq	%rbp, %rax
	cmpq	$0, 8(%rsp)
	movq	%rax, 104(%rsp)
	movq	128(%rsp), %rax
	leaq	(%rax,%rbp), %r12
	je	.L346
	movl	%r11d, %r10d
	leal	(%r11,%r11), %eax
	movq	96(%rsp), %r13
	movq	48(%rsp), %r14
	negl	%r10d
	sarl	$31, %r10d
	andl	%r11d, %r10d
	subl	%eax, %r10d
	cmpq	$2, 232(%rsp)
	seta	%al
	cmpq	$16, 136(%rsp)
	seta	%sil
	andl	%esi, %eax
	leaq	-8(%r13), %rsi
	cmpq	$20, %rsi
	seta	%sil
	andl	%esi, %eax
	leaq	-8(%r14), %rsi
	cmpq	$20, %rsi
	seta	%sil
	andl	%esi, %eax
	movq	144(%rsp), %rsi
	addq	%rbp, %rsi
	cmpq	$20, %rsi
	seta	%sil
	testb	%sil, %al
	je	.L433
	leaq	28(%r14), %rax
	cmpq	%rax, 272(%rsp)
	setge	%sil
	cmpq	%r14, 152(%rsp)
	setle	%al
	orb	%sil, %al
	je	.L433
	movd	%r11d, %xmm6
	movq	%rdx, %xmm5
	leaq	(%r14,%r15), %rdi
	xorl	%eax, %eax
	pshufd	$0, %xmm6, %xmm0
	movd	%r10d, %xmm6
	movq	%r11, %xmm4
	movq	160(%rsp), %r14
	pshufd	$0, %xmm6, %xmm12
	movd	%ebx, %xmm6
	punpcklqdq	%xmm5, %xmm5
	pshufd	$0, %xmm6, %xmm1
	punpcklqdq	%xmm4, %xmm4
	movd	%ecx, %xmm6
	movdqa	%xmm1, %xmm9
	pshufd	$0, %xmm6, %xmm11
	movdqa	%xmm5, %xmm7
	punpckldq	%xmm1, %xmm9
	movdqa	%xmm4, %xmm6
	punpckhdq	%xmm1, %xmm1
	leaq	0(%r13,%r15), %rsi
	movaps	%xmm1, 16(%rsp)
	psrlq	$32, %xmm7
	xorl	%r13d, %r13d
	psrlq	$32, %xmm6
	.p2align 4,,10
	.p2align 3
.L344:
	movdqu	16(%r15,%rax), %xmm2
	movdqu	(%r15,%rax), %xmm14
	addq	$1, %r13
	shufps	$221, %xmm2, %xmm14
	movdqa	%xmm14, %xmm2
	psrld	$30, %xmm14
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm1
	paddd	%xmm12, %xmm2
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm15
	punpckldq	%xmm2, %xmm15
	punpckhdq	%xmm2, %xmm2
	pmuludq	16(%rsp), %xmm2
	pmuludq	%xmm9, %xmm15
	movdqa	%xmm15, %xmm13
	pmuludq	%xmm15, %xmm1
	movdqa	%xmm15, %xmm3
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm3
	pmuludq	%xmm5, %xmm13
	paddq	%xmm1, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm1
	psrlq	$32, %xmm13
	pmuludq	%xmm6, %xmm3
	pmuludq	%xmm4, %xmm13
	pmuludq	%xmm4, %xmm1
	paddq	%xmm3, %xmm13
	movdqa	%xmm2, %xmm3
	psllq	$32, %xmm13
	pmuludq	%xmm5, %xmm3
	paddq	%xmm13, %xmm1
	movdqa	%xmm2, %xmm13
	paddq	%xmm15, %xmm1
	psrlq	$32, %xmm13
	movdqa	%xmm7, %xmm15
	pmuludq	%xmm2, %xmm15
	pmuludq	%xmm5, %xmm13
	psrlq	$31, %xmm1
	paddq	%xmm15, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm3, %xmm15
	movdqa	%xmm3, %xmm13
	psrlq	$32, %xmm15
	pmuludq	%xmm6, %xmm3
	pmuludq	%xmm4, %xmm15
	pmuludq	%xmm4, %xmm13
	paddq	%xmm3, %xmm15
	psllq	$32, %xmm15
	paddq	%xmm15, %xmm13
	movdqu	16(%r15,%rax), %xmm15
	paddq	%xmm2, %xmm13
	psrlq	$31, %xmm13
	shufps	$136, %xmm13, %xmm1
	movdqa	%xmm1, %xmm2
	movdqu	(%r15,%rax), %xmm1
	psubd	%xmm0, %xmm2
	shufps	$136, %xmm15, %xmm1
	movdqa	%xmm1, %xmm3
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm1
	psubd	%xmm0, %xmm3
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	psrad	$31, %xmm2
	paddd	%xmm3, %xmm1
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm10, %xmm2
	psubd	%xmm14, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	pand	%xmm11, %xmm3
	psrad	$31, %xmm1
	psubd	%xmm3, %xmm2
	pand	%xmm0, %xmm1
	movdqa	%xmm5, %xmm3
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	pshufd	$85, %xmm1, %xmm2
	movd	%xmm1, (%rdi,%rax)
	movd	%xmm2, 8(%rdi,%rax)
	movdqa	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm2
	pshufd	$255, %xmm1, %xmm1
	movd	%xmm1, 24(%rdi,%rax)
	movd	%xmm2, 16(%rdi,%rax)
	movdqu	16(%r9,%rax), %xmm2
	movdqu	(%r9,%rax), %xmm14
	shufps	$221, %xmm2, %xmm14
	movdqa	%xmm14, %xmm2
	psrld	$30, %xmm14
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm1
	paddd	%xmm12, %xmm2
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm15
	punpckldq	%xmm2, %xmm15
	punpckhdq	%xmm2, %xmm2
	pmuludq	16(%rsp), %xmm2
	pmuludq	%xmm9, %xmm15
	pmuludq	%xmm15, %xmm1
	pmuludq	%xmm15, %xmm3
	movdqa	%xmm15, %xmm13
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm13
	paddq	%xmm13, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm1
	psrlq	$32, %xmm13
	pmuludq	%xmm6, %xmm3
	pmuludq	%xmm4, %xmm13
	pmuludq	%xmm4, %xmm1
	paddq	%xmm3, %xmm13
	movdqa	%xmm5, %xmm3
	psllq	$32, %xmm13
	pmuludq	%xmm2, %xmm3
	paddq	%xmm13, %xmm1
	movdqa	%xmm7, %xmm13
	paddq	%xmm15, %xmm1
	pmuludq	%xmm2, %xmm13
	movdqa	%xmm2, %xmm15
	psrlq	$32, %xmm15
	psrlq	$31, %xmm1
	pmuludq	%xmm5, %xmm15
	paddq	%xmm15, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm3, %xmm15
	movdqa	%xmm3, %xmm13
	psrlq	$32, %xmm15
	pmuludq	%xmm6, %xmm3
	pmuludq	%xmm4, %xmm15
	pmuludq	%xmm4, %xmm13
	paddq	%xmm3, %xmm15
	movdqu	(%r9,%rax), %xmm3
	psllq	$32, %xmm15
	paddq	%xmm15, %xmm13
	paddq	%xmm2, %xmm13
	psrlq	$31, %xmm13
	shufps	$136, %xmm13, %xmm1
	movdqa	%xmm1, %xmm2
	movdqu	16(%r9,%rax), %xmm1
	psubd	%xmm0, %xmm2
	shufps	$136, %xmm1, %xmm3
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm1
	psubd	%xmm0, %xmm3
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	psrad	$31, %xmm2
	paddd	%xmm3, %xmm1
	pand	%xmm0, %xmm2
	movdqa	%xmm10, %xmm3
	paddd	%xmm2, %xmm1
	psubd	%xmm14, %xmm3
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm1
	pand	%xmm11, %xmm3
	pand	%xmm0, %xmm1
	psubd	%xmm3, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	pshufd	$85, %xmm1, %xmm2
	movd	%xmm1, (%rsi,%rax)
	movd	%xmm2, 8(%rsi,%rax)
	movdqa	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm2
	pshufd	$255, %xmm1, %xmm1
	movd	%xmm2, 16(%rsi,%rax)
	movd	%xmm1, 24(%rsi,%rax)
	addq	$32, %rax
	cmpq	%r14, %r13
	jne	.L344
	movq	176(%rsp), %rax
	movq	104(%rsp), %rdi
	movq	168(%rsp), %rsi
	addq	%rax, %rdi
	addq	%rax, %r12
	cmpq	%rsi, 8(%rsp)
	je	.L346
	movq	80(%rsp), %rax
	movl	4(%rax), %r14d
	movl	%r14d, %esi
	subl	%r8d, %esi
	movl	%esi, %r13d
	sarl	$31, %r13d
	movl	%r13d, %eax
	movq	%rdx, %r13
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%eax, %esi
	movl	%esi, %esi
	imulq	%rbx, %rsi
	imulq	%rsi, %r13
	movq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	movl	%eax, %esi
	movq	80(%rsp), %rax
	subl	%r8d, %esi
	movl	%esi, %r13d
	movl	(%rax), %esi
	subl	%r8d, %esi
	movl	%esi, %eax
	sarl	$31, %esi
	andl	%r8d, %esi
	subl	%r8d, %eax
	addl	%esi, %eax
	movl	%r13d, %esi
	sarl	$31, %esi
	addl	%r13d, %eax
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%r14d, %esi
	shrl	$30, %esi
	movl	%eax, %r14d
	sarl	$31, %eax
	negl	%esi
	andl	%r8d, %eax
	andl	%ecx, %esi
	subl	%esi, %r14d
	addl	%r14d, %eax
	movq	112(%rsp), %r14
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%eax, (%rdi)
	movl	4(%r14), %r14d
	movl	%r14d, %esi
	subl	%r8d, %esi
	movl	%esi, %r13d
	sarl	$31, %r13d
	movl	%r13d, %eax
	movq	%rdx, %r13
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%eax, %esi
	movl	%esi, %esi
	imulq	%rbx, %rsi
	imulq	%rsi, %r13
	movq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rsi, %rax
	movq	112(%rsp), %rsi
	shrq	$31, %rax
	movl	(%rsi), %esi
	movl	%eax, %r13d
	subl	%r8d, %r13d
	movl	%esi, 16(%rsp)
	subl	%r8d, %esi
	movl	%esi, %eax
	sarl	$31, %esi
	andl	%r8d, %esi
	subl	%r8d, %eax
	addl	%esi, %eax
	movl	%r13d, %esi
	sarl	$31, %esi
	addl	%r13d, %eax
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%r14d, %esi
	shrl	$30, %esi
	movl	%eax, %r13d
	sarl	$31, %eax
	negl	%esi
	andl	%r8d, %eax
	andl	%ecx, %esi
	subl	%esi, %r13d
	addl	%r13d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movq	184(%rsp), %rsi
	movl	%eax, (%r12)
	cmpq	%rsi, 8(%rsp)
	jbe	.L346
	movq	80(%rsp), %rax
	movl	12(%rax), %r14d
	movl	%r14d, %esi
	subl	%r8d, %esi
	movl	%esi, %r13d
	sarl	$31, %r13d
	movl	%r13d, %eax
	movq	%rdx, %r13
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%eax, %esi
	movl	%esi, %esi
	imulq	%rbx, %rsi
	imulq	%rsi, %r13
	movq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	movl	%eax, %r13d
	movq	80(%rsp), %rax
	subl	%r8d, %r13d
	movl	8(%rax), %esi
	subl	%r8d, %esi
	movl	%esi, %eax
	sarl	$31, %esi
	andl	%r8d, %esi
	subl	%r8d, %eax
	addl	%esi, %eax
	movl	%r13d, %esi
	sarl	$31, %esi
	addl	%r13d, %eax
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%r14d, %esi
	movq	112(%rsp), %r14
	shrl	$30, %esi
	movl	%eax, %r13d
	sarl	$31, %eax
	negl	%esi
	andl	%r8d, %eax
	andl	%ecx, %esi
	subl	%esi, %r13d
	addl	%r13d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%eax, 8(%rdi)
	movl	12(%r14), %r14d
	movl	%r14d, %esi
	subl	%r8d, %esi
	movl	%esi, %r13d
	sarl	$31, %r13d
	movl	%r13d, %eax
	movq	%rdx, %r13
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%eax, %esi
	movl	%esi, %esi
	imulq	%rbx, %rsi
	imulq	%rsi, %r13
	movq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rsi, %rax
	movq	112(%rsp), %rsi
	shrq	$31, %rax
	movl	8(%rsi), %esi
	movl	%eax, %r13d
	subl	%r8d, %r13d
	movl	%esi, 16(%rsp)
	subl	%r8d, %esi
	movl	%esi, %eax
	sarl	$31, %esi
	andl	%r8d, %esi
	subl	%r8d, %eax
	addl	%esi, %eax
	movl	%r13d, %esi
	sarl	$31, %esi
	addl	%r13d, %eax
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%r14d, %esi
	shrl	$30, %esi
	movl	%eax, %r13d
	sarl	$31, %eax
	negl	%esi
	andl	%r8d, %eax
	andl	%ecx, %esi
	subl	%esi, %r13d
	addl	%r13d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movq	192(%rsp), %rsi
	movl	%eax, 8(%r12)
	cmpq	%rsi, 8(%rsp)
	jbe	.L346
	movq	80(%rsp), %rax
	movl	20(%rax), %r14d
	movl	%r14d, %r13d
	subl	%r8d, %r13d
	movl	%r13d, %esi
	sarl	$31, %r13d
	movl	%r13d, %eax
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	movl	%r13d, %esi
	movq	%rdx, %r13
	andl	%r8d, %esi
	addl	%eax, %esi
	movl	%esi, %esi
	imulq	%rbx, %rsi
	imulq	%rsi, %r13
	movq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	movl	%eax, %r13d
	movq	80(%rsp), %rax
	subl	%r8d, %r13d
	movl	16(%rax), %eax
	subl	%r8d, %eax
	movl	%eax, %esi
	subl	%r8d, %eax
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	addl	%r13d, %eax
	sarl	$31, %r13d
	movl	%r13d, %esi
	movl	%r14d, %r13d
	movq	112(%rsp), %r14
	andl	%r8d, %esi
	shrl	$30, %r13d
	addl	%esi, %eax
	movl	%r13d, %esi
	negl	%esi
	movl	%eax, %r13d
	sarl	$31, %eax
	andl	%ecx, %esi
	andl	%r8d, %eax
	subl	%esi, %r13d
	addl	%r13d, %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	movl	%r13d, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%eax, 16(%rdi)
	movl	20(%r14), %edi
	movl	%edi, %esi
	subl	%r8d, %esi
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%esi, %eax
	movl	%eax, %eax
	imulq	%rbx, %rax
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	%r11, %rdx
	addq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$31, %rax
	movl	%eax, %esi
	movl	16(%r14), %eax
	subl	%r8d, %esi
	movl	%eax, %edx
	movl	%eax, 16(%rsp)
	subl	%r8d, %edx
	movl	%edx, %eax
	subl	%r8d, %edx
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%edx, %eax
	addl	%esi, %eax
	sarl	$31, %esi
	movl	%esi, %edx
	andl	%r8d, %edx
	addl	%eax, %edx
	movl	%edi, %eax
	shrl	$30, %eax
	negl	%eax
	andl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%ecx, %eax
	cltd
	andl	%r8d, %edx
	addl	%edx, %eax
	movl	%eax, 16(%r12)
.L346:
	addq	$4, %rbp
	addq	$12, 64(%rsp)
	addq	$4, 96(%rsp)
	addq	$4, 48(%rsp)
	cmpq	$8, %rbp
	jne	.L341
	movq	352(%rsp), %r14
	movq	120(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbp, 104(%rsp)
	movq	%r14, %rdx
	call	memmove@PLT
	leaq	(%r15,%r14), %rax
	movq	128(%rsp), %rsi
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%rax, 328(%rsp)
	call	memmove@PLT
	movzbl	36(%rsp), %ecx
	movl	$4, %r8d
	movl	1016(%rsp), %r11d
	addq	%r14, %rax
	movq	8(%rsp), %rdi
	movq	%r14, 352(%rsp)
	salq	%cl, %r8
	movq	%rax, 240(%rsp)
	movl	%r11d, %ecx
	subl	$2, %r11d
	addq	%r8, %rax
	movl	%r11d, 176(%rsp)
	salq	$2, %rdi
	movq	504(%rsp), %r11
	movq	%rax, 512(%rsp)
	addq	%r8, %rax
	movq	%r8, %r14
	movq	384(%rsp), %rdx
	movq	%rax, %r12
	movl	$4, %eax
	salq	$3, %r11
	movq	%r14, %r13
	salq	%cl, %rax
	leaq	(%r12,%r8), %rcx
	movq	%rdi, 360(%rsp)
	movq	344(%rsp), %r10
	leaq	(%r12,%rax), %r9
	movq	%rcx, 208(%rsp)
	addq	%r8, %rcx
	movq	408(%rsp), %rbp
	movq	%r9, 280(%rsp)
	addq	%r8, %r9
	addq	%rdx, %r10
	leaq	(%r9,%rax), %rbx
	movq	%rcx, 120(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rcx, %rbx
	addq	%r8, %rbx
	movq	%r9, 216(%rsp)
	movq	%r10, %r9
	movq	%rbx, %rsi
	movq	%rbx, 128(%rsp)
	addq	%r8, %rsi
	addq	%r11, %r8
	movq	%r11, 472(%rsp)
	movq	%rsi, %rbx
	movq	%rsi, 152(%rsp)
	addq	%rdi, %rbx
	leaq	(%r14,%rax), %rdi
	movq	%r14, 248(%rsp)
	movq	%rbx, 160(%rsp)
	movq	%r8, %rbx
	movq	%rbp, %r8
	addq	%rbx, %r13
	addq	%rdx, %r8
	movq	%rbx, 480(%rsp)
	addq	%r13, %rdi
	leaq	(%rax,%rdi), %rsi
	leaq	(%r15,%rdi), %r14
	leaq	(%rax,%rsi), %rcx
	leaq	(%r15,%rsi), %rbx
	leaq	(%r15,%rcx), %r10
	leaq	-1(%rdx), %rcx
	cmpq	$14, %rcx
	seta	%cl
	subq	$4, %rax
	cmpq	$56, %rax
	movl	%ecx, %r11d
	seta	%al
	andl	%eax, %r11d
	cmpq	%r14, %r8
	setbe	%al
	cmpq	%rbx, %rbp
	setnb	%cl
	orl	%ecx, %eax
	andl	%eax, %r11d
	cmpq	%rbx, 344(%rsp)
	setnb	%al
	cmpq	%r9, %r14
	setnb	%cl
	orl	%ecx, %eax
	andl	%eax, %r11d
	cmpq	%rbx, %r8
	setbe	%al
	cmpq	%r10, %rbp
	setnb	%cl
	orl	%ecx, %eax
	andl	%eax, %r11d
	cmpq	%r9, %rbx
	movq	344(%rsp), %r9
	setnb	%al
	cmpq	%r10, %r9
	movl	%r11d, %r10d
	movq	%rbp, %r11
	movq	%r9, %r8
	setnb	%cl
	orl	%ecx, %eax
	andl	%eax, %r10d
	movq	%rbp, %rax
	movb	%r10b, 1021(%rsp)
	movq	%rdx, %r10
	movq	216(%rsp), %rdx
	andq	$-16, %r10
	addq	%r10, %rax
	movq	%r10, %rcx
	movq	%r10, 640(%rsp)
	movq	%rax, 672(%rsp)
	movq	%r10, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %r10
	movq	64(%rsp), %rdx
	movq	%r10, 680(%rsp)
	movq	%r9, %r10
	addq	%rcx, %r10
	movq	%r10, 688(%rsp)
	leaq	(%rdx,%rax), %r10
	movq	%r10, 696(%rsp)
	movq	%rcx, %r10
	movq	216(%rsp), %r9
	addq	$1, %r10
	movq	%rcx, 96(%rsp)
	leaq	4(%rax), %rcx
	movq	%r10, %rbp
	movq	%r10, 704(%rsp)
	movq	%r11, %r10
	addq	%rbp, %r10
	movq	%r10, 712(%rsp)
	leaq	(%r9,%rcx), %r10
	movq	%r10, 720(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%r10, 728(%rsp)
	movq	%rcx, %r10
	leaq	8(%rax), %rcx
	addq	%rdx, %r10
	movq	%r10, 736(%rsp)
	movq	96(%rsp), %r10
	addq	$2, %r10
	movq	%r10, %rbp
	movq	%r10, 744(%rsp)
	movq	%r11, %r10
	addq	%rbp, %r10
	movq	%r10, 1168(%rsp)
	leaq	(%r9,%rcx), %r10
	movq	%r10, 1176(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%r10, 1184(%rsp)
	movq	%rcx, %r10
	leaq	12(%rax), %rcx
	addq	%rdx, %r10
	movq	%r10, 1192(%rsp)
	movq	96(%rsp), %r10
	addq	$3, %r10
	movq	%r10, %rbp
	movq	%r10, 1200(%rsp)
	movq	%r11, %r10
	addq	%rbp, %r10
	movq	%r10, 1208(%rsp)
	leaq	(%r9,%rcx), %r10
	movq	%r10, 1216(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%r10, 1224(%rsp)
	movq	%rcx, %r10
	addq	%rdx, %r10
	movq	%r10, 1232(%rsp)
	movq	96(%rsp), %r10
	leaq	4(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1240(%rsp)
	leaq	16(%rax), %rcx
	movq	%r10, 1248(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1256(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1272(%rsp)
	movq	%r10, 1264(%rsp)
	movq	96(%rsp), %r10
	leaq	5(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1280(%rsp)
	leaq	20(%rax), %rcx
	movq	%r10, 1288(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1296(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1312(%rsp)
	movq	%r10, 1304(%rsp)
	movq	96(%rsp), %r10
	leaq	6(%r10), %rcx
	movq	%r11, %r10
	movq	%rcx, 1320(%rsp)
	addq	%rcx, %r10
	movq	%rcx, %rbp
	leaq	24(%rax), %rcx
	movq	%r10, 1328(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1336(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1352(%rsp)
	movq	%r10, 1344(%rsp)
	movq	96(%rsp), %r10
	leaq	7(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1360(%rsp)
	leaq	28(%rax), %rcx
	movq	%r10, 1368(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1376(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1392(%rsp)
	movq	%r10, 1384(%rsp)
	movq	96(%rsp), %r10
	leaq	8(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1400(%rsp)
	leaq	32(%rax), %rcx
	movq	%r10, 1408(%rsp)
	leaq	(%r9,%rcx), %r10
	movq	%r10, 1416(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	addq	%rdx, %rcx
	movq	%r10, 1424(%rsp)
	movq	96(%rsp), %r10
	movq	%rcx, 1432(%rsp)
	leaq	9(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1440(%rsp)
	leaq	36(%rax), %rcx
	movq	%r10, 1448(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1456(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1472(%rsp)
	movq	%r10, 1464(%rsp)
	movq	96(%rsp), %r10
	leaq	10(%r10), %rcx
	movq	%r11, %r10
	addq	%rcx, %r10
	movq	%rcx, %rbp
	movq	%rcx, 1480(%rsp)
	leaq	40(%rax), %rcx
	movq	%r10, 1488(%rsp)
	leaq	(%r9,%rcx), %r10
	addq	%rdx, %rcx
	movq	%r10, 1496(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rcx, 1512(%rsp)
	leaq	44(%rax), %rcx
	movq	%r10, 1504(%rsp)
	movq	96(%rsp), %r10
	leaq	11(%r10), %rdx
	movq	%r11, %r10
	addq	%rdx, %r10
	movq	%rdx, %rbp
	movq	%rdx, 1520(%rsp)
	movq	%r9, %rdx
	movq	%r10, 1528(%rsp)
	movq	%r8, %r10
	addq	%rcx, %rdx
	addq	%rbp, %r10
	movq	%rdx, 1536(%rsp)
	movq	%r10, 1544(%rsp)
	movq	64(%rsp), %rdx
	movq	96(%rsp), %r10
	addq	%rcx, %rdx
	leaq	48(%rax), %rcx
	movq	%rdx, 1552(%rsp)
	leaq	12(%r10), %rdx
	movq	%r11, %r10
	addq	%rdx, %r10
	movq	%rdx, %rbp
	movq	%rdx, 1560(%rsp)
	movq	%r9, %rdx
	addq	%rcx, %rdx
	movq	%r10, 1568(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r10
	movq	%rdx, 1576(%rsp)
	movq	64(%rsp), %rdx
	movq	%r10, 1584(%rsp)
	movq	96(%rsp), %r10
	addq	%rcx, %rdx
	leaq	52(%rax), %rcx
	addq	$56, %rax
	movq	%rdx, 1592(%rsp)
	leaq	13(%r10), %rdx
	movq	%r11, %r10
	addq	%rdx, %r10
	movq	%rdx, %rbp
	movq	%rdx, 1600(%rsp)
	movq	%r9, %rdx
	movq	%r10, 1608(%rsp)
	movq	%r8, %r10
	addq	%rbp, %r8
	addq	%rcx, %rdx
	movq	%r8, 1624(%rsp)
	movq	64(%rsp), %r8
	movq	%rdx, 1616(%rsp)
	movq	%rcx, %rdx
	addq	%r8, %rdx
	movq	%rdx, 1632(%rsp)
	movq	96(%rsp), %rdx
	addq	$14, %rdx
	movq	%rdx, %rcx
	addq	%rdx, %r11
	movq	%rdx, 1640(%rsp)
	movq	%r9, %rdx
	addq	%rcx, %r10
	addq	%rax, %rdx
	movzbl	36(%rsp), %ecx
	movq	%r11, 1080(%rsp)
	movq	%r10, 1096(%rsp)
	movq	%rax, %r10
	movq	104(%rsp), %r11
	addq	%r8, %r10
	movq	%rdx, 1088(%rsp)
	movq	%r10, 1104(%rsp)
	movq	40(%rsp), %r10
	leaq	-1(%r10), %rdx
	cmpq	$10, %rdx
	movq	%rdx, 368(%rsp)
	seta	16(%rsp)
	salq	%cl, %r11
	movzbl	16(%rsp), %edx
	leaq	(%r11,%rdi), %rax
	movq	%r11, %r8
	movq	248(%rsp), %r11
	leaq	(%r11,%rdi), %rcx
	cmpq	%rcx, %rax
	cmovg	%rcx, %rax
	cmpq	%rax, %rdi
	setge	%al
	movl	%eax, %r11d
	movq	%r9, %rax
	andl	%edx, %r11d
	movb	%r11b, 1022(%rsp)
	movq	%r10, %r11
	shrq	$2, %r10
	andq	$-4, %r11
	movq	%r10, 632(%rsp)
	salq	$4, %r10
	leaq	0(,%r11,8), %rdx
	movq	%r10, 336(%rsp)
	movq	%r11, %r10
	movq	%r11, 184(%rsp)
	movq	%r9, %r11
	leaq	4(%rdx), %rdi
	leaq	8(%rdx), %rcx
	addq	%rdx, %r11
	movq	%rdx, 496(%rsp)
	movq	%r11, 1120(%rsp)
	leaq	(%r9,%rdi), %r11
	movq	%r11, 1128(%rsp)
	leaq	0(,%r10,4), %r11
	movq	%r11, %rbp
	movq	%r9, %r11
	addq	%rbp, %r11
	movq	%rbp, 376(%rsp)
	movq	%r11, 1136(%rsp)
	movq	%r10, %r11
	leaq	1(%r10), %r10
	movq	%r10, 416(%rsp)
	leaq	(%r9,%rcx), %r10
	leaq	12(%rdx), %r9
	movq	%r10, 1144(%rsp)
	leaq	(%rax,%r9), %r10
	movq	%r10, 1152(%rsp)
	movq	%rbp, %r10
	addq	$4, %r10
	leaq	(%rax,%r10), %rbp
	movq	%rbp, 1160(%rsp)
	leaq	2(%r11), %rbp
	leaq	16(%rdx), %r11
	addq	$20, %rdx
	movq	%rbp, 664(%rsp)
	leaq	(%rax,%r11), %rbp
	movq	%rbp, 1048(%rsp)
	movq	%rdx, %rbp
	movq	%rax, %rdx
	addq	%rbp, %rdx
	movq	%rbp, 48(%rsp)
	movq	248(%rsp), %rbp
	movq	%rdx, 1056(%rsp)
	movq	376(%rsp), %rdx
	addq	$8, %rdx
	addq	%rdx, %rax
	movq	%rdx, 80(%rsp)
	movq	496(%rsp), %rdx
	movq	%rax, 1064(%rsp)
	leaq	(%r8,%rsi), %rax
	movq	%rbp, %r8
	addq	%rsi, %r8
	cmpq	%r8, %rax
	cmovg	%r8, %rax
	movq	%rbp, %r8
	cmpq	%rax, %rsi
	setge	%al
	andb	16(%rsp), %al
	movb	%al, 1023(%rsp)
	movq	64(%rsp), %rax
	addq	%rax, %rdx
	addq	%rax, %r10
	addq	%rax, %r9
	addq	%rax, %r11
	movq	%rdx, 960(%rsp)
	movq	%rdi, %rdx
	addq	%rax, %rdx
	movq	%r10, 1112(%rsp)
	movq	48(%rsp), %r10
	movq	%rdx, 968(%rsp)
	movq	376(%rsp), %rdx
	addq	%rax, %r10
	movq	%r9, 992(%rsp)
	addq	%rax, %rdx
	movq	%r11, 1024(%rsp)
	leaq	0(,%rbp,4), %r11
	movq	%rdx, 976(%rsp)
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%r10, 1032(%rsp)
	movq	%r13, %r10
	movq	%rdx, 984(%rsp)
	movq	80(%rsp), %rdx
	addq	%r11, %r10
	leaq	(%r15,%r10), %rbp
	addq	%rax, %rdx
	movq	%rdx, 1040(%rsp)
	movq	360(%rsp), %rdx
	movq	%r11, 488(%rsp)
	movq	160(%rsp), %rdi
	movq	%rdx, %rax
	movq	%rdx, %r11
	movq	%rbp, 616(%rsp)
	addq	%r10, %rax
	movq	%r10, 448(%rsp)
	addq	%rax, %r11
	movq	%rax, 456(%rsp)
	addq	%r15, %rax
	movq	%r11, 464(%rsp)
	movq	232(%rsp), %r11
	movq	%rax, 624(%rsp)
	movq	%r11, %rax
	shrq	$2, %rax
	salq	$4, %rax
	movq	%rax, 648(%rsp)
	movq	%r11, %rax
	movq	152(%rsp), %r11
	andq	$-4, %rax
	movq	%rax, %rcx
	leaq	0(,%rax,8), %rbp
	leaq	0(,%rax,4), %rax
	movq	%rbp, 608(%rsp)
	leaq	(%r11,%rax), %rbp
	leaq	4(%rax), %rsi
	movq	%rbp, 584(%rsp)
	leaq	(%rdi,%rax), %rbp
	movq	%rbp, 592(%rsp)
	leaq	1(%rcx), %rbp
	movq	%rbp, 600(%rsp)
	leaq	(%r11,%rsi), %rbp
	addq	%rdi, %rsi
	movq	%rsi, 576(%rsp)
	leaq	8(%rax), %rsi
	addq	$12, %rax
	movq	%rax, %r13
	movq	%rbp, 568(%rsp)
	leaq	2(%rcx), %rbp
	addq	%rdi, %r13
	movq	%rbp, 520(%rsp)
	leaq	(%r11,%rsi), %rbp
	addq	%rdi, %rsi
	movq	%r13, 1008(%rsp)
	leaq	(%r8,%r8), %r13
	subq	%r13, %r10
	movq	%rbp, 760(%rsp)
	leaq	3(%rcx), %rbp
	movq	8(%rsp), %rcx
	movq	%rbp, 752(%rsp)
	leaq	(%r11,%rax), %rbp
	movq	%r8, %rax
	addq	%r10, %r8
	movq	%r10, %r9
	movq	%rsi, 928(%rsp)
	movq	%r11, %rsi
	movq	%rax, %r11
	movq	%r10, 320(%rsp)
	movq	%r8, %r10
	addq	%r10, %r11
	movq	%r13, 1072(%rsp)
	movq	%rdx, %r13
	movq	%r8, 256(%rsp)
	movq	%rax, %r8
	addq	%r11, %r13
	movq	232(%rsp), %rax
	testq	%rcx, %rcx
	movq	%rbp, 1000(%rsp)
	movl	$4, %ebp
	cmove	%rbp, %rdx
	salq	$4, %rax
	movq	%r11, 312(%rsp)
	addq	$12, %rax
	testq	%rcx, %rcx
	movl	$12, %ecx
	movq	%r13, 440(%rsp)
	cmovne	%rax, %rcx
	leaq	(%rdx,%r13), %rbp
	leaq	(%r15,%r13), %r13
	movq	%rbp, 304(%rsp)
	movq	%r9, %rbp
	movq	%rcx, 432(%rsp)
	movq	104(%rsp), %rax
	cmovne	272(%rsp), %rax
	movq	%r13, 528(%rsp)
	movq	120(%rsp), %rcx
	addq	%rax, %rbp
	addq	%r10, %rax
	movq	%rax, 288(%rsp)
	movq	%rdx, %rax
	movq	8(%rsp), %rdx
	addq	%r11, %rax
	movq	%rbp, 296(%rsp)
	movq	%r10, %rbp
	leaq	(%r15,%r10), %r10
	testq	%rdx, %rdx
	movq	%rax, 424(%rsp)
	movl	$1, %eax
	cmovne	%rdx, %rax
	leaq	(%r15,%r9), %rdx
	movq	128(%rsp), %r9
	movq	%r10, 16(%rsp)
	movq	%rdx, 48(%rsp)
	leaq	(%r15,%r11), %rdx
	movq	%rsi, %r11
	movq	%rax, 560(%rsp)
	movq	%rax, %r13
	shrq	$2, %rax
	andq	$-4, %r13
	salq	$4, %rax
	movq	%rdx, 536(%rsp)
	movq	%rcx, %rdx
	movq	%rax, 656(%rsp)
	movq	%r13, %rax
	movq	%r13, 552(%rsp)
	salq	$4, %r13
	movq	%r13, 544(%rsp)
	movq	%rax, %r13
	leaq	0(,%rax,8), %rax
	addq	%rax, %rdx
	movq	%rdx, 784(%rsp)
	leaq	4(%rax), %rdx
	leaq	(%rcx,%rdx), %r10
	addq	%r9, %rdx
	movq	%rdx, 816(%rsp)
	leaq	0(,%r13,4), %rdx
	addq	%rdx, %rsi
	movq	%r10, 792(%rsp)
	leaq	(%r9,%rax), %r10
	movq	%rsi, 776(%rsp)
	leaq	(%rdi,%rdx), %rsi
	movq	%rsi, 768(%rsp)
	leaq	1(%r13), %rsi
	movq	%rsi, 824(%rsp)
	leaq	8(%rax), %rsi
	movq	%r10, 800(%rsp)
	movq	%rcx, %r10
	leaq	(%rcx,%rsi), %rcx
	movq	%rcx, 832(%rsp)
	leaq	12(%rax), %rcx
	leaq	(%r10,%rcx), %r9
	movq	%r9, 912(%rsp)
	movq	128(%rsp), %r9
	addq	%r9, %rcx
	addq	%r9, %rsi
	movq	%rcx, 904(%rsp)
	leaq	4(%rdx), %rcx
	addq	$8, %rdx
	movq	%rsi, 920(%rsp)
	movq	%r11, %rsi
	leaq	(%r11,%rcx), %r11
	addq	%rdi, %rcx
	movq	%rcx, 840(%rsp)
	leaq	2(%r13), %rcx
	movq	%rcx, 952(%rsp)
	leaq	16(%rax), %rcx
	addq	$20, %rax
	leaq	(%r10,%rcx), %r13
	movq	%r11, 896(%rsp)
	addq	%r9, %rcx
	movq	%r13, 888(%rsp)
	leaq	(%r10,%rax), %r13
	addq	%r9, %rax
	movq	%r13, 880(%rsp)
	movq	472(%rsp), %r11
	movl	$2147473409, %r13d
	movq	%rax, 864(%rsp)
	leaq	(%rsi,%rdx), %rax
	addq	%rdi, %rdx
	movq	488(%rsp), %rdi
	movq	%rax, 856(%rsp)
	movq	%r8, %rax
	movq	352(%rsp), %rsi
	subq	%rdi, %rax
	movq	480(%rsp), %r8
	movq	%rcx, 872(%rsp)
	movq	%rax, 1648(%rsp)
	movq	%rdi, %rax
	negq	%rax
	movq	%rdx, 848(%rsp)
	subq	%rsi, %rax
	movq	%r11, 392(%rsp)
	movq	%rax, 944(%rsp)
	leaq	16(%rbp), %rax
	movq	%rax, 936(%rsp)
	movq	%r8, 400(%rsp)
	movq	%rsi, 192(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 224(%rsp)
	movq	%r12, 112(%rsp)
	movq	16(%rsp), %r12
	movq	%r15, 200(%rsp)
	movq	48(%rsp), %r15
.L390:
	movl	$2, %eax
	movl	$2, %edx
	movl	%r13d, %edi
	movl	%r13d, %r8d
	subl	%r13d, %eax
	movl	%eax, %ecx
	imull	%r13d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r13d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r13d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %edx
	imull	%r13d, %edx
	subl	$2, %edx
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %esi
	movl	%eax, %r9d
	movl	%eax, 48(%rsp)
	call	modp_R2
	movl	1016(%rsp), %edx
	movq	112(%rsp), %rdi
	movl	%eax, 16(%rsp)
	movq	264(%rsp), %rax
	movq	280(%rsp), %rsi
	movl	4(%rax), %ecx
	call	modp_mkgm2
	cmpb	$0, 1021(%rsp)
	je	.L434
	movd	%r13d, %xmm6
	xorl	%eax, %eax
	pxor	%xmm4, %xmm4
	movq	640(%rsp), %rdx
	movq	408(%rsp), %rcx
	movq	344(%rsp), %rsi
	pshufd	$0, %xmm6, %xmm2
	pxor	%xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L350:
	movdqu	(%rcx,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	movdqa	%xmm3, %xmm6
	pcmpgtb	%xmm0, %xmm5
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm0
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm1
	movdqa	%xmm0, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%r14,%rax,4)
	movdqa	%xmm1, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm5, %xmm1
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm0, %xmm5
	movups	%xmm1, 16(%r14,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm4, %xmm5
	movdqa	%xmm6, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm6, %xmm1
	movdqa	%xmm3, %xmm6
	movups	%xmm1, 32(%r14,%rax,4)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, 48(%r14,%rax,4)
	movdqu	(%rsi,%rax), %xmm0
	pcmpgtb	%xmm0, %xmm5
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm0
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm1
	movdqa	%xmm0, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%rbx,%rax,4)
	movdqa	%xmm1, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm5, %xmm1
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm0, %xmm5
	movups	%xmm1, 16(%rbx,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm6, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm6, %xmm1
	movups	%xmm1, 32(%rbx,%rax,4)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, 48(%rbx,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L350
	movq	384(%rsp), %rsi
	movq	96(%rsp), %rax
	cmpq	%rax, %rsi
	je	.L352
	movq	672(%rsp), %rax
	movq	680(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	688(%rsp), %rax
	movq	696(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	704(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	712(%rsp), %rax
	movq	720(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	728(%rsp), %rax
	movq	736(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	744(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1168(%rsp), %rax
	movq	1176(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1184(%rsp), %rax
	movq	1192(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1200(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1208(%rsp), %rax
	movq	1216(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1224(%rsp), %rax
	movq	1232(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1240(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1248(%rsp), %rax
	movq	1256(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1264(%rsp), %rax
	movq	1272(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1280(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1288(%rsp), %rax
	movq	1296(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1304(%rsp), %rax
	movq	1312(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1320(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1328(%rsp), %rax
	movq	1336(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1344(%rsp), %rax
	movq	1352(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1360(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1368(%rsp), %rax
	movq	1376(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1384(%rsp), %rax
	movq	1392(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1400(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1408(%rsp), %rax
	movq	1416(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1424(%rsp), %rax
	movq	1432(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1440(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1448(%rsp), %rax
	movq	1456(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1464(%rsp), %rax
	movq	1472(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1480(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1488(%rsp), %rax
	movq	1496(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1504(%rsp), %rax
	movq	1512(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1520(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1528(%rsp), %rax
	movq	1536(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1544(%rsp), %rax
	movq	1552(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1560(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1568(%rsp), %rax
	movq	1576(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1584(%rsp), %rax
	movq	1592(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1600(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1608(%rsp), %rax
	movq	1616(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1624(%rsp), %rax
	movq	1632(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	1640(%rsp), %rax
	cmpq	%rax, %rsi
	jbe	.L352
	movq	1080(%rsp), %rax
	movq	1088(%rsp), %rsi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rsi)
	movq	1096(%rsp), %rax
	movq	1104(%rsp), %rsi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	movl	%eax, (%rsi)
.L352:
	movl	1016(%rsp), %esi
	testl	%esi, %esi
	je	.L363
	movl	48(%rsp), %ebp
	movq	112(%rsp), %rsi
	movl	%r13d, %ecx
	movl	1016(%rsp), %edx
	movq	216(%rsp), %rdi
	movl	%ebp, %r8d
	call	modp_NTT2_ext.part.0.constprop.0
	movq	112(%rsp), %rsi
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	1016(%rsp), %edx
	movq	64(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	16(%rsp), %esi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	cmpb	$0, 1022(%rsp)
	je	.L435
	movd	%r13d, %xmm7
	movq	%rdx, %xmm3
	movq	%rcx, %xmm2
	xorl	%eax, %eax
	pshufd	$0, %xmm7, %xmm6
	movd	%esi, %xmm7
	punpcklqdq	%xmm3, %xmm3
	movq	336(%rsp), %rdi
	pshufd	$0, %xmm7, %xmm7
	punpcklqdq	%xmm2, %xmm2
	movdqa	%xmm3, %xmm5
	movdqa	%xmm7, %xmm8
	psrlq	$32, %xmm5
	movdqa	%xmm2, %xmm4
	punpckldq	%xmm7, %xmm8
	psrlq	$32, %xmm4
	punpckhdq	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L357:
	movdqu	(%r14,%rax,2), %xmm9
	movdqu	16(%r14,%rax,2), %xmm0
	movdqa	%xmm5, %xmm10
	movdqa	%xmm9, %xmm1
	shufps	$221, %xmm0, %xmm9
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm9, %xmm0
	movdqa	%xmm1, %xmm11
	punpckldq	%xmm9, %xmm0
	punpckldq	%xmm1, %xmm11
	punpckhdq	%xmm9, %xmm9
	pmuludq	%xmm0, %xmm11
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm9, %xmm1
	movdqa	%xmm11, %xmm0
	pmuludq	%xmm11, %xmm10
	movdqa	%xmm11, %xmm9
	psrlq	$32, %xmm0
	pmuludq	%xmm3, %xmm9
	pmuludq	%xmm3, %xmm0
	paddq	%xmm10, %xmm0
	psllq	$32, %xmm0
	paddq	%xmm0, %xmm9
	pand	.LC10(%rip), %xmm9
	movdqa	%xmm9, %xmm10
	movdqa	%xmm9, %xmm0
	psrlq	$32, %xmm10
	pmuludq	%xmm4, %xmm9
	pmuludq	%xmm2, %xmm10
	pmuludq	%xmm2, %xmm0
	paddq	%xmm9, %xmm10
	movdqa	%xmm1, %xmm9
	psllq	$32, %xmm10
	pmuludq	%xmm3, %xmm9
	paddq	%xmm10, %xmm0
	movdqa	%xmm1, %xmm10
	paddq	%xmm11, %xmm0
	psrlq	$32, %xmm10
	movdqa	%xmm5, %xmm11
	pmuludq	%xmm1, %xmm11
	pmuludq	%xmm3, %xmm10
	psrlq	$31, %xmm0
	paddq	%xmm11, %xmm10
	psllq	$32, %xmm10
	paddq	%xmm10, %xmm9
	pand	.LC10(%rip), %xmm9
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm10
	psrlq	$32, %xmm11
	pmuludq	%xmm4, %xmm9
	pmuludq	%xmm2, %xmm11
	pmuludq	%xmm2, %xmm10
	paddq	%xmm9, %xmm11
	movdqa	%xmm10, %xmm9
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm9
	paddq	%xmm9, %xmm1
	movdqa	%xmm3, %xmm9
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm0
	psubd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm0
	pand	%xmm6, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	movdqa	%xmm0, %xmm11
	punpckldq	%xmm0, %xmm11
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm8, %xmm11
	pmuludq	%xmm7, %xmm0
	pmuludq	%xmm11, %xmm1
	pmuludq	%xmm11, %xmm9
	movdqa	%xmm11, %xmm10
	psrlq	$32, %xmm10
	pmuludq	%xmm3, %xmm10
	paddq	%xmm10, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm9
	pand	.LC10(%rip), %xmm9
	movdqa	%xmm9, %xmm10
	movdqa	%xmm9, %xmm1
	psrlq	$32, %xmm10
	pmuludq	%xmm4, %xmm9
	pmuludq	%xmm2, %xmm10
	pmuludq	%xmm2, %xmm1
	paddq	%xmm9, %xmm10
	movdqa	%xmm3, %xmm9
	psllq	$32, %xmm10
	pmuludq	%xmm0, %xmm9
	paddq	%xmm10, %xmm1
	movdqa	%xmm5, %xmm10
	paddq	%xmm11, %xmm1
	pmuludq	%xmm0, %xmm10
	movdqa	%xmm0, %xmm11
	psrlq	$32, %xmm11
	psrlq	$31, %xmm1
	pmuludq	%xmm3, %xmm11
	paddq	%xmm11, %xmm10
	psllq	$32, %xmm10
	paddq	%xmm10, %xmm9
	pand	.LC10(%rip), %xmm9
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm10
	psrlq	$32, %xmm11
	pmuludq	%xmm4, %xmm9
	pmuludq	%xmm2, %xmm11
	pmuludq	%xmm2, %xmm10
	paddq	%xmm9, %xmm11
	movdqa	%xmm10, %xmm9
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm9
	paddq	%xmm9, %xmm0
	psrlq	$31, %xmm0
	shufps	$136, %xmm0, %xmm1
	psubd	%xmm6, %xmm1
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pand	%xmm6, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%r14,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L357
	movq	40(%rsp), %r11
	movq	184(%rsp), %rax
	cmpq	%rax, %r11
	je	.L359
	movq	1120(%rsp), %rax
	movl	(%rax), %edi
	movq	1128(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rsi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movq	1136(%rsp), %rdi
	movl	%eax, (%rdi)
	movq	416(%rsp), %rax
	cmpq	%rax, %r11
	jbe	.L359
	movq	1144(%rsp), %rax
	movl	(%rax), %edi
	movq	1152(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rsi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movq	1160(%rsp), %rdi
	movl	%eax, (%rdi)
	movq	664(%rsp), %rax
	cmpq	%rax, %r11
	jbe	.L359
	movq	1048(%rsp), %rax
	movl	(%rax), %edi
	movq	1056(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rsi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movq	1064(%rsp), %rdi
	movl	%eax, (%rdi)
.L359:
	cmpb	$0, 1023(%rsp)
	je	.L436
.L530:
	movd	%r13d, %xmm6
	movq	%rdx, %xmm4
	movq	%rcx, %xmm3
	xorl	%eax, %eax
	pshufd	$0, %xmm6, %xmm7
	punpcklqdq	%xmm4, %xmm4
	movd	16(%rsp), %xmm6
	punpcklqdq	%xmm3, %xmm3
	movdqa	%xmm3, %xmm5
	movq	336(%rsp), %rdi
	pshufd	$0, %xmm6, %xmm8
	psrlq	$32, %xmm5
	movdqa	%xmm4, %xmm6
	movdqa	%xmm8, %xmm9
	psrlq	$32, %xmm6
	punpckldq	%xmm8, %xmm9
	punpckhdq	%xmm8, %xmm8
.L361:
	movdqu	(%rbx,%rax,2), %xmm2
	movdqu	16(%rbx,%rax,2), %xmm0
	movdqa	%xmm6, %xmm10
	movdqa	%xmm2, %xmm1
	shufps	$221, %xmm0, %xmm2
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	movdqa	%xmm1, %xmm11
	punpckldq	%xmm2, %xmm0
	punpckldq	%xmm1, %xmm11
	punpckhdq	%xmm2, %xmm2
	pmuludq	%xmm0, %xmm11
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm2, %xmm1
	movdqa	%xmm11, %xmm0
	pmuludq	%xmm11, %xmm10
	movdqa	%xmm11, %xmm2
	psrlq	$32, %xmm0
	pmuludq	%xmm4, %xmm2
	pmuludq	%xmm4, %xmm0
	paddq	%xmm10, %xmm0
	psllq	$32, %xmm0
	paddq	%xmm0, %xmm2
	pand	.LC10(%rip), %xmm2
	movdqa	%xmm2, %xmm10
	movdqa	%xmm2, %xmm0
	psrlq	$32, %xmm10
	pmuludq	%xmm5, %xmm2
	pmuludq	%xmm3, %xmm10
	pmuludq	%xmm3, %xmm0
	paddq	%xmm2, %xmm10
	movdqa	%xmm1, %xmm2
	psllq	$32, %xmm10
	pmuludq	%xmm4, %xmm2
	paddq	%xmm10, %xmm0
	movdqa	%xmm1, %xmm10
	paddq	%xmm11, %xmm0
	psrlq	$32, %xmm10
	movdqa	%xmm6, %xmm11
	pmuludq	%xmm1, %xmm11
	pmuludq	%xmm4, %xmm10
	psrlq	$31, %xmm0
	paddq	%xmm11, %xmm10
	psllq	$32, %xmm10
	paddq	%xmm10, %xmm2
	pand	.LC10(%rip), %xmm2
	movdqa	%xmm2, %xmm11
	movdqa	%xmm2, %xmm10
	psrlq	$32, %xmm11
	pmuludq	%xmm5, %xmm2
	pmuludq	%xmm3, %xmm11
	pmuludq	%xmm3, %xmm10
	paddq	%xmm2, %xmm11
	movdqa	%xmm10, %xmm2
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm2
	paddq	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm0
	psubd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm0
	pand	%xmm7, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	movdqa	%xmm0, %xmm11
	punpckldq	%xmm0, %xmm11
	punpckhdq	%xmm0, %xmm0
	pmuludq	%xmm9, %xmm11
	pmuludq	%xmm8, %xmm0
	pmuludq	%xmm11, %xmm1
	pmuludq	%xmm11, %xmm2
	movdqa	%xmm11, %xmm10
	psrlq	$32, %xmm10
	pmuludq	%xmm4, %xmm10
	paddq	%xmm10, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm2
	pand	.LC10(%rip), %xmm2
	movdqa	%xmm2, %xmm10
	movdqa	%xmm2, %xmm1
	psrlq	$32, %xmm10
	pmuludq	%xmm5, %xmm2
	pmuludq	%xmm3, %xmm10
	pmuludq	%xmm3, %xmm1
	paddq	%xmm2, %xmm10
	movdqa	%xmm4, %xmm2
	psllq	$32, %xmm10
	pmuludq	%xmm0, %xmm2
	paddq	%xmm10, %xmm1
	movdqa	%xmm6, %xmm10
	paddq	%xmm11, %xmm1
	pmuludq	%xmm0, %xmm10
	movdqa	%xmm0, %xmm11
	psrlq	$32, %xmm11
	psrlq	$31, %xmm1
	pmuludq	%xmm4, %xmm11
	paddq	%xmm11, %xmm10
	psllq	$32, %xmm10
	paddq	%xmm10, %xmm2
	pand	.LC10(%rip), %xmm2
	movdqa	%xmm2, %xmm11
	movdqa	%xmm2, %xmm10
	psrlq	$32, %xmm11
	pmuludq	%xmm5, %xmm2
	pmuludq	%xmm3, %xmm11
	pmuludq	%xmm3, %xmm10
	paddq	%xmm2, %xmm11
	movdqa	%xmm10, %xmm2
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$31, %xmm0
	shufps	$136, %xmm0, %xmm1
	psubd	%xmm7, %xmm1
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pand	%xmm7, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%rbx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L361
	movq	40(%rsp), %r11
	movq	184(%rsp), %rax
	cmpq	%rax, %r11
	je	.L363
	movq	960(%rsp), %rax
	movl	(%rax), %edi
	movq	968(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rsi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movq	976(%rsp), %rdi
	movl	%eax, (%rdi)
	movq	416(%rsp), %rax
	cmpq	%rax, %r11
	jbe	.L363
	movq	984(%rsp), %rax
	movl	(%rax), %edi
	movq	992(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rdx, %rax
	movl	%edi, %edi
	imulq	%rsi, %rdi
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movq	1112(%rsp), %rdi
	movl	%eax, (%rdi)
	movq	664(%rsp), %rax
	cmpq	%rax, %r11
	jbe	.L363
	movq	1024(%rsp), %rax
	movl	(%rax), %edi
	movq	1032(%rsp), %rax
	movl	(%rax), %eax
	imulq	%rax, %rdi
	movq	%rdx, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%edi, %eax
	movl	%eax, %eax
	imulq	%rax, %rsi
	movq	%rdx, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%rsi, %rax
	movq	1040(%rsp), %rsi
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	%eax, (%rsi)
.L363:
	movq	248(%rsp), %rbp
	movq	280(%rsp), %rsi
	movq	208(%rsp), %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	216(%rsp), %rsi
	movq	120(%rsp), %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	64(%rsp), %rsi
	movq	128(%rsp), %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	104(%rsp), %rsi
	movq	200(%rsp), %rbp
	movq	328(%rsp), %rax
	addq	%rsi, %rbp
	addq	%rsi, %rax
	cmpq	$0, 8(%rsp)
	movq	%rax, 168(%rsp)
	je	.L525
	movq	272(%rsp), %rax
	movq	192(%rsp), %r11
	movq	%rsi, %r9
	movq	456(%rsp), %r10
	movq	464(%rsp), %r8
	leaq	-4(%rax), %rdx
	movq	360(%rsp), %rax
	leaq	(%rdx,%r11), %rsi
	addq	%r9, %rdx
	subq	$4, %rax
	cmpq	$8, %rax
	seta	%al
	cmpq	$3, 232(%rsp)
	seta	%cl
	andl	%ecx, %eax
	cmpq	%r10, %rsi
	setle	%cl
	cmpq	%r8, %r11
	setge	%dil
	orl	%edi, %ecx
	andl	%ecx, %eax
	cmpq	%r10, %rdx
	setle	%cl
	cmpq	%r8, %r9
	setge	%dil
	orl	%edi, %ecx
	movq	%r11, %rdi
	andl	%ecx, %eax
	cmpq	%r10, %r11
	movq	448(%rsp), %r11
	setge	%cl
	cmpq	%r11, %rsi
	setle	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L437
	cmpq	%r11, %rdx
	setle	%al
	cmpq	%r10, %r9
	setge	%dl
	orb	%dl, %al
	je	.L437
	movq	200(%rsp), %rdx
	movq	616(%rsp), %rcx
	xorl	%eax, %eax
	movq	624(%rsp), %rsi
	addq	%rdi, %rdx
	movq	648(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L367:
	movdqu	16(%rbp,%rax,2), %xmm6
	movdqu	0(%rbp,%rax,2), %xmm0
	shufps	$136, %xmm6, %xmm0
	movups	%xmm0, (%rcx,%rax)
	movdqu	(%rdx,%rax,2), %xmm0
	movdqu	16(%rdx,%rax,2), %xmm6
	shufps	$136, %xmm6, %xmm0
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L367
	movq	608(%rsp), %rsi
	movq	168(%rsp), %rax
	movq	600(%rsp), %rdi
	leaq	0(%rbp,%rsi), %rdx
	addq	%rsi, %rax
	movq	584(%rsp), %rsi
	movl	(%rdx), %ecx
	movl	%ecx, (%rsi)
	movq	592(%rsp), %rsi
	movl	(%rax), %ecx
	movl	%ecx, (%rsi)
	movq	8(%rsp), %rsi
	cmpq	%rdi, %rsi
	jbe	.L368
	movl	8(%rdx), %ecx
	movq	568(%rsp), %rdi
	movl	%ecx, (%rdi)
	movq	576(%rsp), %rdi
	movl	8(%rax), %ecx
	movl	%ecx, (%rdi)
	movq	520(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.L368
	movl	16(%rdx), %ecx
	movq	760(%rsp), %rdi
	movl	%ecx, (%rdi)
	movq	928(%rsp), %rdi
	movl	16(%rax), %ecx
	movl	%ecx, (%rdi)
	movq	752(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.L368
	movl	24(%rdx), %edx
	movq	1000(%rsp), %rsi
	movl	%edx, (%rsi)
	movq	1008(%rsp), %rsi
	movl	24(%rax), %eax
	movl	%eax, (%rsi)
.L368:
	movl	176(%rsp), %edx
	testl	%edx, %edx
	je	.L427
	movl	48(%rsp), %r8d
	movq	112(%rsp), %rsi
	movl	%r13d, %ecx
	movl	176(%rsp), %edx
	movq	152(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	48(%rsp), %r8d
	movl	%r13d, %ecx
	movl	176(%rsp), %edx
	movq	112(%rsp), %rsi
	movq	160(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
.L427:
	movq	104(%rsp), %r9
	movl	%r13d, %esi
	movl	16(%rsp), %edi
	movq	432(%rsp), %rax
	movq	192(%rsp), %r11
	movq	%rsi, 144(%rsp)
	movq	440(%rsp), %rcx
	leaq	16(%r9), %r8
	movl	48(%rsp), %r10d
	movq	%rdi, 136(%rsp)
	movq	%rax, %rsi
	addq	%r9, %rax
	addq	%r11, %rsi
	cmpq	%rcx, %rax
	movq	%rax, %rdi
	setle	%dl
	cmpq	304(%rsp), %r9
	setge	%al
	orl	%eax, %edx
	cmpq	%rsi, %rcx
	movq	304(%rsp), %rcx
	setge	%al
	cmpq	%rcx, %r11
	setge	%cl
	orl	%ecx, %eax
	andl	%edx, %eax
	cmpq	$82, 8(%rsp)
	seta	%dl
	andl	%edx, %eax
	cmpq	%rsi, 320(%rsp)
	setge	%dl
	cmpq	%r11, 296(%rsp)
	setle	%cl
	orl	%ecx, %edx
	movq	296(%rsp), %rcx
	andl	%eax, %edx
	cmpq	%rdi, 320(%rsp)
	setge	%al
	cmpq	%r9, %rcx
	setle	%cl
	orl	%ecx, %eax
	andl	%edx, %eax
	cmpq	%rsi, 256(%rsp)
	setge	%dl
	cmpq	%r11, 288(%rsp)
	setle	%cl
	orl	%ecx, %edx
	movq	288(%rsp), %rcx
	andl	%eax, %edx
	cmpq	%rdi, 256(%rsp)
	setge	%al
	cmpq	%r9, %rcx
	setle	%cl
	orl	%ecx, %eax
	andl	%edx, %eax
	cmpq	%rsi, 312(%rsp)
	movq	424(%rsp), %rsi
	setge	%dl
	cmpq	%r11, %rsi
	setle	%cl
	orl	%ecx, %edx
	andl	%eax, %edx
	cmpq	%rdi, 312(%rsp)
	setge	%al
	cmpq	%r9, %rsi
	setle	%cl
	orl	%ecx, %eax
	andl	%edx, %eax
	movq	%r11, %rdx
	subq	%r8, %rdx
	cmpq	$40, %rdx
	seta	%dl
	testb	%dl, %al
	je	.L438
	leaq	8(%r11), %rax
	subq	%r8, %rax
	cmpq	$40, %rax
	jbe	.L438
	movd	16(%rsp), %xmm6
	movq	%r10, %xmm1
	movq	200(%rsp), %rax
	movd	%r13d, %xmm7
	movq	144(%rsp), %xmm0
	punpcklqdq	%xmm1, %xmm1
	movq	528(%rsp), %rdi
	pshufd	$0, %xmm7, %xmm7
	pshufd	$0, %xmm6, %xmm2
	leaq	8(%rax), %rdx
	movq	536(%rsp), %r8
	addq	%r11, %rax
	movdqa	%xmm2, %xmm6
	punpcklqdq	%xmm0, %xmm0
	leaq	(%rdx,%r9), %rsi
	movq	%rax, %rcx
	punpckldq	%xmm2, %xmm6
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm2, %xmm2
	addq	%r11, %rdx
	movaps	%xmm6, 80(%rsp)
	movdqa	%xmm1, %xmm6
	psrlq	$32, %xmm5
	xorl	%eax, %eax
	movq	656(%rsp), %r9
	movaps	%xmm2, 16(%rsp)
	psrlq	$32, %xmm6
	.p2align 4,,10
	.p2align 3
.L372:
	movdqu	(%r8,%rax), %xmm9
	movdqa	80(%rsp), %xmm15
	movdqa	%xmm1, %xmm11
	movdqu	(%r15,%rax,2), %xmm2
	movdqu	16(%r15,%rax,2), %xmm4
	movdqa	%xmm9, %xmm12
	movdqu	(%r12,%rax,2), %xmm3
	punpckldq	%xmm9, %xmm12
	movdqa	%xmm2, %xmm8
	shufps	$221, %xmm4, %xmm2
	punpckhdq	%xmm9, %xmm9
	pmuludq	%xmm15, %xmm12
	shufps	$136, %xmm4, %xmm8
	movdqu	16(%r12,%rax,2), %xmm4
	movdqa	%xmm3, %xmm10
	pmuludq	16(%rsp), %xmm9
	shufps	$136, %xmm4, %xmm10
	shufps	$221, %xmm4, %xmm3
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm12, %xmm4
	pmuludq	%xmm12, %xmm11
	movdqa	%xmm12, %xmm13
	psrlq	$32, %xmm13
	pmuludq	%xmm1, %xmm13
	paddq	%xmm13, %xmm4
	psllq	$32, %xmm4
	paddq	%xmm4, %xmm11
	pand	.LC10(%rip), %xmm11
	movdqa	%xmm11, %xmm13
	movdqa	%xmm11, %xmm4
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm11
	pmuludq	%xmm0, %xmm13
	pmuludq	%xmm0, %xmm4
	paddq	%xmm11, %xmm13
	movdqa	%xmm1, %xmm11
	psllq	$32, %xmm13
	pmuludq	%xmm9, %xmm11
	paddq	%xmm13, %xmm4
	movdqa	%xmm9, %xmm13
	paddq	%xmm12, %xmm4
	psrlq	$32, %xmm13
	movdqa	%xmm6, %xmm12
	pmuludq	%xmm9, %xmm12
	pmuludq	%xmm1, %xmm13
	psrlq	$31, %xmm4
	paddq	%xmm13, %xmm12
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm11
	pand	.LC10(%rip), %xmm11
	movdqa	%xmm11, %xmm13
	movdqa	%xmm11, %xmm12
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm11
	pmuludq	%xmm0, %xmm13
	pmuludq	%xmm0, %xmm12
	paddq	%xmm11, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm12
	paddq	%xmm12, %xmm9
	psrlq	$31, %xmm9
	shufps	$136, %xmm9, %xmm4
	movdqu	(%rdi,%rax), %xmm9
	psubd	%xmm7, %xmm4
	movdqa	%xmm4, %xmm11
	movdqa	%xmm9, %xmm14
	psrad	$31, %xmm11
	punpckldq	%xmm9, %xmm14
	pand	%xmm7, %xmm11
	punpckhdq	%xmm9, %xmm9
	pmuludq	16(%rsp), %xmm9
	pmuludq	%xmm15, %xmm14
	paddd	%xmm4, %xmm11
	movdqa	%xmm6, %xmm4
	movdqa	%xmm3, %xmm15
	punpckldq	%xmm3, %xmm15
	punpckhdq	%xmm3, %xmm3
	movdqa	%xmm14, %xmm13
	pmuludq	%xmm14, %xmm4
	movdqa	%xmm14, %xmm12
	psrlq	$32, %xmm13
	pmuludq	%xmm1, %xmm12
	pmuludq	%xmm1, %xmm13
	paddq	%xmm4, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm12
	pand	.LC10(%rip), %xmm12
	movdqa	%xmm12, %xmm13
	movdqa	%xmm12, %xmm4
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm12
	pmuludq	%xmm0, %xmm13
	pmuludq	%xmm0, %xmm4
	paddq	%xmm12, %xmm13
	movdqa	%xmm9, %xmm12
	psllq	$32, %xmm13
	pmuludq	%xmm1, %xmm12
	paddq	%xmm13, %xmm4
	movdqa	%xmm9, %xmm13
	paddq	%xmm14, %xmm4
	psrlq	$32, %xmm13
	movdqa	%xmm6, %xmm14
	pmuludq	%xmm9, %xmm14
	pmuludq	%xmm1, %xmm13
	psrlq	$31, %xmm4
	paddq	%xmm14, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm12
	pand	.LC10(%rip), %xmm12
	movdqa	%xmm12, %xmm14
	movdqa	%xmm12, %xmm13
	psrlq	$32, %xmm14
	pmuludq	%xmm5, %xmm12
	pmuludq	%xmm0, %xmm14
	pmuludq	%xmm0, %xmm13
	paddq	%xmm12, %xmm14
	psllq	$32, %xmm14
	paddq	%xmm14, %xmm13
	movdqa	%xmm11, %xmm14
	punpckldq	%xmm11, %xmm14
	paddq	%xmm9, %xmm13
	punpckhdq	%xmm11, %xmm11
	pmuludq	%xmm14, %xmm15
	psrlq	$31, %xmm13
	shufps	$136, %xmm13, %xmm4
	psubd	%xmm7, %xmm4
	pmuludq	%xmm11, %xmm3
	movdqa	%xmm4, %xmm9
	psrad	$31, %xmm9
	pand	%xmm7, %xmm9
	movdqa	%xmm15, %xmm13
	paddd	%xmm4, %xmm9
	movdqa	%xmm6, %xmm4
	psrlq	$32, %xmm13
	pmuludq	%xmm15, %xmm4
	movdqa	%xmm15, %xmm12
	pmuludq	%xmm1, %xmm13
	pmuludq	%xmm1, %xmm12
	paddq	%xmm4, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm12
	pand	.LC10(%rip), %xmm12
	movdqa	%xmm12, %xmm13
	movdqa	%xmm12, %xmm4
	psrlq	$32, %xmm13
	pmuludq	%xmm5, %xmm12
	pmuludq	%xmm0, %xmm13
	pmuludq	%xmm0, %xmm4
	paddq	%xmm12, %xmm13
	movdqa	%xmm3, %xmm12
	psllq	$32, %xmm13
	pmuludq	%xmm1, %xmm12
	paddq	%xmm13, %xmm4
	movdqa	%xmm3, %xmm13
	paddq	%xmm15, %xmm4
	psrlq	$32, %xmm13
	movdqa	%xmm6, %xmm15
	pmuludq	%xmm3, %xmm15
	pmuludq	%xmm1, %xmm13
	psrlq	$31, %xmm4
	paddq	%xmm15, %xmm13
	psllq	$32, %xmm13
	paddq	%xmm13, %xmm12
	pand	.LC10(%rip), %xmm12
	movdqa	%xmm12, %xmm15
	movdqa	%xmm12, %xmm13
	psrlq	$32, %xmm15
	pmuludq	%xmm5, %xmm12
	pmuludq	%xmm0, %xmm15
	pmuludq	%xmm0, %xmm13
	paddq	%xmm12, %xmm15
	movdqa	%xmm10, %xmm12
	psllq	$32, %xmm15
	punpckldq	%xmm10, %xmm12
	punpckhdq	%xmm10, %xmm10
	pmuludq	%xmm14, %xmm12
	pmuludq	%xmm11, %xmm10
	paddq	%xmm15, %xmm13
	paddq	%xmm3, %xmm13
	movdqa	%xmm6, %xmm11
	psrlq	$31, %xmm13
	shufps	$136, %xmm13, %xmm4
	psubd	%xmm7, %xmm4
	movdqa	%xmm4, %xmm3
	psrad	$31, %xmm3
	pmuludq	%xmm12, %xmm11
	pand	%xmm7, %xmm3
	paddd	%xmm4, %xmm3
	pshufd	$85, %xmm3, %xmm4
	movd	%xmm3, 0(%rbp,%rax,4)
	movd	%xmm4, 16(%rbp,%rax,4)
	movdqa	%xmm3, %xmm4
	punpckhdq	%xmm3, %xmm4
	pshufd	$255, %xmm3, %xmm3
	movd	%xmm3, 48(%rbp,%rax,4)
	movdqa	%xmm12, %xmm3
	psrlq	$32, %xmm3
	movd	%xmm4, 32(%rbp,%rax,4)
	movdqa	%xmm12, %xmm4
	pmuludq	%xmm1, %xmm3
	pmuludq	%xmm1, %xmm4
	paddq	%xmm11, %xmm3
	psllq	$32, %xmm3
	paddq	%xmm3, %xmm4
	pand	.LC10(%rip), %xmm4
	movdqa	%xmm4, %xmm11
	movdqa	%xmm4, %xmm3
	psrlq	$32, %xmm11
	pmuludq	%xmm5, %xmm4
	pmuludq	%xmm0, %xmm11
	pmuludq	%xmm0, %xmm3
	paddq	%xmm4, %xmm11
	movdqa	%xmm10, %xmm4
	psllq	$32, %xmm11
	pmuludq	%xmm1, %xmm4
	paddq	%xmm11, %xmm3
	movdqa	%xmm10, %xmm11
	paddq	%xmm12, %xmm3
	psrlq	$32, %xmm11
	movdqa	%xmm6, %xmm12
	pmuludq	%xmm10, %xmm12
	pmuludq	%xmm1, %xmm11
	psrlq	$31, %xmm3
	paddq	%xmm12, %xmm11
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm4
	pand	.LC10(%rip), %xmm4
	movdqa	%xmm4, %xmm12
	movdqa	%xmm4, %xmm11
	psrlq	$32, %xmm12
	pmuludq	%xmm5, %xmm4
	pmuludq	%xmm0, %xmm12
	pmuludq	%xmm0, %xmm11
	paddq	%xmm4, %xmm12
	movdqa	%xmm11, %xmm4
	movdqa	%xmm2, %xmm11
	psllq	$32, %xmm12
	punpckldq	%xmm2, %xmm11
	punpckhdq	%xmm2, %xmm2
	paddq	%xmm12, %xmm4
	movdqa	%xmm6, %xmm12
	paddq	%xmm10, %xmm4
	psrlq	$31, %xmm4
	shufps	$136, %xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psubd	%xmm7, %xmm4
	movdqa	%xmm4, %xmm3
	psrad	$31, %xmm3
	pand	%xmm7, %xmm3
	paddd	%xmm4, %xmm3
	pshufd	$85, %xmm3, %xmm4
	movd	%xmm3, (%rsi,%rax,4)
	movd	%xmm4, 16(%rsi,%rax,4)
	movdqa	%xmm3, %xmm4
	punpckhdq	%xmm3, %xmm4
	pshufd	$255, %xmm3, %xmm3
	movd	%xmm4, 32(%rsi,%rax,4)
	movdqa	%xmm9, %xmm4
	punpckldq	%xmm9, %xmm4
	movd	%xmm3, 48(%rsi,%rax,4)
	punpckhdq	%xmm9, %xmm9
	pmuludq	%xmm4, %xmm11
	pmuludq	%xmm9, %xmm2
	movdqa	%xmm11, %xmm3
	pmuludq	%xmm11, %xmm12
	movdqa	%xmm11, %xmm10
	psrlq	$32, %xmm3
	pmuludq	%xmm1, %xmm10
	pmuludq	%xmm1, %xmm3
	paddq	%xmm12, %xmm3
	psllq	$32, %xmm3
	paddq	%xmm3, %xmm10
	pand	.LC10(%rip), %xmm10
	movdqa	%xmm10, %xmm12
	movdqa	%xmm10, %xmm3
	psrlq	$32, %xmm12
	pmuludq	%xmm5, %xmm10
	pmuludq	%xmm0, %xmm12
	pmuludq	%xmm0, %xmm3
	paddq	%xmm10, %xmm12
	movdqa	%xmm2, %xmm10
	psllq	$32, %xmm12
	pmuludq	%xmm1, %xmm10
	paddq	%xmm12, %xmm3
	movdqa	%xmm6, %xmm12
	paddq	%xmm11, %xmm3
	pmuludq	%xmm2, %xmm12
	movdqa	%xmm2, %xmm11
	psrlq	$32, %xmm11
	psrlq	$31, %xmm3
	pmuludq	%xmm1, %xmm11
	paddq	%xmm12, %xmm11
	psllq	$32, %xmm11
	paddq	%xmm11, %xmm10
	pand	.LC10(%rip), %xmm10
	movdqa	%xmm10, %xmm12
	movdqa	%xmm10, %xmm11
	psrlq	$32, %xmm12
	pmuludq	%xmm5, %xmm10
	pmuludq	%xmm0, %xmm12
	pmuludq	%xmm0, %xmm11
	paddq	%xmm10, %xmm12
	movdqa	%xmm11, %xmm10
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm10
	paddq	%xmm10, %xmm2
	movdqa	%xmm8, %xmm10
	psrlq	$31, %xmm2
	punpckldq	%xmm8, %xmm10
	punpckhdq	%xmm8, %xmm8
	shufps	$136, %xmm2, %xmm3
	psubd	%xmm7, %xmm3
	pmuludq	%xmm4, %xmm10
	movdqa	%xmm3, %xmm2
	pmuludq	%xmm9, %xmm8
	psrad	$31, %xmm2
	pand	%xmm7, %xmm2
	paddd	%xmm3, %xmm2
	pshufd	$85, %xmm2, %xmm3
	movd	%xmm2, (%rcx,%rax,4)
	movdqa	%xmm10, %xmm4
	movd	%xmm3, 16(%rcx,%rax,4)
	movdqa	%xmm2, %xmm3
	psrlq	$32, %xmm4
	movdqa	%xmm8, %xmm9
	pmuludq	%xmm1, %xmm4
	psrlq	$32, %xmm9
	punpckhdq	%xmm2, %xmm3
	pshufd	$255, %xmm2, %xmm2
	movd	%xmm3, 32(%rcx,%rax,4)
	movdqa	%xmm1, %xmm3
	movd	%xmm2, 48(%rcx,%rax,4)
	movdqa	%xmm6, %xmm2
	pmuludq	%xmm10, %xmm3
	pmuludq	%xmm10, %xmm2
	pmuludq	%xmm1, %xmm9
	paddq	%xmm4, %xmm2
	psllq	$32, %xmm2
	paddq	%xmm2, %xmm3
	pand	.LC10(%rip), %xmm3
	movdqa	%xmm3, %xmm4
	movdqa	%xmm3, %xmm2
	psrlq	$32, %xmm4
	pmuludq	%xmm5, %xmm3
	pmuludq	%xmm0, %xmm4
	pmuludq	%xmm0, %xmm2
	paddq	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	psllq	$32, %xmm4
	pmuludq	%xmm8, %xmm3
	paddq	%xmm4, %xmm2
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm8, %xmm4
	paddq	%xmm10, %xmm2
	psrlq	$31, %xmm2
	paddq	%xmm9, %xmm4
	psllq	$32, %xmm4
	paddq	%xmm4, %xmm3
	pand	.LC10(%rip), %xmm3
	movdqa	%xmm3, %xmm9
	movdqa	%xmm3, %xmm4
	psrlq	$32, %xmm9
	pmuludq	%xmm5, %xmm3
	pmuludq	%xmm0, %xmm9
	pmuludq	%xmm0, %xmm4
	paddq	%xmm3, %xmm9
	psllq	$32, %xmm9
	paddq	%xmm9, %xmm4
	movdqa	%xmm4, %xmm3
	paddq	%xmm8, %xmm3
	psrlq	$31, %xmm3
	shufps	$136, %xmm3, %xmm2
	psubd	%xmm7, %xmm2
	movdqa	%xmm2, %xmm3
	psrad	$31, %xmm2
	pand	%xmm7, %xmm2
	paddd	%xmm3, %xmm2
	pshufd	$85, %xmm2, %xmm3
	movd	%xmm2, (%rdx,%rax,4)
	movd	%xmm3, 16(%rdx,%rax,4)
	movdqa	%xmm2, %xmm3
	punpckhdq	%xmm2, %xmm3
	pshufd	$255, %xmm2, %xmm2
	movd	%xmm3, 32(%rdx,%rax,4)
	movd	%xmm2, 48(%rdx,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.L372
	movq	544(%rsp), %rax
	movq	168(%rsp), %rsi
	movq	560(%rsp), %rdi
	leaq	0(%rbp,%rax), %rcx
	addq	%rax, %rsi
	cmpq	%rdi, 552(%rsp)
	je	.L374
	movq	776(%rsp), %r9
	movq	136(%rsp), %r8
	movq	784(%rsp), %rax
	movq	800(%rsp), %r11
	movl	(%r9), %edx
	movq	792(%rsp), %rdi
	movl	(%rax), %eax
	movl	(%r11), %r11d
	imulq	%r8, %rdx
	movl	(%rdi), %edi
	movl	%eax, 16(%rsp)
	movl	%r11d, 808(%rsp)
	movq	144(%rsp), %r11
	movq	%rdx, %rax
	movl	%edi, 80(%rsp)
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	movl	%eax, %edi
	subl	%r13d, %edi
	movl	%edi, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	movl	%eax, %r9d
	movq	768(%rsp), %rax
	addl	%r9d, %edi
	movq	816(%rsp), %r9
	movl	(%rax), %edx
	movl	%edi, %edi
	imulq	%r8, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	movl	(%r9), %edx
	movq	144(%rsp), %r9
	shrq	$31, %rax
	imulq	%rdi, %rdx
	subl	%r13d, %eax
	movl	%eax, %r8d
	sarl	$31, %eax
	andl	%r13d, %eax
	movl	%eax, %r11d
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	808(%rsp), %edx
	movl	%eax, (%rcx)
	movq	%r10, %rax
	imulq	%rdi, %rdx
	leal	(%r8,%r11), %edi
	imulq	%rdx, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	80(%rsp), %edx
	movl	%eax, 8(%rcx)
	imulq	%rdi, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movl	%edx, (%rsi)
	movl	16(%rsp), %edx
	imulq	%rdi, %rdx
	movq	%r9, %rdi
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movl	%edx, 8(%rsi)
	movq	824(%rsp), %rdx
	cmpq	%rdx, 8(%rsp)
	jbe	.L374
	movq	920(%rsp), %r9
	movq	832(%rsp), %rdx
	movq	136(%rsp), %r8
	movq	912(%rsp), %r11
	movl	(%r9), %r9d
	movl	(%rdx), %edx
	movl	(%r11), %r11d
	movl	%r9d, 808(%rsp)
	movq	896(%rsp), %r9
	movl	%edx, 16(%rsp)
	movl	(%r9), %edx
	movl	%r11d, 80(%rsp)
	imulq	%r8, %rdx
	movq	%rdx, %r11
	imulq	%r10, %r11
	movq	%r11, %rax
	movq	%rdi, %r11
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	movl	%eax, %edi
	subl	%r13d, %edi
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%edx, %r9d
	movq	840(%rsp), %rdx
	andl	%r13d, %r9d
	movl	(%rdx), %edx
	addl	%r9d, %edi
	movq	904(%rsp), %r9
	movl	%edi, %edi
	imulq	%r8, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	movl	%eax, %edx
	subl	%r13d, %edx
	movl	%edx, %r8d
	sarl	$31, %edx
	andl	%r13d, %edx
	movl	%edx, %r11d
	movl	(%r9), %edx
	imulq	%rdi, %rdx
	movq	%rdx, %r9
	imulq	%r10, %r9
	movq	%r9, %rax
	movq	144(%rsp), %r9
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	808(%rsp), %edx
	movl	%eax, 16(%rcx)
	imulq	%rdi, %rdx
	movq	%rdx, %rdi
	imulq	%r10, %rdi
	movq	%rdi, %rax
	leal	(%r8,%r11), %edi
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	80(%rsp), %edx
	movl	%eax, 24(%rcx)
	imulq	%rdi, %rdx
	movq	%rdx, %r11
	imulq	%r10, %r11
	movq	%r11, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	16(%rsp), %edx
	movl	%eax, 16(%rsi)
	imulq	%rdi, %rdx
	movq	%rdx, %rdi
	imulq	%r10, %rdi
	movq	%rdi, %rax
	movq	%r9, %rdi
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movq	952(%rsp), %rdx
	movl	%eax, 24(%rsi)
	cmpq	%rdx, 8(%rsp)
	jbe	.L374
	movq	880(%rsp), %rdx
	movq	856(%rsp), %r9
	movq	136(%rsp), %r8
	movq	888(%rsp), %rax
	movl	(%rdx), %edx
	movq	872(%rsp), %r11
	movl	(%rax), %eax
	movl	%edx, 80(%rsp)
	movl	(%r9), %edx
	movl	%eax, 808(%rsp)
	movl	(%r11), %r11d
	imulq	%r8, %rdx
	movl	%r11d, 16(%rsp)
	movq	%rdi, %r11
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%rdx, %rax
	movq	848(%rsp), %rdx
	shrq	$31, %rax
	movl	(%rdx), %edx
	movl	%eax, %edi
	subl	%r13d, %edi
	imulq	%r8, %rdx
	movl	%edi, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	movl	%eax, %r9d
	movq	%rdx, %rax
	imulq	%r10, %rax
	addl	%r9d, %edi
	movq	864(%rsp), %r9
	movl	%edi, %edi
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	movl	(%r9), %edx
	movq	144(%rsp), %r9
	shrq	$31, %rax
	movl	%eax, %r8d
	imulq	%rdi, %rdx
	subl	%r13d, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	movl	%eax, %r11d
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movl	%edx, 32(%rcx)
	movl	16(%rsp), %edx
	imulq	%rdi, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movl	%edx, 40(%rcx)
	movl	80(%rsp), %edx
	leal	(%r11,%r8), %ecx
	imulq	%rcx, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movq	%r10, %rax
	movl	%edx, 32(%rsi)
	movl	808(%rsp), %edx
	imulq	%rcx, %rdx
	imulq	%rdx, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	%eax, 40(%rsi)
.L374:
	movl	36(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L526
.L370:
	movl	48(%rsp), %r8d
	movl	36(%rsp), %edx
	movl	%r13d, %ecx
	movq	%rbp, %rdi
	movq	208(%rsp), %rsi
	call	modp_iNTT2_ext.part.0.constprop.1
	movl	48(%rsp), %r8d
	movl	%r13d, %ecx
	movl	36(%rsp), %edx
	movq	208(%rsp), %rsi
	movq	168(%rsp), %rdi
	call	modp_iNTT2_ext.part.0.constprop.1
	cmpq	$0, 224(%rsp)
	je	.L377
.L384:
	addq	$12, 264(%rsp)
	addq	$4, 192(%rsp)
	addq	$4, 104(%rsp)
	addq	$4, 400(%rsp)
	addq	$4, 392(%rsp)
	cmpq	$1, 224(%rsp)
	je	.L527
	movq	264(%rsp), %rax
	movq	$1, 224(%rsp)
	movl	(%rax), %r13d
	jmp	.L390
.L527:
	movq	112(%rsp), %r12
	movq	40(%rsp), %rbx
	movq	200(%rsp), %r15
	movl	$2147473409, (%r12)
	addq	%rbx, %rbx
	je	.L391
	movl	$2147473409, %edi
	xorl	%edx, %edx
	movabsq	$877837101815792415, %rcx
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L528:
	movl	(%r12), %edi
.L393:
	movl	(%r15,%rdx,8), %esi
	leal	-2147389441(%rsi), %eax
	sarl	$31, %eax
	andl	$2147389441, %eax
	leal	188414(%rsi,%rax), %r8d
	movl	4(%r15,%rdx,8), %eax
	subl	%r8d, %eax
	sarl	$31, %r8d
	andl	$2147389441, %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147389441, %r8d
	addl	%eax, %r8d
	movl	%r8d, %r8d
	movq	%r8, %rax
	imulq	$471403745, %r8, %r8
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147389441, %rax, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	$2147389441, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147389441, %r8d
	addl	%r8d, %eax
	movl	%eax, %eax
	imulq	%rdi, %rax
	addq	%rsi, %rax
	movl	%eax, %edi
	shrq	$31, %rax
	andl	$2147483647, %edi
	movd	%eax, %xmm6
	movd	%edi, %xmm0
	punpckldq	%xmm6, %xmm0
	movq	%xmm0, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L528
	movl	(%r12), %eax
	xorl	%edx, %edx
	imulq	$2147389441, %rax, %rax
	movl	%eax, %r11d
	shrq	$31, %rax
	andl	$2147483647, %r11d
	movd	%eax, %xmm6
	movl	%eax, %r9d
	movd	%r11d, %xmm0
	punpckldq	%xmm6, %xmm0
	movq	%xmm0, (%r12)
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L394:
	movl	4(%r12), %r9d
	movl	(%r12), %r11d
.L425:
	movl	4(%r15,%rdx,8), %esi
	movl	%r9d, %edi
	movl	%r9d, %r8d
	shrl	%edi
	sall	$30, %r8d
	movl	%edi, %eax
	movl	%esi, %ecx
	andl	$1073741824, %r8d
	subl	%edi, %ecx
	subl	%esi, %eax
	movl	(%r15,%rdx,8), %edi
	sarl	$31, %eax
	shrl	$31, %ecx
	orl	%eax, %ecx
	movl	%r11d, %eax
	shrl	%eax
	orl	%eax, %r8d
	movl	%edi, %eax
	movl	%r8d, %r10d
	subl	%r8d, %eax
	movl	%ecx, %r8d
	subl	%edi, %r10d
	shrl	$31, %eax
	andl	$1, %r8d
	sarl	$31, %r10d
	subl	$1, %r8d
	orl	%r10d, %eax
	andl	%r8d, %eax
	movl	%edi, %r8d
	subl	%r11d, %r8d
	orl	%ecx, %eax
	movl	%r8d, %ecx
	sarl	$31, %eax
	andl	$2147483647, %ecx
	shrl	$31, %r8d
	xorl	%edi, %ecx
	andl	%eax, %ecx
	xorl	%edi, %ecx
	movl	%ecx, (%r15,%rdx,8)
	movl	%esi, %ecx
	subl	%r9d, %ecx
	subl	%r8d, %ecx
	andl	$2147483647, %ecx
	xorl	%esi, %ecx
	andl	%ecx, %eax
	xorl	%esi, %eax
	movl	%eax, 4(%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L394
	movq	240(%rsp), %rdi
	movl	$2147473409, (%r12)
	movl	$1073736704, %eax
	leaq	-1(%rbx), %rsi
	movl	(%rdi), %ecx
	leal	-2147473409(%rcx), %edx
	subl	%ecx, %eax
	andl	$2147483647, %edx
	sarl	$31, %eax
	xorl	%ecx, %edx
	andl	%edx, %eax
	movq	1072(%rsp), %rdx
	xorl	%ecx, %eax
	movl	%eax, (%rdi)
	movq	472(%rsp), %rax
	addq	%rax, %rdx
	addq	$4, %rax
	leaq	(%rax,%rsi,4), %rcx
	cmpq	%rcx, %rdx
	setge	%cl
	addq	$4, %rdx
	cmpq	%rdx, %rax
	setge	%dl
	orb	%dl, %cl
	je	.L521
	leaq	-2(%rbx), %rdx
	cmpq	$2, %rdx
	jbe	.L521
	movd	(%r12), %xmm7
	movq	%rsi, %rcx
	addq	%r15, %rax
	xorl	%edx, %edx
	movdqa	.LC11(%rip), %xmm1
	shrq	$2, %rcx
	pxor	%xmm5, %xmm5
	movd	%xmm7, %edi
	pshufd	$0, %xmm7, %xmm6
	shrl	%edi
	movd	%edi, %xmm4
	pshufd	$0, %xmm4, %xmm4
.L396:
	movdqu	(%rax), %xmm3
	movdqa	%xmm4, %xmm0
	addq	$1, %rdx
	addq	$16, %rax
	movdqa	%xmm3, %xmm2
	psubd	%xmm3, %xmm0
	psubd	%xmm4, %xmm2
	psrad	$31, %xmm0
	psrld	$31, %xmm2
	por	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$31, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm3, %xmm0
	psubd	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	pand	%xmm2, %xmm0
	pxor	%xmm3, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rcx
	jne	.L396
	movq	240(%rsp), %rdi
	movq	%rsi, %rax
	andq	$-4, %rax
	leaq	4(%rdi,%rax,4), %rdx
	cmpq	%rsi, %rax
	je	.L426
	movl	(%rdx), %edi
	movl	(%r12), %r8d
	movl	%edi, %esi
	movl	%r8d, %ecx
	shrl	%ecx
	subl	%r8d, %esi
	subl	%edi, %ecx
	andl	$2147483647, %esi
	sarl	$31, %ecx
	xorl	%edi, %esi
	andl	%esi, %ecx
	xorl	%edi, %ecx
	movl	%ecx, (%rdx)
	leaq	2(%rax), %rcx
	cmpq	%rcx, %rbx
	jbe	.L426
	movl	4(%rdx), %edi
	movl	(%r12), %r8d
	addq	$3, %rax
	movl	%r8d, %ecx
	movl	%edi, %esi
	shrl	%ecx
	subl	%r8d, %esi
	subl	%edi, %ecx
	andl	$2147483647, %esi
	sarl	$31, %ecx
	xorl	%edi, %esi
	andl	%esi, %ecx
	xorl	%edi, %ecx
	movl	%ecx, 4(%rdx)
	cmpq	%rax, %rbx
	jbe	.L426
	movl	8(%rdx), %esi
	movl	(%r12), %edi
	movl	%esi, %ecx
	movl	%edi, %eax
	shrl	%eax
	subl	%edi, %ecx
	subl	%esi, %eax
	andl	$2147483647, %ecx
	sarl	$31, %eax
	xorl	%esi, %ecx
	andl	%ecx, %eax
	xorl	%esi, %eax
	movl	%eax, 8(%rdx)
.L426:
	movq	%r12, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	andl	$7, %edx
	je	.L400
	addq	$8, %rax
	subq	%rdx, %rax
	leaq	(%r15,%rax), %r12
.L400:
	movzbl	36(%rsp), %ecx
	movl	$8, %eax
	salq	%cl, %rax
	cmpq	$2, 368(%rsp)
	movq	%rax, 8(%rsp)
	jbe	.L441
	movq	632(%rsp), %rdx
	xorl	%eax, %eax
	pxor	%xmm6, %xmm6
	movdqa	.LC11(%rip), %xmm1
	movdqa	.LC12(%rip), %xmm2
	movapd	.LC13(%rip), %xmm3
	pxor	%xmm5, %xmm5
	salq	$5, %rdx
.L402:
	movdqu	(%r15,%rax), %xmm7
	movdqu	16(%r15,%rax), %xmm4
	movdqa	%xmm6, %xmm8
	movdqa	%xmm7, %xmm10
	shufps	$136, %xmm4, %xmm7
	shufps	$221, %xmm4, %xmm10
	movdqa	%xmm10, %xmm0
	psrld	$30, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm8, %xmm0
	movdqa	%xmm8, %xmm4
	psrld	$1, %xmm0
	pand	%xmm2, %xmm4
	pxor	%xmm0, %xmm7
	pxor	%xmm10, %xmm0
	paddd	%xmm4, %xmm7
	movdqa	%xmm7, %xmm4
	psrld	$31, %xmm7
	paddd	%xmm7, %xmm0
	pand	%xmm1, %xmm4
	pand	%xmm1, %xmm0
	movdqa	%xmm4, %xmm9
	movdqa	%xmm0, %xmm7
	pslld	$1, %xmm9
	pslld	$1, %xmm7
	pand	%xmm8, %xmm9
	pand	%xmm8, %xmm7
	psubd	%xmm9, %xmm4
	psubd	%xmm7, %xmm0
	cvtdq2pd	%xmm4, %xmm8
	pshufd	$238, %xmm4, %xmm4
	addpd	%xmm5, %xmm8
	cvtdq2pd	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm0
	cvtdq2pd	%xmm4, %xmm4
	addpd	%xmm5, %xmm4
	mulpd	%xmm3, %xmm7
	cvtdq2pd	%xmm0, %xmm0
	mulpd	%xmm3, %xmm0
	addpd	%xmm8, %xmm7
	addpd	%xmm4, %xmm0
	movups	%xmm7, (%r12,%rax)
	movups	%xmm0, 16(%r12,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L402
	movq	496(%rsp), %rax
	leaq	(%r15,%rax), %rcx
	movq	184(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%rax, 40(%rsp)
	je	.L403
.L401:
	movl	4(%rcx), %r10d
	movl	(%rcx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movsd	.LC1(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	40(%rsp), %rbx
	movl	%r10d, %edi
	shrl	$30, %edi
	negl	%edi
	movl	%edi, %r9d
	movl	%edi, %edx
	shrl	%r9d
	andl	$1, %edx
	xorl	%r9d, %eax
	xorl	%r9d, %r10d
	leaq	0(,%rsi,8), %r9
	addl	%edx, %eax
	movl	%eax, %edx
	movl	%eax, %r8d
	addl	%eax, %eax
	shrl	$31, %edx
	andl	%edi, %eax
	andl	$2147483647, %r8d
	addl	%r10d, %edx
	subl	%eax, %r8d
	movl	%edx, %r10d
	cvtsi2sdl	%r8d, %xmm2
	leal	(%rdx,%rdx), %eax
	andl	%edi, %eax
	andl	$2147483647, %r10d
	subl	%eax, %r10d
	leaq	1(%rsi), %rax
	cvtsi2sdl	%r10d, %xmm3
	addsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, (%r12,%rsi,8)
	cmpq	%rax, %rbx
	jbe	.L404
	movl	12(%rcx), %r11d
	movl	8(%rcx), %edx
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	addq	$2, %rsi
	movl	%r11d, %edi
	shrl	$30, %edi
	negl	%edi
	movl	%edi, %eax
	movl	%edi, %r8d
	shrl	%eax
	andl	$1, %r8d
	xorl	%eax, %edx
	xorl	%r11d, %eax
	addl	%r8d, %edx
	movl	%edx, %r8d
	movl	%edx, %r10d
	shrl	$31, %r8d
	andl	$2147483647, %r10d
	addl	%r8d, %eax
	movl	%eax, %r8d
	addl	%eax, %eax
	andl	%edi, %eax
	andl	$2147483647, %r8d
	subl	%eax, %r8d
	leal	(%rdx,%rdx), %eax
	cvtsi2sdl	%r8d, %xmm2
	andl	%edi, %eax
	subl	%eax, %r10d
	cvtsi2sdl	%r10d, %xmm3
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, 8(%r12,%r9)
	cmpq	%rsi, %rbx
	jbe	.L404
	movl	20(%rcx), %edi
	movl	16(%rcx), %edx
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movl	%edi, %esi
	shrl	$30, %esi
	negl	%esi
	movl	%esi, %eax
	movl	%esi, %ecx
	shrl	%eax
	andl	$1, %ecx
	xorl	%eax, %edx
	xorl	%edi, %eax
	addl	%ecx, %edx
	movl	%edx, %edi
	movl	%edx, %ecx
	shrl	$31, %edi
	andl	$2147483647, %ecx
	addl	%edi, %eax
	movl	%eax, %edi
	addl	%eax, %eax
	andl	%esi, %eax
	andl	$2147483647, %edi
	subl	%eax, %edi
	leal	(%rdx,%rdx), %eax
	cvtsi2sdl	%edi, %xmm2
	andl	%esi, %eax
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, 16(%r12,%r9)
.L404:
	cmpq	$2, 368(%rsp)
	jbe	.L442
	movdqa	.LC11(%rip), %xmm1
	movdqa	.LC12(%rip), %xmm2
	movapd	.LC13(%rip), %xmm3
.L403:
	movq	8(%rsp), %rax
	movq	632(%rsp), %rdx
	pxor	%xmm6, %xmm6
	pxor	%xmm5, %xmm5
	movq	328(%rsp), %rcx
	leaq	(%r12,%rax), %rsi
	salq	$5, %rdx
	xorl	%eax, %eax
.L406:
	movdqu	(%rcx,%rax), %xmm7
	movdqu	16(%rcx,%rax), %xmm4
	movdqa	%xmm6, %xmm8
	movdqa	%xmm7, %xmm10
	shufps	$136, %xmm4, %xmm7
	shufps	$221, %xmm4, %xmm10
	movdqa	%xmm10, %xmm0
	psrld	$30, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm8, %xmm0
	movdqa	%xmm8, %xmm4
	psrld	$1, %xmm0
	pand	%xmm2, %xmm4
	pxor	%xmm0, %xmm7
	pxor	%xmm10, %xmm0
	paddd	%xmm4, %xmm7
	movdqa	%xmm7, %xmm4
	psrld	$31, %xmm7
	paddd	%xmm7, %xmm0
	pand	%xmm1, %xmm4
	pand	%xmm1, %xmm0
	movdqa	%xmm4, %xmm9
	movdqa	%xmm0, %xmm7
	pslld	$1, %xmm9
	pslld	$1, %xmm7
	pand	%xmm8, %xmm9
	pand	%xmm8, %xmm7
	psubd	%xmm9, %xmm4
	psubd	%xmm7, %xmm0
	cvtdq2pd	%xmm4, %xmm8
	pshufd	$238, %xmm4, %xmm4
	addpd	%xmm5, %xmm8
	cvtdq2pd	%xmm0, %xmm7
	pshufd	$238, %xmm0, %xmm0
	cvtdq2pd	%xmm4, %xmm4
	addpd	%xmm5, %xmm4
	mulpd	%xmm3, %xmm7
	cvtdq2pd	%xmm0, %xmm0
	mulpd	%xmm3, %xmm0
	addpd	%xmm8, %xmm7
	addpd	%xmm4, %xmm0
	movups	%xmm7, (%rsi,%rax)
	movups	%xmm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L406
	movq	496(%rsp), %rbx
	movq	184(%rsp), %rax
	addq	%rbx, 328(%rsp)
	cmpq	%rax, 40(%rsp)
	je	.L407
	movsd	.LC1(%rip), %xmm1
	movq	%rax, %rdx
	pxor	%xmm0, %xmm0
.L405:
	movq	328(%rsp), %rbx
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movq	40(%rsp), %r14
	leaq	(%rsi,%rdx,8), %rsi
	movl	4(%rbx), %r9d
	movl	(%rbx), %ecx
	movl	%r9d, %edi
	shrl	$30, %edi
	negl	%edi
	movl	%edi, %eax
	movl	%edi, %r8d
	shrl	%eax
	andl	$1, %r8d
	xorl	%eax, %ecx
	xorl	%r9d, %eax
	addl	%r8d, %ecx
	movl	%ecx, %r9d
	movl	%ecx, %r8d
	shrl	$31, %r9d
	andl	$2147483647, %r8d
	addl	%r9d, %eax
	movl	%eax, %r9d
	addl	%eax, %eax
	andl	%edi, %eax
	andl	$2147483647, %r9d
	subl	%eax, %r9d
	leal	(%rcx,%rcx), %eax
	andl	%edi, %eax
	cvtsi2sdl	%r9d, %xmm2
	subl	%eax, %r8d
	leaq	1(%rdx), %rax
	cvtsi2sdl	%r8d, %xmm3
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, (%rsi)
	cmpq	%rax, %r14
	jbe	.L408
	movl	12(%rbx), %r10d
	movl	8(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	addq	$2, %rdx
	movl	%r10d, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %r8d
	movl	%ecx, %edi
	shrl	%r8d
	andl	$1, %edi
	xorl	%r8d, %eax
	xorl	%r10d, %r8d
	addl	%edi, %eax
	movl	%eax, %r9d
	movl	%eax, %edi
	addl	%eax, %eax
	shrl	$31, %r9d
	andl	%ecx, %eax
	andl	$2147483647, %edi
	addl	%r9d, %r8d
	subl	%eax, %edi
	movl	%r8d, %r9d
	cvtsi2sdl	%edi, %xmm2
	leal	(%r8,%r8), %eax
	andl	$2147483647, %r9d
	andl	%ecx, %eax
	subl	%eax, %r9d
	cvtsi2sdl	%r9d, %xmm3
	addsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, 8(%rsi)
	cmpq	%rdx, %r14
	jbe	.L408
	movl	20(%rbx), %r8d
	movl	16(%rbx), %edx
	pxor	%xmm2, %xmm2
	movl	%r8d, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %eax
	movl	%ecx, %edi
	shrl	%eax
	andl	$1, %edi
	xorl	%eax, %edx
	xorl	%r8d, %eax
	addl	%edi, %edx
	movl	%edx, %r8d
	movl	%edx, %edi
	shrl	$31, %r8d
	andl	$2147483647, %edi
	addl	%r8d, %eax
	movl	%eax, %r8d
	addl	%eax, %eax
	andl	%ecx, %eax
	andl	$2147483647, %r8d
	subl	%eax, %r8d
	leal	(%rdx,%rdx), %eax
	cvtsi2sdl	%r8d, %xmm2
	andl	%ecx, %eax
	subl	%eax, %edi
	mulsd	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edi, %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsi)
.L408:
	movq	8(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%r15, %rdi
	call	memmove@PLT
	movq	248(%rsp), %rax
	leaq	(%r15,%rax), %rbx
	leaq	(%rbx,%rax), %rbp
	movq	%rbp, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	andl	$7, %edx
	jne	.L431
.L409:
	movzbl	36(%rsp), %ecx
	movl	$16, %eax
	movq	%r12, %rsi
	movq	%rbp, %rdi
	salq	%cl, %rax
	movq	%rax, %rdx
	movq	%rax, 48(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rax
	cmpq	$2, 368(%rsp)
	leaq	0(%rbp,%rax,2), %r12
	jbe	.L443
	movdqa	.LC11(%rip), %xmm1
	movdqa	.LC12(%rip), %xmm2
.L430:
	movq	336(%rsp), %rdx
	xorl	%eax, %eax
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
.L411:
	movdqu	(%r15,%rax), %xmm0
	movdqa	%xmm5, %xmm6
	movdqu	(%r15,%rax), %xmm7
	psrld	$30, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	%xmm6, %xmm3
	psrld	$1, %xmm0
	pand	%xmm2, %xmm3
	pxor	%xmm7, %xmm0
	paddd	%xmm3, %xmm0
	pand	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pslld	$1, %xmm3
	pand	%xmm6, %xmm3
	psubd	%xmm3, %xmm0
	cvtdq2pd	%xmm0, %xmm3
	pshufd	$238, %xmm0, %xmm0
	addpd	%xmm4, %xmm3
	cvtdq2pd	%xmm0, %xmm0
	addpd	%xmm4, %xmm0
	movups	%xmm3, (%r12,%rax,2)
	movups	%xmm0, 16(%r12,%rax,2)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L411
	movq	376(%rsp), %rax
	leaq	(%r15,%rax), %rsi
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	cmpq	%rax, 40(%rsp)
	je	.L412
.L410:
	movl	(%rsi), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	40(%rsp), %r14
	movl	%edx, %r8d
	shrl	$30, %r8d
	negl	%r8d
	movl	%r8d, %eax
	shrl	%eax
	xorl	%edx, %eax
	movl	%r8d, %edx
	andl	$1, %edx
	addl	%edx, %eax
	leaq	0(,%rcx,8), %rdx
	movl	%eax, %edi
	addl	%eax, %eax
	andl	%r8d, %eax
	andl	$2147483647, %edi
	subl	%eax, %edi
	leaq	1(%rcx), %rax
	cvtsi2sdl	%edi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12,%rcx,8)
	cmpq	%rax, %r14
	jbe	.L413
	movl	4(%rsi), %edi
	pxor	%xmm1, %xmm1
	addq	$2, %rcx
	movl	%edi, %r8d
	shrl	$30, %r8d
	negl	%r8d
	movl	%r8d, %eax
	shrl	%eax
	xorl	%edi, %eax
	movl	%r8d, %edi
	andl	$1, %edi
	addl	%edi, %eax
	movl	%eax, %edi
	addl	%eax, %eax
	andl	$2147483647, %edi
	andl	%r8d, %eax
	subl	%eax, %edi
	cvtsi2sdl	%edi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%r12,%rdx)
	cmpq	%rcx, %r14
	jbe	.L413
	movl	8(%rsi), %esi
	pxor	%xmm1, %xmm1
	movl	%esi, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %eax
	shrl	%eax
	xorl	%esi, %eax
	movl	%ecx, %esi
	andl	$1, %esi
	addl	%esi, %eax
	movl	%eax, %esi
	addl	%eax, %eax
	andl	$2147483647, %esi
	andl	%ecx, %eax
	subl	%eax, %esi
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%r12,%rdx)
.L413:
	cmpq	$2, 368(%rsp)
	jbe	.L444
	movdqa	.LC11(%rip), %xmm1
	movdqa	.LC12(%rip), %xmm2
.L412:
	movq	8(%rsp), %rax
	movq	336(%rsp), %rcx
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	leaq	(%r12,%rax), %rdx
	xorl	%eax, %eax
.L415:
	movdqu	(%rbx,%rax), %xmm0
	movdqa	%xmm5, %xmm6
	movdqu	(%rbx,%rax), %xmm7
	psrld	$30, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	%xmm6, %xmm3
	psrld	$1, %xmm0
	pand	%xmm2, %xmm3
	pxor	%xmm7, %xmm0
	paddd	%xmm3, %xmm0
	pand	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pslld	$1, %xmm3
	pand	%xmm6, %xmm3
	psubd	%xmm3, %xmm0
	cvtdq2pd	%xmm0, %xmm3
	pshufd	$238, %xmm0, %xmm0
	addpd	%xmm4, %xmm3
	cvtdq2pd	%xmm0, %xmm0
	addpd	%xmm4, %xmm0
	movups	%xmm3, (%rdx,%rax,2)
	movups	%xmm0, 16(%rdx,%rax,2)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L415
	movq	376(%rsp), %rcx
	movq	184(%rsp), %rsi
	addq	%rbx, %rcx
	cmpq	%rsi, 40(%rsp)
	je	.L416
	pxor	%xmm0, %xmm0
	movq	%rsi, %r14
.L414:
	movl	(%rcx), %esi
	pxor	%xmm1, %xmm1
	movq	40(%rsp), %r11
	leaq	(%rdx,%r14,8), %rdx
	movl	%esi, %edi
	shrl	$30, %edi
	negl	%edi
	movl	%edi, %eax
	shrl	%eax
	xorl	%esi, %eax
	movl	%edi, %esi
	andl	$1, %esi
	addl	%esi, %eax
	movl	%eax, %esi
	addl	%eax, %eax
	andl	%edi, %eax
	andl	$2147483647, %esi
	subl	%eax, %esi
	movq	416(%rsp), %rax
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdx)
	cmpq	%rax, %r11
	jbe	.L416
	movl	4(%rcx), %edi
	pxor	%xmm1, %xmm1
	movl	%edi, %esi
	shrl	$30, %esi
	negl	%esi
	movl	%esi, %eax
	shrl	%eax
	xorl	%edi, %eax
	movl	%esi, %edi
	andl	$1, %edi
	addl	%edi, %eax
	movl	%eax, %edi
	addl	%eax, %eax
	andl	%esi, %eax
	andl	$2147483647, %edi
	subl	%eax, %edi
	movq	%r14, %rax
	cvtsi2sdl	%edi, %xmm1
	addq	$2, %rax
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rdx)
	cmpq	%rax, %r11
	jbe	.L416
	movl	8(%rcx), %esi
	pxor	%xmm1, %xmm1
	movl	%esi, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %eax
	shrl	%eax
	xorl	%esi, %eax
	movl	%ecx, %esi
	andl	$1, %esi
	addl	%esi, %eax
	movl	%eax, %esi
	addl	%eax, %eax
	andl	$2147483647, %esi
	andl	%ecx, %eax
	subl	%eax, %esi
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rdx)
.L416:
	movzbl	36(%rsp), %ecx
	movl	$32, %eax
	movq	%rbp, %rsi
	movq	%r15, %rdi
	salq	%cl, %rax
	movq	%rax, %rdx
	call	memmove@PLT
	movq	8(%rsp), %rsi
	movq	%r15, %rdi
	leaq	(%r15,%rsi), %r13
	movq	%r13, %rax
	addq	%rsi, %rax
	movq	%rax, %r14
	movq	%rax, 16(%rsp)
	addq	%rsi, %r14
	movl	36(%rsp), %esi
	call	falcon_inner_FFT@PLT
	movl	36(%rsp), %esi
	movq	%r13, %rdi
	movq	%r13, 64(%rsp)
	call	falcon_inner_FFT@PLT
	movl	36(%rsp), %r13d
	movq	16(%rsp), %rdi
	movl	%r13d, %esi
	call	falcon_inner_FFT@PLT
	movl	%r13d, %esi
	movq	%r14, %rdi
	movl	%r13d, 36(%rsp)
	call	falcon_inner_FFT@PLT
	movq	8(%rsp), %rsi
	movl	36(%rsp), %r9d
	movq	%r14, %r8
	movq	16(%rsp), %rcx
	movq	64(%rsp), %rdx
	leaq	(%r14,%rsi), %r13
	leaq	0(%r13,%rsi), %r10
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r10, 96(%rsp)
	call	falcon_inner_poly_add_muladj_fft@PLT
	movl	36(%rsp), %ecx
	movq	16(%rsp), %rsi
	movq	%r14, %rdx
	movq	96(%rsp), %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	36(%rsp), %edx
	movq	96(%rsp), %rsi
	movq	%r13, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	36(%rsp), %esi
	movq	%r13, %rdi
	call	falcon_inner_iFFT@PLT
	movsd	.LC14(%rip), %xmm3
	xorl	%ecx, %ecx
	movsd	.LC15(%rip), %xmm4
	movsd	.LC16(%rip), %xmm1
	movq	40(%rsp), %rsi
	movabsq	$-4503599627370496, %r10
	movabsq	$4503599627370496, %r9
	movsd	.LC17(%rip), %xmm5
	.p2align 4,,10
	.p2align 3
.L420:
	movsd	0(%r13,%rcx,8), %xmm0
	comisd	%xmm0, %xmm3
	jbe	.L517
	comisd	%xmm4, %xmm0
	jbe	.L517
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %rdi
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r8
	movapd	%xmm0, %xmm2
	subsd	%xmm5, %xmm0
	movq	%rdi, %rax
	subsd	%xmm1, %xmm2
	shrq	$52, %rax
	addl	$1, %eax
	cvttsd2siq	%xmm0, %r11
	andl	$4095, %eax
	pxor	%xmm0, %xmm0
	cvttsd2siq	%xmm2, %rdx
	addq	%r10, %r8
	subl	$2, %eax
	shrl	$31, %eax
	sarq	$63, %r11
	addq	%r9, %rdx
	xorq	%r8, %rdx
	andq	%r11, %rdx
	xorq	%r8, %rdx
	movq	%rax, %r8
	subq	$1, %rax
	negq	%r8
	andq	%rdi, %rax
	andq	%r8, %rdx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 0(%r13,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	jne	.L420
	movl	36(%rsp), %esi
	movq	%r13, %rdi
	call	falcon_inner_FFT@PLT
	movl	36(%rsp), %edx
	movq	16(%rsp), %rdi
	movq	%r13, %rsi
	call	falcon_inner_poly_mul_fft@PLT
	movl	36(%rsp), %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	36(%rsp), %r13d
	movq	16(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	call	falcon_inner_poly_sub@PLT
	movq	%r14, %rsi
	movq	64(%rsp), %r14
	movl	%r13d, %edx
	movq	%r14, %rdi
	call	falcon_inner_poly_sub@PLT
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	falcon_inner_iFFT@PLT
	movl	%r13d, %esi
	movq	%r14, %rdi
	call	falcon_inner_iFFT@PLT
	movq	48(%rsp), %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	memmove@PLT
	movq	.LC17(%rip), %rax
	movq	40(%rsp), %r8
	xorl	%ecx, %ecx
	movabsq	$-4503599627370496, %rdi
	subq	8(%rsp), %r12
	movabsq	$4503599627370496, %rsi
	movq	%rax, %xmm5
	movq	.LC16(%rip), %rax
	movq	%rax, %xmm1
.L421:
	movsd	0(%rbp,%rcx,8), %xmm0
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r9
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r10
	movapd	%xmm0, %xmm2
	subsd	%xmm5, %xmm0
	movq	%r9, %rax
	subsd	%xmm1, %xmm2
	shrq	$52, %rax
	addl	$1, %eax
	cvttsd2siq	%xmm0, %r11
	movsd	(%r12,%rcx,8), %xmm0
	andl	$4095, %eax
	cvttsd2siq	%xmm2, %rdx
	addq	%rdi, %r10
	subl	$2, %eax
	movapd	%xmm0, %xmm2
	shrl	$31, %eax
	addsd	%xmm1, %xmm2
	sarq	$63, %r11
	addq	%rsi, %rdx
	xorq	%r10, %rdx
	andq	%r11, %rdx
	xorq	%r10, %rdx
	movq	%rax, %r10
	subq	$1, %rax
	negq	%r10
	andq	%r9, %rax
	andq	%r10, %rdx
	cvttsd2siq	%xmm2, %r10
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r9
	subsd	%xmm1, %xmm2
	orq	%rdx, %rax
	subsd	%xmm5, %xmm0
	movl	%eax, (%r15,%rcx,4)
	cvttsd2siq	%xmm2, %rdx
	subq	%rsi, %r10
	cvttsd2siq	%xmm0, %r11
	movq	%r9, %rax
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	addq	%rsi, %rdx
	xorq	%r10, %rdx
	subl	$2, %eax
	sarq	$63, %r11
	shrl	$31, %eax
	andq	%r11, %rdx
	xorq	%r10, %rdx
	movq	%rax, %r10
	subq	$1, %rax
	negq	%r10
	andq	%r9, %rax
	andq	%r10, %rdx
	orq	%rdx, %rax
	movl	%eax, (%rbx,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L421
	movl	$1, %eax
	jmp	.L339
.L526:
	cmpq	$0, 224(%rsp)
	jne	.L384
	movq	104(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	512(%rsp), %rdx
	addq	%rax, %rcx
	addq	%rax, %rdx
.L380:
	movq	120(%rsp), %rdi
	movq	128(%rsp), %r8
	xorl	%eax, %eax
.L388:
	movl	(%rdi,%rax,4), %esi
	movl	%esi, (%rcx,%rax,4)
	movl	(%r8,%rax,4), %esi
	movl	%esi, (%rdx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 40(%rsp)
	jne	.L388
	jmp	.L384
.L517:
	xorl	%eax, %eax
.L339:
	addq	$1672, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L407:
	.cfi_restore_state
	movq	8(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%r15, %rdi
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 16(%rsp)
	call	memmove@PLT
	movq	248(%rsp), %rax
	leaq	(%r15,%rax), %rbx
	leaq	(%rbx,%rax), %rbp
	movq	%rbp, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	andl	$7, %edx
	je	.L529
.L431:
	addq	$8, %rax
	subq	%rdx, %rax
	leaq	(%r15,%rax), %rbp
	jmp	.L409
.L434:
	movq	384(%rsp), %rcx
	movq	64(%rsp), %rdi
	xorl	%eax, %eax
	movq	216(%rsp), %rsi
	movq	408(%rsp), %r8
	movq	344(%rsp), %r9
.L349:
	movsbl	(%r8,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	%r13d, %edx
	addl	%r10d, %edx
	movl	%edx, (%rsi,%rax,4)
	movsbl	(%r9,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	%r13d, %edx
	addl	%r10d, %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L349
	jmp	.L352
.L437:
	movq	8(%rsp), %rcx
	movq	152(%rsp), %rsi
	xorl	%eax, %eax
	movq	160(%rsp), %rdi
	movq	168(%rsp), %r8
.L366:
	movl	0(%rbp,%rax,8), %edx
	movl	%edx, (%rsi,%rax,4)
	movl	(%r8,%rax,8), %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L366
	jmp	.L368
.L433:
	movq	%rbp, 16(%rsp)
	movq	104(%rsp), %rbp
	xorl	%esi, %esi
.L343:
	movl	4(%r15,%rsi,8), %edi
	movl	(%r15,%rsi,8), %r14d
	movl	%edi, %eax
	subl	%r8d, %r14d
	shrl	$30, %edi
	subl	%r8d, %eax
	negl	%edi
	movl	%eax, %r13d
	addl	%r10d, %eax
	andl	%ecx, %edi
	sarl	$31, %r13d
	andl	%r8d, %r13d
	addl	%r13d, %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	andl	%r8d, %r13d
	addl	%eax, %r13d
	movq	%rdx, %rax
	movl	%r13d, %r13d
	imulq	%rbx, %r13
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%r13, %rax
	movl	%r14d, %r13d
	subl	%r8d, %r14d
	sarl	$31, %r13d
	shrq	$31, %rax
	andl	%r8d, %r13d
	subl	%r8d, %eax
	addl	%r14d, %r13d
	addl	%eax, %r13d
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	sarl	$31, %eax
	subl	%edi, %r13d
	andl	%r8d, %eax
	addl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r8d, %edi
	addl	%edi, %eax
	movl	%eax, 0(%rbp,%rsi,8)
	movl	4(%r9,%rsi,8), %edi
	movl	(%r9,%rsi,8), %r14d
	movl	%edi, %eax
	shrl	$30, %edi
	subl	%r8d, %eax
	subl	%r8d, %r14d
	negl	%edi
	movl	%eax, %r13d
	addl	%r10d, %eax
	andl	%ecx, %edi
	sarl	$31, %r13d
	andl	%r8d, %r13d
	addl	%r13d, %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	andl	%r8d, %r13d
	addl	%eax, %r13d
	movq	%rdx, %rax
	movl	%r13d, %r13d
	imulq	%rbx, %r13
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%r13, %rax
	movl	%r14d, %r13d
	subl	%r8d, %r14d
	sarl	$31, %r13d
	shrq	$31, %rax
	andl	%r8d, %r13d
	subl	%r8d, %eax
	addl	%r14d, %r13d
	addl	%eax, %r13d
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	sarl	$31, %eax
	subl	%edi, %r13d
	andl	%r8d, %eax
	addl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r8d, %edi
	addl	%edi, %eax
	movl	%eax, (%r12,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, 8(%rsp)
	jne	.L343
	movq	16(%rsp), %rbp
	jmp	.L346
.L438:
	movq	%rbp, 16(%rsp)
	movq	168(%rsp), %r11
	xorl	%ecx, %ecx
	movq	%r12, 808(%rsp)
	movq	144(%rsp), %r9
	movq	%r15, 1656(%rsp)
	movq	%r14, 80(%rsp)
	movq	128(%rsp), %r14
	movq	%rbx, 144(%rsp)
	movq	%rbp, %rbx
.L371:
	movq	120(%rsp), %rax
	movq	136(%rsp), %r15
	movl	(%r14,%rcx,8), %r8d
	movl	(%rax,%rcx,8), %esi
	movl	4(%rax,%rcx,8), %edi
	movq	152(%rsp), %rax
	movl	(%rax,%rcx,4), %edx
	imulq	%r15, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	160(%rsp), %rax
	shrq	$31, %rdx
	subl	%r13d, %edx
	movl	(%rax,%rcx,4), %ebp
	movl	%edx, %r12d
	sarl	$31, %r12d
	imulq	%r15, %rbp
	movl	4(%r14,%rcx,8), %r15d
	andl	%r13d, %r12d
	addl	%edx, %r12d
	movl	%r12d, %r12d
	movq	%rbp, %rax
	imulq	%r12, %r15
	imulq	%r10, %rax
	imulq	%r12, %r8
	movq	%r15, %rdx
	imulq	%r10, %rdx
	andl	$2147483647, %eax
	imulq	%r9, %rax
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	addq	%rbp, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	addq	%r15, %rdx
	movl	%eax, %ebp
	shrq	$31, %rdx
	sarl	$31, %ebp
	subl	%r13d, %edx
	andl	%r13d, %ebp
	movl	%edx, %r15d
	sarl	$31, %r15d
	andl	%r13d, %r15d
	addl	%edx, %r15d
	movq	%r8, %rdx
	imulq	%r10, %rdx
	movl	%r15d, (%rbx)
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	addq	$1, %rcx
	addq	$16, %rbx
	addq	$16, %r11
	addq	%r8, %rdx
	shrq	$31, %rdx
	subl	%r13d, %edx
	movl	%edx, %r8d
	sarl	$31, %r8d
	andl	%r13d, %r8d
	addl	%edx, %r8d
	leal	0(%rbp,%rax), %edx
	imulq	%rdx, %rdi
	movl	%r8d, -8(%rbx)
	imulq	%rdx, %rsi
	movq	%rdi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	addl	%eax, %edi
	movq	%rsi, %rax
	imulq	%r10, %rax
	movl	%edi, -16(%r11)
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%eax, %edx
	movl	%edx, -8(%r11)
	cmpq	%rcx, 8(%rsp)
	ja	.L371
	movq	16(%rsp), %rbp
	movq	80(%rsp), %r14
	movq	144(%rsp), %rbx
	movq	808(%rsp), %r12
	movq	1656(%rsp), %r15
	jmp	.L374
.L377:
	movl	36(%rsp), %ebp
	movl	48(%rsp), %r8d
	movl	%r13d, %ecx
	movq	208(%rsp), %rsi
	movq	120(%rsp), %rdi
	movl	%ebp, %edx
	call	modp_iNTT2_ext.part.0.constprop.0
	movl	48(%rsp), %r8d
	movl	%r13d, %ecx
	movl	%ebp, %edx
	movq	208(%rsp), %rsi
	movq	128(%rsp), %rdi
	call	modp_iNTT2_ext.part.0.constprop.0
	movq	104(%rsp), %rdi
	movq	240(%rsp), %rcx
	movq	512(%rsp), %rdx
	movq	1648(%rsp), %rsi
	movq	%rdi, %rax
	subq	488(%rsp), %rax
	addq	%rdi, %rcx
	movq	392(%rsp), %r11
	subq	$4, %rax
	leaq	-4(%rdi,%rsi), %rsi
	addq	%rdi, %rdx
	movq	192(%rsp), %rdi
	cmpq	$8, %rax
	seta	%al
	cmpq	$8, %rsi
	seta	%sil
	andl	%esi, %eax
	testl	%ebp, %ebp
	setne	%sil
	andl	%esi, %eax
	movq	944(%rsp), %rsi
	leaq	-4(%rsi,%rdi), %rsi
	cmpq	$8, %rsi
	seta	%sil
	andl	%esi, %eax
	leaq	16(%r11), %rsi
	cmpq	%rsi, 256(%rsp)
	setge	%sil
	cmpq	%r11, 936(%rsp)
	setle	%dil
	orl	%edi, %esi
	testb	%sil, %al
	je	.L380
	movq	400(%rsp), %rsi
	leaq	-4(%rsi), %rax
	subq	%r11, %rax
	cmpq	$8, %rax
	jbe	.L380
	cmpq	$2, 368(%rsp)
	jbe	.L439
	movq	200(%rsp), %rax
	movq	%rax, %rdi
	addq	%rsi, %rax
	movq	%rax, %rsi
	addq	%r11, %rdi
	xorl	%eax, %eax
.L382:
	movdqu	(%r15,%rax), %xmm6
	movups	%xmm6, (%rdi,%rax)
	movdqu	(%r12,%rax), %xmm7
	movups	%xmm7, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rax, 336(%rsp)
	jne	.L382
	movq	376(%rsp), %rax
	movq	40(%rsp), %rdi
	addq	%rax, %rcx
	addq	%rax, %rdx
	movq	184(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L384
	subq	%rax, %rdi
	cmpq	$1, %rdi
	je	.L386
.L381:
	movq	504(%rsp), %r11
	leaq	0(,%rax,4), %rsi
	movq	352(%rsp), %r10
	movq	(%r15,%rsi), %r9
	leaq	(%r11,%rax), %r8
	movq	200(%rsp), %r11
	leaq	(%r11,%r8,4), %r8
	movq	%r9, (%r8,%r10)
	movq	(%r12,%rsi), %r8
	addq	%r11, %rsi
	movq	480(%rsp), %r11
	movq	%r8, (%rsi,%r11)
	movq	%rdi, %rsi
	andq	$-2, %rsi
	leaq	0(,%rsi,4), %r8
	addq	%rsi, %rax
	addq	%r8, %rcx
	addq	%r8, %rdx
	cmpq	%rdi, %rsi
	je	.L384
.L386:
	movq	120(%rsp), %rsi
	movl	(%rsi,%rax,4), %esi
	movl	%esi, (%rcx)
	movq	128(%rsp), %rsi
	movl	(%rsi,%rax,4), %eax
	movl	%eax, (%rdx)
	jmp	.L384
.L525:
	movl	176(%rsp), %eax
	testl	%eax, %eax
	je	.L370
	movl	48(%rsp), %r8d
	movq	112(%rsp), %rsi
	movl	%r13d, %ecx
	movl	176(%rsp), %edx
	movq	152(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	48(%rsp), %r8d
	movl	%r13d, %ecx
	movl	176(%rsp), %edx
	movq	112(%rsp), %rsi
	movq	160(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	jmp	.L374
.L435:
	movq	216(%rsp), %r8
	xorl	%edi, %edi
.L356:
	movl	4(%r8,%rdi,8), %eax
	movl	(%r8,%rdi,8), %r9d
	imulq	%rax, %r9
	movq	%rdx, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r13d, %r9d
	addl	%eax, %r9d
	movq	%rdx, %rax
	movl	%r9d, %r9d
	imulq	%rsi, %r9
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r13d, %r9d
	addl	%r9d, %eax
	movl	%eax, (%r8,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, 40(%rsp)
	jne	.L356
	cmpb	$0, 1023(%rsp)
	jne	.L530
.L436:
	movq	64(%rsp), %r8
	xorl	%edi, %edi
.L360:
	movl	4(%r8,%rdi,8), %eax
	movl	(%r8,%rdi,8), %r9d
	imulq	%rax, %r9
	movq	%rdx, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r13d, %r9d
	addl	%eax, %r9d
	movq	%rdx, %rax
	movl	%r9d, %r9d
	imulq	%rsi, %r9
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rcx, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%r13d, %r9d
	addl	%r9d, %eax
	movl	%eax, (%r8,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, 40(%rsp)
	jne	.L360
	jmp	.L363
.L529:
	movzbl	36(%rsp), %ecx
	movl	$16, %eax
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movdqa	48(%rsp), %xmm2
	salq	%cl, %rax
	movq	%rax, %rdx
	movaps	%xmm2, 64(%rsp)
	movq	%rax, 48(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rax
	movdqa	16(%rsp), %xmm1
	movdqa	64(%rsp), %xmm2
	leaq	0(%rbp,%rax,2), %r12
	jmp	.L430
.L521:
	movq	224(%rsp), %rcx
	movq	%rdi, %r8
.L398:
	movl	(%r8,%rcx,4), %esi
	movl	(%r12), %edi
	movl	%esi, %edx
	movl	%edi, %eax
	shrl	%eax
	subl	%edi, %edx
	subl	%esi, %eax
	andl	$2147483647, %edx
	sarl	$31, %eax
	xorl	%esi, %edx
	andl	%edx, %eax
	xorl	%esi, %eax
	movl	%eax, (%r8,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rbx
	jne	.L398
	jmp	.L426
.L391:
	movl	$2147379202, 4(%r12)
	jmp	.L426
.L441:
	movq	%r15, %rcx
	xorl	%esi, %esi
	jmp	.L401
.L442:
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	leaq	(%r12,%rax), %rsi
	jmp	.L405
.L443:
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	jmp	.L410
.L444:
	movq	8(%rsp), %rax
	movq	%rbx, %rcx
	movq	$0, 184(%rsp)
	movq	$1, 416(%rsp)
	movq	184(%rsp), %r14
	leaq	(%r12,%rax), %rdx
	jmp	.L414
.L439:
	movq	40(%rsp), %rdi
	xorl	%eax, %eax
	jmp	.L381
	.cfi_endproc
.LFE5564:
	.size	solve_NTRU_binary_depth1, .-solve_NTRU_binary_depth1
	.p2align 4
	.type	make_fg, @function
make_fg:
.LFB5561:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r10
	movl	$1, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	salq	%cl, %rdx
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%rdi, 128(%rsp)
	movq	%rsi, %rdi
	movl	$4, %esi
	salq	%cl, %rsi
	movl	%ecx, 160(%rsp)
	leaq	(%r10,%rdx), %rcx
	leaq	(%r14,%rsi), %rbp
	cmpq	%rcx, %r14
	movl	%r8d, 164(%rsp)
	movl	%r9d, %r8d
	setnb	%al
	leaq	(%rdi,%rdx), %r9
	leaq	0(%rbp,%rsi), %r12
	cmpq	%r10, %rbp
	setbe	%r11b
	orl	%r11d, %eax
	cmpq	%rdi, %rbp
	setbe	%r11b
	cmpq	%r9, %r14
	setnb	%bl
	orl	%ebx, %r11d
	andl	%r11d, %eax
	leaq	-1(%rdx), %r11
	cmpq	$14, %r11
	seta	%r11b
	andl	%r11d, %eax
	leaq	-4(%rsi), %r11
	cmpq	$56, %r11
	seta	%r11b
	andl	%r11d, %eax
	cmpq	%r12, %rdi
	setnb	%r11b
	cmpq	%r9, %rbp
	setnb	%r9b
	orl	%r11d, %r9d
	testb	%r9b, %al
	je	.L599
	cmpq	%r12, %r10
	setnb	%al
	cmpq	%rcx, %rbp
	setnb	%cl
	orb	%cl, %al
	je	.L599
	movq	%rdx, %rcx
	movdqa	.LC18(%rip), %xmm2
	xorl	%eax, %eax
	movq	%r14, %r9
	andq	$-16, %rcx
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
.L533:
	movdqu	(%rdi,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	movdqa	%xmm3, %xmm6
	pcmpgtb	%xmm0, %xmm5
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm0
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm1
	movdqa	%xmm0, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%r9,%rax,4)
	movdqa	%xmm1, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm5, %xmm1
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm0, %xmm5
	movups	%xmm1, 16(%r9,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm4, %xmm5
	movdqa	%xmm6, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm6, %xmm1
	movdqa	%xmm3, %xmm6
	movups	%xmm1, 32(%r9,%rax,4)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, 48(%r9,%rax,4)
	movdqu	(%r10,%rax), %xmm0
	pcmpgtb	%xmm0, %xmm5
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm0
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm1
	movdqa	%xmm0, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, 0(%rbp,%rax,4)
	movdqa	%xmm1, %xmm5
	psrad	$31, %xmm5
	pand	%xmm2, %xmm5
	paddd	%xmm5, %xmm1
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm0, %xmm5
	movups	%xmm1, 16(%rbp,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm6, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm6, %xmm1
	movups	%xmm1, 32(%rbp,%rax,4)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, 48(%rbp,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L533
	movq	%rdx, %rax
	andq	$-16, %rax
	testb	$15, %dl
	je	.L535
	movsbl	(%rdi,%rax), %r11d
	movq	128(%rsp), %rbx
	leaq	0(,%rax,4), %rcx
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, (%rbx,%rax,4)
	movsbl	(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 0(%rbp,%rax,4)
	leaq	1(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	1(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 4(%rbx,%rcx)
	movsbl	1(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 4(%rbp,%rcx)
	leaq	2(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	2(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 8(%rbx,%rcx)
	movsbl	2(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 8(%rbp,%rcx)
	leaq	3(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	3(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 12(%rbx,%rcx)
	movsbl	3(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 12(%rbp,%rcx)
	leaq	4(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	4(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 16(%rbx,%rcx)
	movsbl	4(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 16(%rbp,%rcx)
	leaq	5(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	5(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 20(%rbx,%rcx)
	movsbl	5(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 20(%rbp,%rcx)
	leaq	6(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	6(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 24(%rbx,%rcx)
	movsbl	6(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 24(%rbp,%rcx)
	leaq	7(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	7(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 28(%rbx,%rcx)
	movsbl	7(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 28(%rbp,%rcx)
	leaq	8(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	8(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 32(%rbx,%rcx)
	movsbl	8(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 32(%rbp,%rcx)
	leaq	9(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	9(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 36(%rbx,%rcx)
	movsbl	9(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 36(%rbp,%rcx)
	leaq	10(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	10(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 40(%rbx,%rcx)
	movsbl	10(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 40(%rbp,%rcx)
	leaq	11(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	11(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 44(%rbx,%rcx)
	movsbl	11(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 44(%rbp,%rcx)
	leaq	12(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	12(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 48(%rbx,%rcx)
	movsbl	12(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 48(%rbp,%rcx)
	leaq	13(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	13(%rdi,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 52(%rbx,%rcx)
	movsbl	13(%r10,%rax), %r11d
	movl	%r11d, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r11d, %r9d
	movl	%r9d, 52(%rbp,%rcx)
	leaq	14(%rax), %r9
	cmpq	%r9, %rdx
	jbe	.L535
	movsbl	14(%rdi,%rax), %r9d
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	addl	%r9d, %edi
	movl	%edi, 56(%rbx,%rcx)
	movsbl	14(%r10,%rax), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edi, %eax
	movl	%eax, 56(%rbp,%rcx)
.L535:
	movl	164(%rsp), %eax
	testl	%eax, %eax
	jne	.L538
	testb	$1, %r8b
	jne	.L536
	testl	%eax, %eax
	je	.L531
.L538:
	movq	$0, 144(%rsp)
	movl	%r8d, %eax
	andl	$1, %eax
	movb	%al, 191(%rsp)
	movl	160(%rsp), %eax
	leal	-1(%rax), %edi
	subl	164(%rsp), %eax
	movl	%edi, 100(%rsp)
	movl	%eax, 184(%rsp)
.L597:
	movl	160(%rsp), %eax
	leaq	MAX_BL_SMALL(%rip), %rsi
	movq	128(%rsp), %r11
	subl	%edi, %eax
	cmpl	%eax, 164(%rsp)
	seta	%al
	addl	$1, %edi
	orb	191(%rsp), %al
	movl	%edi, %ecx
	movb	%al, 189(%rsp)
	movl	$1, %eax
	movl	%edi, %ebp
	salq	%cl, %rax
	movl	%edi, 96(%rsp)
	movq	%rax, %r15
	movq	%rax, 168(%rsp)
	movq	144(%rsp), %rax
	shrq	%r15
	movq	(%rsi,%rax,8), %r12
	addq	$8, %rsi
	movq	%r15, 32(%rsp)
	movq	(%rsi,%rax,8), %rsi
	movq	%r15, %rax
	movq	%r12, %rbx
	movq	%rsi, 8(%rsp)
	salq	$2, %rsi
	salq	%cl, %rbx
	imulq	%rsi, %rax
	movq	%rsi, 120(%rsp)
	leaq	0(,%rbx,4), %rdx
	leaq	(%r11,%rax), %rsi
	movq	%rax, %r13
	movq	%rbx, %rax
	movq	%rdx, %rbx
	addq	%rsi, %r13
	movq	%rsi, 152(%rsp)
	movq	%r11, %rsi
	leaq	0(%r13,%rdx), %rcx
	movl	$4, %edx
	movq	%r13, 112(%rsp)
	addq	%rcx, %rbx
	movq	%rcx, 104(%rsp)
	movl	%edi, %ecx
	movq	%r13, %rdi
	salq	%cl, %rdx
	movq	%rbx, 40(%rsp)
	addq	%rdx, %rbx
	movq	%rdx, 176(%rsp)
	movq	%rdx, %r14
	movq	%rbx, 48(%rsp)
	addq	%rdx, %rbx
	leaq	0(,%rax,8), %rdx
	movq	%rbx, 16(%rsp)
	call	memmove@PLT
	testq	%r12, %r12
	je	.L546
	movq	144(%rsp), %rdi
	testl	%ebp, %ebp
	leaq	0(,%r12,4), %rdx
	movq	128(%rsp), %r11
	sete	%al
	movq	104(%rsp), %rcx
	movq	%r13, 64(%rsp)
	movq	%rbx, %rbp
	testl	%edi, %edi
	movq	%r11, 88(%rsp)
	leaq	(%rbx,%r15,8), %r13
	movq	152(%rsp), %rsi
	movq	%rdx, 136(%rsp)
	setne	%dl
	movq	%r13, %r15
	orl	%eax, %edx
	testl	%edi, %edi
	movq	%rsi, 80(%rsp)
	movb	%dl, 188(%rsp)
	sete	%dl
	addq	%rbx, %r14
	movl	$2147473409, %ebx
	orl	%eax, %edx
	leaq	4+PRIMES(%rip), %rax
	movq	%rcx, 72(%rsp)
	movb	%dl, 190(%rsp)
	movq	%rax, (%rsp)
	movq	$0, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L570:
	movl	$2, %eax
	movl	$2, %edx
	movl	%ebx, %edi
	movl	%ebx, %r8d
	subl	%ebx, %eax
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %r9d
	imull	%ebx, %r9d
	subl	$2, %r9d
	imull	%eax, %r9d
	andl	$2147483647, %r9d
	movl	%r9d, %esi
	movl	%r9d, %r13d
	call	modp_R2
	movl	96(%rsp), %edx
	movq	48(%rsp), %rsi
	movl	%eax, 56(%rsp)
	movq	(%rsp), %rax
	movq	40(%rsp), %rdi
	movl	(%rax), %ecx
	call	modp_mkgm2
	movq	64(%rsp), %rdx
	movq	%rbp, %rax
	cmpq	$1, %r12
	jne	.L698
	.p2align 4,,10
	.p2align 3
.L547:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	$4, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%rax, %r14
	jne	.L547
.L549:
	cmpb	$0, 188(%rsp)
	je	.L699
	cmpq	$0, 32(%rsp)
	je	.L556
.L551:
	cmpq	$1, 8(%rsp)
	movl	56(%rsp), %r8d
	movl	%r13d, %esi
	movl	%ebx, %edi
	movq	88(%rsp), %rcx
	movq	%rbp, %rdx
	jne	.L700
	.p2align 4,,10
	.p2align 3
.L554:
	movl	(%rdx), %eax
	movl	4(%rdx), %r9d
	addq	$8, %rdx
	addq	$4, %rcx
	imulq	%rax, %r9
	movq	%rsi, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%ebx, %r9d
	addl	%eax, %r9d
	movq	%rsi, %rax
	movl	%r9d, %r9d
	imulq	%r8, %r9
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%ebx, %r9d
	addl	%r9d, %eax
	movl	%eax, -4(%rcx)
	cmpq	%r15, %rdx
	jne	.L554
.L556:
	cmpb	$0, 190(%rsp)
	jne	.L552
	movl	96(%rsp), %ecx
	movq	48(%rsp), %rdx
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	64(%rsp), %rdi
	movq	%r12, %rsi
	call	modp_iNTT2_ext.part.0
.L552:
	movq	72(%rsp), %rdx
	movq	%rbp, %rax
	cmpq	$1, %r12
	jne	.L701
	.p2align 4,,10
	.p2align 3
.L558:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	$4, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%r14, %rax
	jne	.L558
.L560:
	cmpb	$0, 188(%rsp)
	je	.L702
	cmpq	$0, 32(%rsp)
	je	.L567
.L562:
	cmpq	$1, 8(%rsp)
	movl	56(%rsp), %r8d
	movl	%r13d, %esi
	movl	%ebx, %edi
	movq	80(%rsp), %rcx
	movq	%rbp, %rdx
	jne	.L703
	.p2align 4,,10
	.p2align 3
.L565:
	movl	(%rdx), %eax
	movl	4(%rdx), %r9d
	addq	$8, %rdx
	addq	$4, %rcx
	imulq	%rax, %r9
	movq	%rsi, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%ebx, %r9d
	addl	%eax, %r9d
	movq	%rsi, %rax
	movl	%r9d, %r9d
	imulq	%r8, %r9
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%ebx, %r9d
	addl	%r9d, %eax
	movl	%eax, -4(%rcx)
	cmpq	%r15, %rdx
	jne	.L565
.L567:
	cmpb	$0, 190(%rsp)
	jne	.L563
	movl	96(%rsp), %ecx
	movq	48(%rsp), %rdx
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	72(%rsp), %rdi
	movq	%r12, %rsi
	call	modp_iNTT2_ext.part.0
.L563:
	cmpb	$0, 189(%rsp)
	jne	.L569
	movl	100(%rsp), %eax
	testl	%eax, %eax
	je	.L569
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rsi
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	88(%rsp), %rdi
	movl	%eax, %ecx
	call	modp_iNTT2_ext.part.0
	movl	100(%rsp), %ecx
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	80(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
.L569:
	addq	$1, 24(%rsp)
	movq	24(%rsp), %rax
	addq	$12, (%rsp)
	movq	(%rsp), %rdi
	addq	$4, 88(%rsp)
	addq	$4, 80(%rsp)
	addq	$4, 72(%rsp)
	addq	$4, 64(%rsp)
	cmpq	%rax, %r12
	je	.L546
	movl	-4(%rdi), %ebx
	jmp	.L570
.L702:
	movl	160(%rsp), %edx
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movq	%rbp, %rdi
	movq	40(%rsp), %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	cmpq	$0, 32(%rsp)
	jne	.L562
	jmp	.L563
.L699:
	movl	160(%rsp), %edx
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movq	%rbp, %rdi
	movq	40(%rsp), %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	cmpq	$0, 32(%rsp)
	jne	.L551
	jmp	.L552
.L701:
	movq	136(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L559:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	%rsi, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%r14, %rax
	jne	.L559
	jmp	.L560
.L698:
	movq	136(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L548:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	%rsi, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%rax, %r14
	jne	.L548
	jmp	.L549
.L700:
	movq	120(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L555:
	movl	4(%rdx), %eax
	movl	(%rdx), %r10d
	addq	$8, %rdx
	imulq	%rax, %r10
	movq	%r10, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%eax, %r10d
	movl	%r10d, %r10d
	imulq	%r8, %r10
	movq	%r10, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	cmpq	%r15, %rdx
	jne	.L555
	jmp	.L556
.L703:
	movq	120(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L566:
	movl	4(%rdx), %eax
	movl	(%rdx), %r10d
	addq	$8, %rdx
	imulq	%rax, %r10
	movq	%r10, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%eax, %r10d
	movl	%r10d, %r10d
	imulq	%r8, %r10
	movq	%r10, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	cmpq	%r15, %rdx
	jne	.L566
	jmp	.L567
.L546:
	movq	40(%rsp), %r14
	movq	112(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r12, %rsi
	movq	168(%rsp), %rbx
	movq	%r14, %r8
	movq	%rbx, %rcx
	call	zint_rebuild_CRT.constprop.3
	movq	104(%rsp), %rdi
	movq	%r14, %r8
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%r12, %rsi
	call	zint_rebuild_CRT.constprop.3
	cmpq	8(%rsp), %r12
	jnb	.L571
	leaq	PRIMES(%rip), %rdi
	leaq	(%r12,%r12,2), %rax
	movq	176(%rsp), %rbp
	movq	%r12, 80(%rsp)
	leaq	(%rdi,%rax,4), %rax
	movq	32(%rsp), %rdi
	leal	-1(%r12), %r14d
	movq	%rax, 56(%rsp)
	movq	128(%rsp), %rax
	leaq	0(,%r12,4), %r13
	addq	%r13, %rax
	movq	%rax, 64(%rsp)
	movq	152(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, 72(%rsp)
	movq	16(%rsp), %rax
	addq	%rax, %rbp
	leaq	(%rax,%rdi,8), %rax
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L596:
	movq	56(%rsp), %rax
	movl	$2, %edx
	movl	$-2147483648, %r15d
	movl	(%rax), %ebx
	movl	$2, %eax
	subl	%ebx, %eax
	movl	%ebx, %ecx
	movl	%ebx, %edi
	subl	%ebx, %r15d
	imull	%eax, %ecx
	subl	%ecx, %edx
	movl	%ebx, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	movl	%ebx, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%ebx, %edx
	imull	%eax, %edx
	subl	$2, %edx
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %esi
	movl	%eax, (%rsp)
	movl	%eax, %r11d
	call	modp_R2
	movl	%eax, 24(%rsp)
	testl	%r14d, %r14d
	je	.L572
	movl	%r11d, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	$1, %edi
	movl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L574:
	btl	%ecx, %r14d
	jnc	.L573
	imulq	%rax, %r15
	movq	%rsi, %r8
	imulq	%r15, %r8
	andl	$2147483647, %r8d
	imulq	%rdx, %r8
	addq	%r15, %r8
	shrq	$31, %r8
	subl	%ebx, %r8d
	movl	%r8d, %r15d
	sarl	$31, %r15d
	andl	%ebx, %r15d
	addl	%r8d, %r15d
.L573:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %r8
	movq	%rsi, %rax
	imulq	%r8, %rax
	andl	$2147483647, %eax
	imulq	%rdx, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%r8d, %eax
	movl	%edi, %r8d
	sall	%cl, %r8d
	cmpl	%r8d, %r14d
	jnb	.L574
.L572:
	movq	56(%rsp), %rax
	movl	(%rsp), %r9d
	movl	%ebx, %r8d
	movq	40(%rsp), %rdi
	movl	96(%rsp), %edx
	movl	4(%rax), %ecx
	movq	48(%rsp), %rsi
	call	modp_mkgm2
	movq	16(%rsp), %r8
	movl	(%rsp), %r9d
	movl	%ebx, %r10d
	movq	112(%rsp), %rdi
	movl	24(%rsp), %r11d
	.p2align 4,,10
	.p2align 3
.L577:
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.L575
	leaq	-1(%r12), %rdx
	.p2align 4,,10
	.p2align 3
.L576:
	imulq	%r11, %rax
	movq	%rax, %rcx
	imulq	%r9, %rcx
	andl	$2147483647, %ecx
	imulq	%r10, %rcx
	addq	%rcx, %rax
	movl	(%rdi,%rdx,4), %ecx
	shrq	$31, %rax
	subl	%ebx, %eax
	subl	%ebx, %ecx
	movl	%eax, %esi
	subl	%ebx, %eax
	sarl	$31, %esi
	andl	%ebx, %esi
	addl	%esi, %eax
	addl	%ecx, %eax
	sarl	$31, %ecx
	andl	%ebx, %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%ebx, %ecx
	addl	%ecx, %eax
	subq	$1, %rdx
	jnb	.L576
	movl	-4(%rdi,%r13), %edx
	shrl	$30, %edx
	negl	%edx
	andl	%r15d, %edx
	subl	%edx, %eax
	cltd
	andl	%ebx, %edx
	addl	%edx, %eax
.L575:
	movl	%eax, (%r8)
	addq	$4, %r8
	addq	%r13, %rdi
	cmpq	%r8, %rbp
	jne	.L577
	movl	96(%rsp), %eax
	testl	%eax, %eax
	je	.L578
	movl	(%rsp), %r8d
	movq	40(%rsp), %rsi
	movl	%ebx, %ecx
	movl	%eax, %edx
	movq	16(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
.L578:
	cmpq	$0, 32(%rsp)
	je	.L583
	cmpq	$1, 8(%rsp)
	movl	(%rsp), %esi
	movl	%ebx, %edi
	movl	24(%rsp), %r8d
	movq	16(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	88(%rsp), %r9
	jne	.L704
	.p2align 4,,10
	.p2align 3
.L581:
	movl	(%rdx), %eax
	movl	4(%rdx), %r10d
	addq	$8, %rdx
	addq	$4, %rcx
	imulq	%rax, %r10
	movq	%rsi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%eax, %r10d
	movq	%rsi, %rax
	movl	%r10d, %r10d
	imulq	%r8, %r10
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, -4(%rcx)
	cmpq	%rdx, %r9
	jne	.L581
.L583:
	movq	16(%rsp), %r8
	movq	104(%rsp), %rdi
	movl	%ebx, %r10d
	movl	24(%rsp), %r11d
	movl	(%rsp), %r9d
	.p2align 4,,10
	.p2align 3
.L580:
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.L585
	leaq	-1(%r12), %rdx
	.p2align 4,,10
	.p2align 3
.L586:
	imulq	%r11, %rax
	movq	%rax, %rcx
	imulq	%r9, %rcx
	andl	$2147483647, %ecx
	imulq	%r10, %rcx
	addq	%rcx, %rax
	movl	(%rdi,%rdx,4), %ecx
	shrq	$31, %rax
	subl	%ebx, %eax
	subl	%ebx, %ecx
	movl	%eax, %esi
	subl	%ebx, %eax
	sarl	$31, %esi
	andl	%ebx, %esi
	addl	%esi, %eax
	addl	%ecx, %eax
	sarl	$31, %ecx
	andl	%ebx, %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%ebx, %ecx
	addl	%ecx, %eax
	subq	$1, %rdx
	jnb	.L586
	movl	-4(%rdi,%r13), %edx
	shrl	$30, %edx
	negl	%edx
	andl	%r15d, %edx
	subl	%edx, %eax
	cltd
	andl	%ebx, %edx
	addl	%edx, %eax
.L585:
	movl	%eax, (%r8)
	addq	$4, %r8
	addq	%r13, %rdi
	cmpq	%r8, %rbp
	jne	.L580
	movl	96(%rsp), %eax
	testl	%eax, %eax
	je	.L587
	movl	(%rsp), %r8d
	movq	40(%rsp), %rsi
	movl	%ebx, %ecx
	movl	%eax, %edx
	movq	16(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
.L587:
	cmpq	$0, 32(%rsp)
	je	.L593
	cmpq	$1, 8(%rsp)
	movl	(%rsp), %esi
	movl	%ebx, %edi
	movl	24(%rsp), %r8d
	movq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movq	88(%rsp), %r9
	jne	.L705
	.p2align 4,,10
	.p2align 3
.L591:
	movl	(%rdx), %eax
	movl	4(%rdx), %r10d
	addq	$8, %rdx
	addq	$4, %rcx
	imulq	%rax, %r10
	movq	%rsi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%eax, %r10d
	movq	%rsi, %rax
	movl	%r10d, %r10d
	imulq	%r8, %r10
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, -4(%rcx)
	cmpq	%rdx, %r9
	jne	.L591
.L593:
	addq	$1, 80(%rsp)
	cmpb	$0, 189(%rsp)
	jne	.L589
	movl	100(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L595
	movl	(%rsp), %r9d
	movq	48(%rsp), %rdx
	movl	%ebx, %r8d
	movl	%r15d, %ecx
	movq	8(%rsp), %rsi
	movq	64(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
	movl	(%rsp), %r9d
	movl	%ebx, %r8d
	movl	%r15d, %ecx
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	72(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
.L595:
	movq	80(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jbe	.L531
.L598:
	addq	$12, 56(%rsp)
	addq	$4, 64(%rsp)
	addq	$4, 72(%rsp)
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L589:
	movq	80(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	ja	.L598
.L571:
	addq	$1, 144(%rsp)
	movl	100(%rsp), %edi
	leal	-1(%rdi), %eax
	cmpl	%edi, 184(%rsp)
	je	.L531
	movl	%eax, 100(%rsp)
	movl	%eax, %edi
	jmp	.L597
.L704:
	movq	120(%rsp), %r10
	.p2align 4,,10
	.p2align 3
.L582:
	movl	4(%rdx), %eax
	movl	(%rdx), %r11d
	addq	$8, %rdx
	imulq	%rax, %r11
	movq	%r11, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%ebx, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r8, %r11
	movq	%r11, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%ebx, %r11d
	addl	%r11d, %eax
	movl	%eax, (%rcx)
	addq	%r10, %rcx
	cmpq	%rdx, %r9
	jne	.L582
	jmp	.L583
.L705:
	movq	120(%rsp), %r10
	.p2align 4,,10
	.p2align 3
.L592:
	movl	4(%rdx), %eax
	movl	(%rdx), %r11d
	addq	$8, %rdx
	imulq	%rax, %r11
	movq	%r11, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%ebx, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r8, %r11
	movq	%r11, %rax
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%ebx, %r11d
	addl	%r11d, %eax
	movl	%eax, (%rcx)
	addq	%r10, %rcx
	cmpq	%rdx, %r9
	jne	.L592
	jmp	.L593
.L531:
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L536:
	.cfi_restore_state
	movl	160(%rsp), %edi
	cmpl	$9, %edi
	ja	.L600
	je	.L601
	cmpl	$8, %edi
	je	.L602
	cmpl	$7, %edi
	je	.L603
	cmpl	$6, %edi
	je	.L604
	cmpl	$5, %edi
	je	.L605
	cmpl	$4, %edi
	je	.L606
	cmpl	$3, %edi
	je	.L607
	leal	8(%rdi), %eax
	cmpl	$2, %edi
	je	.L608
	cmpl	$8, %eax
	movl	$2147463170, %edi
	movl	$1211775442, %eax
	cmovne	%rax, %rdi
.L540:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %r8d
.L542:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %r9
	andl	$2147483647, %r9d
	imulq	$2147473409, %r9, %r9
	addq	%r9, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	leal	(%rax,%r9), %r10d
	movq	%r10, %rax
	imulq	%rdi, %r10
	imulq	$2042615807, %r10, %r9
	andl	$2147483647, %r9d
	imulq	$2147473409, %r9, %r9
	addq	%r10, %r9
	movl	%r8d, %r10d
	shrq	$31, %r9
	shrl	%cl, %r10d
	subl	$2147473409, %r9d
	andl	$1, %r10d
	movl	%r9d, %r11d
	negl	%r10d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%r11d, %r9d
	xorl	%eax, %r9d
	andl	%r10d, %r9d
	xorl	%r9d, %eax
	subl	$1, %ecx
	jnb	.L542
	imulq	$2042615807, %rax, %rcx
	leaq	(%r12,%rsi), %r11
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	leaq	REV10(%rip), %rsi
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	movl	$10, %ecx
	subl	160(%rsp), %ecx
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147473409, %r8d
	leal	(%rax,%r8), %r10d
	movl	$10239, %eax
	movl	$10239, %r8d
	jmp	.L544
.L706:
	movq	%r9, %rbx
	salq	%cl, %rbx
	movzwl	(%rsi,%rbx,2), %ebx
.L544:
	movl	%r8d, (%r12,%rbx,4)
	imulq	%rdi, %r8
	addq	$1, %r9
	movl	%eax, (%r11,%rbx,4)
	imulq	%r10, %rax
	imulq	$2042615807, %r8, %rbx
	andl	$2147483647, %ebx
	imulq	$2147473409, %rbx, %rbx
	addq	%r8, %rbx
	shrq	$31, %rbx
	subl	$2147473409, %ebx
	movl	%ebx, %r8d
	sarl	$31, %r8d
	andl	$2147473409, %r8d
	addl	%ebx, %r8d
	movq	%rax, %rbx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rbx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	$2147473409, %ebx
	addl	%ebx, %eax
	cmpq	%r9, %rdx
	jne	.L706
	movl	160(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L531
	movl	%ebx, %edx
	movq	%r12, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	movq	128(%rsp), %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	modp_NTT2_ext.part.0.constprop.0
.L599:
	.cfi_restore_state
	xorl	%eax, %eax
.L532:
	movsbl	(%rdi,%rax), %r9d
	movq	128(%rsp), %rbx
	movl	%r9d, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%r9d, %ecx
	movl	%ecx, (%rbx,%rax,4)
	movsbl	(%r10,%rax), %r9d
	movl	%r9d, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%r9d, %ecx
	movl	%ecx, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L532
	jmp	.L535
.L601:
	movl	$1685737800, %edi
	jmp	.L540
.L600:
	movl	$1968792473, %edi
	jmp	.L540
.L608:
	movl	$844192849, %edi
	jmp	.L540
.L607:
	movl	$1642906936, %edi
	jmp	.L540
.L606:
	movl	$2109245776, %edi
	jmp	.L540
.L605:
	movl	$1525826314, %edi
	jmp	.L540
.L604:
	movl	$1751781058, %edi
	jmp	.L540
.L603:
	movl	$36002698, %edi
	jmp	.L540
.L602:
	movl	$583466347, %edi
	jmp	.L540
	.cfi_endproc
.LFE5561:
	.size	make_fg, .-make_fg
	.p2align 4
	.type	solve_NTRU_intermediate, @function
solve_NTRU_intermediate:
.LFB5563:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %r10d
	movl	$1, %eax
	movq	%r8, %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r10d, %r15d
	movl	%ecx, %r14d
	movl	$1, %r9d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	subl	%r14d, %r15d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movl	%ecx, 220(%rsp)
	movl	%r15d, %ecx
	salq	%cl, %rax
	movq	%r8, 168(%rsp)
	movq	%r14, %r8
	movq	%rax, 160(%rsp)
	movq	%rax, %rbx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rax,%r14,8), %rcx
	shrq	%rbx
	movq	%r14, 208(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rcx, 64(%rsp)
	leal	1(%r14), %ecx
	movq	(%rax,%rcx,8), %rcx
	leaq	MAX_BL_LARGE(%rip), %rax
	movl	%r15d, 136(%rsp)
	movq	(%rax,%r14,8), %rbp
	movq	%rdi, %r14
	imulq	%rcx, %rbx
	movq	%rcx, 32(%rsp)
	movl	%r10d, %ecx
	leaq	0(,%rbx,8), %r12
	leaq	(%rdi,%r12), %r13
	movq	%r13, %rdi
	call	make_fg
	movl	%r15d, %ecx
	movq	%rbp, %rax
	movq	64(%rsp), %rdx
	salq	%cl, %rax
	movq	%rbp, 104(%rsp)
	salq	$2, %rax
	salq	%cl, %rdx
	leaq	(%r14,%rax), %rsi
	movq	%rax, %rdi
	movq	%rdx, %rbp
	salq	$3, %rdx
	addq	%rsi, %rdi
	movq	%rsi, 176(%rsp)
	salq	$2, %rbp
	movq	%r13, %rsi
	movq	%rdi, %r13
	movq	%rdi, 144(%rsp)
	call	memmove@PLT
	leaq	0(%r13,%rbp), %rdx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	addq	%rdx, %rdi
	movq	%rdx, 152(%rsp)
	movq	%r12, %rdx
	movq	%rdi, %r13
	movq	%rdi, 96(%rsp)
	call	memmove@PLT
	leaq	0(%r13,%rbx,4), %rbx
	movl	%r15d, %ecx
	movq	104(%rsp), %rax
	movq	%rbx, 72(%rsp)
	movl	$4, %ebx
	salq	%cl, %rbx
	movq	%rbx, 200(%rsp)
	testq	%rax, %rax
	je	.L708
	movq	32(%rsp), %rcx
	movq	%r14, 112(%rsp)
	leaq	12+PRIMES(%rip), %rdi
	movl	$2147473409, %r8d
	movq	%rdi, 56(%rsp)
	movl	%ecx, %ebx
	movq	%r14, 40(%rsp)
	leaq	0(,%rcx,4), %r13
	subl	$1, %ebx
	movl	%ebx, 80(%rsp)
	leaq	0(,%rax,4), %rbx
	movq	176(%rsp), %rax
	movq	%rbx, 16(%rsp)
	addq	%r14, %rbx
	movq	%rax, 120(%rsp)
	movq	%rbx, 88(%rsp)
	movq	%rax, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L719:
	movl	$2, %eax
	movl	$2, %edx
	movl	%r8d, %edi
	movl	$-2147483648, %r11d
	subl	%r8d, %eax
	subl	%r8d, %r11d
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %edx
	imull	%eax, %edx
	movl	$2, %eax
	movl	%edx, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %eax
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %edx
	imull	%eax, %edx
	movl	%edx, %eax
	imull	%r8d, %eax
	subl	$2, %eax
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %r10d
	movl	%r10d, %esi
	call	modp_R2
	movl	80(%rsp), %ebx
	movl	%r11d, 24(%rsp)
	movl	%eax, %r9d
	testl	%ebx, %ebx
	je	.L709
	movl	%r10d, %esi
	movl	%r8d, %edx
	xorl	%ecx, %ecx
	movl	%r9d, %eax
	.p2align 4,,10
	.p2align 3
.L711:
	btl	%ecx, %ebx
	jnc	.L710
	imulq	%rax, %r11
	movq	%rsi, %rdi
	imulq	%r11, %rdi
	andl	$2147483647, %edi
	imulq	%rdx, %rdi
	addq	%r11, %rdi
	shrq	$31, %rdi
	subl	%r8d, %edi
	movl	%edi, %r11d
	sarl	$31, %r11d
	andl	%r8d, %r11d
	addl	%edi, %r11d
.L710:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %rdi
	movq	%rsi, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rdx, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%r8d, %edi
	addl	%edi, %eax
	movl	$1, %edi
	sall	%cl, %edi
	cmpl	%edi, %ebx
	jnb	.L711
	movl	%r11d, 24(%rsp)
.L709:
	xorl	%r12d, %r12d
	movq	40(%rsp), %r15
	movq	48(%rsp), %r14
	movl	%r8d, %r11d
	cmpq	$0, 8(%rsp)
	movq	72(%rsp), %rbp
	movq	96(%rsp), %rbx
	je	.L718
	.p2align 4,,10
	.p2align 3
.L712:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L715
	leaq	-1(%rax), %rsi
	xorl	%edx, %edx
	movq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L716:
	imulq	%r9, %rdx
	movl	(%rbx,%rdi,4), %ecx
	subl	%r8d, %ecx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r11, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	subl	%r8d, %eax
	andl	%r8d, %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ecx, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %edx
	subq	$1, %rdi
	jnb	.L716
	movl	-4(%rbx,%r13), %eax
	shrl	$30, %eax
	negl	%eax
	andl	24(%rsp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %edx
	movl	%edx, (%r15)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L717:
	movl	%edx, %eax
	movl	0(%rbp,%rsi,4), %edx
	imulq	%r9, %rax
	subl	%r8d, %edx
	movq	%rax, %rcx
	imulq	%r10, %rcx
	andl	$2147483647, %ecx
	imulq	%r11, %rcx
	addq	%rax, %rcx
	shrq	$31, %rcx
	subl	%r8d, %ecx
	movl	%ecx, %eax
	subl	%r8d, %ecx
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%edx, %eax
	cltd
	andl	%r8d, %edx
	addl	%eax, %edx
	subq	$1, %rsi
	jnb	.L717
	movl	-4(%rbp,%r13), %eax
	shrl	$30, %eax
	negl	%eax
	andl	24(%rsp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %edx
.L772:
	movq	16(%rsp), %rax
	movl	%edx, (%r14)
	addq	$1, %r12
	addq	%r13, %rbx
	addq	%r13, %rbp
	addq	%rax, %r15
	addq	%rax, %r14
	cmpq	%r12, 8(%rsp)
	jne	.L712
.L718:
	addq	$4, 40(%rsp)
	movq	40(%rsp), %rax
	addq	$4, 48(%rsp)
	cmpq	88(%rsp), %rax
	je	.L860
	movq	56(%rsp), %rax
	movl	(%rax), %r8d
	addq	$12, %rax
	movq	%rax, 56(%rsp)
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L715:
	movl	$0, (%r15)
	xorl	%edx, %edx
	jmp	.L772
.L708:
	movq	104(%rsp), %r14
	movq	96(%rsp), %rbx
	movq	160(%rsp), %rbp
	movq	168(%rsp), %r15
	movq	%rbx, %r8
	movq	%r14, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rcx
	movq	%r15, %rdi
	call	zint_rebuild_CRT.constprop.3
	movq	%r14, %rdx
	movq	%rbx, %r8
	movq	%rbp, %rcx
	movq	176(%rsp), %rdi
	movq	%r14, %rsi
	call	zint_rebuild_CRT.constprop.3
	movq	%rbx, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	andl	$7, %edx
	je	.L744
	addq	$8, %rax
	subq	%rdx, %rax
	addq	%r15, %rax
	movq	%rax, 96(%rsp)
.L744:
	movq	96(%rsp), %rsi
	movl	$8, %eax
	movq	8(%rsp), %rbx
	movzbl	136(%rsp), %ecx
	salq	%cl, %rax
	addq	%rax, %rsi
	movq	%rsi, 16(%rsp)
	addq	%rax, %rsi
	leaq	(%rsi,%rbx,8), %r15
	movq	%rsi, 24(%rsp)
	movq	168(%rsp), %rsi
	movq	%r15, %rdx
	movq	%r15, %rbp
	subq	%rsi, %rdx
	movq	%rdx, %rcx
	andl	$3, %ecx
	je	.L745
	addq	$4, %rdx
	subq	%rcx, %rdx
	leaq	(%rsi,%rdx), %rbp
.L745:
	movq	200(%rsp), %rbx
	movq	168(%rsp), %rsi
	addq	%rbp, %rbx
	movq	%rbx, %rdx
	movq	%rbx, 72(%rsp)
	subq	%rsi, %rdx
	movq	%rdx, %rcx
	andl	$7, %ecx
	je	.L746
	addq	$8, %rdx
	subq	%rcx, %rdx
	leaq	(%rsi,%rdx), %rbx
.L746:
	addq	%r15, %rax
	movl	$10, %r12d
	movl	136(%rsp), %r14d
	movq	144(%rsp), %rsi
	cmpq	%rax, %rbx
	movq	96(%rsp), %rdi
	cmovb	%rax, %rbx
	movq	64(%rsp), %rax
	movl	%r14d, %r8d
	cmpq	%r12, %rax
	movq	%rax, %r13
	movq	%rax, %rcx
	cmovbe	%rax, %r12
	subq	%r12, %r13
	movq	%r12, %rdx
	salq	$2, %r13
	addq	%r13, %rsi
	call	poly_big_to_fp
	movq	16(%rsp), %rdi
	movl	%r14d, %r8d
	movq	%r12, %rdx
	movq	152(%rsp), %rsi
	addq	%r13, %rsi
	movq	64(%rsp), %r13
	movq	%r13, %rcx
	call	poly_big_to_fp
	movl	%r13d, %eax
	movq	208(%rsp), %rsi
	movq	96(%rsp), %r13
	subl	%r12d, %eax
	movl	%eax, %edx
	movq	%r13, %rdi
	sall	$5, %edx
	subl	%eax, %edx
	leaq	BITLENGTH(%rip), %rax
	movl	%edx, 56(%rsp)
	movl	(%rax,%rsi,8), %edx
	movl	4(%rax,%rsi,8), %eax
	movl	%r14d, %esi
	leal	0(,%rax,4), %ecx
	subl	%ecx, %eax
	addl	%eax, %eax
	leal	(%rdx,%rax), %r12d
	subl	%eax, %edx
	movl	%edx, 88(%rsp)
	call	falcon_inner_FFT@PLT
	movq	16(%rsp), %rdi
	movl	%r14d, %esi
	call	falcon_inner_FFT@PLT
	movq	16(%rsp), %rdx
	movl	%r14d, %ecx
	movq	%r13, %rsi
	movq	24(%rsp), %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	%r14d, %esi
	movq	%r13, %rdi
	movl	%r14d, %r13d
	call	falcon_inner_poly_adj_fft@PLT
	movq	16(%rsp), %rdi
	movl	%r14d, %esi
	movabsq	$-4503599627370496, %r14
	call	falcon_inner_poly_adj_fft@PLT
	movq	104(%rsp), %r10
	movl	%r10d, %eax
	sall	$5, %eax
	subl	%r10d, %eax
	movl	%eax, %r11d
	movl	%eax, 80(%rsp)
	subl	%r12d, %r11d
	movl	%r13d, %r12d
	movq	160(%rsp), %r13
.L760:
	movl	$10, %eax
	movq	%r10, %r9
	movq	104(%rsp), %rcx
	movl	%r12d, %r8d
	cmpq	%rax, %r10
	movq	168(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r11d, 48(%rsp)
	cmovbe	%r10, %rax
	movq	%r10, 40(%rsp)
	subq	%rax, %r9
	movq	%rax, %rdx
	movq	%rax, 8(%rsp)
	salq	$2, %r9
	addq	%r9, %rsi
	movq	%r9, 32(%rsp)
	call	poly_big_to_fp
	movq	32(%rsp), %r9
	movl	%r12d, %r8d
	movq	%rbx, %rdi
	movq	176(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	8(%rsp), %rdx
	leaq	(%rax,%r9), %rsi
	call	poly_big_to_fp
	movl	%r12d, %esi
	movq	%r15, %rdi
	call	falcon_inner_FFT@PLT
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movq	96(%rsp), %rsi
	movl	%r12d, %edx
	movq	%r15, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movq	16(%rsp), %rsi
	movl	%r12d, %edx
	movq	%rbx, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	%r12d, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	falcon_inner_poly_add@PLT
	movq	24(%rsp), %rsi
	movl	%r12d, %edx
	movq	%rbx, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	falcon_inner_iFFT@PLT
	movq	40(%rsp), %r10
	movq	8(%rsp), %rax
	movq	.LC17(%rip), %rsi
	movl	48(%rsp), %r11d
	movl	%r10d, %ecx
	movq	%rsi, %xmm4
	movq	.LC21(%rip), %rsi
	subl	%eax, %ecx
	movl	%r11d, %eax
	movl	%ecx, %edx
	movq	%rsi, %xmm5
	movq	.LC22(%rip), %rsi
	sall	$5, %edx
	subl	%ecx, %edx
	movq	%rsi, %xmm6
	movq	.LC16(%rip), %rsi
	subl	%edx, %eax
	addl	56(%rsp), %eax
	movq	%rsi, %xmm2
	js	.L861
	je	.L786
	movsd	.LC20(%rip), %xmm0
.L748:
	movapd	%xmm4, %xmm1
	.p2align 4,,10
	.p2align 3
.L751:
	testb	$1, %al
	je	.L750
	mulsd	%xmm0, %xmm1
.L750:
	mulsd	%xmm0, %xmm0
	sarl	%eax
	jne	.L751
.L749:
	movabsq	$4503599627370496, %r9
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L755:
	movsd	(%rbx,%rsi,8), %xmm0
	mulsd	%xmm1, %xmm0
	comisd	%xmm5, %xmm0
	jbe	.L853
	comisd	%xmm0, %xmm6
	jbe	.L853
	movapd	%xmm0, %xmm3
	cvttsd2siq	%xmm0, %rcx
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movapd	%xmm0, %xmm3
	subsd	%xmm4, %xmm0
	movq	%rcx, %rax
	subsd	%xmm2, %xmm3
	shrq	$52, %rax
	addl	$1, %eax
	cvttsd2siq	%xmm0, %r8
	andl	$4095, %eax
	cvttsd2siq	%xmm3, %rdi
	addq	%r14, %rdx
	subl	$2, %eax
	shrl	$31, %eax
	sarq	$63, %r8
	addq	%r9, %rdi
	xorq	%rdx, %rdi
	andq	%r8, %rdi
	xorq	%rdi, %rdx
	movq	%rax, %rdi
	subq	$1, %rax
	negq	%rdi
	andq	%rcx, %rax
	andq	%rdi, %rdx
	orq	%rax, %rdx
	movl	%edx, 0(%rbp,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %r13
	jne	.L755
	movslq	%r11d, %rax
	movl	%r11d, %edx
	movl	%r11d, %esi
	movl	%r11d, 48(%rsp)
	imulq	$-2078209981, %rax, %rax
	sarl	$31, %edx
	shrq	$32, %rax
	addl	%r11d, %eax
	sarl	$4, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	subl	%edx, %esi
	cmpl	$4, 220(%rsp)
	movl	%esi, 8(%rsp)
	jbe	.L862
	pushq	%r12
	.cfi_def_cfa_offset 296
	movl	16(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 304
	movq	%r10, %rsi
	pushq	%rax
	.cfi_def_cfa_offset 312
	movl	%eax, 64(%rsp)
	pushq	%rbp
	.cfi_def_cfa_offset 320
	movq	96(%rsp), %r9
	movq	176(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	200(%rsp), %rdi
	movq	%r9, %r8
	movq	%r10, 64(%rsp)
	call	poly_sub_scaled
	addq	$32, %rsp
	.cfi_def_cfa_offset 288
	pushq	%r12
	.cfi_def_cfa_offset 296
	movl	16(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 304
	movl	56(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 312
	pushq	%rbp
	.cfi_def_cfa_offset 320
	movq	64(%rsp), %r10
	movq	96(%rsp), %r9
	movq	184(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	208(%rsp), %rdi
	movq	%r10, %rsi
	movq	%r9, %r8
	movq	%r10, 40(%rsp)
	call	poly_sub_scaled
	movl	80(%rsp), %r11d
	movq	40(%rsp), %r10
	addq	$32, %rsp
	.cfi_def_cfa_offset 288
.L757:
	movl	88(%rsp), %eax
	addl	%r11d, %eax
	leal	10(%rax), %ecx
	cmpl	%ecx, 80(%rsp)
	jle	.L758
	movl	%r10d, %edx
	addl	$40, %eax
	movl	%ecx, 80(%rsp)
	sall	$5, %edx
	subl	%r10d, %edx
	cmpl	%edx, %eax
	setl	%al
	movzbl	%al, %eax
	subq	%rax, %r10
.L758:
	testl	%r11d, %r11d
	jle	.L759
	subl	$25, %r11d
	movl	$0, %eax
	cmovs	%eax, %r11d
	jmp	.L760
.L853:
	xorl	%eax, %eax
.L707:
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L860:
	.cfi_restore_state
	movq	200(%rsp), %rsi
	movq	96(%rsp), %rax
	movq	$0, 80(%rsp)
	addq	%rsi, %rax
	movq	%rax, 128(%rsp)
	addq	%rsi, %rax
	movq	%rax, %r15
	movq	%rax, 40(%rsp)
	movq	%rsi, %rax
	addq	%rsi, %r15
	movq	64(%rsp), %rsi
	addq	%r15, %rax
	movq	%r15, %r14
	leaq	0(,%rsi,4), %rbx
	subl	$1, %esi
	movq	%rax, 24(%rsp)
	movl	%esi, 216(%rsp)
	movl	136(%rsp), %esi
	movq	%rbx, 192(%rsp)
	movl	$2147473409, %ebx
	subl	$1, %esi
	movl	%esi, 140(%rsp)
	movq	104(%rsp), %rsi
	salq	$3, %rsi
	movq	%rsi, 56(%rsp)
	movq	8(%rsp), %rsi
	leaq	(%rax,%rsi,4), %rax
	movq	%rax, 32(%rsp)
	leaq	4+PRIMES(%rip), %rax
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L743:
	movl	$2, %eax
	movl	$2, %edx
	movl	%ebx, %edi
	subl	%ebx, %eax
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebx, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %edx
	imull	%ebx, %edx
	subl	$2, %edx
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %esi
	movl	%eax, 72(%rsp)
	call	modp_R2
	movq	64(%rsp), %rsi
	movl	%eax, 48(%rsp)
	cmpq	%rsi, 80(%rsp)
	je	.L863
	movq	88(%rsp), %rax
	movl	72(%rsp), %r9d
	movl	%ebx, %r8d
	movq	128(%rsp), %rsi
	movl	136(%rsp), %edx
	movl	(%rax), %ecx
	movq	96(%rsp), %rdi
	call	modp_mkgm2
	movq	80(%rsp), %rax
	movq	64(%rsp), %rsi
	cmpq	%rsi, %rax
	jnb	.L721
	leaq	0(,%rax,4), %rbp
	movq	144(%rsp), %rax
	xorl	%edx, %edx
	leaq	(%rax,%rbp), %rdi
	addq	152(%rsp), %rbp
	xorl	%eax, %eax
	cmpq	$1, %rsi
	jne	.L864
	movq	160(%rsp), %rsi
	movq	40(%rsp), %r8
	.p2align 4,,10
	.p2align 3
.L722:
	movl	(%rdi,%rdx), %ecx
	movl	%ecx, (%r8,%rax,4)
	movl	0(%rbp,%rdx), %ecx
	addq	$4, %rdx
	movl	%ecx, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L722
.L724:
	movl	136(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L726
	movq	64(%rsp), %r13
	movl	72(%rsp), %r9d
	movl	%ebx, %r8d
	movl	%r15d, %ecx
	movq	128(%rsp), %r12
	movq	%r13, %rsi
	movq	%r12, %rdx
	call	modp_iNTT2_ext.part.0
	movl	72(%rsp), %r9d
	movl	%ebx, %r8d
	movl	%r15d, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	modp_iNTT2_ext.part.0
.L726:
	cmpq	$0, 8(%rsp)
	je	.L735
.L866:
	xorl	%edx, %edx
	xorl	%eax, %eax
	cmpq	$1, 104(%rsp)
	jne	.L865
	movq	8(%rsp), %rsi
	movq	112(%rsp), %rdi
	movq	120(%rsp), %r8
	movq	24(%rsp), %r9
	movq	32(%rsp), %r10
	.p2align 4,,10
	.p2align 3
.L736:
	movl	(%rdi,%rdx), %ecx
	movl	%ecx, (%r9,%rax,4)
	movl	(%r8,%rdx), %ecx
	addq	$4, %rdx
	movl	%ecx, (%r10,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L736
.L738:
	movl	140(%rsp), %edx
	testl	%edx, %edx
	je	.L773
	movl	72(%rsp), %r13d
	movl	140(%rsp), %ebp
	movl	%ebx, %ecx
	movq	96(%rsp), %r15
	movq	24(%rsp), %rdi
	movl	%r13d, %r8d
	movl	%ebp, %edx
	movq	%r15, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movq	32(%rsp), %rdi
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movq	%r15, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
.L773:
	movl	48(%rsp), %eax
	movl	72(%rsp), %r10d
	movl	%ebx, %r9d
	xorl	%ecx, %ecx
	movq	120(%rsp), %rbp
	movq	112(%rsp), %r11
	movq	%rax, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L741:
	movq	40(%rsp), %rax
	movq	48(%rsp), %r15
	movl	(%r14,%rcx,8), %r8d
	movl	(%rax,%rcx,8), %esi
	movl	4(%rax,%rcx,8), %edi
	movq	24(%rsp), %rax
	movl	(%rax,%rcx,4), %edx
	imulq	%r15, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	movq	32(%rsp), %rdx
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	(%rdx,%rcx,4), %r12d
	movl	%eax, %r13d
	sarl	$31, %r13d
	imulq	%r15, %r12
	movl	4(%r14,%rcx,8), %r15d
	andl	%ebx, %r13d
	addl	%eax, %r13d
	movl	%r13d, %r13d
	movq	%r12, %rdx
	imulq	%r13, %r15
	imulq	%r10, %rdx
	imulq	%r13, %r8
	movq	%r15, %rax
	imulq	%r10, %rax
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%r12, %rdx
	shrq	$31, %rdx
	subl	%ebx, %edx
	addq	%r15, %rax
	movl	%edx, %r12d
	shrq	$31, %rax
	sarl	$31, %r12d
	subl	%ebx, %eax
	andl	%ebx, %r12d
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%ebx, %r15d
	addl	%r15d, %eax
	movq	16(%rsp), %r15
	movl	%eax, (%r11)
	movq	%r8, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addl	%r12d, %edx
	addq	$1, %rcx
	movl	%edx, %edx
	imulq	%rdx, %rdi
	addq	%r8, %rax
	imulq	%rdx, %rsi
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%r8d, %eax
	movl	%eax, (%r11,%r15)
	movq	%rdi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ebx, %edi
	addl	%edi, %eax
	movl	%eax, 0(%rbp)
	movq	%rsi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	cltd
	andl	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, 0(%rbp,%r15)
	movq	56(%rsp), %rax
	addq	%rax, %r11
	addq	%rax, %rbp
	cmpq	%rcx, 8(%rsp)
	ja	.L741
.L742:
	movl	136(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L739
.L740:
	movl	72(%rsp), %r12d
	movl	136(%rsp), %r13d
	movl	%ebx, %r8d
	movq	128(%rsp), %rbp
	movq	104(%rsp), %r15
	movq	112(%rsp), %rdi
	movl	%r12d, %r9d
	movl	%r13d, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	modp_iNTT2_ext.part.0
	movq	120(%rsp), %rdi
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movl	%r13d, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	modp_iNTT2_ext.part.0
.L739:
	addq	$1, 80(%rsp)
	movq	80(%rsp), %rax
	addq	$12, 88(%rsp)
	movq	88(%rsp), %rsi
	addq	$4, 112(%rsp)
	addq	$4, 120(%rsp)
	cmpq	%rax, 104(%rsp)
	je	.L708
	movl	-4(%rsi), %ebx
	jmp	.L743
.L863:
	movq	80(%rsp), %r15
	movq	96(%rsp), %rbp
	movq	160(%rsp), %r12
	movq	144(%rsp), %rdi
	movq	%rbp, %r8
	movq	%r15, %rdx
	movq	%r15, %rsi
	movq	%r12, %rcx
	call	zint_rebuild_CRT.constprop.3
	movq	%rbp, %r8
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	152(%rsp), %rdi
	movq	%r15, %rsi
	call	zint_rebuild_CRT.constprop.3
	movq	88(%rsp), %rax
	movl	%ebx, %r8d
	movq	%rbp, %rdi
	movl	72(%rsp), %r9d
	movl	136(%rsp), %edx
	movl	(%rax), %ecx
	movq	128(%rsp), %rsi
	call	modp_mkgm2
.L721:
	movl	216(%rsp), %r9d
	movl	$-2147483648, %r15d
	subl	%ebx, %r15d
	testl	%r9d, %r9d
	je	.L727
	movl	48(%rsp), %r8d
	movl	72(%rsp), %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	$1, %edi
	movl	%r8d, %eax
	.p2align 4,,10
	.p2align 3
.L729:
	btl	%ecx, %r9d
	jnc	.L728
	imulq	%rax, %r15
	movq	%rsi, %r8
	imulq	%r15, %r8
	andl	$2147483647, %r8d
	imulq	%rdx, %r8
	addq	%r15, %r8
	shrq	$31, %r8
	subl	%ebx, %r8d
	movl	%r8d, %r15d
	sarl	$31, %r15d
	andl	%ebx, %r15d
	addl	%r8d, %r15d
.L728:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %r8
	movq	%rsi, %rax
	imulq	%r8, %rax
	andl	$2147483647, %eax
	imulq	%rdx, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%r8d, %eax
	movl	%edi, %r8d
	sall	%cl, %r8d
	cmpl	%r8d, %r9d
	jnb	.L729
.L727:
	movq	%r14, %r12
	movq	40(%rsp), %r13
	movl	48(%rsp), %r10d
	movl	%ebx, %r9d
	movq	%r14, 184(%rsp)
	movq	152(%rsp), %rbp
	movq	144(%rsp), %r11
	movl	72(%rsp), %r8d
	movq	192(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L733:
	movq	64(%rsp), %rax
	testq	%rax, %rax
	je	.L730
	leaq	-1(%rax), %rsi
	xorl	%edx, %edx
	movq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L731:
	movl	%edx, %eax
	imulq	%r10, %rax
	movq	%rax, %rdx
	imulq	%r8, %rdx
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	addq	%rdx, %rax
	movl	(%r11,%rdi,4), %edx
	shrq	$31, %rax
	subl	%ebx, %eax
	subl	%ebx, %edx
	movl	%eax, %ecx
	subl	%ebx, %eax
	sarl	$31, %ecx
	andl	%ebx, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%ebx, %edx
	addl	%edx, %eax
	cltd
	andl	%ebx, %edx
	addl	%eax, %edx
	subq	$1, %rdi
	jnb	.L731
	movl	-4(%r11,%r14), %eax
	shrl	$30, %eax
	negl	%eax
	andl	%r15d, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	addl	%eax, %edx
	movl	%edx, 0(%r13)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L732:
	movl	%edx, %eax
	movl	0(%rbp,%rsi,4), %edx
	imulq	%r10, %rax
	subl	%ebx, %edx
	movq	%rax, %rcx
	imulq	%r8, %rcx
	andl	$2147483647, %ecx
	imulq	%r9, %rcx
	addq	%rax, %rcx
	shrq	$31, %rcx
	subl	%ebx, %ecx
	movl	%ecx, %eax
	subl	%ebx, %ecx
	sarl	$31, %eax
	andl	%ebx, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%ebx, %edx
	addl	%edx, %eax
	cltd
	andl	%ebx, %edx
	addl	%eax, %edx
	subq	$1, %rsi
	jnb	.L732
	movl	-4(%rbp,%r14), %eax
	shrl	$30, %eax
	negl	%eax
	andl	%r15d, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	addl	%eax, %edx
.L776:
	movl	%edx, (%r12)
	addq	%r14, %r11
	addq	%r14, %rbp
	addq	$4, %r12
	addq	$4, %r13
	cmpq	24(%rsp), %r12
	jne	.L733
	movl	136(%rsp), %r15d
	movq	184(%rsp), %r14
	testl	%r15d, %r15d
	je	.L726
	movl	72(%rsp), %r13d
	movq	96(%rsp), %rbp
	movl	%ebx, %ecx
	movl	%r15d, %edx
	movq	40(%rsp), %rdi
	movl	%r13d, %r8d
	movq	%rbp, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movl	%r15d, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	cmpq	$0, 8(%rsp)
	jne	.L866
.L735:
	movl	140(%rsp), %eax
	testl	%eax, %eax
	je	.L740
	movl	72(%rsp), %r13d
	movl	140(%rsp), %ebp
	movl	%ebx, %ecx
	movq	96(%rsp), %r15
	movq	24(%rsp), %rdi
	movl	%r13d, %r8d
	movl	%ebp, %edx
	movq	%r15, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movq	32(%rsp), %rdi
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movq	%r15, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	jmp	.L742
	.p2align 4,,10
	.p2align 3
.L730:
	movl	$0, 0(%r13)
	xorl	%edx, %edx
	jmp	.L776
.L865:
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	112(%rsp), %r8
	movq	120(%rsp), %r9
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	.p2align 4,,10
	.p2align 3
.L737:
	movl	(%r8,%rdx), %ecx
	movl	%ecx, (%r10,%rax,4)
	movl	(%r9,%rdx), %ecx
	addq	%rsi, %rdx
	movl	%ecx, (%r11,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L737
	jmp	.L738
.L864:
	movq	192(%rsp), %rsi
	movq	160(%rsp), %r8
	movq	40(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L723:
	movl	(%rdi,%rdx), %ecx
	movl	%ecx, (%r9,%rax,4)
	movl	0(%rbp,%rdx), %ecx
	addq	%rsi, %rdx
	movl	%ecx, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L723
	jmp	.L724
.L861:
	movsd	.LC19(%rip), %xmm0
	negl	%eax
	jmp	.L748
.L862:
	subq	$8, %rsp
	.cfi_def_cfa_offset 296
	pushq	80(%rsp)
	.cfi_def_cfa_offset 304
	pushq	%r12
	.cfi_def_cfa_offset 312
	movl	%esi, 32(%rsp)
	pushq	%rsi
	.cfi_def_cfa_offset 320
	movq	%r10, %rsi
	pushq	%rax
	.cfi_def_cfa_offset 328
	movl	%eax, 80(%rsp)
	pushq	%rbp
	.cfi_def_cfa_offset 336
	movq	112(%rsp), %r9
	movq	192(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	216(%rsp), %rdi
	movq	%r9, %r8
	movq	%r10, 80(%rsp)
	call	poly_sub_scaled_ntt
	addq	$40, %rsp
	.cfi_def_cfa_offset 296
	pushq	80(%rsp)
	.cfi_def_cfa_offset 304
	pushq	%r12
	.cfi_def_cfa_offset 312
	movl	32(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 320
	movl	72(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 328
	pushq	%rbp
	.cfi_def_cfa_offset 336
	movq	80(%rsp), %r10
	movq	112(%rsp), %r9
	movq	200(%rsp), %rcx
	movq	152(%rsp), %rdx
	movq	224(%rsp), %rdi
	movq	%r10, %rsi
	movq	%r9, %r8
	movq	%r10, 56(%rsp)
	call	poly_sub_scaled_ntt
	addq	$48, %rsp
	.cfi_def_cfa_offset 288
	movq	8(%rsp), %r10
	movl	48(%rsp), %r11d
	jmp	.L757
.L786:
	movapd	%xmm4, %xmm1
	jmp	.L749
.L759:
	movq	104(%rsp), %rbx
	salq	$2, %rbx
	cmpq	64(%rsp), %r10
	jnb	.L771
	movq	64(%rsp), %rdi
	movq	176(%rsp), %rbp
	leaq	0(,%r10,4), %rsi
	movq	168(%rsp), %rdx
	subq	%r10, %rdi
	leaq	0(%rbp,%rsi), %r9
	movq	%rdi, %rax
	movq	%rdi, %r12
	leaq	-1(%rdi), %r8
	movq	%rdi, 8(%rsp)
	shrq	$2, %rax
	andq	$-4, %r12
	leaq	(%rdx,%rsi), %r11
	salq	$4, %rax
	cmpq	$2, %r8
	movq	%rax, 32(%rsp)
	leaq	(%r10,%r12), %rax
	cmovbe	%r10, %rax
	xorl	%r13d, %r13d
	movq	%rbp, %r10
	leaq	0(,%rax,4), %rcx
	leaq	1(%rax), %r14
	addq	$2, %rax
	movq	%rax, 24(%rsp)
	leaq	8(%rcx), %r15
	movq	%r14, 16(%rsp)
	leaq	4(%rcx), %r14
.L770:
	movl	-4(%rdx,%rsi), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	cmpq	$2, %r8
	jbe	.L763
	movq	32(%rsp), %rbp
	movd	%eax, %xmm7
	movq	8(%rsp), %rdi
	pshufd	$0, %xmm7, %xmm0
	addq	%r11, %rbp
	movq	%rbp, 40(%rsp)
	movq	%r11, %rbp
.L764:
	movups	%xmm0, 0(%rbp)
	addq	$16, %rbp
	cmpq	%rbp, 40(%rsp)
	jne	.L764
	movq	%rdi, 8(%rsp)
	cmpq	%rdi, %r12
	je	.L765
.L763:
	movl	%eax, (%rdx,%rcx)
	movl	%eax, %edi
	movq	64(%rsp), %rbp
	movq	16(%rsp), %rax
	cmpq	%rax, %rbp
	jbe	.L766
	movq	24(%rsp), %rax
	movl	%edi, (%rdx,%r14)
	cmpq	%rax, %rbp
	jbe	.L767
	movl	%edi, (%rdx,%r15)
.L767:
	movl	-4(%r10,%rsi), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	cmpq	$2, %r8
	jbe	.L867
.L777:
	movq	32(%rsp), %rbp
	movd	%eax, %xmm7
	movq	8(%rsp), %rdi
	pshufd	$0, %xmm7, %xmm0
	addq	%r9, %rbp
	movq	%rbp, 40(%rsp)
	movq	%r9, %rbp
.L768:
	movups	%xmm0, 0(%rbp)
	addq	$16, %rbp
	cmpq	40(%rsp), %rbp
	jne	.L768
	movq	%rdi, 8(%rsp)
	cmpq	%rdi, %r12
	je	.L769
	movl	%eax, (%r10,%rcx)
	movq	16(%rsp), %rdi
	cmpq	%rdi, 64(%rsp)
	jbe	.L769
.L779:
	movl	%eax, (%r10,%r14)
	movq	24(%rsp), %rbp
	cmpq	%rbp, 64(%rsp)
	jbe	.L769
	movl	%eax, (%r10,%r15)
.L769:
	addq	$1, %r13
	addq	%rbx, %rdx
	addq	%rbx, %r10
	addq	%rbx, %r11
	addq	%rbx, %r9
	cmpq	%r13, 160(%rsp)
	jne	.L770
.L771:
	movq	160(%rsp), %r13
	movq	64(%rsp), %r14
	xorl	%ebp, %ebp
	movq	168(%rsp), %rcx
	addq	%r13, %r13
	salq	$2, %r14
	movq	%rcx, %r12
.L762:
	movq	%r12, %rsi
	movq	%rcx, %rdi
	movq	%r14, %rdx
	addq	$1, %rbp
	call	memmove@PLT
	addq	%rbx, %r12
	movq	%rax, %rcx
	addq	%r14, %rcx
	cmpq	%r13, %rbp
	jne	.L762
	movl	$1, %eax
	jmp	.L707
.L765:
	movl	-4(%r10,%rsi), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	jmp	.L777
.L867:
	movl	%eax, (%r10,%rcx)
	jmp	.L779
.L766:
	movl	-4(%r10,%rsi), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	cmpq	$2, %r8
	ja	.L777
	movl	%eax, (%r10,%rcx)
	jmp	.L769
	.cfi_endproc
.LFE5563:
	.size	solve_NTRU_intermediate, .-solve_NTRU_intermediate
	.p2align 4
	.globl	falcon_inner_keygen
	.type	falcon_inner_keygen, @function
falcon_inner_keygen:
.LFB5568:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r8, %rax
	movl	$4, %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$8, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	movq	%r9, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$1, %ebx
	subq	$2168, %rsp
	.cfi_def_cfa_offset 2224
	movq	%rcx, 1088(%rsp)
	movzbl	2224(%rsp), %ecx
	movq	%rdi, 328(%rsp)
	salq	%cl, %rbx
	salq	%cl, %r13
	movq	%rdx, 40(%rsp)
	movl	$2, %edx
	movq	%rbx, %r15
	movq	%r13, %rbx
	addq	2232(%rsp), %r13
	salq	%cl, %rdx
	movq	%r13, %rdi
	addq	2232(%rsp), %rdx
	movq	%r15, %rcx
	movq	%rbx, 536(%rsp)
	addq	%rbx, %rdi
	testq	%r9, %r9
	cmove	2232(%rsp), %rsi
	movq	%rdi, 544(%rsp)
	movq	%rdx, %rdi
	cmovne	2232(%rsp), %rdi
	shrq	%rcx
	leaq	0(,%rcx,4), %rdx
	movq	%rcx, %r11
	movzbl	2224(%rsp), %ecx
	movq	%rsi, 872(%rsp)
	movq	%rdi, 880(%rsp)
	movq	2232(%rsp), %rdi
	salq	%cl, %r10
	addq	%rdx, %rdi
	movq	%r10, 144(%rsp)
	leaq	(%rdi,%rdx), %r8
	movq	%rdi, 376(%rsp)
	movq	%r8, %r9
	movq	%r8, 456(%rsp)
	addq	%r10, %r9
	movq	%r9, 464(%rsp)
	movq	%r9, %rbx
	movq	2232(%rsp), %r9
	addq	%r10, %rbx
	addq	%r10, %r9
	movq	%rbx, 552(%rsp)
	addq	%r10, %rbx
	movq	%rbx, 888(%rsp)
	movq	%r9, %rbx
	addq	%r10, %rbx
	movq	%r9, 112(%rsp)
	movq	%rbx, %rdi
	movq	%rbx, 96(%rsp)
	addq	%r10, %rdi
	movq	%rdi, %rbx
	addq	%r10, %rdi
	movq	%rdi, %rcx
	addq	%r10, %rdi
	movq	%rdi, 72(%rsp)
	addq	%r10, %rdi
	movq	%rcx, %r14
	movq	%r13, %r10
	movq	%rdi, 104(%rsp)
	movq	%rbp, %rdi
	movq	%rcx, 120(%rsp)
	subq	2232(%rsp), %r14
	movq	%r14, %rcx
	andl	$7, %r14d
	movq	%rbx, 88(%rsp)
	movq	%r14, 1072(%rsp)
	leaq	8(%rcx), %r14
	movq	%r14, 1112(%rsp)
	movq	%rbx, %r14
	subq	2232(%rsp), %r14
	movq	%r14, %rcx
	andl	$7, %r14d
	testq	%rax, %rax
	movq	%r11, 368(%rsp)
	cmove	%r13, %rax
	movq	%rbp, %r13
	movq	%r14, 1104(%rsp)
	leaq	0(,%r11,8), %r14
	movq	%r14, 384(%rsp)
	leaq	-1(%r15), %r14
	leaq	8(%rcx), %rsi
	movq	%rax, 448(%rsp)
	movl	2224(%rsp), %eax
	movq	%r14, 312(%rsp)
	subl	$1, %eax
	movq	%rsi, 864(%rsp)
	movl	%eax, 1084(%rsp)
	movl	$10, %eax
	subl	2224(%rsp), %eax
	cmpq	$14, %r14
	movl	%eax, 444(%rsp)
	movq	%r15, %rax
	seta	8(%rsp)
	addq	%rax, %r13
	cmpq	%r10, %rbp
	movq	%rax, %r14
	setnb	%al
	cmpq	%r13, 2232(%rsp)
	movzbl	8(%rsp), %r15d
	movq	%r13, 288(%rsp)
	setnb	%cl
	movq	%rbp, %r13
	movq	%r10, 136(%rsp)
	orl	%ecx, %eax
	movq	%r14, %rcx
	shrq	$4, %r14
	movq	%r14, 400(%rsp)
	salq	$7, %r14
	andl	%r15d, %eax
	movq	2232(%rsp), %r15
	movq	%r14, 64(%rsp)
	addq	2232(%rsp), %r14
	movq	%r14, 816(%rsp)
	movq	%rcx, %r14
	andq	$-16, %r14
	movb	%al, 1082(%rsp)
	leaq	0(,%r14,8), %rax
	addq	%r14, %r13
	leaq	1(%r14), %rsi
	addq	%rax, %r15
	movq	%r13, 488(%rsp)
	movq	%rbp, %r13
	leaq	16(%rax), %r8
	movq	%r15, 912(%rsp)
	addq	%rsi, %r13
	leaq	3(%r14), %r10
	leaq	24(%rax), %r9
	movq	2232(%rsp), %r15
	movq	%rsi, 176(%rsp)
	leaq	8(%rax), %rsi
	leaq	40(%rax), %r11
	movq	%r13, 480(%rsp)
	movq	%rdi, %r13
	leaq	48(%rax), %rbx
	addq	%rsi, %r15
	movq	%r15, 904(%rsp)
	leaq	2(%r14), %r15
	movq	%r15, 168(%rsp)
	movq	2232(%rsp), %r12
	addq	%r15, %rbp
	movq	%rbp, 472(%rsp)
	movq	2232(%rsp), %rbp
	addq	%r8, %r12
	movq	%r10, 160(%rsp)
	movq	%r12, 896(%rsp)
	movq	%rdi, %r12
	addq	%r10, %r12
	leaq	32(%rax), %r10
	movq	%r12, 648(%rsp)
	movq	2232(%rsp), %r12
	addq	%r10, %rbp
	movq	%rbp, 1376(%rsp)
	leaq	5(%r14), %rbp
	addq	%r9, %r12
	movq	%rbp, 272(%rsp)
	movq	%r12, 1384(%rsp)
	leaq	4(%r14), %r12
	addq	%r12, %r13
	movq	%r12, 280(%rsp)
	movq	%rdi, %r12
	addq	%rbp, %r12
	movq	%r13, 640(%rsp)
	movq	%rdi, %r13
	leaq	56(%rax), %rbp
	movq	%r12, 632(%rsp)
	movq	2232(%rsp), %r12
	addq	%r11, %r12
	movq	%r12, 1368(%rsp)
	leaq	6(%r14), %r12
	addq	%r12, %r13
	movq	%r12, 264(%rsp)
	movq	%rdi, %r12
	movq	%r13, 624(%rsp)
	movq	2232(%rsp), %r13
	addq	%rbx, %r13
	movq	%r13, 1360(%rsp)
	leaq	7(%r14), %r13
	movq	%r13, %r15
	movq	%rdi, %r13
	addq	%r15, %r13
	movq	%r15, 256(%rsp)
	movq	%r14, %r15
	movq	%r13, 616(%rsp)
	movq	2232(%rsp), %r13
	addq	%rbp, %r13
	movq	%r13, 1352(%rsp)
	leaq	8(%r14), %r13
	addq	%r13, %r12
	movq	%r13, 248(%rsp)
	movq	%rdi, %r13
	movq	%r12, 608(%rsp)
	leaq	64(%rax), %r12
	movq	%r12, 56(%rsp)
	addq	2232(%rsp), %r12
	movq	%r12, 1344(%rsp)
	leaq	9(%r14), %r12
	addq	$10, %r14
	addq	%r12, %r13
	movq	%r12, 240(%rsp)
	leaq	72(%rax), %r12
	movq	%r13, 600(%rsp)
	movq	2232(%rsp), %r13
	movq	%r12, 48(%rsp)
	addq	%r12, %r13
	movq	%r13, 1336(%rsp)
	movq	%r14, %r13
	movq	%rdi, %r14
	movq	2232(%rsp), %r12
	addq	%r13, %r14
	movq	%rdi, 32(%rsp)
	movq	%r15, %rdi
	movq	%r14, 592(%rsp)
	leaq	80(%rax), %r14
	addq	%r14, %r12
	movq	%r13, 232(%rsp)
	movq	%r12, 1328(%rsp)
	leaq	11(%r15), %r12
	movq	%r12, %r13
	movq	32(%rsp), %r12
	movq	%rcx, 24(%rsp)
	movq	%r13, 224(%rsp)
	movq	%r12, %r15
	movq	%rdi, 128(%rsp)
	addq	%r13, %r15
	movq	2232(%rsp), %r13
	movq	%r15, 584(%rsp)
	leaq	88(%rax), %r15
	addq	%r15, %r13
	movq	%r13, 1320(%rsp)
	leaq	12(%rdi), %r13
	addq	%r13, %r12
	movq	%r13, 216(%rsp)
	leaq	96(%rax), %r13
	movq	%r12, 576(%rsp)
	movq	2232(%rsp), %r12
	movq	%r13, 16(%rsp)
	addq	%r13, %r12
	movq	%r12, 1312(%rsp)
	leaq	13(%rdi), %r12
	movq	%r12, %r13
	movq	32(%rsp), %r12
	movq	%r13, 208(%rsp)
	addq	%r13, %r12
	leaq	14(%rdi), %r13
	leaq	112(%rax), %rdi
	movq	%r12, 568(%rsp)
	leaq	104(%rax), %r12
	movq	%r12, (%rsp)
	addq	2232(%rsp), %r12
	movq	%r12, 1304(%rsp)
	movq	32(%rsp), %r12
	movq	%r13, 200(%rsp)
	addq	%r13, %r12
	movq	536(%rsp), %r13
	movq	%r12, 800(%rsp)
	movq	2232(%rsp), %r12
	addq	%rdi, %r12
	movq	%r12, 1936(%rsp)
	movq	40(%rsp), %r12
	addq	%rcx, %r12
	movq	2232(%rsp), %rcx
	leaq	(%rcx,%r13,2), %rcx
	cmpq	%rcx, 40(%rsp)
	setnb	%cl
	cmpq	%r12, 136(%rsp)
	setnb	80(%rsp)
	movzbl	80(%rsp), %r13d
	addq	136(%rsp), %rax
	movq	%rax, 936(%rsp)
	orl	%r13d, %ecx
	movzbl	8(%rsp), %r13d
	andl	%ecx, %r13d
	movq	64(%rsp), %rcx
	addq	136(%rsp), %rcx
	movb	%r13b, 1083(%rsp)
	movq	128(%rsp), %r13
	movq	%rcx, 744(%rsp)
	movq	40(%rsp), %rcx
	addq	%rcx, %r13
	movq	%rcx, %rax
	movq	%r13, 512(%rsp)
	movq	176(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 504(%rsp)
	movq	%rsi, %r13
	movq	136(%rsp), %rsi
	addq	%rsi, %r13
	movq	%r13, 928(%rsp)
	movq	168(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 496(%rsp)
	movq	%r8, %r13
	addq	%rsi, %r13
	movq	%r13, 920(%rsp)
	movq	160(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 736(%rsp)
	movq	%r9, %r13
	addq	%rsi, %r13
	movq	%r13, 1472(%rsp)
	movq	280(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 728(%rsp)
	movq	%r10, %r13
	movq	%rsi, %r10
	addq	%rsi, %r13
	movq	%r11, %rsi
	addq	%r10, %rbx
	addq	%r10, %rbp
	movq	%r13, 1464(%rsp)
	movq	272(%rsp), %r13
	addq	%r10, %rsi
	movq	%rsi, 1456(%rsp)
	addq	%rcx, %r13
	movq	%rbx, 1448(%rsp)
	movq	%r13, 720(%rsp)
	movq	264(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 712(%rsp)
	movq	256(%rsp), %r13
	movq	56(%rsp), %rbx
	addq	200(%rsp), %rax
	movq	%rbp, 1440(%rsp)
	addq	%rcx, %r13
	movq	%rax, 808(%rsp)
	movq	%rdi, %rax
	movq	%r13, 704(%rsp)
	movq	248(%rsp), %r13
	addq	%r10, %rbx
	movq	%rbx, 1432(%rsp)
	movq	48(%rsp), %rbx
	addq	%rcx, %r13
	movq	%r13, 696(%rsp)
	movq	240(%rsp), %r13
	addq	%r10, %rbx
	movq	%rbx, 1424(%rsp)
	movq	%r14, %rbx
	addq	%rcx, %r13
	addq	%r10, %rbx
	movq	%r13, 688(%rsp)
	movq	232(%rsp), %r13
	movq	%rbx, 1416(%rsp)
	movq	%r15, %rbx
	movq	%r10, %r15
	addq	%rcx, %r13
	addq	%r10, %rbx
	movq	%r13, 680(%rsp)
	movq	224(%rsp), %r13
	movq	%rbx, 1408(%rsp)
	addq	%rcx, %r13
	movq	%r13, 672(%rsp)
	movq	216(%rsp), %r13
	addq	%rcx, %r13
	movq	%r13, 664(%rsp)
	movq	16(%rsp), %r13
	addq	%r10, %r13
	movq	(%rsp), %r10
	movq	%r13, 1400(%rsp)
	movq	208(%rsp), %r13
	addq	%r15, %r10
	addq	%rcx, %r13
	addq	%r15, %rax
	movq	%r10, 1392(%rsp)
	movq	%rax, 1944(%rsp)
	movl	2224(%rsp), %eax
	movq	%r13, 656(%rsp)
	movq	%rcx, %r13
	addl	$1, %eax
	movl	%eax, 440(%rsp)
	movl	2224(%rsp), %eax
	addl	$2, %eax
	movl	%eax, 436(%rsp)
	movl	2224(%rsp), %eax
	movq	368(%rsp), %r11
	movq	24(%rsp), %r14
	movq	%r12, 344(%rsp)
	addl	$3, %eax
	movq	144(%rsp), %r10
	movq	384(%rsp), %rbp
	movl	%eax, 432(%rsp)
	movl	2224(%rsp), %eax
	movq	2232(%rsp), %r15
	addl	$4, %eax
	movl	%eax, 428(%rsp)
	movl	2224(%rsp), %eax
	addl	$5, %eax
	movl	%eax, 424(%rsp)
	movl	2224(%rsp), %eax
	addl	$6, %eax
	movl	%eax, 420(%rsp)
	movq	2232(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	leaq	16(%rdx), %rax
	testq	%rax, %rax
	movq	%rsi, 408(%rsp)
	setle	%cl
	cmpq	%rsi, 376(%rsp)
	leaq	-4(%r10), %rsi
	setnb	%al
	orl	%ecx, %eax
	cmpq	$1, %r11
	setne	%cl
	andl	%ecx, %eax
	movb	%al, 1999(%rsp)
	leaq	-1(%r11), %rax
	movq	%rax, 1952(%rsp)
	movq	%r14, %rax
	shrq	$3, %rax
	movq	%rax, %rbx
	salq	$2, %rax
	salq	$4, %rbx
	cmpq	$56, %rsi
	movq	%rax, 1024(%rsp)
	seta	%al
	andb	8(%rsp), %al
	addq	%rbp, %r15
	movq	%rbx, 1720(%rsp)
	movl	%eax, %r9d
	movq	%r14, %rax
	movq	%r10, %r14
	addq	%rbp, %r10
	addq	%r11, %rax
	movq	288(%rsp), %rbp
	movq	%r15, %r11
	movq	%r15, 2032(%rsp)
	leaq	(%rdx,%rax,4), %rax
	addq	2232(%rsp), %rax
	movb	%r9b, 520(%rsp)
	movq	%rax, %rcx
	movq	%r10, %rax
	addq	2232(%rsp), %r10
	addq	%r14, %rax
	addq	2232(%rsp), %rax
	cmpq	%r15, %r12
	movq	%r10, %rbx
	setbe	%dl
	cmpq	%rcx, %r13
	movq	%rax, %rdi
	movq	%r13, %r15
	movq	%r10, 2024(%rsp)
	movq	%r14, %r10
	movq	32(%rsp), %r14
	setnb	%al
	movl	%edx, %r13d
	orl	%eax, %r13d
	cmpq	%rcx, %r14
	setnb	%al
	cmpq	%r11, %rbp
	movl	%r13d, %r8d
	setbe	%dl
	orl	%edx, %eax
	andl	%r8d, %eax
	andl	%r9d, %eax
	cmpq	%rdi, %r14
	movl	%eax, %ecx
	setnb	%al
	cmpq	%rbx, %rbp
	setbe	%dl
	orl	%edx, %eax
	andl	%eax, %ecx
	cmpq	%rdi, %r15
	setnb	%al
	cmpq	%rbx, %r12
	movl	%ecx, %r12d
	setbe	%dl
	leaq	0(,%r10,4), %rcx
	orl	%edx, %eax
	andl	%eax, %r12d
	movq	400(%rsp), %rax
	movb	%r12b, 2136(%rsp)
	salq	$4, %rax
	movq	%rax, 952(%rsp)
	movq	128(%rsp), %rax
	movq	456(%rsp), %r8
	movq	464(%rsp), %r9
	salq	$2, %rax
	leaq	(%r8,%rax), %r12
	leaq	4(%rax), %rbx
	movq	%r12, 1704(%rsp)
	leaq	(%r9,%rax), %r12
	leaq	8(%rax), %rbp
	movq	%r12, 1696(%rsp)
	leaq	(%r8,%rbx), %r12
	leaq	16(%rax), %r13
	movq	%r12, 1688(%rsp)
	leaq	(%r9,%rbx), %r12
	leaq	20(%rax), %r14
	movq	%r12, 1680(%rsp)
	leaq	(%r8,%rbp), %r12
	leaq	24(%rax), %r15
	movq	%r12, 1672(%rsp)
	leaq	(%r9,%rbp), %r12
	leaq	28(%rax), %rdx
	movq	%r12, 1664(%rsp)
	leaq	12(%rax), %r12
	leaq	(%r8,%r12), %r11
	movq	%rdx, 192(%rsp)
	movq	%r11, 1656(%rsp)
	leaq	(%r9,%r12), %r11
	movq	%r11, 1648(%rsp)
	leaq	(%r8,%r13), %r11
	movq	%r11, 1640(%rsp)
	leaq	(%r9,%r13), %r11
	movq	%r11, 1632(%rsp)
	leaq	(%r8,%r14), %r11
	movq	%r11, 1624(%rsp)
	leaq	(%r9,%r14), %r11
	movq	%r11, 1616(%rsp)
	leaq	(%r8,%r15), %r11
	movq	%r11, 1608(%rsp)
	leaq	(%r9,%r15), %r11
	movq	%r11, 1600(%rsp)
	movq	%r8, %r11
	addq	%rdx, %r11
	movq	%r11, 1592(%rsp)
	movq	%r9, %r11
	addq	%rdx, %r11
	movq	%r11, 1584(%rsp)
	leaq	32(%rax), %r11
	movq	%r11, %rdx
	movq	%r8, %r11
	addq	%rdx, %r11
	movq	%rdx, 152(%rsp)
	movq	%r11, 1576(%rsp)
	movq	%r9, %r11
	addq	%rdx, %r11
	movq	%r11, 1568(%rsp)
	leaq	36(%rax), %r11
	movq	%r11, %rdx
	movq	%r8, %r11
	addq	%rdx, %r11
	movq	%rdx, 80(%rsp)
	movq	%r11, 1560(%rsp)
	movq	%r9, %r11
	addq	%rdx, %r11
	movq	%r11, 1552(%rsp)
	leaq	40(%rax), %r11
	movq	%r11, %rdx
	movq	%r8, %r11
	addq	%rdx, %r11
	movq	%rdx, 64(%rsp)
	movq	%r11, 1544(%rsp)
	movq	%r9, %r11
	addq	%rdx, %r11
	movq	%r11, 1536(%rsp)
	leaq	44(%rax), %r11
	movq	%r11, %rdi
	movq	%r8, %r11
	addq	%rdi, %r11
	movq	%rdi, 56(%rsp)
	movq	%r11, 1528(%rsp)
	movq	%r9, %r11
	addq	%rdi, %r11
	movq	%r11, 1520(%rsp)
	leaq	48(%rax), %r11
	movq	%r11, %rdx
	movq	%r8, %r11
	addq	%rdx, %r11
	movq	%r11, 1512(%rsp)
	movq	%r9, %r11
	addq	%rdx, %r11
	movq	%rdx, 48(%rsp)
	movq	%r11, 1504(%rsp)
	leaq	52(%rax), %r11
	movq	%r11, %rdi
	movq	%r8, %r11
	movq	%rcx, (%rsp)
	addq	%rdi, %r11
	movq	%rdi, 16(%rsp)
	movq	%r11, 1496(%rsp)
	movq	%r9, %r11
	addq	%rdi, %r11
	movq	104(%rsp), %rdi
	movq	%r11, 1488(%rsp)
	leaq	56(%rax), %r11
	addq	%r11, %r8
	addq	%r11, %r9
	movq	%r11, 296(%rsp)
	movq	312(%rsp), %r11
	movq	%r9, 2000(%rsp)
	leaq	(%rdi,%r11,4), %r9
	movq	%r10, %r11
	movq	%r8, 2008(%rsp)
	leaq	(%r10,%r10,2), %r8
	addq	%rcx, %r11
	movq	%r9, 944(%rsp)
	leaq	16(%r8), %r9
	leaq	16(%r11), %rdx
	movq	%r9, 560(%rsp)
	cmpq	%rdx, %r8
	movq	%r11, 352(%rsp)
	setge	%cl
	cmpq	%r9, %r11
	movq	%r8, 336(%rsp)
	setge	%dl
	movl	%ecx, %r9d
	orl	%edx, %r9d
	leaq	-4(%r8), %rdx
	movb	%r9b, 528(%rsp)
	movq	$-4, %r9
	subq	%r8, %r9
	cmpq	$8, %r9
	movq	$-4, %r9
	seta	840(%rsp)
	cmpq	$8, %rdx
	seta	320(%rsp)
	subq	%r10, %r9
	movzbl	320(%rsp), %r8d
	cmpq	$8, %r9
	seta	%r9b
	negq	%r10
	movq	%r10, 856(%rsp)
	addq	%r10, %r10
	leaq	-4(%r10), %rdx
	cmpq	$8, %rdx
	seta	360(%rsp)
	cmpq	$8, %rsi
	movzbl	360(%rsp), %r11d
	seta	%dl
	cmpq	$6, 312(%rsp)
	seta	%cl
	andl	%ecx, %edx
	movq	(%rsp), %rcx
	andl	%r9d, %edx
	andl	%r11d, %edx
	subq	$4, %rcx
	andb	840(%rsp), %dl
	andb	528(%rsp), %dl
	andl	%r8d, %edx
	cmpq	$8, %rcx
	movq	352(%rsp), %r11
	movq	336(%rsp), %r8
	seta	%cl
	movl	%edx, %esi
	andl	%ecx, %esi
	movq	112(%rsp), %rcx
	movb	%sil, 2137(%rsp)
	leaq	(%rcx,%r11), %rsi
	movq	%r10, %r11
	negq	%r11
	movq	%rsi, 2056(%rsp)
	subq	%r8, %rsi
	movq	%rsi, 2048(%rsp)
	subq	%r10, %rsi
	movq	%r11, 1120(%rsp)
	movq	24(%rsp), %r11
	movq	%rsi, 2040(%rsp)
	addq	856(%rsp), %rsi
	movq	%rsi, 1032(%rsp)
	movq	%r11, %rsi
	andq	$-4, %r11
	movq	120(%rsp), %rdx
	shrq	$2, %rsi
	movq	%r11, 184(%rsp)
	movq	%rsi, %rcx
	movq	88(%rsp), %rsi
	salq	$4, %rcx
	movq	%rcx, 304(%rsp)
	leaq	0(,%r11,4), %rcx
	leaq	(%rdi,%rcx), %rdi
	movq	%rdi, 792(%rsp)
	movq	2232(%rsp), %rdi
	addq	%rcx, %rdi
	movq	%rdi, 1000(%rsp)
	leaq	(%rsi,%rcx), %rdi
	movq	72(%rsp), %rsi
	movq	%rdi, 992(%rsp)
	movq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 784(%rsp)
	movq	%rdx, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 984(%rsp)
	leaq	1(%r11), %rdi
	movq	104(%rsp), %r11
	movq	%rdi, 776(%rsp)
	leaq	4(%rcx), %rdi
	addq	%rdi, %r11
	addq	%rdi, %rsi
	movq	%r11, 768(%rsp)
	movq	2232(%rsp), %r11
	movq	%rsi, 760(%rsp)
	leaq	(%rdx,%rdi), %rsi
	addq	%rdi, %r11
	movq	%rsi, 960(%rsp)
	movq	%r11, 976(%rsp)
	movq	88(%rsp), %r11
	addq	%rdi, %r11
	movq	%r11, 968(%rsp)
	movq	184(%rsp), %r11
	leaq	2(%r11), %rsi
	movq	104(%rsp), %r11
	movq	%rsi, 752(%rsp)
	leaq	8(%rcx), %rsi
	addq	%rsi, %r11
	movq	%r11, 832(%rsp)
	movq	2232(%rsp), %r11
	addq	%rsi, %r11
	movq	%r11, 1056(%rsp)
	movq	88(%rsp), %r11
	addq	%rsi, %r11
	movq	%r11, 1048(%rsp)
	movq	72(%rsp), %r11
	addq	%rsi, %r11
	movq	%r11, 824(%rsp)
	movq	%rdx, %r11
	movq	(%rsp), %rdx
	addq	%rsi, %r11
	cmpq	$3, 312(%rsp)
	seta	392(%rsp)
	addq	$16, %rdx
	movq	%r11, 1040(%rsp)
	movzbl	392(%rsp), %r11d
	movq	%rdx, 848(%rsp)
	movzbl	360(%rsp), %edx
	andl	%r11d, %r9d
	movq	$-4, %r11
	subq	%r10, %r11
	andl	%r9d, %edx
	andb	320(%rsp), %dl
	andb	840(%rsp), %dl
	cmpq	$8, %r11
	movzbl	528(%rsp), %r11d
	seta	%r9b
	andl	%r9d, %edx
	movq	848(%rsp), %r9
	andl	%edx, %r11d
	cmpq	%r9, %r8
	movb	%r11b, 320(%rsp)
	movq	%r8, %r11
	movq	560(%rsp), %r8
	setge	%dl
	cmpq	%r8, (%rsp)
	movzbl	320(%rsp), %r8d
	setge	%r9b
	orl	%r9d, %edx
	movq	1032(%rsp), %r9
	andl	%edx, %r8d
	subq	%r10, %r9
	movb	%r8b, 2138(%rsp)
	movq	%r9, 2072(%rsp)
	subq	%r11, %r9
	movq	%r9, %r11
	movq	%r9, 840(%rsp)
	subq	%r10, %r9
	movq	856(%rsp), %r10
	movq	%r9, 320(%rsp)
	addq	%r9, %r10
	movq	112(%rsp), %r9
	movq	%r10, 2064(%rsp)
	movq	144(%rsp), %r10
	leaq	(%r9,%rcx), %r8
	movq	%r8, 1016(%rsp)
	leaq	(%r9,%rdi), %r8
	movq	%r8, 1008(%rsp)
	leaq	(%r9,%rsi), %r8
	movq	848(%rsp), %r9
	movq	%r8, 1064(%rsp)
	movl	2224(%rsp), %r8d
	testl	%r8d, %r8d
	leaq	16(%r10,%r10), %r8
	setne	1096(%rsp)
	movq	1120(%rsp), %r10
	movq	%r8, 360(%rsp)
	cmpq	%r10, %r9
	setle	%r9b
	cmpq	%r8, (%rsp)
	movq	336(%rsp), %r8
	setge	%dl
	orl	%edx, %r9d
	cmpq	%r10, 560(%rsp)
	setle	%dl
	cmpq	360(%rsp), %r8
	setge	336(%rsp)
	orb	336(%rsp), %dl
	andl	%r9d, %edx
	movq	%r8, 336(%rsp)
	movzbl	1096(%rsp), %r9d
	andl	%edx, %r9d
	movq	(%rsp), %rdx
	movb	%r9b, 528(%rsp)
	leaq	4(%rdx), %r9
	subq	%r9, %r8
	movzbl	528(%rsp), %r9d
	cmpq	$8, %r8
	movq	1112(%rsp), %r8
	seta	%dl
	andl	%edx, %r9d
	movq	%r11, %rdx
	movq	864(%rsp), %r11
	movb	%r9b, 2139(%rsp)
	movq	2232(%rsp), %r9
	addq	%r10, %r9
	movq	1072(%rsp), %r10
	movq	%r9, 848(%rsp)
	movq	144(%rsp), %r9
	subq	%r10, %r8
	addq	%r9, %rdx
	movq	%rdx, 2080(%rsp)
	movq	2232(%rsp), %rdx
	addq	%r8, %rdx
	testq	%r10, %r10
	movq	%rdx, %r10
	cmove	120(%rsp), %r10
	movq	2232(%rsp), %rdx
	movq	%r10, 528(%rsp)
	movq	1104(%rsp), %r10
	subq	%r10, %r11
	addq	%r11, %rdx
	testq	%r10, %r10
	cmove	88(%rsp), %rdx
	movq	352(%rsp), %r11
	movq	%rdx, %r10
	addq	384(%rsp), %r10
	movq	%rdx, 864(%rsp)
	leaq	(%r9,%r11), %rdx
	movq	%r10, 560(%rsp)
	movq	2232(%rsp), %r10
	movq	320(%rsp), %r11
	addq	%rdx, %r10
	addq	%r9, %rdx
	movq	%r10, %r8
	movq	%r11, %r10
	addq	%r9, %r10
	movq	%r10, 856(%rsp)
	movq	2232(%rsp), %r10
	addq	%rdx, %r10
	cmpq	%r11, 344(%rsp)
	movq	32(%rsp), %r11
	setbe	%r9b
	cmpq	%r8, 40(%rsp)
	movq	%r10, 1072(%rsp)
	setnb	%dl
	movq	288(%rsp), %r10
	orl	%edx, %r9d
	cmpq	%r8, %r11
	movq	320(%rsp), %r8
	setnb	%dl
	cmpq	%r8, %r10
	setbe	1104(%rsp)
	movzbl	1104(%rsp), %r8d
	orl	%r8d, %edx
	movzbl	520(%rsp), %r8d
	andl	%r9d, %edx
	andl	%edx, %r8d
	cmpq	1072(%rsp), %r11
	movq	856(%rsp), %r11
	setnb	%dl
	movb	%r8b, 520(%rsp)
	cmpq	%r11, %r10
	movzbl	520(%rsp), %r10d
	setbe	%r9b
	orl	%r9d, %edx
	movq	1072(%rsp), %r9
	andl	%edx, %r10d
	cmpq	%r9, 40(%rsp)
	setnb	%dl
	cmpq	%r11, 344(%rsp)
	movb	%r10b, 520(%rsp)
	movzbl	520(%rsp), %r10d
	setbe	%r9b
	orl	%r9d, %edx
	movq	72(%rsp), %r9
	andl	%edx, %r10d
	movq	104(%rsp), %rdx
	movb	%r10b, 2140(%rsp)
	leaq	(%r9,%rax), %r10
	movq	%r10, 2088(%rsp)
	leaq	(%rdx,%rax), %r10
	movq	%r10, 1480(%rsp)
	leaq	(%r9,%rbx), %r10
	movq	%r10, 1928(%rsp)
	leaq	(%rdx,%rbx), %r10
	movq	%r10, 1920(%rsp)
	leaq	(%r9,%rbp), %r10
	movq	%r10, 1912(%rsp)
	leaq	(%rdx,%rbp), %r10
	movq	%r10, 1904(%rsp)
	leaq	(%r9,%r12), %r10
	movq	%r10, 1896(%rsp)
	leaq	(%rdx,%r12), %r10
	movq	%r10, 1888(%rsp)
	leaq	(%r9,%r13), %r10
	movq	%r10, 1880(%rsp)
	leaq	(%rdx,%r13), %r10
	movq	192(%rsp), %r8
	movq	%r10, 1872(%rsp)
	leaq	(%r9,%r14), %r10
	movq	%r10, 1864(%rsp)
	leaq	(%rdx,%r14), %r10
	movq	%r10, 1856(%rsp)
	leaq	(%r9,%r15), %r10
	movq	%r10, 1848(%rsp)
	leaq	(%rdx,%r15), %r10
	movq	%r10, 1840(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1832(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	152(%rsp), %r8
	movq	%r10, 1824(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1816(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	80(%rsp), %r8
	movq	%r10, 1808(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1800(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	64(%rsp), %r8
	movq	%r10, 1792(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1784(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	56(%rsp), %r8
	movq	%r10, 1776(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1768(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	48(%rsp), %r8
	movq	%r10, 1760(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1752(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	16(%rsp), %r8
	movq	%r10, 1744(%rsp)
	movq	%r9, %r10
	addq	%r8, %r10
	movq	%r10, 1736(%rsp)
	movq	%rdx, %r10
	addq	%r8, %r10
	movq	%r11, %r8
	subq	352(%rsp), %r8
	movq	%r10, 1728(%rsp)
	movq	%r9, %r10
	movq	296(%rsp), %r9
	movq	%r8, 520(%rsp)
	addq	%r9, %r10
	addq	%r9, %rdx
	movq	144(%rsp), %r9
	movq	%rdx, 2096(%rsp)
	leaq	16(%r9), %rdx
	movq	%r10, 2104(%rsp)
	movq	%r11, %r10
	testq	%rdx, %rdx
	setle	%r9b
	cmpq	%r8, 408(%rsp)
	movq	336(%rsp), %r8
	setbe	%dl
	movl	%r9d, %r11d
	orl	%edx, %r11d
	leaq	16(%r8,%r8), %rdx
	movq	360(%rsp), %r8
	testq	%rdx, %rdx
	movq	408(%rsp), %rdx
	setle	%r9b
	cmpq	%r10, %rdx
	movl	%r11d, %r10d
	setbe	%dl
	orl	%edx, %r9d
	movq	$-4, %rdx
	subq	(%rsp), %rdx
	cmpq	$8, %rdx
	seta	%dl
	subq	$12, %r8
	andl	%r10d, %edx
	andb	392(%rsp), %dl
	andl	%edx, %r9d
	movq	144(%rsp), %rdx
	movl	%r9d, %r11d
	movq	112(%rsp), %r9
	subq	%r8, %rdx
	cmpq	$8, %rdx
	seta	%dl
	andl	%edx, %r11d
	movl	$12, %edx
	subq	360(%rsp), %rdx
	movl	%r11d, %r8d
	movq	352(%rsp), %r11
	cmpq	$8, %rdx
	seta	%dl
	addq	$12, %r11
	andl	%r8d, %edx
	cmpq	$8, %r11
	seta	%r8b
	andl	%r8d, %edx
	movb	%dl, 2141(%rsp)
	movq	%rcx, %rdx
	movq	96(%rsp), %rcx
	addq	%rcx, %rdx
	addq	%rcx, %rdi
	movq	%rdx, 1288(%rsp)
	movq	%rsi, %rdx
	movq	448(%rsp), %rsi
	addq	%rcx, %rdx
	movq	%rdi, 2016(%rsp)
	movq	%rdx, 2112(%rsp)
	movzbl	1096(%rsp), %edx
	andl	%r10d, %edx
	movb	%dl, 2142(%rsp)
	movl	2224(%rsp), %edx
	addl	$7, %edx
	movl	%edx, 1280(%rsp)
	movl	2224(%rsp), %edx
	addl	$8, %edx
	movl	%edx, 1284(%rsp)
	movl	2224(%rsp), %edx
	addl	$9, %edx
	movl	%edx, 1992(%rsp)
	movq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, 2232(%rsp)
	setnb	%dl
	cmpq	%r9, %rsi
	setnb	%cl
	orl	%ecx, %edx
	movq	400(%rsp), %rcx
	andb	8(%rsp), %dl
	movb	%dl, 2143(%rsp)
	movq	2232(%rsp), %rdx
	salq	$6, %rcx
	addq	%rcx, %rdx
	movq	%rsi, %rcx
	addq	128(%rsp), %rsi
	movq	%rdx, 1712(%rsp)
	movq	%rsi, 1096(%rsp)
	addq	2232(%rsp), %rbx
	movq	%rbx, 1128(%rsp)
	movq	2232(%rsp), %rbx
	movq	176(%rsp), %rsi
	addq	2232(%rsp), %rax
	addq	%rbp, %rbx
	addq	2232(%rsp), %r14
	movq	192(%rsp), %r8
	movq	%rax, 1104(%rsp)
	movq	%rbx, 1168(%rsp)
	addq	%rcx, %rsi
	movq	%rcx, %rax
	movq	2232(%rsp), %rbx
	movq	%rsi, 1296(%rsp)
	movq	168(%rsp), %rsi
	addq	%r12, %rbx
	addq	2232(%rsp), %r8
	movq	%r14, 1120(%rsp)
	movq	%rbx, 1136(%rsp)
	movq	2232(%rsp), %rbx
	addq	%rcx, %rsi
	movq	%rsi, 1160(%rsp)
	movq	160(%rsp), %rsi
	addq	%r13, %rbx
	movq	%r8, 1960(%rsp)
	movq	%rbx, 1152(%rsp)
	movq	272(%rsp), %rbx
	addq	%rcx, %rsi
	movq	%rsi, 1176(%rsp)
	movq	280(%rsp), %rsi
	addq	%rcx, %rbx
	movq	%rbx, 1112(%rsp)
	movq	264(%rsp), %rbx
	addq	%rcx, %rsi
	movq	%rsi, 1144(%rsp)
	addq	%rcx, %rbx
	movq	%rbx, 1984(%rsp)
	movq	2232(%rsp), %rbx
	addq	%r15, %rbx
	movq	%rbx, 1976(%rsp)
	movq	256(%rsp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, 1968(%rsp)
	movq	248(%rsp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, 1184(%rsp)
	movq	240(%rsp), %rbx
	movq	152(%rsp), %r8
	addq	2232(%rsp), %r8
	addq	%rcx, %rbx
	movq	%r8, 1192(%rsp)
	movq	80(%rsp), %r8
	movq	%rbx, 1200(%rsp)
	movq	232(%rsp), %rbx
	addq	2232(%rsp), %r8
	movq	296(%rsp), %r9
	addq	%rcx, %rbx
	movq	%r8, 1208(%rsp)
	movq	64(%rsp), %r8
	movq	%rbx, 1216(%rsp)
	movq	224(%rsp), %rbx
	addq	2232(%rsp), %r8
	addq	%rcx, %rbx
	movq	%r8, 1224(%rsp)
	movq	56(%rsp), %r8
	movq	%rbx, 1232(%rsp)
	movq	216(%rsp), %rbx
	addq	2232(%rsp), %r8
	addq	%rcx, %rbx
	movq	%r8, 1240(%rsp)
	movq	48(%rsp), %r8
	movq	%rbx, 1248(%rsp)
	movq	208(%rsp), %rbx
	addq	2232(%rsp), %r8
	movq	%r8, 1256(%rsp)
	addq	%rcx, %rbx
	movq	16(%rsp), %r8
	addq	2232(%rsp), %r8
	addq	200(%rsp), %rax
	movq	%rbx, 1264(%rsp)
	addq	2232(%rsp), %r9
	movq	%rax, 2128(%rsp)
	movq	%r8, 1272(%rsp)
	movq	%r9, 2120(%rsp)
	movl	2224(%rsp), %eax
	movdqa	.LC27(%rip), %xmm7
	movq	%rax, 296(%rsp)
	psrlq	$32, %xmm7
	movaps	%xmm7, 2144(%rsp)
	.p2align 4,,10
	.p2align 3
.L869:
	movq	328(%rsp), %rbx
	movq	32(%rsp), %r15
	movl	2224(%rsp), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	poly_small_mkgauss
	movq	40(%rsp), %r14
	movl	2224(%rsp), %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	poly_small_mkgauss
	movq	24(%rsp), %r9
	movq	%r15, %rdi
	movq	%r14, %r8
	movq	296(%rsp), %rbx
	leaq	falcon_inner_max_fg_bits(%rip), %rax
	movzbl	(%rax,%rbx), %ecx
	movl	$1, %eax
	subl	$1, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %ebx
	negl	%ebx
	movl	%ebx, %esi
	.p2align 4,,10
	.p2align 3
.L871:
	movsbl	(%rdi,%rax), %edx
	cmpl	%ecx, %edx
	jge	.L869
	cmpl	%esi, %edx
	jle	.L869
	movsbl	(%r8,%rax), %edx
	cmpl	%edx, %esi
	jge	.L869
	cmpl	%ecx, %edx
	jge	.L869
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L871
	testl	%ecx, %ecx
	js	.L869
	movq	32(%rsp), %rdx
	movq	288(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movq	%rdx, %r9
	.p2align 4,,10
	.p2align 3
.L872:
	movsbl	(%rdx), %eax
	addq	$1, %rdx
	imull	%eax, %eax
	addl	%eax, %ecx
	orl	%ecx, %edi
	cmpq	%rsi, %rdx
	jne	.L872
	movq	40(%rsp), %rdx
	sarl	$31, %edi
	movq	344(%rsp), %r10
	xorl	%esi, %esi
	orl	%ecx, %edi
	xorl	%ecx, %ecx
	movq	%rdx, %r8
	.p2align 4,,10
	.p2align 3
.L873:
	movsbl	(%rdx), %eax
	addq	$1, %rdx
	imull	%eax, %eax
	addl	%eax, %ecx
	orl	%ecx, %esi
	cmpq	%r10, %rdx
	jne	.L873
	sarl	$31, %esi
	orl	%ecx, %esi
	movl	%esi, %eax
	addl	%edi, %esi
	orl	%edi, %eax
	sarl	$31, %eax
	orl	%esi, %eax
	cmpl	$16822, %eax
	ja	.L869
	cmpb	$0, 1082(%rsp)
	je	.L1011
	movq	2232(%rsp), %rax
	movq	816(%rsp), %rdx
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	.p2align 4,,10
	.p2align 3
.L875:
	movdqa	%xmm5, %xmm2
	movdqa	%xmm4, %xmm6
	subq	$-128, %rax
	addq	$16, %r9
	movdqu	-16(%r9), %xmm1
	pcmpgtb	%xmm1, %xmm2
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm2, %xmm0
	punpckhbw	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	pcmpgtw	%xmm0, %xmm2
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm2, %xmm3
	punpckhwd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm6, %xmm2
	punpckhwd	%xmm6, %xmm1
	cvtdq2pd	%xmm3, %xmm6
	movups	%xmm6, -128(%rax)
	pshufd	$238, %xmm3, %xmm3
	cvtdq2pd	%xmm3, %xmm3
	movups	%xmm3, -112(%rax)
	cvtdq2pd	%xmm0, %xmm3
	pshufd	$238, %xmm0, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, -80(%rax)
	cvtdq2pd	%xmm2, %xmm0
	pshufd	$238, %xmm2, %xmm2
	movups	%xmm0, -64(%rax)
	cvtdq2pd	%xmm1, %xmm0
	pshufd	$238, %xmm1, %xmm1
	cvtdq2pd	%xmm2, %xmm2
	cvtdq2pd	%xmm1, %xmm1
	movups	%xmm3, -96(%rax)
	movups	%xmm2, -48(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm1, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L875
	movq	24(%rsp), %rbx
	movq	128(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L877
	movq	488(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	912(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	176(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	480(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	904(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	168(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	472(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	896(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	160(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	648(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1384(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	280(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	640(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1376(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	272(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	632(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1368(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	264(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	624(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1360(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	256(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	616(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1352(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	248(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	608(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1344(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	240(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	600(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1336(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	232(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	592(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1328(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	224(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	584(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1320(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	216(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	576(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1312(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	208(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	568(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1304(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	200(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L877
	movq	800(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1936(%rsp), %rax
	movsd	%xmm0, (%rax)
.L877:
	cmpb	$0, 1083(%rsp)
	je	.L1012
	movq	136(%rsp), %rax
	movq	744(%rsp), %rdx
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	.p2align 4,,10
	.p2align 3
.L879:
	movdqa	%xmm5, %xmm2
	movdqa	%xmm4, %xmm6
	subq	$-128, %rax
	addq	$16, %r8
	movdqu	-16(%r8), %xmm1
	pcmpgtb	%xmm1, %xmm2
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm2, %xmm0
	punpckhbw	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	pcmpgtw	%xmm0, %xmm2
	pcmpgtw	%xmm1, %xmm6
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm2, %xmm3
	punpckhwd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm6, %xmm2
	punpckhwd	%xmm6, %xmm1
	cvtdq2pd	%xmm3, %xmm6
	movups	%xmm6, -128(%rax)
	pshufd	$238, %xmm3, %xmm3
	cvtdq2pd	%xmm3, %xmm3
	movups	%xmm3, -112(%rax)
	cvtdq2pd	%xmm0, %xmm3
	pshufd	$238, %xmm0, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, -80(%rax)
	cvtdq2pd	%xmm2, %xmm0
	pshufd	$238, %xmm2, %xmm2
	movups	%xmm0, -64(%rax)
	cvtdq2pd	%xmm1, %xmm0
	pshufd	$238, %xmm1, %xmm1
	cvtdq2pd	%xmm2, %xmm2
	cvtdq2pd	%xmm1, %xmm1
	movups	%xmm3, -96(%rax)
	movups	%xmm2, -48(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L879
	movq	24(%rsp), %rbx
	movq	128(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L881
	movq	512(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	936(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	176(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	504(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	928(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	168(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	496(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	920(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	160(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	736(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1472(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	280(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	728(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1464(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	272(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	720(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1456(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	264(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	712(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1448(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	256(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	704(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1440(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	248(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	696(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1432(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	240(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	688(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1424(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	232(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	680(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1416(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	224(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	672(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1408(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	216(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	664(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1400(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	208(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	656(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1392(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	200(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L881
	movq	808(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsbl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	1944(%rsp), %rax
	movsd	%xmm0, (%rax)
.L881:
	movl	2224(%rsp), %esi
	movq	2232(%rsp), %rdi
	call	falcon_inner_FFT@PLT
	movq	136(%rsp), %rbx
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movq	544(%rsp), %r14
	movl	2224(%rsp), %ecx
	movq	%rbx, %rdx
	movq	2232(%rsp), %rsi
	movq	%r14, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	2224(%rsp), %esi
	movq	2232(%rsp), %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movl	2224(%rsp), %esi
	movsd	fpr_q(%rip), %xmm0
	movq	2232(%rsp), %rdi
	call	falcon_inner_poly_mulconst@PLT
	movsd	fpr_q(%rip), %xmm0
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_poly_mulconst@PLT
	movl	2224(%rsp), %edx
	movq	2232(%rsp), %rdi
	movq	%r14, %rsi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	2224(%rsp), %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	2224(%rsp), %esi
	movq	2232(%rsp), %rdi
	call	falcon_inner_iFFT@PLT
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_iFFT@PLT
	movq	24(%rsp), %rdx
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	movq	2232(%rsp), %rsi
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L882:
	movsd	(%rsi,%rax,8), %xmm2
	movsd	(%rcx,%rax,8), %xmm0
	addq	$1, %rax
	mulsd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cmpq	%rax, %rdx
	jne	.L882
	movsd	.LC23(%rip), %xmm7
	comisd	%xmm1, %xmm7
	jbe	.L869
	movq	40(%rsp), %rbp
	movq	32(%rsp), %r14
	movq	880(%rsp), %r8
	movl	2224(%rsp), %ecx
	movq	872(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r14, %rsi
	call	falcon_inner_compute_public@PLT
	testl	%eax, %eax
	je	.L869
	leaq	falcon_inner_max_FG_bits(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	296(%rsp), %rax
	movl	2224(%rsp), %r8d
	movzbl	(%rbx,%rax), %ebx
	movb	%bl, 1072(%rsp)
	leaq	MAX_BL_SMALL(%rip), %rbx
	movq	(%rbx,%rax,8), %r13
	movq	2232(%rsp), %rax
	leaq	0(,%r13,4), %rbx
	movq	%r13, 16(%rsp)
	addq	%rbx, %rax
	movq	%rbx, 80(%rsp)
	movq	%rax, 192(%rsp)
	addq	%rbx, %rax
	movq	%rax, %rcx
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	addq	%rbx, %rcx
	movq	%rcx, %r15
	movq	%rcx, 152(%rsp)
	movl	%r8d, %ecx
	call	make_fg
	addq	%rbx, %r15
	movl	$2147473409, (%r15)
	cmpq	$1, %r13
	jbe	.L884
	leaq	12+PRIMES(%rip), %rax
	leaq	4(%r15), %r14
	movl	$1, %r11d
	movq	%rax, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L889:
	movq	48(%rsp), %rbx
	movl	$2, %eax
	movl	$2, %edx
	leaq	0(,%r11,4), %r12
	movl	$2, %r13d
	movl	(%rbx), %r10d
	subl	%r10d, %eax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	%r10d, %edi
	imull	%eax, %ecx
	movq	%r10, %r8
	subl	%ecx, %edx
	movl	%r10d, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	movl	%r10d, %ecx
	imull	%edx, %eax
	movl	$2, %edx
	imull	%eax, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	imull	%eax, %r9d
	subl	$2, %r9d
	imull	%eax, %r9d
	andl	$2147483647, %r9d
	movl	%r9d, %esi
	call	modp_R2
	movl	8(%rbx), %ebx
	movq	%r14, 56(%rsp)
	movq	64(%rsp), %rdi
	movq	80(%rsp), %r14
	movq	%rbx, 8(%rsp)
	movl	%eax, %ebx
	leaq	-1(%r11), %rax
	movq	%rax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L887:
	movl	(%rdi,%r12), %ebp
	movq	(%rsp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L885:
	imulq	%rbx, %rax
	movq	%rax, %rdx
	imulq	%r9, %rdx
	andl	$2147483647, %edx
	imulq	%r10, %rdx
	addq	%rdx, %rax
	movl	(%rdi,%rsi,4), %edx
	shrq	$31, %rax
	subl	%r8d, %eax
	subl	%r8d, %edx
	movl	%eax, %ecx
	subl	%r8d, %eax
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%edx, %eax
	cltd
	andl	%r8d, %edx
	addl	%edx, %eax
	subq	$1, %rsi
	jnb	.L885
	subl	%eax, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	leal	0(%rbp,%rax), %edx
	xorl	%ebp, %ebp
	imulq	8(%rsp), %rdx
	movq	%rdx, %rax
	imulq	%r9, %rax
	andl	$2147483647, %eax
	imulq	%r10, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	cltd
	andl	%r8d, %edx
	leal	(%rax,%rdx), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L886:
	movl	(%r15,%rdx,4), %esi
	movl	(%rdi,%rdx,4), %eax
	imulq	%rcx, %rsi
	addq	%rbp, %rax
	addq	%rsi, %rax
	movl	%eax, %esi
	shrq	$31, %rax
	andl	$2147483647, %esi
	movl	%eax, %ebp
	movl	%esi, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	%r11, %rdx
	jne	.L886
	movl	%eax, (%rdi,%r12)
	addq	%r14, %rdi
	cmpq	$1, %r13
	je	.L1156
	movl	$1, %r13d
	jmp	.L887
	.p2align 4,,10
	.p2align 3
.L1156:
	movq	56(%rsp), %r14
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L888:
	movl	(%rdx), %eax
	addq	$4, %rdx
	imulq	%r10, %rax
	addq	%rcx, %rax
	movl	%eax, %ecx
	shrq	$31, %rax
	andl	$2147483647, %ecx
	movl	%ecx, -4(%rdx)
	movl	%eax, %ecx
	cmpq	%r14, %rdx
	jne	.L888
	movl	%eax, (%r14)
	addq	$1, %r11
	addq	$4, %r14
	addq	$12, 48(%rsp)
	cmpq	%r11, 16(%rsp)
	jne	.L889
.L892:
	movq	80(%rsp), %r12
	movq	64(%rsp), %rax
	movq	152(%rsp), %rbx
	leaq	(%r15,%r12), %r14
	movq	%r12, %rdx
	movq	%rax, %rsi
	movl	(%rax), %ebp
	movq	%r14, %r13
	movq	%r14, 56(%rsp)
	movl	(%rbx), %ebx
	addq	%r12, %r13
	movq	%r13, %rdi
	movq	%r13, (%rsp)
	addq	%r12, %r13
	movq	%r13, 400(%rsp)
	call	memcpy@PLT
	movq	152(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	call	memcpy@PLT
	movq	192(%rsp), %rdi
	movq	16(%rsp), %r13
	xorl	%esi, %esi
	movl	$1, (%rdi)
	leaq	-1(%r13), %rcx
	addq	$4, %rdi
	leaq	0(,%rcx,4), %rdx
	movq	%rcx, 48(%rsp)
	call	memset@PLT
	movq	2232(%rsp), %rdi
	movq	%r12, %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	152(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r15, %rdi
	call	memcpy@PLT
	movq	64(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	call	memcpy@PLT
	imull	$62, %r13d, %eax
	subl	$1, (%r14)
	leal	30(%rax), %edi
	movl	%edi, 8(%rsp)
	cmpl	$-30, %eax
	jnb	.L891
	movl	$2, %ecx
	movl	%ebp, %esi
	movq	400(%rsp), %r14
	movq	%r15, 408(%rsp)
	movl	%ecx, %edx
	movl	%ecx, %eax
	subl	%ebp, %edx
	imull	%edx, %esi
	subl	%esi, %eax
	movl	%ebp, %esi
	imull	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %esi
	subl	%esi, %eax
	movl	%ebp, %esi
	imull	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %esi
	subl	%esi, %eax
	movl	%ebx, %esi
	imull	%eax, %edx
	movl	%ebp, %eax
	imull	%edx, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	movl	%ecx, %edx
	subl	%ebx, %edx
	imull	%edx, %esi
	andl	$2147483647, %eax
	movl	%eax, 352(%rsp)
	movl	%ecx, %eax
	subl	%esi, %eax
	movl	%ebx, %esi
	imull	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %esi
	subl	%esi, %eax
	movl	%ebx, %esi
	imull	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %esi
	subl	%esi, %eax
	imull	%eax, %edx
	movl	%ebx, %eax
	movq	(%rsp), %rbx
	imull	%edx, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, 360(%rsp)
	movq	80(%rsp), %rax
	subq	$4, %rax
	addq	%rax, %rbx
	addq	%r14, %rax
	movq	%rbx, 392(%rsp)
	movq	%rax, 400(%rsp)
.L893:
	movl	$-1, %edx
	movq	48(%rsp), %rsi
	movq	(%rsp), %r11
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$-1, %ecx
	movl	%edx, %ebx
	jmp	.L894
	.p2align 4,,10
	.p2align 3
.L1014:
	movl	%eax, %ecx
.L894:
	movl	(%r11,%rsi,4), %eax
	movl	(%r14,%rsi,4), %edx
	xorl	%edi, %eax
	xorl	%r9d, %edx
	andl	%ecx, %eax
	andl	%ebx, %edx
	xorl	%eax, %edi
	movl	(%r11,%rsi,4), %eax
	xorl	%edx, %r9d
	xorl	%r10d, %eax
	andl	%ebx, %eax
	movl	%ecx, %ebx
	xorl	%eax, %r10d
	movl	(%r14,%rsi,4), %eax
	xorl	%r8d, %eax
	andl	%ecx, %eax
	xorl	%eax, %r8d
	movl	(%r11,%rsi,4), %eax
	orl	(%r14,%rsi,4), %eax
	subq	$1, %rsi
	addl	$2147483647, %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	cmpq	$-1, %rsi
	jne	.L1014
	movl	%ecx, %eax
	movl	%edi, %edx
	andl	%ecx, %edi
	andl	%r8d, %ecx
	notl	%eax
	orl	%r9d, %ecx
	orl	%r10d, %edi
	movl	(%r14), %esi
	andl	%eax, %edx
	andl	%r8d, %eax
	xorl	%r12d, %r12d
	movl	$1, %r10d
	salq	$31, %rax
	salq	$31, %rdx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	leaq	(%rax,%rcx), %rbx
	movq	(%rsp), %rax
	addq	%rdi, %rdx
	xorl	%ecx, %ecx
	movl	(%rax), %edi
	.p2align 4,,10
	.p2align 3
.L895:
	movq	%rbx, %rax
	movq	%rbx, %rbp
	subq	%rdx, %rax
	xorq	%rdx, %rbp
	movq	%rax, %r11
	xorq	%rdx, %r11
	andq	%r11, %rbp
	movl	%esi, %r11d
	xorq	%rax, %rbp
	movl	%edi, %eax
	shrl	%cl, %r11d
	shrl	%cl, %eax
	shrq	$63, %rbp
	andl	$1, %eax
	andl	%eax, %r11d
	xorl	$1, %eax
	movl	%r11d, %r13d
	andl	%ebp, %r13d
	notl	%ebp
	orl	%r13d, %eax
	andl	%r11d, %ebp
	movl	%r13d, %r11d
	negq	%r13
	movq	%r13, %r15
	negl	%r11d
	andq	%rbx, %r15
	andl	%esi, %r11d
	subq	%r15, %rdx
	subl	%r11d, %edi
	movq	%rdx, %r11
	movq	%r13, %rdx
	andq	%r10, %r13
	andq	%r8, %rdx
	subq	%rdx, %r9
	movq	%r12, %rdx
	movl	%ebp, %r12d
	negq	%rbp
	negl	%r12d
	subq	%r13, %rdx
	movl	%eax, %r13d
	andl	%edi, %r12d
	subl	%r12d, %esi
	movq	%rbp, %r12
	andq	%r11, %r12
	subq	%r12, %rbx
	movq	%r9, %r12
	andq	%rbp, %r12
	subq	%r12, %r8
	andq	%rdx, %rbp
	movq	%r9, %r12
	addl	$1, %ecx
	subq	%rbp, %r10
	leal	-1(%rax), %ebp
	negl	%eax
	andl	%edi, %ebp
	andl	%esi, %eax
	addl	%ebp, %edi
	leaq	-1(%r13), %rbp
	addl	%eax, %esi
	negq	%r13
	andq	%rbp, %r12
	movq	%r8, %rax
	addq	%r12, %r9
	movq	%rdx, %r12
	andq	%r13, %rax
	andq	%rbp, %r12
	addq	%rax, %r8
	movq	%rbx, %rax
	addq	%rdx, %r12
	movq	%r11, %rdx
	shrq	%rax
	shrq	%rdx
	xorq	%rbx, %rax
	xorq	%r11, %rdx
	andq	%rbp, %rax
	andq	%r13, %rdx
	andq	%r10, %r13
	xorq	%rax, %rbx
	xorq	%r11, %rdx
	addq	%r13, %r10
	cmpl	$31, %ecx
	jne	.L895
	movq	(%rsp), %r11
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L899:
	movl	(%r11,%rdi,4), %eax
	movl	(%r14,%rdi,4), %esi
	movq	%rax, %rbx
	imulq	%r8, %rax
	movq	%rsi, %rbp
	imulq	%r9, %rbx
	imulq	%r12, %rbp
	imulq	%r10, %rsi
	addq	%rbp, %rbx
	addq	%rsi, %rax
	addq	%rbx, %rcx
	addq	%rax, %rdx
	testq	%rdi, %rdi
	je	.L896
	movl	%ecx, %eax
	sarq	$31, %rcx
	andl	$2147483647, %eax
	movl	%eax, -4(%r11,%rdi,4)
	movl	%edx, %eax
	sarq	$31, %rdx
	andl	$2147483647, %eax
	movl	%eax, -4(%r14,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, 16(%rsp)
	ja	.L899
.L898:
	movq	%rcx, %rsi
	movq	16(%rsp), %rbp
	movq	(%rsp), %r11
	xorl	%edi, %edi
	movq	392(%rsp), %rax
	shrq	$63, %rsi
	movl	%ecx, (%rax)
	movq	400(%rsp), %rax
	sarq	$63, %rcx
	shrl	%ecx
	movl	%edx, (%rax)
	shrq	$63, %rdx
	movl	%esi, %eax
	.p2align 4,,10
	.p2align 3
.L900:
	movl	(%r11,%rdi,4), %ebx
	xorl	%ecx, %ebx
	addl	%ebx, %eax
	movl	%eax, %ebx
	shrl	$31, %eax
	andl	$2147483647, %ebx
	movl	%ebx, (%r11,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %rbp
	ja	.L900
	movl	%edx, %edi
	movq	16(%rsp), %rbx
	movl	%edx, %eax
	xorl	%ecx, %ecx
	negl	%edi
	shrl	%edi
	.p2align 4,,10
	.p2align 3
.L901:
	movl	(%r14,%rcx,4), %r11d
	xorl	%edi, %r11d
	addl	%r11d, %eax
	movl	%eax, %r11d
	shrl	$31, %eax
	andl	$2147483647, %r11d
	movl	%r11d, (%r14,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rbx
	ja	.L901
	negq	%rsi
	leaq	(%r9,%r9), %rax
	movq	%r9, %rbx
	movq	%r12, %rbp
	andq	%rsi, %rax
	negq	%rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 2232
	subq	%rax, %rbx
	leaq	(%r12,%r12), %rax
	andq	%rsi, %rax
	movq	%rbx, %r9
	subq	%rax, %rbp
	leaq	(%r8,%r8), %rax
	andq	%rdx, %rax
	subq	%rax, %r8
	leaq	(%r10,%r10), %rax
	andq	%rax, %rdx
	movq	%r8, %r12
	subq	%rdx, %r10
	pushq	%r10
	.cfi_def_cfa_offset 2240
	movq	%r10, %r13
	pushq	%r8
	.cfi_def_cfa_offset 2248
	pushq	%rbp
	.cfi_def_cfa_offset 2256
	movq	48(%rsp), %r15
	movl	392(%rsp), %r8d
	movq	184(%rsp), %rdx
	movq	440(%rsp), %rsi
	movq	224(%rsp), %rdi
	movq	%r15, %rcx
	call	zint_co_reduce_mod
	addq	$24, %rsp
	.cfi_def_cfa_offset 2232
	movq	%rbx, %r9
	movq	%r15, %rcx
	pushq	%r13
	.cfi_def_cfa_offset 2240
	pushq	%r12
	.cfi_def_cfa_offset 2248
	pushq	%rbp
	.cfi_def_cfa_offset 2256
	movl	384(%rsp), %r8d
	movq	96(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	2264(%rsp), %rdi
	call	zint_co_reduce_mod
	subl	$30, 40(%rsp)
	movl	40(%rsp), %eax
	addq	$32, %rsp
	.cfi_def_cfa_offset 2224
	cmpl	$29, %eax
	ja	.L893
.L891:
	movq	(%rsp), %rax
	movq	16(%rsp), %rbx
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	%eax, 8(%rsp)
	xorl	$1, %edx
	cmpq	$1, %rbx
	jbe	.L902
	leaq	-2(%rbx), %rax
	cmpq	$2, %rax
	jbe	.L1015
	movq	48(%rsp), %rcx
	leaq	0(,%rbx,8), %rax
	pxor	%xmm0, %xmm0
	movq	80(%rsp), %rbx
	shrq	$2, %rcx
	leaq	4(%rax,%rbx,4), %rax
	addq	2232(%rsp), %rax
	salq	$4, %rcx
	addq	%rax, %rcx
.L904:
	movdqu	(%rax), %xmm7
	addq	$16, %rax
	por	%xmm7, %xmm0
	cmpq	%rcx, %rax
	jne	.L904
	movdqa	%xmm0, %xmm1
	movq	48(%rsp), %rbx
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movq	%rbx, %rcx
	movdqa	%xmm0, %xmm1
	andq	$-4, %rcx
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	orl	%eax, %edx
	leaq	1(%rcx), %rax
	cmpq	%rcx, %rbx
	je	.L902
.L903:
	movq	(%rsp), %rbx
	movq	16(%rsp), %rdi
	leaq	1(%rax), %rsi
	leaq	0(,%rax,4), %rcx
	orl	(%rbx,%rax,4), %edx
	cmpq	%rsi, %rdi
	jbe	.L902
	addq	$2, %rax
	orl	4(%rbx,%rcx), %edx
	cmpq	%rax, %rdi
	jbe	.L902
	orl	8(%rbx,%rcx), %edx
.L902:
	movq	64(%rsp), %rbx
	movl	%edx, %eax
	negl	%eax
	orl	%edx, %eax
	movl	(%rbx), %edx
	movq	152(%rsp), %rbx
	sarl	$31, %eax
	addl	$1, %eax
	andl	(%rbx), %edx
	testl	%edx, %eax
	je	.L869
	movq	16(%rsp), %r8
	movq	2232(%rsp), %rdi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.L906:
	movl	(%rdi,%rcx,4), %esi
	movl	%eax, %eax
	leaq	(%rsi,%rsi,2), %rdx
	salq	$12, %rdx
	addq	%rsi, %rdx
	addq	%rdx, %rax
	movl	%eax, %edx
	shrq	$31, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	ja	.L906
	testl	%eax, %eax
	jne	.L869
	movq	16(%rsp), %r8
	movq	192(%rsp), %rdi
	xorl	%ecx, %ecx
.L907:
	movl	(%rdi,%rcx,4), %esi
	movl	%eax, %eax
	leaq	(%rsi,%rsi,2), %rdx
	salq	$12, %rdx
	addq	%rsi, %rdx
	addq	%rdx, %rax
	movl	%eax, %edx
	shrq	$31, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	ja	.L907
	testl	%eax, %eax
	jne	.L869
	cmpl	$2, 2224(%rsp)
	ja	.L1157
	movl	2224(%rsp), %ebx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	2232(%rsp), %r14
	movl	%ebx, %r13d
	jmp	.L908
.L910:
	movq	%r14, %r8
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	je	.L869
.L908:
	subl	$1, %ebx
	jnb	.L910
.L990:
	movzbl	1072(%rsp), %ecx
	movl	$1, %edx
	movq	24(%rsp), %r8
	movl	%edx, %eax
	movq	1088(%rsp), %r9
	movq	2232(%rsp), %r10
	subl	$1, %ecx
	sall	%cl, %eax
	movl	%edx, %ecx
	xorl	%edx, %edx
	leal	-1(%rax), %esi
	subl	%eax, %ecx
.L911:
	movl	(%r10,%rdx,4), %edi
	leal	(%rdi,%rdi), %eax
	andl	$-2147483648, %eax
	orl	%edi, %eax
	cmpl	%eax, %esi
	jl	.L869
	cmpl	%ecx, %eax
	jl	.L869
	movb	%al, (%r9,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L911
	movq	448(%rsp), %r8
	movq	520(%rsp), %r9
	xorl	%edx, %edx
.L995:
	movl	(%r9,%rdx,4), %edi
	leal	(%rdi,%rdi), %eax
	andl	$-2147483648, %eax
	orl	%edi, %eax
	cmpl	%ecx, %eax
	jl	.L869
	cmpl	%eax, %esi
	jl	.L869
	movb	%al, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, 24(%rsp)
	jne	.L995
	cmpl	$9, 2224(%rsp)
	movl	$1968792473, %edx
	ja	.L1009
	cmpl	$9, 440(%rsp)
	ja	.L1062
	cmpl	$9, 436(%rsp)
	ja	.L1063
	cmpl	$9, 432(%rsp)
	ja	.L1064
	cmpl	$9, 428(%rsp)
	ja	.L1065
	cmpl	$9, 424(%rsp)
	ja	.L1066
	cmpl	$9, 420(%rsp)
	ja	.L1067
	cmpl	$9, 1280(%rsp)
	ja	.L1068
	cmpl	$9, 1284(%rsp)
	ja	.L1069
	cmpl	$10, 1992(%rsp)
	sbbl	%edx, %edx
	andl	$935687728, %edx
	addl	$1211775442, %edx
.L1009:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %esi
.L998:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	leal	(%rax,%rdi), %r8d
	movq	%r8, %rax
	imulq	%rdx, %r8
	imulq	$2042615807, %r8, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%r8, %rdi
	movl	%esi, %r8d
	shrq	$31, %rdi
	shrl	%cl, %r8d
	subl	$2147473409, %edi
	andl	$1, %r8d
	movl	%edi, %r9d
	negl	%r8d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %edi
	xorl	%eax, %edi
	andl	%r8d, %edi
	xorl	%edi, %eax
	subl	$1, %ecx
	jnb	.L998
	imulq	$2042615807, %rax, %rcx
	movl	$10239, %esi
	xorl	%edi, %edi
	leaq	REV10(%rip), %r8
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	leal	(%rax,%rcx), %r9d
	xorl	%ecx, %ecx
	movl	$10239, %eax
	jmp	.L1000
.L1158:
	movzbl	444(%rsp), %ecx
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movzwl	(%r8,%rbx,2), %ecx
.L1000:
	movq	120(%rsp), %rbx
	addq	$1, %rdi
	movl	%eax, (%rbx,%rcx,4)
	imulq	%rdx, %rax
	movq	2232(%rsp), %rbx
	movl	%esi, (%rbx,%rcx,4)
	imulq	%r9, %rsi
	movq	%rax, %rcx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	imulq	$2042615807, %rsi, %rcx
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	$2147473409, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%ecx, %esi
	cmpq	%rdi, 24(%rsp)
	jne	.L1158
	cmpb	$0, 2143(%rsp)
	je	.L1071
	movq	448(%rsp), %rdx
	movq	%rbx, %rax
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
.L1002:
	movdqu	(%rdx), %xmm0
	movdqa	%xmm4, %xmm2
	movdqa	%xmm3, %xmm5
	addq	$64, %rax
	addq	$16, %rdx
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm5
	movdqa	%xmm1, %xmm6
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm1
	movdqa	%xmm0, %xmm5
	movdqa	%xmm6, %xmm2
	psrad	$31, %xmm2
	pand	.LC18(%rip), %xmm2
	paddd	%xmm6, %xmm2
	movups	%xmm2, -64(%rax)
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	.LC18(%rip), %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	pcmpgtw	%xmm0, %xmm2
	movups	%xmm1, -48(%rax)
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm1
	psrad	$31, %xmm1
	pand	.LC18(%rip), %xmm1
	paddd	%xmm5, %xmm1
	movups	%xmm1, -32(%rax)
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	.LC18(%rip), %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	1712(%rsp), %rax
	jne	.L1002
	movq	24(%rsp), %rbx
	movq	128(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L1004
	movq	1096(%rsp), %rax
	movq	1104(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	176(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1296(%rsp), %rax
	movq	1128(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	168(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1160(%rsp), %rax
	movq	1168(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	160(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1176(%rsp), %rax
	movq	1136(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	280(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1144(%rsp), %rax
	movq	1152(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	272(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1112(%rsp), %rax
	movq	1120(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	264(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1984(%rsp), %rax
	movq	1976(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	256(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1968(%rsp), %rax
	movq	1960(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	248(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1184(%rsp), %rax
	movq	1192(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	240(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1200(%rsp), %rax
	movq	1208(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	232(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1216(%rsp), %rax
	movq	1224(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	224(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1232(%rsp), %rax
	movq	1240(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	216(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1248(%rsp), %rax
	movq	1256(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	208(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	1264(%rsp), %rax
	movq	1272(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	200(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L1004
	movq	2128(%rsp), %rax
	movq	2120(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L1004:
	xorl	%eax, %eax
.L1005:
	movq	32(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	112(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	movq	40(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	96(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	movq	1088(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	88(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 24(%rsp)
	jne	.L1005
	movl	2224(%rsp), %eax
	testl	%eax, %eax
	je	.L1006
	movq	120(%rsp), %rbx
	movq	112(%rsp), %rdi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	96(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	88(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movl	$2042615807, %r8d
	movq	%rbx, %rsi
	movq	2232(%rsp), %rdi
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
.L1006:
	xorl	%ecx, %ecx
.L1007:
	movq	96(%rsp), %rax
	movq	112(%rsp), %rbx
	movl	(%rax,%rcx,4), %edx
	movq	88(%rsp), %rax
	movl	(%rax,%rcx,4), %eax
	imulq	%rax, %rdx
	imulq	$2042615807, %rdx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	movl	(%rbx,%rcx,4), %edx
	movq	2232(%rsp), %rbx
	shrq	$31, %rax
	movl	(%rbx,%rcx,4), %esi
	imulq	%rsi, %rdx
	imulq	$2042615807, %rdx, %rsi
	andl	$2147483647, %esi
	imulq	$2147473409, %rsi, %rsi
	addq	%rdx, %rsi
	shrq	$31, %rsi
	leal	-2147473409(%rsi), %edx
	subl	%eax, %esi
	subl	$2147473409, %eax
	sarl	$31, %edx
	sarl	$31, %eax
	andl	$2147473409, %edx
	andl	$2147473409, %eax
	addl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%eax, %edx
	cmpl	$1916765260, %edx
	jne	.L869
	addq	$1, %rcx
	cmpq	%rcx, 24(%rsp)
	jne	.L1007
	addq	$2168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L896:
	.cfi_restore_state
	sarq	$31, %rcx
	sarq	$31, %rdx
	cmpq	$1, 16(%rsp)
	jbe	.L898
	movl	$1, %edi
	jmp	.L899
.L884:
	cmpq	$0, 16(%rsp)
	je	.L869
	jmp	.L892
	.p2align 4,,10
	.p2align 3
.L1012:
	movq	24(%rsp), %rcx
	movq	136(%rsp), %rsi
	xorl	%eax, %eax
	movq	40(%rsp), %rdi
.L878:
	movsbl	(%rdi,%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L878
	jmp	.L881
.L1011:
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rsi
	xorl	%eax, %eax
	movq	2232(%rsp), %rdi
.L874:
	movsbl	(%rsi,%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L874
	jmp	.L877
.L1157:
	movl	1084(%rsp), %ebx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movl	2224(%rsp), %r13d
	movq	2232(%rsp), %r14
.L909:
	movq	%r14, %r8
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	je	.L869
	subl	$1, %ebx
	cmpl	$1, %ebx
	jne	.L909
	movq	2232(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	movl	2224(%rsp), %edi
	call	solve_NTRU_binary_depth1
	testl	%eax, %eax
	je	.L869
	cmpl	$9, 2224(%rsp)
	ja	.L1017
	cmpl	$9, 440(%rsp)
	ja	.L1018
	cmpl	$9, 436(%rsp)
	ja	.L1019
	cmpl	$9, 432(%rsp)
	ja	.L1020
	cmpl	$9, 428(%rsp)
	ja	.L1021
	cmpl	$9, 424(%rsp)
	ja	.L1022
	cmpl	$10, 420(%rsp)
	sbbl	%edx, %edx
	andl	$-466338840, %edx
	addl	$2109245776, %edx
.L912:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %esi
.L914:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	leal	(%rax,%rdi), %r8d
	movq	%r8, %rax
	imulq	%rdx, %r8
	imulq	$2042615807, %r8, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%r8, %rdi
	movl	%esi, %r8d
	shrq	$31, %rdi
	shrl	%cl, %r8d
	subl	$2147473409, %edi
	andl	$1, %r8d
	movl	%edi, %r9d
	negl	%r8d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %edi
	xorl	%eax, %edi
	andl	%r8d, %edi
	xorl	%edi, %eax
	subl	$1, %ecx
	jnb	.L914
	imulq	$2042615807, %rax, %rcx
	movl	$10239, %esi
	xorl	%edi, %edi
	leaq	REV10(%rip), %r8
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	leal	(%rax,%rcx), %r9d
	xorl	%ecx, %ecx
	movl	$10239, %eax
	jmp	.L916
.L1159:
	movzbl	444(%rsp), %ecx
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movzwl	(%r8,%rbx,2), %ecx
.L916:
	movq	552(%rsp), %rbx
	addq	$1, %rdi
	movl	%eax, (%rbx,%rcx,4)
	imulq	%rdx, %rax
	movq	888(%rsp), %rbx
	movl	%esi, (%rbx,%rcx,4)
	imulq	%r9, %rsi
	movq	%rax, %rcx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	imulq	$2042615807, %rsi, %rcx
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	$2147473409, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%ecx, %esi
	cmpq	%rdi, 24(%rsp)
	jne	.L1159
	cmpq	$0, 368(%rsp)
	je	.L924
	cmpb	$0, 1999(%rsp)
	je	.L1025
	cmpq	$2, 1952(%rsp)
	jbe	.L1026
	movdqa	.LC18(%rip), %xmm0
	movq	376(%rsp), %rdx
	xorl	%eax, %eax
	movq	2232(%rsp), %rcx
.L922:
	movdqu	(%rcx,%rax), %xmm1
	movdqu	(%rcx,%rax), %xmm7
	pslld	$1, %xmm1
	pand	.LC24(%rip), %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movdqu	(%rdx,%rax), %xmm1
	movdqu	(%rdx,%rax), %xmm7
	pslld	$1, %xmm1
	pand	.LC24(%rip), %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rdx,%rax)
	addq	$16, %rax
	cmpq	1720(%rsp), %rax
	jne	.L922
	movq	368(%rsp), %rdx
	movq	1024(%rsp), %rax
	cmpq	%rax, %rdx
	je	.L924
	subq	%rax, %rdx
	cmpq	$1, %rdx
	je	.L926
.L921:
	movq	2232(%rsp), %rbx
	movq	.LC25(%rip), %xmm3
	movq	.LC26(%rip), %xmm2
	leaq	(%rbx,%rax,4), %rsi
	movq	368(%rsp), %rbx
	movq	(%rsi), %xmm1
	leaq	(%rbx,%rax), %rcx
	movq	2232(%rsp), %rbx
	movdqa	%xmm1, %xmm0
	pslld	$1, %xmm0
	leaq	(%rbx,%rcx,4), %rcx
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%rsi)
	movq	(%rcx), %xmm1
	movdqa	%xmm1, %xmm0
	pslld	$1, %xmm0
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%rcx)
	movq	%rdx, %rcx
	andq	$-2, %rcx
	addq	%rcx, %rax
	cmpq	%rcx, %rdx
	je	.L924
.L926:
	movq	2232(%rsp), %rsi
	salq	$2, %rax
	addq	%rax, %rsi
	addq	376(%rsp), %rax
	movl	(%rsi), %ecx
	leal	(%rcx,%rcx), %edx
	andl	$-2147483648, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rsi)
	movl	(%rax), %ecx
	leal	(%rcx,%rcx), %edx
	andl	$-2147483648, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L924:
	movl	1084(%rsp), %r14d
	movq	552(%rsp), %rbx
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movq	2232(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	$2147473409, %ecx
	movl	%r14d, %edx
	movq	%rbx, %rsi
	movq	376(%rsp), %rdi
	movl	$2042615807, %r8d
	call	modp_NTT2_ext.part.0.constprop.0
	xorl	%eax, %eax
	cmpb	$0, 2136(%rsp)
	je	.L919
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movdqa	.LC18(%rip), %xmm0
	movq	2024(%rsp), %rdx
	movq	2032(%rsp), %rcx
.L918:
	movdqu	(%rsi,%rax), %xmm1
	movdqa	%xmm4, %xmm5
	movdqa	%xmm3, %xmm6
	pcmpgtb	%xmm1, %xmm5
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm5, %xmm2
	punpckhbw	%xmm5, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%rcx,%rax,4)
	movdqa	%xmm2, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm1, %xmm5
	movups	%xmm2, 16(%rcx,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm1
	movdqa	%xmm4, %xmm5
	movdqa	%xmm6, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm6, %xmm2
	movdqa	%xmm3, %xmm6
	movups	%xmm2, 32(%rcx,%rax,4)
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, 48(%rcx,%rax,4)
	movdqu	(%rdi,%rax), %xmm1
	pcmpgtb	%xmm1, %xmm5
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm5, %xmm2
	punpckhbw	%xmm5, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%rdx,%rax,4)
	movdqa	%xmm2, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm1, %xmm5
	movups	%xmm2, 16(%rdx,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm1
	movdqa	%xmm6, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm6, %xmm2
	movups	%xmm2, 32(%rdx,%rax,4)
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, 48(%rdx,%rax,4)
	addq	$16, %rax
	cmpq	952(%rsp), %rax
	jne	.L918
	movq	24(%rsp), %rbx
	movq	128(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L930
	movq	488(%rsp), %rax
	movq	1704(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	512(%rsp), %rax
	movq	1696(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	176(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	480(%rsp), %rax
	movq	1688(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	504(%rsp), %rax
	movq	1680(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	168(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	472(%rsp), %rax
	movq	1672(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	496(%rsp), %rax
	movq	1664(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	160(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	648(%rsp), %rax
	movq	1656(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	736(%rsp), %rax
	movq	1648(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	280(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	640(%rsp), %rax
	movq	1640(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	728(%rsp), %rax
	movq	1632(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	272(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	632(%rsp), %rax
	movq	1624(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	720(%rsp), %rax
	movq	1616(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	264(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	624(%rsp), %rax
	movq	1608(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	712(%rsp), %rax
	movq	1600(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	256(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	616(%rsp), %rax
	movq	1592(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	704(%rsp), %rax
	movq	1584(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	248(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	608(%rsp), %rax
	movq	1576(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	696(%rsp), %rax
	movq	1568(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	240(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	600(%rsp), %rax
	movq	1560(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	688(%rsp), %rax
	movq	1552(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	232(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	592(%rsp), %rax
	movq	1544(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	680(%rsp), %rax
	movq	1536(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	224(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	584(%rsp), %rax
	movq	1528(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	672(%rsp), %rax
	movq	1520(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	216(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	576(%rsp), %rax
	movq	1512(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	664(%rsp), %rax
	movq	1504(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	208(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	568(%rsp), %rax
	movq	1496(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	656(%rsp), %rax
	movq	1488(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	200(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L930
	movq	800(%rsp), %rax
	movq	2008(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
	movq	808(%rsp), %rax
	movq	2000(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L930:
	movq	552(%rsp), %rbx
	movq	456(%rsp), %r15
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	movq	464(%rsp), %r14
	movq	%rbx, %rsi
	movl	2224(%rsp), %edx
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movabsq	$214141960514971647, %rbx
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0.constprop.0
	xorl	%edx, %edx
	movq	%r15, %rcx
	movq	%r14, %rsi
.L932:
	movq	2232(%rsp), %rax
	movq	%rdx, %r8
	movl	(%rsi,%rdx,4), %r11d
	shrq	%r8
	movl	4(%rsi,%rdx,4), %r12d
	movq	376(%rsp), %r14
	movl	(%rax,%r8,4), %r10d
	movl	(%rcx,%rdx,4), %edi
	movl	4(%rcx,%rdx,4), %r9d
	movq	%r10, %rax
	imulq	$104837121, %r10, %r10
	imulq	%rbx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r10, %rax
	movl	(%r14,%r8,4), %r10d
	shrq	$31, %rax
	subl	$2147473409, %eax
	movq	%r10, %r8
	movl	%eax, %ebp
	imulq	%rbx, %r8
	sarl	$31, %ebp
	imulq	$104837121, %r10, %r10
	andl	$2147473409, %ebp
	addl	%eax, %ebp
	andl	$2147483647, %r8d
	movl	%ebp, %ebp
	imulq	$2147473409, %r8, %r8
	imulq	%rbp, %r12
	imulq	%rbp, %r11
	addq	%r10, %r8
	imulq	$2042615807, %r12, %rax
	shrq	$31, %r8
	subl	$2147473409, %r8d
	movl	%r8d, %r10d
	andl	$2147483647, %eax
	sarl	$31, %r10d
	imulq	$2147473409, %rax, %rax
	andl	$2147473409, %r10d
	addq	%r12, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	$2147473409, %r12d
	addl	%r12d, %eax
	movl	%eax, (%rcx,%rdx,4)
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	addl	%r10d, %r8d
	imulq	$2147473409, %rax, %rax
	movl	%r8d, %r8d
	imulq	%r8, %r9
	imulq	%r8, %rdi
	addq	%r11, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%r11d, %eax
	movl	%eax, 4(%rcx,%rdx,4)
	imulq	$2042615807, %r9, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %eax
	movl	%eax, (%rsi,%rdx,4)
	imulq	$2042615807, %rdi, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	addl	%edi, %eax
	movl	%eax, 4(%rsi,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, 24(%rsp)
	ja	.L932
	movq	888(%rsp), %r14
	movq	456(%rsp), %rbx
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	modp_iNTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movl	$2042615807, %r8d
	movq	%r14, %rsi
	movq	464(%rsp), %rdi
	movl	$2147473409, %ecx
	call	modp_iNTT2_ext.part.0.constprop.0
	movq	536(%rsp), %rdx
	movq	2232(%rsp), %rdi
	movq	%rbx, %rsi
	call	memmove@PLT
	cmpl	$9, 2224(%rsp)
	ja	.L1028
	cmpl	$9, 440(%rsp)
	ja	.L1029
	cmpl	$9, 436(%rsp)
	ja	.L1030
	cmpl	$9, 432(%rsp)
	ja	.L1031
	cmpl	$9, 428(%rsp)
	ja	.L1032
	cmpl	$9, 424(%rsp)
	ja	.L1033
	cmpl	$10, 420(%rsp)
	sbbl	%edx, %edx
	andl	$-466338840, %edx
	addl	$2109245776, %edx
.L933:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %esi
.L935:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	leal	(%rax,%rdi), %r8d
	movq	%r8, %rax
	imulq	%rdx, %r8
	imulq	$2042615807, %r8, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%r8, %rdi
	movl	%esi, %r8d
	shrq	$31, %rdi
	shrl	%cl, %r8d
	subl	$2147473409, %edi
	andl	$1, %r8d
	movl	%edi, %r9d
	negl	%r8d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %edi
	xorl	%eax, %edi
	andl	%r8d, %edi
	xorl	%edi, %eax
	subl	$1, %ecx
	jnb	.L935
	imulq	$2042615807, %rax, %rcx
	movl	$10239, %esi
	xorl	%edi, %edi
	leaq	REV10(%rip), %r8
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	leal	(%rax,%rcx), %r9d
	xorl	%ecx, %ecx
	movl	$10239, %eax
	jmp	.L937
.L1160:
	movzbl	444(%rsp), %ecx
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movzwl	(%r8,%rbx,2), %ecx
.L937:
	movq	96(%rsp), %rbx
	addq	$1, %rdi
	movl	%eax, (%rbx,%rcx,4)
	imulq	%rdx, %rax
	movq	88(%rsp), %rbx
	movl	%esi, (%rbx,%rcx,4)
	imulq	%r9, %rsi
	movq	%rax, %rcx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	imulq	$2042615807, %rsi, %rcx
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	$2147473409, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%ecx, %esi
	cmpq	%rdi, 24(%rsp)
	jne	.L1160
	movq	96(%rsp), %rbx
	movl	2224(%rsp), %edx
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movq	2232(%rsp), %rdi
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	112(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	call	modp_NTT2_ext.part.0.constprop.0
	movq	32(%rsp), %rax
	movq	104(%rsp), %rbx
	movl	2224(%rsp), %esi
	movq	944(%rsp), %rcx
	movsbl	(%rax), %edx
	movq	32(%rsp), %rdi
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	$1, %edx
	movl	%eax, (%rbx)
	movq	72(%rsp), %rbx
	movl	%eax, (%rbx)
	testl	%esi, %esi
	je	.L941
.L938:
	movsbl	(%rdi,%rdx), %esi
	movq	72(%rsp), %rbx
	subq	$4, %rcx
	movl	%esi, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%esi, %eax
	movl	%eax, (%rbx,%rdx,4)
	movsbl	(%rdi,%rdx), %esi
	addq	$1, %rdx
	movl	%esi, %eax
	negl	%eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%esi, %eax
	movl	%eax, 4(%rcx)
	cmpq	%rdx, 24(%rsp)
	jne	.L938
.L941:
	movq	96(%rsp), %rbx
	movq	72(%rsp), %rdi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	104(%rsp), %rdi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	xorl	%edx, %edx
	cmpb	$0, 2137(%rsp)
	movabsq	$214141960514971647, %rcx
	je	.L940
	movdqa	.LC27(%rip), %xmm7
	movdqa	.LC18(%rip), %xmm0
	xorl	%eax, %eax
	pxor	%xmm9, %xmm9
	movdqa	.LC10(%rip), %xmm3
	movdqa	.LC28(%rip), %xmm6
	movdqa	%xmm7, %xmm8
	movdqa	.LC29(%rip), %xmm5
	movq	2040(%rsp), %rdx
	movq	2056(%rsp), %rcx
	movq	2232(%rsp), %rsi
	psrlq	$32, %xmm8
.L939:
	movdqu	(%rcx,%rax), %xmm4
	movq	2048(%rsp), %rbx
	movdqa	%xmm4, %xmm10
	movdqa	%xmm4, %xmm11
	punpckldq	%xmm9, %xmm10
	punpckhdq	%xmm9, %xmm11
	movdqa	%xmm10, %xmm1
	movdqa	%xmm10, %xmm2
	psrlq	$32, %xmm1
	pmuludq	%xmm8, %xmm10
	pmuludq	%xmm7, %xmm1
	pmuludq	%xmm7, %xmm2
	paddq	%xmm10, %xmm1
	movdqa	%xmm11, %xmm10
	psllq	$32, %xmm1
	pmuludq	%xmm7, %xmm10
	paddq	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	movdqa	%xmm2, %xmm1
	psllq	$18, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	paddq	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	punpckldq	%xmm4, %xmm2
	punpckhdq	%xmm4, %xmm4
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm6, %xmm4
	paddq	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	psrlq	$32, %xmm2
	pmuludq	%xmm8, %xmm11
	pmuludq	%xmm7, %xmm2
	psrlq	$31, %xmm1
	paddq	%xmm11, %xmm2
	psllq	$32, %xmm2
	paddq	%xmm2, %xmm10
	pand	%xmm3, %xmm10
	movdqa	%xmm10, %xmm2
	psllq	$18, %xmm2
	psubq	%xmm10, %xmm2
	psllq	$2, %xmm2
	psubq	%xmm10, %xmm2
	psllq	$11, %xmm2
	paddq	%xmm10, %xmm2
	paddq	%xmm4, %xmm2
	psrlq	$31, %xmm2
	shufps	$136, %xmm2, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm10
	psrad	$31, %xmm10
	pand	%xmm0, %xmm10
	paddd	%xmm1, %xmm10
	movdqu	(%rsi,%rax), %xmm1
	movdqa	%xmm10, %xmm4
	movdqa	%xmm1, %xmm11
	punpckldq	%xmm10, %xmm4
	punpckhdq	%xmm10, %xmm10
	punpckldq	%xmm1, %xmm11
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm4, %xmm11
	movdqa	%xmm1, %xmm2
	pmuludq	%xmm10, %xmm2
	movdqa	%xmm11, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm11, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm11, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm12
	psllq	$18, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$2, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$11, %xmm12
	paddq	%xmm12, %xmm1
	paddq	%xmm1, %xmm11
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm11
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm12
	psllq	$18, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$2, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$11, %xmm12
	paddq	%xmm12, %xmm1
	paddq	%xmm2, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm11
	movdqa	%xmm11, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rbx,%rax)
	movdqu	(%rdx,%rax), %xmm1
	movq	1032(%rsp), %rbx
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm4, %xmm2
	movdqa	%xmm1, %xmm4
	pmuludq	%xmm10, %xmm4
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm2
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm4, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm4, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rbx,%rax)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L939
	movq	24(%rsp), %rbx
	movq	184(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L942
	movq	792(%rsp), %rax
	movq	1000(%rsp), %rdi
	movl	(%rax), %ecx
	movl	(%rdi), %esi
	movabsq	$214141960514971647, %rax
	movq	992(%rsp), %rdi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%esi, %edx
	movl	%edx, (%rdi)
	movq	784(%rsp), %rdi
	movl	(%rdi), %edx
	movq	984(%rsp), %rdi
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movq	776(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L942
	movq	768(%rsp), %rdi
	movl	(%rdi), %ecx
	movq	976(%rsp), %rdi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	movl	(%rdi), %esi
	movq	968(%rsp), %rdi
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%esi, %edx
	movl	%edx, (%rdi)
	movq	760(%rsp), %rdi
	movl	(%rdi), %edx
	movq	960(%rsp), %rdi
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movq	752(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L942
	movq	832(%rsp), %rbx
	movl	(%rbx), %edx
	movq	1048(%rsp), %rbx
	imulq	%rdx, %rax
	imulq	$104837121, %rdx, %rdx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	cltd
	andl	$2147473409, %edx
	addl	%eax, %edx
	movq	1056(%rsp), %rax
	movl	%edx, %edx
	movl	(%rax), %ecx
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	movl	%eax, (%rbx)
	movq	824(%rsp), %rax
	movq	1040(%rsp), %rbx
	movl	(%rax), %eax
	imulq	%rax, %rdx
	imulq	$2042615807, %rdx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	cltd
	andl	$2147473409, %edx
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L942:
	movq	40(%rsp), %rax
	movq	104(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
	movq	72(%rsp), %rbx
	movl	%eax, (%rbx)
.L945:
	movq	944(%rsp), %rcx
	movq	40(%rsp), %rdi
	movl	$1, %edx
.L948:
	movsbl	(%rdi,%rdx), %esi
	movq	72(%rsp), %rbx
	subq	$4, %rcx
	movl	%esi, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%esi, %eax
	movl	%eax, (%rbx,%rdx,4)
	movsbl	(%rdi,%rdx), %esi
	addq	$1, %rdx
	movl	%esi, %eax
	negl	%eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%esi, %eax
	movl	%eax, 4(%rcx)
	cmpq	%rdx, 24(%rsp)
	jne	.L948
.L949:
	movq	96(%rsp), %rbx
	movq	72(%rsp), %rdi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	104(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
	cmpb	$0, 2138(%rsp)
	je	.L1161
	movdqa	.LC27(%rip), %xmm7
	movdqa	.LC18(%rip), %xmm0
	xorl	%eax, %eax
	pxor	%xmm9, %xmm9
	movdqa	.LC10(%rip), %xmm3
	movdqa	.LC28(%rip), %xmm6
	movdqa	%xmm7, %xmm8
	movdqa	.LC29(%rip), %xmm5
	movq	2064(%rsp), %rdx
	movq	320(%rsp), %rsi
	movq	840(%rsp), %rcx
	psrlq	$32, %xmm8
	movq	2072(%rsp), %rdi
	movq	520(%rsp), %r8
.L946:
	movdqu	(%rdi,%rax), %xmm4
	movdqa	%xmm4, %xmm10
	movdqa	%xmm4, %xmm11
	punpckldq	%xmm9, %xmm10
	punpckhdq	%xmm9, %xmm11
	movdqa	%xmm10, %xmm1
	movdqa	%xmm10, %xmm2
	psrlq	$32, %xmm1
	pmuludq	%xmm8, %xmm10
	pmuludq	%xmm7, %xmm1
	pmuludq	%xmm7, %xmm2
	paddq	%xmm10, %xmm1
	movdqa	%xmm11, %xmm10
	psllq	$32, %xmm1
	pmuludq	%xmm7, %xmm10
	paddq	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	movdqa	%xmm2, %xmm1
	psllq	$18, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	paddq	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	punpckldq	%xmm4, %xmm2
	punpckhdq	%xmm4, %xmm4
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm6, %xmm4
	paddq	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	psrlq	$32, %xmm2
	pmuludq	%xmm8, %xmm11
	pmuludq	%xmm7, %xmm2
	psrlq	$31, %xmm1
	paddq	%xmm11, %xmm2
	psllq	$32, %xmm2
	paddq	%xmm2, %xmm10
	pand	%xmm3, %xmm10
	movdqa	%xmm10, %xmm2
	psllq	$18, %xmm2
	psubq	%xmm10, %xmm2
	psllq	$2, %xmm2
	psubq	%xmm10, %xmm2
	psllq	$11, %xmm2
	paddq	%xmm10, %xmm2
	paddq	%xmm4, %xmm2
	psrlq	$31, %xmm2
	shufps	$136, %xmm2, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm10
	psrad	$31, %xmm10
	pand	%xmm0, %xmm10
	paddd	%xmm1, %xmm10
	movdqu	(%r8,%rax), %xmm1
	movdqa	%xmm10, %xmm4
	movdqa	%xmm1, %xmm11
	punpckldq	%xmm10, %xmm4
	punpckhdq	%xmm10, %xmm10
	punpckldq	%xmm1, %xmm11
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm4, %xmm11
	movdqa	%xmm1, %xmm2
	pmuludq	%xmm10, %xmm2
	movdqa	%xmm11, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm11, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm11, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm11, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm12
	psllq	$18, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$2, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$11, %xmm12
	paddq	%xmm12, %xmm1
	paddq	%xmm1, %xmm11
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm11
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm12
	psllq	$18, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$2, %xmm12
	psubq	%xmm1, %xmm12
	psllq	$11, %xmm12
	paddq	%xmm12, %xmm1
	paddq	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movdqu	(%rcx,%rax), %xmm2
	paddd	%xmm5, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movdqu	(%rsi,%rax), %xmm1
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm4, %xmm2
	movdqa	%xmm1, %xmm4
	pmuludq	%xmm10, %xmm4
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm2
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm4, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm4, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movdqu	(%rdx,%rax), %xmm2
	paddd	%xmm5, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rdx,%rax)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L946
	movq	24(%rsp), %rbx
	movq	184(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L951
	movq	792(%rsp), %rax
	movq	1016(%rsp), %rdi
	movq	992(%rsp), %r14
	movl	(%rax), %ecx
	movl	(%rdi), %esi
	movabsq	$214141960514971647, %rax
	movl	(%r14), %edi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	shrq	$31, %rdx
	leal	-2147473409(%rdx), %esi
	leal	20478(%rdi,%rdx), %edi
	sarl	$31, %esi
	movl	%esi, %edx
	andl	$2147473409, %edx
	leal	(%rdi,%rdx), %esi
	movq	784(%rsp), %rdi
	movl	%esi, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%esi, %edx
	movl	%edx, (%r14)
	movl	(%rdi), %edx
	movq	984(%rsp), %rdi
	imulq	%rdx, %rcx
	movl	(%rdi), %esi
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	leal	-2147473409(%rdx), %ecx
	leal	20478(%rsi,%rdx), %esi
	sarl	$31, %ecx
	movl	%ecx, %edx
	andl	$2147473409, %edx
	leal	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movq	776(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L951
	movq	768(%rsp), %rdi
	movq	968(%rsp), %r14
	movl	(%rdi), %ecx
	movq	1008(%rsp), %rdi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	movl	(%rdi), %esi
	movl	(%r14), %edi
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	shrq	$31, %rdx
	leal	-2147473409(%rdx), %esi
	leal	20478(%rdi,%rdx), %edi
	sarl	$31, %esi
	movl	%esi, %edx
	andl	$2147473409, %edx
	leal	(%rdi,%rdx), %esi
	movq	760(%rsp), %rdi
	movl	%esi, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%esi, %edx
	movl	%edx, (%r14)
	movl	(%rdi), %edx
	movq	960(%rsp), %rdi
	imulq	%rdx, %rcx
	movl	(%rdi), %esi
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	leal	-2147473409(%rdx), %ecx
	leal	20478(%rsi,%rdx), %esi
	sarl	$31, %ecx
	movl	%ecx, %edx
	andl	$2147473409, %edx
	leal	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movq	752(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L951
	movq	832(%rsp), %rbx
	movl	(%rbx), %edx
	movq	1048(%rsp), %rbx
	imulq	%rdx, %rax
	movl	(%rbx), %esi
	imulq	$104837121, %rdx, %rdx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	cltd
	andl	$2147473409, %edx
	addl	%eax, %edx
	movq	1064(%rsp), %rax
	movl	%edx, %edx
	movl	(%rax), %ecx
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %ecx
	leal	20478(%rsi,%rax), %esi
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	leal	(%rsi,%rax), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%ecx, %eax
	movl	%eax, (%rbx)
	movq	824(%rsp), %rax
	movq	1040(%rsp), %rbx
	movl	(%rax), %eax
	movl	(%rbx), %ecx
	imulq	%rax, %rdx
	imulq	$2042615807, %rdx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %edx
	leal	20478(%rcx,%rax), %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	leal	(%rcx,%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L951:
	cmpl	$9, 2224(%rsp)
	ja	.L1038
	cmpl	$9, 440(%rsp)
	ja	.L1039
	cmpl	$9, 436(%rsp)
	ja	.L1040
	cmpl	$9, 432(%rsp)
	ja	.L1041
	cmpl	$9, 428(%rsp)
	ja	.L1042
	cmpl	$9, 424(%rsp)
	ja	.L1043
	cmpl	$10, 420(%rsp)
	sbbl	%edx, %edx
	andl	$-466338840, %edx
	addl	$2109245776, %edx
.L953:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %esi
.L955:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	leal	(%rax,%rdi), %r8d
	movq	%r8, %rax
	imulq	%rdx, %r8
	imulq	$2042615807, %r8, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%r8, %rdi
	movl	%esi, %r8d
	shrq	$31, %rdi
	shrl	%cl, %r8d
	subl	$2147473409, %edi
	andl	$1, %r8d
	movl	%edi, %r9d
	negl	%r8d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %edi
	xorl	%eax, %edi
	andl	%r8d, %edi
	xorl	%edi, %eax
	subl	$1, %ecx
	jnb	.L955
	imulq	$2042615807, %rax, %rcx
	movl	$10239, %esi
	xorl	%edi, %edi
	leaq	REV10(%rip), %r8
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	leal	(%rax,%rcx), %r9d
	xorl	%ecx, %ecx
	movl	$10239, %eax
	jmp	.L957
.L1162:
	movzbl	444(%rsp), %ecx
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movzwl	(%r8,%rbx,2), %ecx
.L957:
	movq	96(%rsp), %rbx
	addq	$1, %rdi
	movl	%eax, (%rbx,%rcx,4)
	imulq	%rdx, %rax
	movq	72(%rsp), %rbx
	movl	%esi, (%rbx,%rcx,4)
	imulq	%r9, %rsi
	movq	%rax, %rcx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	imulq	$2042615807, %rsi, %rcx
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	$2147473409, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%ecx, %esi
	cmpq	%rdi, 24(%rsp)
	jne	.L1162
	movl	2224(%rsp), %edx
	movq	88(%rsp), %rdi
	movl	$2147473409, %ecx
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	call	modp_iNTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	120(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_iNTT2_ext.part.0.constprop.0
	cmpb	$0, 2139(%rsp)
	je	.L1045
	cmpq	$2, 312(%rsp)
	jbe	.L1046
	movdqa	.LC18(%rip), %xmm0
	xorl	%eax, %eax
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LC30(%rip), %xmm2
	movq	840(%rsp), %rdx
	movq	2080(%rsp), %rcx
.L960:
	movdqu	(%rdx,%rax), %xmm1
	movdqu	(%rdx,%rax), %xmm3
	movq	848(%rsp), %rbx
	paddd	%xmm2, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm3
	movups	%xmm3, (%rbx,%rax)
	movdqu	(%rcx,%rax), %xmm1
	movdqu	(%rcx,%rax), %xmm3
	paddd	%xmm2, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm3
	movups	%xmm3, (%rdx,%rax)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L960
	movq	24(%rsp), %rdx
	movq	184(%rsp), %rax
	cmpq	%rax, %rdx
	je	.L961
	subq	%rax, %rdx
	cmpq	$1, %rdx
	je	.L962
.L959:
	movq	336(%rsp), %rbx
	movq	.LC31(%rip), %xmm0
	movq	.LC32(%rip), %xmm4
	movq	.LC26(%rip), %xmm3
	leaq	(%rbx,%rax,4), %rcx
	addq	2232(%rsp), %rcx
	movq	144(%rsp), %rbx
	movq	(%rcx), %xmm2
	leaq	(%rbx,%rax,2), %rsi
	movq	2232(%rsp), %rbx
	movdqa	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	psubd	%xmm1, %xmm2
	movq	%xmm2, (%rbx,%rsi,2)
	subq	%rax, %rsi
	movq	(%rbx,%rsi,4), %xmm1
	paddd	%xmm1, %xmm0
	psrld	$31, %xmm0
	paddd	%xmm4, %xmm0
	pand	%xmm3, %xmm0
	psubd	%xmm0, %xmm1
	movq	%xmm1, (%rcx)
	movq	%rdx, %rcx
	andq	$-2, %rcx
	addq	%rcx, %rax
	cmpq	%rcx, %rdx
	je	.L964
.L962:
	movq	88(%rsp), %rbx
	leaq	(%rbx,%rax,4), %rcx
	movq	96(%rsp), %rbx
	movl	(%rcx), %esi
	leal	-1073736705(%rsi), %edx
	shrl	$31, %edx
	subl	$1, %edx
	andl	$2147473409, %edx
	subl	%edx, %esi
	movl	%esi, (%rbx,%rax,4)
	movq	120(%rsp), %rbx
	movl	(%rbx,%rax,4), %edx
	leal	-1073736705(%rdx), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %edx
	movl	%edx, (%rcx)
.L964:
	cmpq	$2, 312(%rsp)
	jbe	.L1048
.L961:
	movq	528(%rsp), %rdx
	xorl	%eax, %eax
.L966:
	movq	840(%rsp), %rbx
	movdqu	(%rbx,%rax), %xmm0
	cvtdq2pd	%xmm0, %xmm1
	pshufd	$238, %xmm0, %xmm0
	movups	%xmm1, (%rdx,%rax,2)
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx,%rax,2)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L966
	movq	184(%rsp), %rax
	cmpq	%rax, 24(%rsp)
	je	.L967
.L965:
	movq	88(%rsp), %rbx
	pxor	%xmm0, %xmm0
	movq	24(%rsp), %r14
	leaq	1(%rax), %rsi
	movq	528(%rsp), %rdi
	leaq	0(,%rax,4), %rcx
	leaq	0(,%rax,8), %rdx
	cvtsi2sdl	(%rbx,%rax,4), %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	cmpq	%rsi, %r14
	jbe	.L968
	pxor	%xmm0, %xmm0
	addq	$2, %rax
	cvtsi2sdl	4(%rbx,%rcx), %xmm0
	movsd	%xmm0, 8(%rdi,%rdx)
	cmpq	%rax, %r14
	jbe	.L968
	pxor	%xmm0, %xmm0
	cvtsi2sdl	8(%rbx,%rcx), %xmm0
	movsd	%xmm0, 16(%rdi,%rdx)
.L968:
	movq	528(%rsp), %rbx
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movq	384(%rsp), %rdx
	movq	864(%rsp), %rdi
	movq	%rbx, %rsi
	call	memmove@PLT
	cmpq	$2, 312(%rsp)
	jbe	.L1049
.L1010:
	movq	560(%rsp), %rdx
	xorl	%eax, %eax
.L970:
	movq	848(%rsp), %rbx
	movdqu	(%rbx,%rax), %xmm0
	cvtdq2pd	%xmm0, %xmm1
	pshufd	$238, %xmm0, %xmm0
	movups	%xmm1, (%rdx,%rax,2)
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx,%rax,2)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L970
	movq	184(%rsp), %rax
	cmpq	%rax, 24(%rsp)
	je	.L971
.L969:
	movq	96(%rsp), %rbx
	pxor	%xmm0, %xmm0
	movq	24(%rsp), %r14
	leaq	1(%rax), %rsi
	movq	560(%rsp), %rdi
	leaq	0(,%rax,4), %rcx
	leaq	0(,%rax,8), %rdx
	cvtsi2sdl	(%rbx,%rax,4), %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	cmpq	%rsi, %r14
	jbe	.L971
	pxor	%xmm0, %xmm0
	addq	$2, %rax
	cvtsi2sdl	4(%rbx,%rcx), %xmm0
	movsd	%xmm0, 8(%rdi,%rdx)
	cmpq	%rax, %r14
	jbe	.L971
	pxor	%xmm0, %xmm0
	cvtsi2sdl	8(%rbx,%rcx), %xmm0
	movsd	%xmm0, 16(%rdi,%rdx)
.L971:
	movq	560(%rsp), %rbx
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movl	2224(%rsp), %edx
	movq	864(%rsp), %rsi
	movq	%rbx, %rdi
	call	falcon_inner_poly_div_autoadj_fft@PLT
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_iFFT@PLT
	movsd	.LC16(%rip), %xmm1
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movabsq	$-4503599627370496, %r9
	movabsq	$4503599627370496, %r10
.L972:
	movsd	(%rsi,%rcx,8), %xmm0
	movq	96(%rsp), %rbx
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %rdi
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r8
	movapd	%xmm0, %xmm2
	movq	%rdi, %rax
	subsd	%xmm1, %xmm2
	subsd	.LC17(%rip), %xmm0
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	cvttsd2siq	%xmm2, %rdx
	addq	%r9, %r8
	subl	$2, %eax
	cvttsd2siq	%xmm0, %r11
	shrl	$31, %eax
	addq	%r10, %rdx
	xorq	%r8, %rdx
	sarq	$63, %r11
	andq	%r11, %rdx
	xorq	%r8, %rdx
	movq	%rax, %r8
	subq	$1, %rax
	negq	%r8
	andq	%rdi, %rax
	andq	%r8, %rdx
	orq	%rdx, %rax
	cltd
	andl	$2147473409, %edx
	addl	%edx, %eax
	movl	%eax, (%rbx,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, 24(%rsp)
	jne	.L972
	cmpl	$9, 2224(%rsp)
	ja	.L1050
	cmpl	$9, 440(%rsp)
	ja	.L1051
	cmpl	$9, 436(%rsp)
	ja	.L1052
	cmpl	$9, 432(%rsp)
	ja	.L1053
	cmpl	$9, 428(%rsp)
	ja	.L1054
	cmpl	$9, 424(%rsp)
	ja	.L1055
	cmpl	$10, 420(%rsp)
	sbbl	%edx, %edx
	andl	$-466338840, %edx
	addl	$2109245776, %edx
.L973:
	movl	$30, %ecx
	movl	$10239, %eax
	movl	$2147473407, %esi
.L975:
	imulq	%rax, %rax
	imulq	$2042615807, %rax, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	$2147473409, %edi
	leal	(%rax,%rdi), %r8d
	movq	%r8, %rax
	imulq	%rdx, %r8
	imulq	$2042615807, %r8, %rdi
	andl	$2147483647, %edi
	imulq	$2147473409, %rdi, %rdi
	addq	%r8, %rdi
	movl	%esi, %r8d
	shrq	$31, %rdi
	shrl	%cl, %r8d
	subl	$2147473409, %edi
	andl	$1, %r8d
	movl	%edi, %r9d
	negl	%r8d
	sarl	$31, %r9d
	andl	$2147473409, %r9d
	addl	%r9d, %edi
	xorl	%eax, %edi
	andl	%r8d, %edi
	xorl	%edi, %eax
	subl	$1, %ecx
	jnb	.L975
	imulq	$2042615807, %rax, %rcx
	movl	$10239, %esi
	xorl	%edi, %edi
	leaq	REV10(%rip), %r8
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%eax, %ecx
	movl	%ecx, %ecx
	imulq	$10239, %rcx, %rax
	imulq	$104837121, %rcx, %rcx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	leal	(%rax,%rcx), %r9d
	xorl	%ecx, %ecx
	movl	$10239, %eax
	jmp	.L977
.L1163:
	movzbl	444(%rsp), %ecx
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movzwl	(%r8,%rbx,2), %ecx
.L977:
	movq	88(%rsp), %rbx
	addq	$1, %rdi
	movl	%eax, (%rbx,%rcx,4)
	imulq	%rdx, %rax
	movq	120(%rsp), %rbx
	movl	%esi, (%rbx,%rcx,4)
	imulq	%r9, %rsi
	movq	%rax, %rcx
	imulq	$2042615807, %rax, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	imulq	$2042615807, %rsi, %rcx
	andl	$2147483647, %ecx
	imulq	$2147473409, %rcx, %rcx
	addq	%rsi, %rcx
	shrq	$31, %rcx
	subl	$2147473409, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%ecx, %esi
	cmpq	%rdi, 24(%rsp)
	jne	.L1163
	cmpb	$0, 2140(%rsp)
	je	.L1057
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	xorl	%eax, %eax
	pxor	%xmm4, %xmm4
	movdqa	.LC18(%rip), %xmm0
	movq	320(%rsp), %rdx
	pxor	%xmm3, %xmm3
	movq	856(%rsp), %rcx
.L979:
	movdqu	(%rsi,%rax), %xmm1
	movdqa	%xmm4, %xmm5
	movdqa	%xmm3, %xmm6
	pcmpgtb	%xmm1, %xmm5
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm5, %xmm2
	punpckhbw	%xmm5, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%rdx,%rax,4)
	movdqa	%xmm2, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm1, %xmm5
	movups	%xmm2, 16(%rdx,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm1
	movdqa	%xmm4, %xmm5
	movdqa	%xmm6, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm6, %xmm2
	movdqa	%xmm3, %xmm6
	movups	%xmm2, 32(%rdx,%rax,4)
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, 48(%rdx,%rax,4)
	movdqu	(%rdi,%rax), %xmm1
	pcmpgtb	%xmm1, %xmm5
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm5, %xmm2
	punpckhbw	%xmm5, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	movdqa	%xmm7, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm7, %xmm5
	movups	%xmm5, (%rcx,%rax,4)
	movdqa	%xmm2, %xmm5
	psrad	$31, %xmm5
	pand	%xmm0, %xmm5
	paddd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	pcmpgtw	%xmm1, %xmm5
	movups	%xmm2, 16(%rcx,%rax,4)
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm1
	movdqa	%xmm6, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm6, %xmm2
	movups	%xmm2, 32(%rcx,%rax,4)
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	movups	%xmm1, 48(%rcx,%rax,4)
	addq	$16, %rax
	cmpq	952(%rsp), %rax
	jne	.L979
	movq	24(%rsp), %rbx
	movq	128(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L981
	movq	488(%rsp), %rax
	movq	2088(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	512(%rsp), %rax
	movq	1480(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	176(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	480(%rsp), %rax
	movq	1928(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	504(%rsp), %rax
	movq	1920(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	168(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	472(%rsp), %rax
	movq	1912(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	496(%rsp), %rax
	movq	1904(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	160(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	648(%rsp), %rax
	movq	1896(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	736(%rsp), %rax
	movq	1888(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	280(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	640(%rsp), %rax
	movq	1880(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	728(%rsp), %rax
	movq	1872(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	272(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	632(%rsp), %rax
	movq	1864(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	720(%rsp), %rax
	movq	1856(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	264(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	624(%rsp), %rax
	movq	1848(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	712(%rsp), %rax
	movq	1840(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	256(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	616(%rsp), %rax
	movq	1832(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	704(%rsp), %rax
	movq	1824(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	248(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	608(%rsp), %rax
	movq	1816(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	696(%rsp), %rax
	movq	1808(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	240(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	600(%rsp), %rax
	movq	1800(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	688(%rsp), %rax
	movq	1792(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	232(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	592(%rsp), %rax
	movq	1784(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	680(%rsp), %rax
	movq	1776(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	224(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	584(%rsp), %rax
	movq	1768(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	672(%rsp), %rax
	movq	1760(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	216(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	576(%rsp), %rax
	movq	1752(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	664(%rsp), %rax
	movq	1744(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	208(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	568(%rsp), %rax
	movq	1736(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	656(%rsp), %rax
	movq	1728(%rsp), %rdi
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movq	200(%rsp), %rax
	cmpq	%rax, %rbx
	jbe	.L981
	movq	800(%rsp), %rax
	movq	2104(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
	movq	808(%rsp), %rax
	movq	2096(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L981:
	movq	88(%rsp), %rbx
	movq	96(%rsp), %rdi
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movl	2224(%rsp), %edx
	movq	%rbx, %rsi
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	104(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_NTT2_ext.part.0.constprop.0
	cmpb	$0, 2141(%rsp)
	je	.L1058
	movdqa	.LC18(%rip), %xmm0
	movdqa	.LC10(%rip), %xmm3
	xorl	%eax, %eax
	pxor	%xmm7, %xmm7
	movdqa	.LC28(%rip), %xmm6
	movdqa	.LC29(%rip), %xmm5
	movq	320(%rsp), %rsi
	movq	848(%rsp), %rdi
	movq	856(%rsp), %r8
	movq	520(%rsp), %rdx
	movq	2232(%rsp), %rcx
.L983:
	movdqa	2144(%rsp), %xmm13
	movdqu	(%rdi,%rax), %xmm4
	movdqa	%xmm4, %xmm8
	movdqa	%xmm4, %xmm9
	punpckldq	%xmm7, %xmm8
	punpckhdq	%xmm7, %xmm9
	movdqa	%xmm8, %xmm2
	movdqa	%xmm8, %xmm1
	pmuludq	.LC27(%rip), %xmm2
	pmuludq	%xmm13, %xmm8
	psrlq	$32, %xmm1
	pmuludq	.LC27(%rip), %xmm1
	paddq	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	pmuludq	.LC27(%rip), %xmm8
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm2
	pand	%xmm3, %xmm2
	movdqa	%xmm2, %xmm1
	psllq	$18, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	paddq	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	punpckldq	%xmm4, %xmm2
	punpckhdq	%xmm4, %xmm4
	pmuludq	%xmm6, %xmm2
	pmuludq	%xmm6, %xmm4
	paddq	%xmm2, %xmm1
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm13, %xmm9
	psrlq	$32, %xmm2
	pmuludq	.LC27(%rip), %xmm2
	psrlq	$31, %xmm1
	paddq	%xmm9, %xmm2
	psllq	$32, %xmm2
	paddq	%xmm2, %xmm8
	pand	%xmm3, %xmm8
	movdqa	%xmm8, %xmm2
	psllq	$18, %xmm2
	psubq	%xmm8, %xmm2
	psllq	$2, %xmm2
	psubq	%xmm8, %xmm2
	psllq	$11, %xmm2
	paddq	%xmm8, %xmm2
	paddq	%xmm4, %xmm2
	psrlq	$31, %xmm2
	shufps	$136, %xmm2, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm8
	psrad	$31, %xmm8
	pand	%xmm0, %xmm8
	paddd	%xmm1, %xmm8
	movdqu	(%rsi,%rax), %xmm1
	movdqa	%xmm8, %xmm9
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm8, %xmm9
	punpckhdq	%xmm8, %xmm8
	punpckldq	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm9, %xmm2
	movdqa	%xmm1, %xmm4
	pmuludq	%xmm8, %xmm4
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm2
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm4, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm10
	psllq	$18, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$2, %xmm10
	psubq	%xmm1, %xmm10
	psllq	$11, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm4, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm1
	movdqu	(%rcx,%rax), %xmm2
	psubd	%xmm1, %xmm2
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movdqu	(%r8,%rax), %xmm1
	movdqa	%xmm1, %xmm2
	punpckldq	%xmm1, %xmm2
	punpckhdq	%xmm1, %xmm1
	pmuludq	%xmm9, %xmm2
	movdqa	%xmm1, %xmm4
	pmuludq	%xmm8, %xmm4
	movdqa	%xmm2, %xmm1
	psllq	$4, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm2, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm2, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm8
	psllq	$18, %xmm8
	psubq	%xmm1, %xmm8
	psllq	$2, %xmm8
	psubq	%xmm1, %xmm8
	psllq	$11, %xmm8
	paddq	%xmm8, %xmm1
	paddq	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	psllq	$4, %xmm1
	psrlq	$31, %xmm2
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	paddq	%xmm4, %xmm1
	psllq	$3, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$9, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$2, %xmm1
	psubq	%xmm4, %xmm1
	psllq	$11, %xmm1
	psubq	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm8
	psllq	$18, %xmm8
	psubq	%xmm1, %xmm8
	psllq	$2, %xmm8
	psubq	%xmm1, %xmm8
	psllq	$11, %xmm8
	paddq	%xmm8, %xmm1
	paddq	%xmm4, %xmm1
	psrlq	$31, %xmm1
	shufps	$136, %xmm1, %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm1
	movdqu	(%rdx,%rax), %xmm2
	psubd	%xmm1, %xmm2
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pand	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	movups	%xmm1, (%rdx,%rax)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L983
	movq	24(%rsp), %rbx
	movq	184(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L985
	movq	1288(%rsp), %rax
	movq	784(%rsp), %rdi
	movl	(%rax), %ecx
	movl	(%rdi), %esi
	movabsq	$214141960514971647, %rax
	movq	1000(%rsp), %rdi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	movl	(%rdi), %esi
	shrq	$31, %rdx
	subl	$2147473409, %edx
	subl	%edx, %esi
	sarl	$31, %edx
	andl	$2147473409, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%edx, %esi
	movl	%esi, (%rdi)
	movq	792(%rsp), %rdi
	movl	(%rdi), %edx
	movq	1016(%rsp), %rdi
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	movl	(%rdi), %ecx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%ecx, (%rsp)
	subl	%edx, %ecx
	sarl	$31, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movq	776(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L985
	movq	2016(%rsp), %rdi
	movl	(%rdi), %ecx
	movq	760(%rsp), %rdi
	movq	%rcx, %rdx
	imulq	$104837121, %rcx, %rcx
	movl	(%rdi), %esi
	movq	976(%rsp), %rdi
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	imulq	%rcx, %rsi
	imulq	$2042615807, %rsi, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rsi, %rdx
	movl	(%rdi), %esi
	shrq	$31, %rdx
	subl	$2147473409, %edx
	subl	%edx, %esi
	sarl	$31, %edx
	andl	$2147473409, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%esi, %edx
	movl	%edx, (%rdi)
	movq	768(%rsp), %rdi
	movl	(%rdi), %edx
	movq	1008(%rsp), %rdi
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rdx
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	addq	%rcx, %rdx
	movl	(%rdi), %ecx
	shrq	$31, %rdx
	subl	$2147473409, %edx
	movl	%ecx, (%rsp)
	subl	%edx, %ecx
	sarl	$31, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%edx, %ecx
	movl	%ecx, (%rdi)
	movq	752(%rsp), %rdi
	cmpq	%rdi, %rbx
	jbe	.L985
	movq	2112(%rsp), %rbx
	movl	(%rbx), %edx
	movq	1056(%rsp), %rbx
	imulq	%rdx, %rax
	imulq	$104837121, %rdx, %rdx
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	cltd
	andl	$2147473409, %edx
	addl	%eax, %edx
	movq	824(%rsp), %rax
	movl	%edx, %edx
	movl	(%rax), %ecx
	imulq	%rdx, %rcx
	imulq	$2042615807, %rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rcx, %rax
	movl	(%rbx), %ecx
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %ecx
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%ecx, %eax
	movl	%eax, (%rbx)
	movq	832(%rsp), %rax
	movq	1064(%rsp), %rbx
	movl	(%rax), %eax
	movl	(%rbx), %edi
	imulq	%rax, %rdx
	movl	%edi, (%rsp)
	imulq	$2042615807, %rdx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	movl	%edi, %edx
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %edx
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	%eax, (%rbx)
.L985:
	movq	120(%rsp), %rbx
	movl	2224(%rsp), %edx
	movl	$2147473409, %ecx
	movl	$2042615807, %r8d
	movq	2232(%rsp), %rdi
	movq	%rbx, %rsi
	call	modp_iNTT2_ext.part.0.constprop.0
	movl	2224(%rsp), %edx
	movq	112(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$2042615807, %r8d
	movl	$2147473409, %ecx
	call	modp_iNTT2_ext.part.0.constprop.0
	cmpb	$0, 2142(%rsp)
	je	.L1059
	cmpq	$2, 312(%rsp)
	jbe	.L1060
	movdqa	.LC18(%rip), %xmm0
	xorl	%eax, %eax
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LC30(%rip), %xmm2
	movq	520(%rsp), %rdx
	movq	2232(%rsp), %rcx
.L988:
	movdqu	(%rcx,%rax), %xmm1
	movdqu	(%rcx,%rax), %xmm3
	paddd	%xmm2, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm3
	movups	%xmm3, (%rcx,%rax)
	movdqu	(%rdx,%rax), %xmm1
	movdqu	(%rdx,%rax), %xmm3
	paddd	%xmm2, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm0, %xmm1
	psubd	%xmm1, %xmm3
	movups	%xmm3, (%rdx,%rax)
	addq	$16, %rax
	cmpq	304(%rsp), %rax
	jne	.L988
	movq	24(%rsp), %rcx
	movq	184(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L990
	subq	%rax, %rcx
	cmpq	$1, %rcx
	je	.L992
.L987:
	movq	2232(%rsp), %rsi
	leaq	0(,%rax,4), %rdx
	movq	.LC31(%rip), %xmm0
	movq	.LC32(%rip), %xmm4
	movq	.LC26(%rip), %xmm3
	addq	%rdx, %rsi
	addq	144(%rsp), %rdx
	addq	2232(%rsp), %rdx
	movq	(%rsi), %xmm2
	movdqa	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm3, %xmm1
	psubd	%xmm1, %xmm2
	movq	%xmm2, (%rsi)
	movq	(%rdx), %xmm1
	paddd	%xmm1, %xmm0
	psrld	$31, %xmm0
	paddd	%xmm4, %xmm0
	pand	%xmm3, %xmm0
	psubd	%xmm0, %xmm1
	movq	%xmm1, (%rdx)
	movq	%rcx, %rdx
	andq	$-2, %rdx
	addq	%rdx, %rax
	cmpq	%rdx, %rcx
	je	.L990
.L992:
	movq	2232(%rsp), %rsi
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rsi
	addq	112(%rsp), %rdx
	movl	(%rsi), %ecx
	leal	-1073736705(%rcx), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %ecx
	movl	%ecx, (%rsi)
	movl	(%rdx), %ecx
	leal	-1073736705(%rcx), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %ecx
	movl	%ecx, (%rdx)
	jmp	.L990
.L919:
	movq	32(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	456(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	movq	40(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	464(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 24(%rsp)
	jne	.L919
	jmp	.L930
.L940:
	movq	104(%rsp), %rax
	movq	88(%rsp), %rbx
	movl	(%rax,%rdx,4), %esi
	movq	%rsi, %rax
	imulq	$104837121, %rsi, %rsi
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	leal	(%rsi,%rax), %edi
	movq	2232(%rsp), %rax
	movl	(%rax,%rdx,4), %esi
	imulq	%rdi, %rsi
	imulq	$2042615807, %rsi, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%esi, %eax
	movl	%eax, (%rbx,%rdx,4)
	movq	72(%rsp), %rax
	movq	120(%rsp), %rbx
	movl	(%rax,%rdx,4), %esi
	imulq	%rdi, %rsi
	imulq	$2042615807, %rsi, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	$2147473409, %esi
	addl	%esi, %eax
	movl	%eax, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, 24(%rsp)
	jne	.L940
	movq	40(%rsp), %rax
	movq	104(%rsp), %rbx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	2224(%rsp), %edx
	movl	%eax, (%rbx)
	movq	72(%rsp), %rbx
	movl	%eax, (%rbx)
	testl	%edx, %edx
	je	.L949
	jmp	.L945
.L1015:
	movl	$1, %eax
	jmp	.L903
.L1066:
	movl	$1525826314, %edx
	jmp	.L1009
.L1026:
	movq	368(%rsp), %rdx
	xorl	%eax, %eax
	jmp	.L921
.L1055:
	movl	$1525826314, %edx
	jmp	.L973
.L1054:
	movl	$1751781058, %edx
	jmp	.L973
.L1053:
	movl	$36002698, %edx
	jmp	.L973
.L1052:
	movl	$583466347, %edx
	jmp	.L973
.L1051:
	movl	$1685737800, %edx
	jmp	.L973
.L1050:
	movl	$1968792473, %edx
	jmp	.L973
.L1049:
	xorl	%eax, %eax
	jmp	.L969
.L967:
	movq	528(%rsp), %rbx
	movl	2224(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movq	384(%rsp), %rdx
	movq	864(%rsp), %rdi
	movq	%rbx, %rsi
	call	memmove@PLT
	jmp	.L1010
.L1048:
	xorl	%eax, %eax
	jmp	.L965
.L1046:
	movq	24(%rsp), %rdx
	xorl	%eax, %eax
	jmp	.L959
.L1045:
	movq	88(%rsp), %rsi
	movq	120(%rsp), %rdi
	xorl	%eax, %eax
.L958:
	movl	(%rsi,%rax,4), %ecx
	movq	96(%rsp), %rbx
	leal	-1073736705(%rcx), %edx
	shrl	$31, %edx
	subl	$1, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, (%rbx,%rax,4)
	movl	(%rdi,%rax,4), %ecx
	leal	-1073736705(%rcx), %edx
	shrl	$31, %edx
	subl	$1, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 24(%rsp)
	jne	.L958
	jmp	.L964
.L1043:
	movl	$1525826314, %edx
	jmp	.L953
.L1071:
	xorl	%eax, %eax
.L1001:
	movq	448(%rsp), %rbx
	movsbl	(%rbx,%rax), %ecx
	movq	2232(%rsp), %rbx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 24(%rsp)
	jne	.L1001
	jmp	.L1004
.L1057:
	xorl	%edx, %edx
.L978:
	movq	32(%rsp), %rax
	movq	72(%rsp), %rbx
	movsbl	(%rax,%rdx), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%ecx, %eax
	movl	%eax, (%rbx,%rdx,4)
	movq	40(%rsp), %rax
	movq	104(%rsp), %rbx
	movsbl	(%rax,%rdx), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%ecx, %eax
	movl	%eax, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, 24(%rsp)
	jne	.L978
	jmp	.L981
.L1028:
	movl	$1968792473, %edx
	jmp	.L933
.L1067:
	movl	$2109245776, %edx
	jmp	.L1009
.L1032:
	movl	$1751781058, %edx
	jmp	.L933
.L1031:
	movl	$36002698, %edx
	jmp	.L933
.L1030:
	movl	$583466347, %edx
	jmp	.L933
.L1029:
	movl	$1685737800, %edx
	jmp	.L933
.L1042:
	movl	$1751781058, %edx
	jmp	.L953
.L1041:
	movl	$36002698, %edx
	jmp	.L953
.L1040:
	movl	$583466347, %edx
	jmp	.L953
.L1039:
	movl	$1685737800, %edx
	jmp	.L953
.L1038:
	movl	$1968792473, %edx
	jmp	.L953
.L1161:
	movq	88(%rsp), %rsi
	movq	120(%rsp), %rdi
	xorl	%edx, %edx
	movabsq	$214141960514971647, %rcx
.L947:
	movq	104(%rsp), %rax
	movl	(%rsi,%rdx,4), %r10d
	movl	(%rax,%rdx,4), %r8d
	movq	%r8, %rax
	imulq	$104837121, %r8, %r8
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147473409, %r8d
	addl	%eax, %r8d
	movq	112(%rsp), %rax
	movl	%r8d, %r8d
	movl	(%rax,%rdx,4), %r9d
	imulq	%r8, %r9
	imulq	$2042615807, %r9, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %r9d
	leal	20478(%r10,%rax), %r10d
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	leal	(%r10,%rax), %r9d
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%r9d, %eax
	movl	%eax, (%rsi,%rdx,4)
	movq	72(%rsp), %rax
	movl	(%rdi,%rdx,4), %r9d
	movl	(%rax,%rdx,4), %eax
	imulq	%rax, %r8
	imulq	$2042615807, %r8, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %r8d
	leal	20478(%r9,%rax), %r9d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	leal	(%r9,%rax), %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%r8d, %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, 24(%rsp)
	jne	.L947
	jmp	.L951
.L1033:
	movl	$1525826314, %edx
	jmp	.L933
.L1021:
	movl	$1751781058, %edx
	jmp	.L912
.L1020:
	movl	$36002698, %edx
	jmp	.L912
.L1019:
	movl	$583466347, %edx
	jmp	.L912
.L1018:
	movl	$1685737800, %edx
	jmp	.L912
.L1017:
	movl	$1968792473, %edx
	jmp	.L912
.L1060:
	movq	24(%rsp), %rcx
	xorl	%eax, %eax
	jmp	.L987
.L1059:
	movq	112(%rsp), %rsi
	movq	2232(%rsp), %rdi
	xorl	%eax, %eax
.L986:
	movl	(%rdi,%rax,4), %ecx
	leal	-1073736705(%rcx), %edx
	shrl	$31, %edx
	subl	$1, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, (%rdi,%rax,4)
	movl	(%rsi,%rax,4), %ecx
	leal	-1073736705(%rcx), %edx
	shrl	$31, %edx
	subl	$1, %edx
	andl	$2147473409, %edx
	subl	%edx, %ecx
	movl	%ecx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, 24(%rsp)
	jne	.L986
	jmp	.L990
.L1058:
	movq	112(%rsp), %rsi
	xorl	%edx, %edx
	movq	2232(%rsp), %rdi
	movabsq	$214141960514971647, %rcx
.L982:
	movq	96(%rsp), %rax
	movl	(%rax,%rdx,4), %r8d
	movq	%r8, %rax
	imulq	$104837121, %r8, %r8
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147473409, %r8d
	leal	(%r8,%rax), %r9d
	movq	72(%rsp), %rax
	movl	(%rax,%rdx,4), %r8d
	imulq	%r9, %r8
	imulq	$2042615807, %r8, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r8, %rax
	movl	(%rdi,%rdx,4), %r8d
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %r8d
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%r8d, %eax
	movl	%eax, (%rdi,%rdx,4)
	movq	104(%rsp), %rax
	movl	(%rax,%rdx,4), %r8d
	imulq	%r9, %r8
	imulq	$2042615807, %r8, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r8, %rax
	movl	(%rsi,%rdx,4), %r8d
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %r8d
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%r8d, %eax
	movl	%eax, (%rsi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, 24(%rsp)
	jne	.L982
	jmp	.L985
.L1065:
	movl	$1751781058, %edx
	jmp	.L1009
.L1064:
	movl	$36002698, %edx
	jmp	.L1009
.L1063:
	movl	$583466347, %edx
	jmp	.L1009
.L1062:
	movl	$1685737800, %edx
	jmp	.L1009
.L1025:
	movq	376(%rsp), %rsi
	movq	2232(%rsp), %rdi
	xorl	%edx, %edx
.L920:
	movl	(%rdi,%rdx,4), %ecx
	leal	(%rcx,%rcx), %eax
	andl	$-2147483648, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdi,%rdx,4)
	movl	(%rsi,%rdx,4), %ecx
	leal	(%rcx,%rcx), %eax
	andl	$-2147483648, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %eax
	movl	%eax, (%rsi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, 368(%rsp)
	jne	.L920
	jmp	.L924
.L1022:
	movl	$1525826314, %edx
	jmp	.L912
.L1069:
	movl	$844192849, %edx
	jmp	.L1009
.L1068:
	movl	$1642906936, %edx
	jmp	.L1009
	.cfi_endproc
.LFE5568:
	.size	falcon_inner_keygen, .-falcon_inner_keygen
	.section	.rodata
	.align 32
	.type	BITLENGTH, @object
	.size	BITLENGTH, 88
BITLENGTH:
	.long	4
	.long	0
	.long	11
	.long	1
	.long	24
	.long	1
	.long	50
	.long	1
	.long	102
	.long	1
	.long	202
	.long	2
	.long	401
	.long	4
	.long	794
	.long	5
	.long	1577
	.long	8
	.long	3138
	.long	13
	.long	6308
	.long	25
	.align 32
	.type	MAX_BL_LARGE, @object
	.size	MAX_BL_LARGE, 80
MAX_BL_LARGE:
	.quad	2
	.quad	2
	.quad	5
	.quad	7
	.quad	12
	.quad	21
	.quad	40
	.quad	78
	.quad	157
	.quad	308
	.align 32
	.type	MAX_BL_SMALL, @object
	.size	MAX_BL_SMALL, 88
MAX_BL_SMALL:
	.quad	1
	.quad	1
	.quad	2
	.quad	2
	.quad	4
	.quad	7
	.quad	14
	.quad	27
	.quad	53
	.quad	106
	.quad	209
	.align 32
	.type	gauss_1024_12289, @object
	.size	gauss_1024_12289, 216
gauss_1024_12289:
	.quad	1283868770400643928
	.quad	6416574995475331444
	.quad	4078260278032692663
	.quad	2353523259288686585
	.quad	1227179971273316331
	.quad	575931623374121527
	.quad	242543240509105209
	.quad	91437049221049666
	.quad	30799446349977173
	.quad	9255276791179340
	.quad	2478152334826140
	.quad	590642893610164
	.quad	125206034929641
	.quad	23590435911403
	.quad	3948334035941
	.quad	586753615614
	.quad	77391054539
	.quad	9056793210
	.quad	940121950
	.quad	86539696
	.quad	7062824
	.quad	510971
	.quad	32764
	.quad	1862
	.quad	94
	.quad	4
	.quad	0
	.align 32
	.type	REV10, @object
	.size	REV10, 2048
REV10:
	.value	0
	.value	512
	.value	256
	.value	768
	.value	128
	.value	640
	.value	384
	.value	896
	.value	64
	.value	576
	.value	320
	.value	832
	.value	192
	.value	704
	.value	448
	.value	960
	.value	32
	.value	544
	.value	288
	.value	800
	.value	160
	.value	672
	.value	416
	.value	928
	.value	96
	.value	608
	.value	352
	.value	864
	.value	224
	.value	736
	.value	480
	.value	992
	.value	16
	.value	528
	.value	272
	.value	784
	.value	144
	.value	656
	.value	400
	.value	912
	.value	80
	.value	592
	.value	336
	.value	848
	.value	208
	.value	720
	.value	464
	.value	976
	.value	48
	.value	560
	.value	304
	.value	816
	.value	176
	.value	688
	.value	432
	.value	944
	.value	112
	.value	624
	.value	368
	.value	880
	.value	240
	.value	752
	.value	496
	.value	1008
	.value	8
	.value	520
	.value	264
	.value	776
	.value	136
	.value	648
	.value	392
	.value	904
	.value	72
	.value	584
	.value	328
	.value	840
	.value	200
	.value	712
	.value	456
	.value	968
	.value	40
	.value	552
	.value	296
	.value	808
	.value	168
	.value	680
	.value	424
	.value	936
	.value	104
	.value	616
	.value	360
	.value	872
	.value	232
	.value	744
	.value	488
	.value	1000
	.value	24
	.value	536
	.value	280
	.value	792
	.value	152
	.value	664
	.value	408
	.value	920
	.value	88
	.value	600
	.value	344
	.value	856
	.value	216
	.value	728
	.value	472
	.value	984
	.value	56
	.value	568
	.value	312
	.value	824
	.value	184
	.value	696
	.value	440
	.value	952
	.value	120
	.value	632
	.value	376
	.value	888
	.value	248
	.value	760
	.value	504
	.value	1016
	.value	4
	.value	516
	.value	260
	.value	772
	.value	132
	.value	644
	.value	388
	.value	900
	.value	68
	.value	580
	.value	324
	.value	836
	.value	196
	.value	708
	.value	452
	.value	964
	.value	36
	.value	548
	.value	292
	.value	804
	.value	164
	.value	676
	.value	420
	.value	932
	.value	100
	.value	612
	.value	356
	.value	868
	.value	228
	.value	740
	.value	484
	.value	996
	.value	20
	.value	532
	.value	276
	.value	788
	.value	148
	.value	660
	.value	404
	.value	916
	.value	84
	.value	596
	.value	340
	.value	852
	.value	212
	.value	724
	.value	468
	.value	980
	.value	52
	.value	564
	.value	308
	.value	820
	.value	180
	.value	692
	.value	436
	.value	948
	.value	116
	.value	628
	.value	372
	.value	884
	.value	244
	.value	756
	.value	500
	.value	1012
	.value	12
	.value	524
	.value	268
	.value	780
	.value	140
	.value	652
	.value	396
	.value	908
	.value	76
	.value	588
	.value	332
	.value	844
	.value	204
	.value	716
	.value	460
	.value	972
	.value	44
	.value	556
	.value	300
	.value	812
	.value	172
	.value	684
	.value	428
	.value	940
	.value	108
	.value	620
	.value	364
	.value	876
	.value	236
	.value	748
	.value	492
	.value	1004
	.value	28
	.value	540
	.value	284
	.value	796
	.value	156
	.value	668
	.value	412
	.value	924
	.value	92
	.value	604
	.value	348
	.value	860
	.value	220
	.value	732
	.value	476
	.value	988
	.value	60
	.value	572
	.value	316
	.value	828
	.value	188
	.value	700
	.value	444
	.value	956
	.value	124
	.value	636
	.value	380
	.value	892
	.value	252
	.value	764
	.value	508
	.value	1020
	.value	2
	.value	514
	.value	258
	.value	770
	.value	130
	.value	642
	.value	386
	.value	898
	.value	66
	.value	578
	.value	322
	.value	834
	.value	194
	.value	706
	.value	450
	.value	962
	.value	34
	.value	546
	.value	290
	.value	802
	.value	162
	.value	674
	.value	418
	.value	930
	.value	98
	.value	610
	.value	354
	.value	866
	.value	226
	.value	738
	.value	482
	.value	994
	.value	18
	.value	530
	.value	274
	.value	786
	.value	146
	.value	658
	.value	402
	.value	914
	.value	82
	.value	594
	.value	338
	.value	850
	.value	210
	.value	722
	.value	466
	.value	978
	.value	50
	.value	562
	.value	306
	.value	818
	.value	178
	.value	690
	.value	434
	.value	946
	.value	114
	.value	626
	.value	370
	.value	882
	.value	242
	.value	754
	.value	498
	.value	1010
	.value	10
	.value	522
	.value	266
	.value	778
	.value	138
	.value	650
	.value	394
	.value	906
	.value	74
	.value	586
	.value	330
	.value	842
	.value	202
	.value	714
	.value	458
	.value	970
	.value	42
	.value	554
	.value	298
	.value	810
	.value	170
	.value	682
	.value	426
	.value	938
	.value	106
	.value	618
	.value	362
	.value	874
	.value	234
	.value	746
	.value	490
	.value	1002
	.value	26
	.value	538
	.value	282
	.value	794
	.value	154
	.value	666
	.value	410
	.value	922
	.value	90
	.value	602
	.value	346
	.value	858
	.value	218
	.value	730
	.value	474
	.value	986
	.value	58
	.value	570
	.value	314
	.value	826
	.value	186
	.value	698
	.value	442
	.value	954
	.value	122
	.value	634
	.value	378
	.value	890
	.value	250
	.value	762
	.value	506
	.value	1018
	.value	6
	.value	518
	.value	262
	.value	774
	.value	134
	.value	646
	.value	390
	.value	902
	.value	70
	.value	582
	.value	326
	.value	838
	.value	198
	.value	710
	.value	454
	.value	966
	.value	38
	.value	550
	.value	294
	.value	806
	.value	166
	.value	678
	.value	422
	.value	934
	.value	102
	.value	614
	.value	358
	.value	870
	.value	230
	.value	742
	.value	486
	.value	998
	.value	22
	.value	534
	.value	278
	.value	790
	.value	150
	.value	662
	.value	406
	.value	918
	.value	86
	.value	598
	.value	342
	.value	854
	.value	214
	.value	726
	.value	470
	.value	982
	.value	54
	.value	566
	.value	310
	.value	822
	.value	182
	.value	694
	.value	438
	.value	950
	.value	118
	.value	630
	.value	374
	.value	886
	.value	246
	.value	758
	.value	502
	.value	1014
	.value	14
	.value	526
	.value	270
	.value	782
	.value	142
	.value	654
	.value	398
	.value	910
	.value	78
	.value	590
	.value	334
	.value	846
	.value	206
	.value	718
	.value	462
	.value	974
	.value	46
	.value	558
	.value	302
	.value	814
	.value	174
	.value	686
	.value	430
	.value	942
	.value	110
	.value	622
	.value	366
	.value	878
	.value	238
	.value	750
	.value	494
	.value	1006
	.value	30
	.value	542
	.value	286
	.value	798
	.value	158
	.value	670
	.value	414
	.value	926
	.value	94
	.value	606
	.value	350
	.value	862
	.value	222
	.value	734
	.value	478
	.value	990
	.value	62
	.value	574
	.value	318
	.value	830
	.value	190
	.value	702
	.value	446
	.value	958
	.value	126
	.value	638
	.value	382
	.value	894
	.value	254
	.value	766
	.value	510
	.value	1022
	.value	1
	.value	513
	.value	257
	.value	769
	.value	129
	.value	641
	.value	385
	.value	897
	.value	65
	.value	577
	.value	321
	.value	833
	.value	193
	.value	705
	.value	449
	.value	961
	.value	33
	.value	545
	.value	289
	.value	801
	.value	161
	.value	673
	.value	417
	.value	929
	.value	97
	.value	609
	.value	353
	.value	865
	.value	225
	.value	737
	.value	481
	.value	993
	.value	17
	.value	529
	.value	273
	.value	785
	.value	145
	.value	657
	.value	401
	.value	913
	.value	81
	.value	593
	.value	337
	.value	849
	.value	209
	.value	721
	.value	465
	.value	977
	.value	49
	.value	561
	.value	305
	.value	817
	.value	177
	.value	689
	.value	433
	.value	945
	.value	113
	.value	625
	.value	369
	.value	881
	.value	241
	.value	753
	.value	497
	.value	1009
	.value	9
	.value	521
	.value	265
	.value	777
	.value	137
	.value	649
	.value	393
	.value	905
	.value	73
	.value	585
	.value	329
	.value	841
	.value	201
	.value	713
	.value	457
	.value	969
	.value	41
	.value	553
	.value	297
	.value	809
	.value	169
	.value	681
	.value	425
	.value	937
	.value	105
	.value	617
	.value	361
	.value	873
	.value	233
	.value	745
	.value	489
	.value	1001
	.value	25
	.value	537
	.value	281
	.value	793
	.value	153
	.value	665
	.value	409
	.value	921
	.value	89
	.value	601
	.value	345
	.value	857
	.value	217
	.value	729
	.value	473
	.value	985
	.value	57
	.value	569
	.value	313
	.value	825
	.value	185
	.value	697
	.value	441
	.value	953
	.value	121
	.value	633
	.value	377
	.value	889
	.value	249
	.value	761
	.value	505
	.value	1017
	.value	5
	.value	517
	.value	261
	.value	773
	.value	133
	.value	645
	.value	389
	.value	901
	.value	69
	.value	581
	.value	325
	.value	837
	.value	197
	.value	709
	.value	453
	.value	965
	.value	37
	.value	549
	.value	293
	.value	805
	.value	165
	.value	677
	.value	421
	.value	933
	.value	101
	.value	613
	.value	357
	.value	869
	.value	229
	.value	741
	.value	485
	.value	997
	.value	21
	.value	533
	.value	277
	.value	789
	.value	149
	.value	661
	.value	405
	.value	917
	.value	85
	.value	597
	.value	341
	.value	853
	.value	213
	.value	725
	.value	469
	.value	981
	.value	53
	.value	565
	.value	309
	.value	821
	.value	181
	.value	693
	.value	437
	.value	949
	.value	117
	.value	629
	.value	373
	.value	885
	.value	245
	.value	757
	.value	501
	.value	1013
	.value	13
	.value	525
	.value	269
	.value	781
	.value	141
	.value	653
	.value	397
	.value	909
	.value	77
	.value	589
	.value	333
	.value	845
	.value	205
	.value	717
	.value	461
	.value	973
	.value	45
	.value	557
	.value	301
	.value	813
	.value	173
	.value	685
	.value	429
	.value	941
	.value	109
	.value	621
	.value	365
	.value	877
	.value	237
	.value	749
	.value	493
	.value	1005
	.value	29
	.value	541
	.value	285
	.value	797
	.value	157
	.value	669
	.value	413
	.value	925
	.value	93
	.value	605
	.value	349
	.value	861
	.value	221
	.value	733
	.value	477
	.value	989
	.value	61
	.value	573
	.value	317
	.value	829
	.value	189
	.value	701
	.value	445
	.value	957
	.value	125
	.value	637
	.value	381
	.value	893
	.value	253
	.value	765
	.value	509
	.value	1021
	.value	3
	.value	515
	.value	259
	.value	771
	.value	131
	.value	643
	.value	387
	.value	899
	.value	67
	.value	579
	.value	323
	.value	835
	.value	195
	.value	707
	.value	451
	.value	963
	.value	35
	.value	547
	.value	291
	.value	803
	.value	163
	.value	675
	.value	419
	.value	931
	.value	99
	.value	611
	.value	355
	.value	867
	.value	227
	.value	739
	.value	483
	.value	995
	.value	19
	.value	531
	.value	275
	.value	787
	.value	147
	.value	659
	.value	403
	.value	915
	.value	83
	.value	595
	.value	339
	.value	851
	.value	211
	.value	723
	.value	467
	.value	979
	.value	51
	.value	563
	.value	307
	.value	819
	.value	179
	.value	691
	.value	435
	.value	947
	.value	115
	.value	627
	.value	371
	.value	883
	.value	243
	.value	755
	.value	499
	.value	1011
	.value	11
	.value	523
	.value	267
	.value	779
	.value	139
	.value	651
	.value	395
	.value	907
	.value	75
	.value	587
	.value	331
	.value	843
	.value	203
	.value	715
	.value	459
	.value	971
	.value	43
	.value	555
	.value	299
	.value	811
	.value	171
	.value	683
	.value	427
	.value	939
	.value	107
	.value	619
	.value	363
	.value	875
	.value	235
	.value	747
	.value	491
	.value	1003
	.value	27
	.value	539
	.value	283
	.value	795
	.value	155
	.value	667
	.value	411
	.value	923
	.value	91
	.value	603
	.value	347
	.value	859
	.value	219
	.value	731
	.value	475
	.value	987
	.value	59
	.value	571
	.value	315
	.value	827
	.value	187
	.value	699
	.value	443
	.value	955
	.value	123
	.value	635
	.value	379
	.value	891
	.value	251
	.value	763
	.value	507
	.value	1019
	.value	7
	.value	519
	.value	263
	.value	775
	.value	135
	.value	647
	.value	391
	.value	903
	.value	71
	.value	583
	.value	327
	.value	839
	.value	199
	.value	711
	.value	455
	.value	967
	.value	39
	.value	551
	.value	295
	.value	807
	.value	167
	.value	679
	.value	423
	.value	935
	.value	103
	.value	615
	.value	359
	.value	871
	.value	231
	.value	743
	.value	487
	.value	999
	.value	23
	.value	535
	.value	279
	.value	791
	.value	151
	.value	663
	.value	407
	.value	919
	.value	87
	.value	599
	.value	343
	.value	855
	.value	215
	.value	727
	.value	471
	.value	983
	.value	55
	.value	567
	.value	311
	.value	823
	.value	183
	.value	695
	.value	439
	.value	951
	.value	119
	.value	631
	.value	375
	.value	887
	.value	247
	.value	759
	.value	503
	.value	1015
	.value	15
	.value	527
	.value	271
	.value	783
	.value	143
	.value	655
	.value	399
	.value	911
	.value	79
	.value	591
	.value	335
	.value	847
	.value	207
	.value	719
	.value	463
	.value	975
	.value	47
	.value	559
	.value	303
	.value	815
	.value	175
	.value	687
	.value	431
	.value	943
	.value	111
	.value	623
	.value	367
	.value	879
	.value	239
	.value	751
	.value	495
	.value	1007
	.value	31
	.value	543
	.value	287
	.value	799
	.value	159
	.value	671
	.value	415
	.value	927
	.value	95
	.value	607
	.value	351
	.value	863
	.value	223
	.value	735
	.value	479
	.value	991
	.value	63
	.value	575
	.value	319
	.value	831
	.value	191
	.value	703
	.value	447
	.value	959
	.value	127
	.value	639
	.value	383
	.value	895
	.value	255
	.value	767
	.value	511
	.value	1023
	.align 32
	.type	PRIMES, @object
	.size	PRIMES, 6264
PRIMES:
	.long	2147473409
	.long	383167813
	.long	10239
	.long	2147389441
	.long	211808905
	.long	471403745
	.long	2147387393
	.long	37672282
	.long	1329335065
	.long	2147377153
	.long	1977035326
	.long	968223422
	.long	2147358721
	.long	1067163706
	.long	132460015
	.long	2147352577
	.long	1606082042
	.long	598693809
	.long	2147346433
	.long	2033915641
	.long	1056257184
	.long	2147338241
	.long	1653770625
	.long	421286710
	.long	2147309569
	.long	631200819
	.long	1111201074
	.long	2147297281
	.long	2038364663
	.long	1042003613
	.long	2147295233
	.long	1962540515
	.long	19440033
	.long	2147239937
	.long	2100082663
	.long	353296760
	.long	2147235841
	.long	1991153006
	.long	1703918027
	.long	2147217409
	.long	516405114
	.long	1258919613
	.long	2147205121
	.long	409347988
	.long	1089726929
	.long	2147196929
	.long	927788991
	.long	1946238668
	.long	2147178497
	.long	1136922411
	.long	1347028164
	.long	2147100673
	.long	868626236
	.long	701164723
	.long	2147082241
	.long	1897279176
	.long	617820870
	.long	2147074049
	.long	1888819123
	.long	158382189
	.long	2147051521
	.long	25006327
	.long	522758543
	.long	2147043329
	.long	327546255
	.long	37227845
	.long	2147039233
	.long	766324424
	.long	1133356428
	.long	2146988033
	.long	1862817362
	.long	73861329
	.long	2146963457
	.long	404622040
	.long	653019435
	.long	2146959361
	.long	1936581214
	.long	995143093
	.long	2146938881
	.long	1559770096
	.long	634921513
	.long	2146908161
	.long	422623708
	.long	1985060172
	.long	2146885633
	.long	1751189170
	.long	298238186
	.long	2146871297
	.long	578919515
	.long	291810829
	.long	2146846721
	.long	1114060353
	.long	915902322
	.long	2146834433
	.long	2069565474
	.long	47859524
	.long	2146818049
	.long	1552824584
	.long	646281055
	.long	2146775041
	.long	1906267847
	.long	1597832891
	.long	2146756609
	.long	1847414714
	.long	1228090888
	.long	2146744321
	.long	1818792070
	.long	1176377637
	.long	2146738177
	.long	1118066398
	.long	1054971214
	.long	2146736129
	.long	52057278
	.long	933422153
	.long	2146713601
	.long	592259376
	.long	1406621510
	.long	2146695169
	.long	263161877
	.long	1514178701
	.long	2146656257
	.long	685363115
	.long	384505091
	.long	2146650113
	.long	927727032
	.long	537575289
	.long	2146646017
	.long	52575506
	.long	1799464037
	.long	2146643969
	.long	1276803876
	.long	1348954416
	.long	2146603009
	.long	814028633
	.long	1521547704
	.long	2146572289
	.long	1846678872
	.long	1310832121
	.long	2146547713
	.long	919368090
	.long	1019041349
	.long	2146508801
	.long	671847612
	.long	38582496
	.long	2146492417
	.long	283911680
	.long	532424562
	.long	2146490369
	.long	1780044827
	.long	896447978
	.long	2146459649
	.long	327980850
	.long	1327906900
	.long	2146447361
	.long	1310561493
	.long	958645253
	.long	2146441217
	.long	412148926
	.long	287271128
	.long	2146437121
	.long	293186449
	.long	2009822534
	.long	2146430977
	.long	179034356
	.long	1359155584
	.long	2146418689
	.long	1517345488
	.long	1790248672
	.long	2146406401
	.long	1615820390
	.long	1584833571
	.long	2146404353
	.long	826651445
	.long	607120498
	.long	2146379777
	.long	3816988
	.long	1897049071
	.long	2146363393
	.long	1221409784
	.long	1986921567
	.long	2146355201
	.long	1388081168
	.long	849968120
	.long	2146336769
	.long	1803473237
	.long	1655544036
	.long	2146312193
	.long	1023484977
	.long	273671831
	.long	2146293761
	.long	1074591448
	.long	467406983
	.long	2146283521
	.long	831604668
	.long	1523950494
	.long	2146203649
	.long	712865423
	.long	1170834574
	.long	2146154497
	.long	1764991362
	.long	1064856763
	.long	2146142209
	.long	627386213
	.long	1406840151
	.long	2146127873
	.long	1638674429
	.long	2088393537
	.long	2146099201
	.long	1516001018
	.long	690673370
	.long	2146093057
	.long	1294931393
	.long	315136610
	.long	2146091009
	.long	1942399533
	.long	973539425
	.long	2146078721
	.long	1843461814
	.long	2132275436
	.long	2146060289
	.long	1098740778
	.long	360423481
	.long	2146048001
	.long	1617213232
	.long	1951981294
	.long	2146041857
	.long	1805783169
	.long	2075683489
	.long	2146019329
	.long	272027909
	.long	1753219918
	.long	2145986561
	.long	1206530344
	.long	2034028118
	.long	2145976321
	.long	1243769360
	.long	1173377644
	.long	2145964033
	.long	887200839
	.long	1281344586
	.long	2145906689
	.long	1651026455
	.long	906178216
	.long	2145875969
	.long	1673238256
	.long	1043521212
	.long	2145871873
	.long	1226591210
	.long	1399796492
	.long	2145841153
	.long	1465353397
	.long	1324527802
	.long	2145832961
	.long	1150638905
	.long	554084759
	.long	2145816577
	.long	221601706
	.long	427340863
	.long	2145785857
	.long	608896761
	.long	316590738
	.long	2145755137
	.long	1712054942
	.long	1684294304
	.long	2145742849
	.long	1302302867
	.long	724873116
	.long	2145728513
	.long	516717693
	.long	431671476
	.long	2145699841
	.long	524575579
	.long	1619722537
	.long	2145691649
	.long	1925625239
	.long	982974435
	.long	2145687553
	.long	463795662
	.long	1293154300
	.long	2145673217
	.long	771716636
	.long	881778029
	.long	2145630209
	.long	1509556977
	.long	837364988
	.long	2145595393
	.long	229091856
	.long	851648427
	.long	2145587201
	.long	1796903241
	.long	635342424
	.long	2145525761
	.long	715310882
	.long	1677228081
	.long	2145495041
	.long	1040930522
	.long	200685896
	.long	2145466369
	.long	949804237
	.long	1809146322
	.long	2145445889
	.long	1673903706
	.long	95316881
	.long	2145390593
	.long	806941852
	.long	1428671135
	.long	2145372161
	.long	1402525292
	.long	159350694
	.long	2145361921
	.long	2124760298
	.long	1589134749
	.long	2145359873
	.long	1217503067
	.long	1561543010
	.long	2145355777
	.long	338341402
	.long	83865711
	.long	2145343489
	.long	1381532164
	.long	641430002
	.long	2145325057
	.long	1883895478
	.long	1528469895
	.long	2145318913
	.long	1335370424
	.long	65809740
	.long	2145312769
	.long	2000008042
	.long	1919775760
	.long	2145300481
	.long	961450962
	.long	1229540578
	.long	2145282049
	.long	910466767
	.long	1964062701
	.long	2145232897
	.long	816527501
	.long	450152063
	.long	2145218561
	.long	1435128058
	.long	1794509700
	.long	2145187841
	.long	33505311
	.long	1272467582
	.long	2145181697
	.long	269767433
	.long	1380363849
	.long	2145175553
	.long	56386299
	.long	1316870546
	.long	2145079297
	.long	2106880293
	.long	1391797340
	.long	2145021953
	.long	1347906152
	.long	720510798
	.long	2145015809
	.long	206769262
	.long	1651459955
	.long	2145003521
	.long	1885513236
	.long	1393381284
	.long	2144960513
	.long	1810381315
	.long	31937275
	.long	2144944129
	.long	1306487838
	.long	2019419520
	.long	2144935937
	.long	37304730
	.long	1841489054
	.long	2144894977
	.long	1601434616
	.long	157985831
	.long	2144888833
	.long	98749330
	.long	2128592228
	.long	2144880641
	.long	1772327002
	.long	2076128344
	.long	2144864257
	.long	1404514762
	.long	2029969964
	.long	2144827393
	.long	801236594
	.long	406627220
	.long	2144806913
	.long	349217443
	.long	1501080290
	.long	2144796673
	.long	1542656776
	.long	2084736519
	.long	2144778241
	.long	1210734884
	.long	1746416203
	.long	2144759809
	.long	1146598851
	.long	716464489
	.long	2144757761
	.long	286328400
	.long	1823728177
	.long	2144729089
	.long	1347555695
	.long	1836644881
	.long	2144727041
	.long	1795703790
	.long	520296412
	.long	2144696321
	.long	1302475157
	.long	852964281
	.long	2144667649
	.long	1075877614
	.long	504992927
	.long	2144573441
	.long	198765808
	.long	1617144982
	.long	2144555009
	.long	321528767
	.long	155821259
	.long	2144550913
	.long	814139516
	.long	1819937644
	.long	2144536577
	.long	571143206
	.long	962942255
	.long	2144524289
	.long	1746733766
	.long	2471321
	.long	2144512001
	.long	1821415077
	.long	124190939
	.long	2144468993
	.long	917871546
	.long	1260072806
	.long	2144458753
	.long	378417981
	.long	1569240563
	.long	2144421889
	.long	175229668
	.long	1825620763
	.long	2144409601
	.long	1699216963
	.long	351648117
	.long	2144370689
	.long	1071885991
	.long	958186029
	.long	2144348161
	.long	1763151227
	.long	540353574
	.long	2144335873
	.long	1060214804
	.long	919598847
	.long	2144329729
	.long	663515846
	.long	1448552668
	.long	2144327681
	.long	1057776305
	.long	590222840
	.long	2144309249
	.long	1705149168
	.long	1459294624
	.long	2144296961
	.long	325823721
	.long	1649016934
	.long	2144290817
	.long	738775789
	.long	447427206
	.long	2144243713
	.long	962347618
	.long	893050215
	.long	2144237569
	.long	1655257077
	.long	900860862
	.long	2144161793
	.long	242206694
	.long	1567868672
	.long	2144155649
	.long	769415308
	.long	1247993134
	.long	2144137217
	.long	320492023
	.long	515841070
	.long	2144120833
	.long	1639388522
	.long	770877302
	.long	2144071681
	.long	1761785233
	.long	964296120
	.long	2144065537
	.long	419817825
	.long	204564472
	.long	2144028673
	.long	666050597
	.long	2091019760
	.long	2144010241
	.long	1413657615
	.long	1518702610
	.long	2143952897
	.long	1238327946
	.long	475672271
	.long	2143940609
	.long	307063413
	.long	1176750846
	.long	2143918081
	.long	2062905559
	.long	786785803
	.long	2143899649
	.long	1338112849
	.long	1562292083
	.long	2143891457
	.long	68149545
	.long	87166451
	.long	2143885313
	.long	921750778
	.long	394460854
	.long	2143854593
	.long	719766593
	.long	133877196
	.long	2143836161
	.long	1149399850
	.long	1861591875
	.long	2143762433
	.long	1848739366
	.long	1335934145
	.long	2143756289
	.long	1326674710
	.long	102999236
	.long	2143713281
	.long	808061791
	.long	1156900308
	.long	2143690753
	.long	388399459
	.long	1926468019
	.long	2143670273
	.long	1427891374
	.long	1756689401
	.long	2143666177
	.long	1912173949
	.long	986629565
	.long	2143645697
	.long	2041160111
	.long	371842865
	.long	2143641601
	.long	1279906897
	.long	2023974350
	.long	2143635457
	.long	720473174
	.long	1389027526
	.long	2143621121
	.long	1298309455
	.long	1732632006
	.long	2143598593
	.long	1548762216
	.long	1825417506
	.long	2143567873
	.long	620475784
	.long	1073787233
	.long	2143561729
	.long	1932954575
	.long	949167309
	.long	2143553537
	.long	354315656
	.long	1652037534
	.long	2143541249
	.long	577424288
	.long	1097027618
	.long	2143531009
	.long	357862822
	.long	478640055
	.long	2143522817
	.long	2017706025
	.long	1550531668
	.long	2143506433
	.long	2078127419
	.long	1824320165
	.long	2143488001
	.long	613475285
	.long	1604011510
	.long	2143469569
	.long	1466594987
	.long	502095196
	.long	2143426561
	.long	1115430331
	.long	1044637111
	.long	2143383553
	.long	9778045
	.long	1902463734
	.long	2143377409
	.long	1557401276
	.long	2056861771
	.long	2143363073
	.long	652036455
	.long	1965915971
	.long	2143260673
	.long	1464581171
	.long	1523257541
	.long	2143246337
	.long	1876119649
	.long	764541916
	.long	2143209473
	.long	1614992673
	.long	1920672844
	.long	2143203329
	.long	981052047
	.long	2049774209
	.long	2143160321
	.long	1847355533
	.long	728535665
	.long	2143129601
	.long	965558457
	.long	603052992
	.long	2143123457
	.long	2140817191
	.long	8348679
	.long	2143100929
	.long	1547263683
	.long	694209023
	.long	2143092737
	.long	643459066
	.long	1979934533
	.long	2143082497
	.long	188603778
	.long	2026175670
	.long	2143062017
	.long	1657329695
	.long	377451099
	.long	2143051777
	.long	114967950
	.long	979255473
	.long	2143025153
	.long	1698431342
	.long	1449196896
	.long	2143006721
	.long	1862741675
	.long	1739650365
	.long	2142996481
	.long	756660457
	.long	996160050
	.long	2142976001
	.long	927864010
	.long	1166847574
	.long	2142965761
	.long	905070557
	.long	661974566
	.long	2142916609
	.long	40932754
	.long	1787161127
	.long	2142892033
	.long	1987985648
	.long	675335382
	.long	2142885889
	.long	797497211
	.long	1323096997
	.long	2142871553
	.long	2068025830
	.long	1411877159
	.long	2142861313
	.long	1217177090
	.long	1438410687
	.long	2142830593
	.long	409906375
	.long	1767860634
	.long	2142803969
	.long	1197788993
	.long	359782919
	.long	2142785537
	.long	643817365
	.long	513932862
	.long	2142779393
	.long	1717046338
	.long	218943121
	.long	2142724097
	.long	89336830
	.long	416687049
	.long	2142707713
	.long	5944581
	.long	1356813523
	.long	2142658561
	.long	887942135
	.long	2074011722
	.long	2142638081
	.long	151851972
	.long	1647339939
	.long	2142564353
	.long	1691505537
	.long	1483107336
	.long	2142533633
	.long	1989920200
	.long	1135938817
	.long	2142529537
	.long	959263126
	.long	1531961857
	.long	2142527489
	.long	453251129
	.long	1725566162
	.long	2142502913
	.long	1536028102
	.long	182053257
	.long	2142498817
	.long	570138730
	.long	701443447
	.long	2142416897
	.long	326965800
	.long	411931819
	.long	2142363649
	.long	1675665410
	.long	1517191733
	.long	2142351361
	.long	968529566
	.long	1575712703
	.long	2142330881
	.long	1384953238
	.long	1769087884
	.long	2142314497
	.long	1977173242
	.long	1833745524
	.long	2142289921
	.long	95082313
	.long	1714775493
	.long	2142283777
	.long	109377615
	.long	1070584533
	.long	2142277633
	.long	16960510
	.long	702157145
	.long	2142263297
	.long	553850819
	.long	431364395
	.long	2142208001
	.long	241466367
	.long	2053967982
	.long	2142164993
	.long	1795661326
	.long	1031836848
	.long	2142097409
	.long	1212530046
	.long	712772031
	.long	2142087169
	.long	1763869720
	.long	822276067
	.long	2142078977
	.long	644065713
	.long	1765268066
	.long	2142074881
	.long	112671944
	.long	643204925
	.long	2142044161
	.long	1387785471
	.long	1297890174
	.long	2142025729
	.long	783885537
	.long	1000425730
	.long	2142011393
	.long	905662232
	.long	1679401033
	.long	2141974529
	.long	799788433
	.long	468119557
	.long	2141943809
	.long	1932544124
	.long	449305555
	.long	2141933569
	.long	1527403256
	.long	841867925
	.long	2141931521
	.long	1247076451
	.long	743823916
	.long	2141902849
	.long	1199660531
	.long	401687910
	.long	2141890561
	.long	150132350
	.long	1720336972
	.long	2141857793
	.long	1287438162
	.long	663880489
	.long	2141833217
	.long	618017731
	.long	1819208266
	.long	2141820929
	.long	999578638
	.long	1403090096
	.long	2141786113
	.long	81834325
	.long	1523542501
	.long	2141771777
	.long	120001928
	.long	463556492
	.long	2141759489
	.long	122455485
	.long	2124928282
	.long	2141749249
	.long	141986041
	.long	940339153
	.long	2141685761
	.long	889088734
	.long	477141499
	.long	2141673473
	.long	324212681
	.long	1122558298
	.long	2141669377
	.long	1175806187
	.long	1373818177
	.long	2141655041
	.long	1113654822
	.long	296887082
	.long	2141587457
	.long	991103258
	.long	1585913875
	.long	2141583361
	.long	1401451409
	.long	1802457360
	.long	2141575169
	.long	1571977166
	.long	712760980
	.long	2141546497
	.long	1107849376
	.long	1250270109
	.long	2141515777
	.long	196544219
	.long	356001130
	.long	2141495297
	.long	1733571506
	.long	1060744866
	.long	2141483009
	.long	321552363
	.long	1168297026
	.long	2141458433
	.long	505818251
	.long	733225819
	.long	2141360129
	.long	1026840098
	.long	948342276
	.long	2141325313
	.long	945133744
	.long	2129965998
	.long	2141317121
	.long	1871100260
	.long	1843844634
	.long	2141286401
	.long	1790639498
	.long	1750465696
	.long	2141267969
	.long	1376858592
	.long	186160720
	.long	2141255681
	.long	2129698296
	.long	1876677959
	.long	2141243393
	.long	2138900688
	.long	1340009628
	.long	2141214721
	.long	1933049835
	.long	1087819477
	.long	2141212673
	.long	1898664939
	.long	1786328049
	.long	2141202433
	.long	990234828
	.long	940682169
	.long	2141175809
	.long	1406392421
	.long	993089586
	.long	2141165569
	.long	1263518371
	.long	289019479
	.long	2141073409
	.long	1485624211
	.long	507864514
	.long	2141052929
	.long	1885134788
	.long	311252465
	.long	2141040641
	.long	1285021247
	.long	280941862
	.long	2141028353
	.long	1527610374
	.long	375035110
	.long	2141011969
	.long	1400626168
	.long	164696620
	.long	2140999681
	.long	632959608
	.long	966175067
	.long	2140997633
	.long	2045628978
	.long	1290889438
	.long	2140993537
	.long	1412755491
	.long	375366253
	.long	2140942337
	.long	719477232
	.long	785367828
	.long	2140925953
	.long	45224252
	.long	836552317
	.long	2140917761
	.long	1157376588
	.long	1001839569
	.long	2140887041
	.long	278480752
	.long	2098732796
	.long	2140837889
	.long	1663139953
	.long	924094810
	.long	2140788737
	.long	802501511
	.long	2045368990
	.long	2140766209
	.long	1820083885
	.long	1800295504
	.long	2140764161
	.long	1169561905
	.long	2106792035
	.long	2140696577
	.long	127781498
	.long	1885987531
	.long	2140684289
	.long	16014477
	.long	1098116827
	.long	2140653569
	.long	665960598
	.long	1796728247
	.long	2140594177
	.long	1043085491
	.long	377310938
	.long	2140579841
	.long	1732838211
	.long	1504505945
	.long	2140569601
	.long	302071939
	.long	358291016
	.long	2140567553
	.long	192393733
	.long	1909137143
	.long	2140557313
	.long	406595731
	.long	1175330270
	.long	2140549121
	.long	1748850918
	.long	525007007
	.long	2140477441
	.long	499436566
	.long	1031159814
	.long	2140469249
	.long	1886004401
	.long	1029951320
	.long	2140426241
	.long	1483168100
	.long	1676273461
	.long	2140420097
	.long	1779917297
	.long	846024476
	.long	2140413953
	.long	522948893
	.long	1816354149
	.long	2140383233
	.long	1931364473
	.long	1296921241
	.long	2140366849
	.long	1917356555
	.long	147196204
	.long	2140354561
	.long	16466177
	.long	1349052107
	.long	2140348417
	.long	1875366972
	.long	1860485634
	.long	2140323841
	.long	456498717
	.long	1790256483
	.long	2140321793
	.long	1629493973
	.long	150031888
	.long	2140315649
	.long	1904063898
	.long	395510935
	.long	2140280833
	.long	1784104328
	.long	831417909
	.long	2140250113
	.long	256087139
	.long	697349101
	.long	2140229633
	.long	388553070
	.long	243875754
	.long	2140223489
	.long	747459608
	.long	1396270850
	.long	2140200961
	.long	507423743
	.long	1895572209
	.long	2140162049
	.long	580106016
	.long	2045297469
	.long	2140149761
	.long	712426444
	.long	785217995
	.long	2140137473
	.long	1441607584
	.long	536866543
	.long	2140119041
	.long	346538902
	.long	1740434653
	.long	2140090369
	.long	282642885
	.long	21051094
	.long	2140076033
	.long	1407456228
	.long	319910029
	.long	2140047361
	.long	1619330500
	.long	1488632070
	.long	2140041217
	.long	2089408064
	.long	2012026134
	.long	2140008449
	.long	1705524800
	.long	1613440760
	.long	2139924481
	.long	1846208233
	.long	1280649481
	.long	2139906049
	.long	989438755
	.long	1185646076
	.long	2139867137
	.long	1522314850
	.long	372783595
	.long	2139842561
	.long	1681587377
	.long	216848235
	.long	2139826177
	.long	2066284988
	.long	1784999464
	.long	2139824129
	.long	480888214
	.long	1513323027
	.long	2139789313
	.long	847937200
	.long	858192859
	.long	2139783169
	.long	1642000434
	.long	1583261448
	.long	2139770881
	.long	940699589
	.long	179702100
	.long	2139768833
	.long	315623242
	.long	964612676
	.long	2139666433
	.long	331649203
	.long	764666914
	.long	2139641857
	.long	2118730799
	.long	1313764644
	.long	2139635713
	.long	519149027
	.long	519212449
	.long	2139598849
	.long	1526413634
	.long	1769667104
	.long	2139574273
	.long	551148610
	.long	820739925
	.long	2139568129
	.long	1386800242
	.long	472447405
	.long	2139549697
	.long	813760130
	.long	1412328531
	.long	2139537409
	.long	1615286260
	.long	1609362979
	.long	2139475969
	.long	1352559299
	.long	1696720421
	.long	2139455489
	.long	1048691649
	.long	1584935400
	.long	2139432961
	.long	836025845
	.long	950121150
	.long	2139424769
	.long	1558281165
	.long	1635486858
	.long	2139406337
	.long	1728402143
	.long	1674423301
	.long	2139396097
	.long	1727715782
	.long	1483470544
	.long	2139383809
	.long	1092853491
	.long	1741699084
	.long	2139369473
	.long	690776899
	.long	1242798709
	.long	2139351041
	.long	1768782380
	.long	2120712049
	.long	2139334657
	.long	1739968247
	.long	1427249225
	.long	2139332609
	.long	1547189119
	.long	623011170
	.long	2139310081
	.long	1346827917
	.long	1605466350
	.long	2139303937
	.long	369317948
	.long	828392831
	.long	2139301889
	.long	1560417239
	.long	1788073219
	.long	2139283457
	.long	1303121623
	.long	595079358
	.long	2139248641
	.long	1354555286
	.long	573424177
	.long	2139240449
	.long	60974056
	.long	885781403
	.long	2139222017
	.long	355573421
	.long	1221054839
	.long	2139215873
	.long	566477826
	.long	1724006500
	.long	2139150337
	.long	871437673
	.long	1609133294
	.long	2139144193
	.long	1478130914
	.long	1137491905
	.long	2139117569
	.long	1854880922
	.long	964728507
	.long	2139076609
	.long	202405335
	.long	756508944
	.long	2139062273
	.long	1399715741
	.long	884826059
	.long	2139045889
	.long	1051045798
	.long	1202295476
	.long	2139033601
	.long	1707715206
	.long	632234634
	.long	2139006977
	.long	2035853139
	.long	231626690
	.long	2138951681
	.long	183867876
	.long	838350879
	.long	2138945537
	.long	1403254661
	.long	404460202
	.long	2138920961
	.long	310865011
	.long	1282911681
	.long	2138910721
	.long	1328496553
	.long	103472415
	.long	2138904577
	.long	78831681
	.long	993513549
	.long	2138902529
	.long	1319697451
	.long	1055904361
	.long	2138816513
	.long	384338872
	.long	1706202469
	.long	2138810369
	.long	1084868275
	.long	405677177
	.long	2138787841
	.long	401181788
	.long	1964773901
	.long	2138775553
	.long	1850532988
	.long	1247087473
	.long	2138767361
	.long	874261901
	.long	1576073565
	.long	2138757121
	.long	1187474742
	.long	993541415
	.long	2138748929
	.long	1782458888
	.long	1043206483
	.long	2138744833
	.long	1221500487
	.long	800141243
	.long	2138738689
	.long	413465368
	.long	1450660558
	.long	2138695681
	.long	739045140
	.long	342611472
	.long	2138658817
	.long	1355845756
	.long	672674190
	.long	2138644481
	.long	608379162
	.long	1538874380
	.long	2138632193
	.long	1444914034
	.long	686911254
	.long	2138607617
	.long	484707818
	.long	1435142134
	.long	2138591233
	.long	539460669
	.long	1290458549
	.long	2138572801
	.long	2093538990
	.long	2011138646
	.long	2138552321
	.long	1149786988
	.long	1076414907
	.long	2138546177
	.long	840688206
	.long	2108985273
	.long	2138533889
	.long	209669619
	.long	198172413
	.long	2138523649
	.long	1975879426
	.long	1277003968
	.long	2138490881
	.long	1351891144
	.long	1976858109
	.long	2138460161
	.long	1817321013
	.long	1979278293
	.long	2138429441
	.long	1950077177
	.long	203441928
	.long	2138400769
	.long	908970113
	.long	628395069
	.long	2138398721
	.long	219890864
	.long	758486760
	.long	2138376193
	.long	1306654379
	.long	977554090
	.long	2138351617
	.long	298822498
	.long	2004708503
	.long	2138337281
	.long	441457816
	.long	1049002108
	.long	2138320897
	.long	1517731724
	.long	1442269609
	.long	2138290177
	.long	1355911197
	.long	1647139103
	.long	2138234881
	.long	531313247
	.long	1746591962
	.long	2138214401
	.long	1899410930
	.long	781416444
	.long	2138202113
	.long	1813477173
	.long	1622508515
	.long	2138191873
	.long	1086458299
	.long	1025408615
	.long	2138183681
	.long	1998800427
	.long	827063290
	.long	2138173441
	.long	1921308898
	.long	749670117
	.long	2138103809
	.long	1620902804
	.long	2126787647
	.long	2138099713
	.long	828647069
	.long	1892961817
	.long	2138085377
	.long	179405355
	.long	1525506535
	.long	2138060801
	.long	615683235
	.long	1259580138
	.long	2138044417
	.long	2030277840
	.long	1731266562
	.long	2138042369
	.long	2087222316
	.long	1627902259
	.long	2138032129
	.long	126388712
	.long	1108640984
	.long	2138011649
	.long	715026550
	.long	1017980050
	.long	2137993217
	.long	1693714349
	.long	1351778704
	.long	2137888769
	.long	1289762259
	.long	1053090405
	.long	2137853953
	.long	199991890
	.long	1254192789
	.long	2137833473
	.long	941421685
	.long	896995556
	.long	2137817089
	.long	750416446
	.long	1251031181
	.long	2137792513
	.long	798075119
	.long	368077456
	.long	2137786369
	.long	878543495
	.long	1035375025
	.long	2137767937
	.long	9351178
	.long	1156563902
	.long	2137755649
	.long	1382297614
	.long	1686559583
	.long	2137724929
	.long	1345472850
	.long	1681096331
	.long	2137704449
	.long	834666929
	.long	630551727
	.long	2137673729
	.long	1646165729
	.long	1892091571
	.long	2137620481
	.long	778943821
	.long	48456461
	.long	2137618433
	.long	1730837875
	.long	1713336725
	.long	2137581569
	.long	805610339
	.long	1378891359
	.long	2137538561
	.long	204342388
	.long	1950165220
	.long	2137526273
	.long	1947629754
	.long	1500789441
	.long	2137516033
	.long	719902645
	.long	1499525372
	.long	2137491457
	.long	230451261
	.long	556382829
	.long	2137440257
	.long	979573541
	.long	412760291
	.long	2137374721
	.long	927841248
	.long	1954137185
	.long	2137362433
	.long	1243778559
	.long	861024672
	.long	2137313281
	.long	1341338501
	.long	980638386
	.long	2137311233
	.long	937415182
	.long	1793212117
	.long	2137255937
	.long	795331324
	.long	1410253405
	.long	2137243649
	.long	150756339
	.long	1966999887
	.long	2137182209
	.long	163346914
	.long	1939301431
	.long	2137171969
	.long	1952552395
	.long	758913141
	.long	2137159681
	.long	570788721
	.long	218668666
	.long	2137147393
	.long	1896656810
	.long	2045670345
	.long	2137141249
	.long	358493842
	.long	518199643
	.long	2137139201
	.long	1505023029
	.long	674695848
	.long	2137133057
	.long	27911103
	.long	830956306
	.long	2137122817
	.long	439771337
	.long	1555268614
	.long	2137116673
	.long	790988579
	.long	1871449599
	.long	2137110529
	.long	432109234
	.long	811805080
	.long	2137102337
	.long	1357900653
	.long	1184997641
	.long	2137098241
	.long	515119035
	.long	1715693095
	.long	2137090049
	.long	408575203
	.long	2085660657
	.long	2137085953
	.long	2097793407
	.long	1349626963
	.long	2137055233
	.long	1556739954
	.long	1449960883
	.long	2137030657
	.long	1545758650
	.long	1369303716
	.long	2136987649
	.long	332602570
	.long	103875114
	.long	2136969217
	.long	1499989506
	.long	1662964115
	.long	2136924161
	.long	857040753
	.long	4738842
	.long	2136895489
	.long	1948872712
	.long	570436091
	.long	2136893441
	.long	58969960
	.long	1568349634
	.long	2136887297
	.long	2127193379
	.long	273612548
	.long	2136850433
	.long	111208983
	.long	1181257116
	.long	2136809473
	.long	1627275942
	.long	1680317971
	.long	2136764417
	.long	1574888217
	.long	14011331
	.long	2136741889
	.long	14011055
	.long	1129154251
	.long	2136727553
	.long	35862563
	.long	1838555253
	.long	2136721409
	.long	310235666
	.long	1363928244
	.long	2136698881
	.long	1612429202
	.long	1560383828
	.long	2136649729
	.long	1138540131
	.long	800014364
	.long	2136606721
	.long	602323503
	.long	1433096652
	.long	2136563713
	.long	182209265
	.long	1919611038
	.long	2136555521
	.long	324156477
	.long	165591039
	.long	2136549377
	.long	195513113
	.long	217165345
	.long	2136526849
	.long	1050768046
	.long	939647887
	.long	2136508417
	.long	1886286237
	.long	1619926572
	.long	2136477697
	.long	609647664
	.long	35065157
	.long	2136471553
	.long	679352216
	.long	1452259468
	.long	2136457217
	.long	128630031
	.long	824816521
	.long	2136422401
	.long	19787464
	.long	1526049830
	.long	2136420353
	.long	698316836
	.long	1530623527
	.long	2136371201
	.long	1651862373
	.long	1804812805
	.long	2136334337
	.long	326596005
	.long	336977082
	.long	2136322049
	.long	63253370
	.long	1904972151
	.long	2136297473
	.long	312176076
	.long	172182411
	.long	2136248321
	.long	381261841
	.long	369032670
	.long	2136242177
	.long	358688773
	.long	1640007994
	.long	2136229889
	.long	512677188
	.long	75585225
	.long	2136219649
	.long	2095003250
	.long	1970086149
	.long	2136207361
	.long	1909650722
	.long	537760675
	.long	2136176641
	.long	1334616195
	.long	1533487619
	.long	2136158209
	.long	2096285632
	.long	1793285210
	.long	2136143873
	.long	1897347517
	.long	293843959
	.long	2136133633
	.long	923586222
	.long	1022655978
	.long	2136096769
	.long	1464868191
	.long	1515074410
	.long	2136094721
	.long	2020679520
	.long	2061636104
	.long	2136076289
	.long	290798503
	.long	1814726809
	.long	2136041473
	.long	156415894
	.long	1250757633
	.long	2135996417
	.long	297459940
	.long	1132158924
	.long	2135955457
	.long	538755304
	.long	1688831340
	.long	0
	.long	0
	.long	0
	.align 8
	.type	fpr_q, @object
	.size	fpr_q, 8
fpr_q:
	.long	0
	.long	1086849152
	.set	.LC1,.LC13
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1137704960
	.align 8
.LC3:
	.long	0
	.long	1170210816
	.align 8
.LC4:
	.long	0
	.long	1202716672
	.align 8
.LC5:
	.long	0
	.long	1235222528
	.align 8
.LC6:
	.long	0
	.long	1267728384
	.align 8
.LC7:
	.long	0
	.long	1300234240
	.align 8
.LC8:
	.long	0
	.long	1332740096
	.align 8
.LC9:
	.long	0
	.long	1365245952
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC11:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 16
.LC12:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC13:
	.long	0
	.long	1105199104
	.long	0
	.long	1105199104
	.section	.rodata.cst8
	.align 8
.LC14:
	.long	0
	.long	1138753536
	.align 8
.LC15:
	.long	0
	.long	-1008730112
	.align 8
.LC16:
	.long	0
	.long	1127219200
	.align 8
.LC17:
	.long	0
	.long	1072693248
	.section	.rodata.cst16
	.align 16
.LC18:
	.long	2147473409
	.long	2147473409
	.long	2147473409
	.long	2147473409
	.section	.rodata.cst8
	.align 8
.LC19:
	.long	0
	.long	1073741824
	.align 8
.LC20:
	.long	0
	.long	1071644672
	.align 8
.LC21:
	.long	-4194304
	.long	-1042284545
	.align 8
.LC22:
	.long	-4194304
	.long	1105199103
	.align 8
.LC23:
	.long	1608035756
	.long	1087401370
	.section	.rodata.cst16
	.align 16
.LC24:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.set	.LC25,.LC24
	.set	.LC26,.LC18
	.align 16
.LC27:
	.quad	214141960514971647
	.quad	214141960514971647
	.align 16
.LC28:
	.long	104837121
	.long	104837121
	.long	104837121
	.long	104837121
	.align 16
.LC29:
	.long	-2147473409
	.long	-2147473409
	.long	-2147473409
	.long	-2147473409
	.align 16
.LC30:
	.long	-1073736705
	.long	-1073736705
	.long	-1073736705
	.long	-1073736705
	.set	.LC31,.LC30
	.section	.rodata.cst8
	.align 8
.LC32:
	.long	-1
	.long	-1
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
