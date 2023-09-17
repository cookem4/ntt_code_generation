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
	movl	%eax, %edi
	movl	%ebp, %eax
	imulq	%rdi, %rax
	movq	%rdi, (%rsp)
	movq	%r13, %rdi
	imulq	%rax, %rdi
	andl	$2147483647, %edi
	imulq	%r14, %rdi
	addq	%rax, %rdi
	shrq	$31, %rdi
	subl	%r8d, %edi
	movl	%edi, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %edi
	cmpl	$9, %ebx
	ja	.L4
	movl	%ebx, %edx
	movl	%edi, %ecx
	.p2align 4,,10
	.p2align 3
.L5:
	imulq	%rcx, %rcx
	addl	$1, %edx
	movq	%rcx, %rax
	imulq	%r13, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%r8d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%eax, %ecx
	cmpl	$10, %edx
	jne	.L5
	movl	%ecx, %edi
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
	movl	%r15d, %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	imulq	%rdx, %rax
	negl	%r9d
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
	imulq	%rdi, %rsi
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
	andl	%r9d, %edx
	xorl	%eax, %edx
	subl	$1, %ecx
	jnb	.L6
	movl	%edx, %esi
	movq	%r13, %rax
	movl	$10, %ecx
	imulq	%rsi, %rax
	subl	%ebx, %ecx
	leaq	REV10(%rip), %r9
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
.L12:
	movq	%rdx, %rbx
	salq	%cl, %rbx
	movzwl	(%r9,%rbx,2), %ebx
.L8:
	movl	%ebp, (%r10,%rbx,4)
	imulq	%rdi, %rbp
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
	jne	.L12
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
	.type	modp_poly_rec_res, @function
modp_poly_rec_res:
.LFB5534:
	.cfi_startproc
	movl	%ecx, %r11d
	movl	$1, %r10d
	leal	-1(%rsi), %ecx
	movq	%rdi, %r9
	salq	%cl, %r10
	movl	%edx, %edi
	movl	%edx, %esi
	movl	%r8d, %r8d
	movl	%r11d, %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L14:
	movl	4(%r9,%rdx,8), %eax
	movl	(%r9,%rdx,8), %r11d
	imulq	%rax, %r11
	movq	%r11, %rax
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%edi, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%edi, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r8, %r11
	movq	%r11, %rax
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%edi, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%edi, %r11d
	addl	%r11d, %eax
	movl	%eax, (%r9,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.L14
	ret
	.cfi_endproc
.LFE5534:
	.size	modp_poly_rec_res, .-modp_poly_rec_res
	.p2align 4
	.type	zint_mod_small_unsigned, @function
zint_mod_small_unsigned:
.LFB5537:
	.cfi_startproc
	movq	%rdi, %r9
	leaq	-1(%rsi), %r10
	movl	%edx, %edi
	testq	%rsi, %rsi
	je	.L19
	movl	%r8d, %esi
	movl	%ecx, %ecx
	movl	%edx, %r8d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L18:
	imulq	%rsi, %rax
	movl	(%r9,%r10,4), %r11d
	subl	%edi, %r11d
	movq	%rax, %rdx
	imulq	%rcx, %rdx
	andl	$2147483647, %edx
	imulq	%r8, %rdx
	addq	%rax, %rdx
	shrq	$31, %rdx
	subl	%edi, %edx
	movl	%edx, %eax
	subl	%edi, %edx
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%edx, %eax
	addl	%r11d, %eax
	sarl	$31, %r11d
	andl	%edi, %r11d
	addl	%r11d, %eax
	cltd
	andl	%edi, %edx
	addl	%edx, %eax
	subq	$1, %r10
	jnb	.L18
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE5537:
	.size	zint_mod_small_unsigned, .-zint_mod_small_unsigned
	.p2align 4
	.type	zint_finish_mod, @function
zint_finish_mod:
.LFB5544:
	.cfi_startproc
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.L21
	.p2align 4,,10
	.p2align 3
.L22:
	movl	(%rdi,%rdx,4), %eax
	movq	%rdx, %r8
	subl	%r10d, %eax
	subl	(%r9,%rdx,4), %eax
	leaq	1(%rdx), %rdx
	shrl	$31, %eax
	movl	%eax, %r10d
	cmpq	%rdx, %rsi
	jne	.L22
	movl	$1, %esi
	movl	%ecx, %r11d
	xorl	%edx, %edx
	subl	%eax, %esi
	negl	%r11d
	orl	%ecx, %esi
	shrl	%r11d
	negl	%esi
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%rdi,%rdx,4), %eax
	subl	%ecx, %eax
	movl	(%r9,%rdx,4), %ecx
	xorl	%r11d, %ecx
	andl	%esi, %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$31, %eax
	andl	$2147483647, %ecx
	movl	%ecx, (%rdi,%rdx,4)
	movl	%eax, %ecx
	movq	%rdx, %rax
	addq	$1, %rdx
	cmpq	%rax, %r8
	jne	.L24
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	ret
	.cfi_endproc
.LFE5544:
	.size	zint_finish_mod, .-zint_finish_mod
	.p2align 4
	.type	zint_co_reduce_mod, @function
zint_co_reduce_mod:
.LFB5545:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	movl	%r8d, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movl	(%rdi), %edi
	movl	(%rsi), %eax
	movq	72(%rsp), %r11
	movq	80(%rsp), %rbx
	movl	%edi, %edx
	movl	%eax, %esi
	movq	88(%rsp), %r14
	imull	%r11d, %esi
	imull	%r9d, %edx
	addl	%esi, %edx
	movl	%eax, %esi
	imull	%r8d, %edx
	movl	%edi, %r8d
	imull	%ebx, %r8d
	imull	%r14d, %esi
	andl	$2147483647, %edx
	addl	%esi, %r8d
	imull	%ecx, %r8d
	andl	$2147483647, %r8d
	testq	%r12, %r12
	je	.L36
	movl	%edx, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rsi, (%rsp)
	movl	%r8d, %esi
	movq	%rsi, 8(%rsp)
	xorl	%esi, %esi
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L34:
	movl	(%r10,%rsi,4), %edi
	movl	0(%rbp,%rsi,4), %eax
.L35:
	movq	%rax, %r15
	movl	0(%r13,%rsi,4), %r8d
	imulq	%r14, %rax
	imulq	%r11, %r15
	addq	%rdx, %rax
	addq	%r15, %rcx
	movq	%rdi, %r15
	imulq	%r9, %r15
	imulq	%rbx, %rdi
	addq	%rcx, %r15
	movq	(%rsp), %rcx
	addq	%rdi, %rax
	imulq	%r8, %rcx
	imulq	8(%rsp), %r8
	addq	%r15, %rcx
	addq	%r8, %rax
	testq	%rsi, %rsi
	je	.L33
	movl	%ecx, %edx
	andl	$2147483647, %edx
	movl	%edx, -4(%r10,%rsi,4)
	movl	%eax, %edx
	andl	$2147483647, %edx
	movl	%edx, -4(%rbp,%rsi,4)
.L33:
	sarq	$31, %rax
	addq	$1, %rsi
	sarq	$31, %rcx
	movq	%rax, %rdx
	cmpq	%rsi, %r12
	jne	.L34
	shrq	$63, %rdx
	movl	%ecx, %edi
	movl	%eax, %esi
	shrq	$63, %rcx
	movq	%rdx, %r14
.L32:
	leaq	0(,%r12,4), %rax
	movq	%r13, %rdx
	movl	%edi, -4(%r10,%rax)
	movq	%r10, %rdi
	movl	%esi, -4(%rbp,%rax)
	movq	%r12, %rsi
	call	zint_finish_mod
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r14d, %ecx
	movq	%r13, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%r12, %rsi
	movq	%rbp, %rdi
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
	jmp	zint_finish_mod
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.L32
	.cfi_endproc
.LFE5545:
	.size	zint_co_reduce_mod, .-zint_co_reduce_mod
	.p2align 4
	.type	poly_big_to_fp, @function
poly_big_to_fp:
.LFB5550:
	.cfi_startproc
	movq	%rcx, %r11
	movq	%rdi, %r9
	movl	%r8d, %ecx
	testq	%rdx, %rdx
	je	.L49
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r10
	salq	$2, %r11
	pxor	%xmm5, %xmm5
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$8, %ebp
	movsd	.LC1(%rip), %xmm4
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	salq	%cl, %rbp
	leaq	0(,%rdx,4), %rbx
	movsd	.LC2(%rip), %xmm3
	leaq	(%rsi,%rbx), %rdi
	addq	%r9, %rbp
	.p2align 4,,10
	.p2align 3
.L44:
	movl	-4(%r10,%rbx), %esi
	movq	%r10, %rdx
	movapd	%xmm5, %xmm2
	movapd	%xmm4, %xmm1
	shrl	$30, %esi
	negl	%esi
	movl	%esi, %r8d
	movl	%esi, %ecx
	shrl	%r8d
	andl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L43:
	movl	(%rdx), %eax
	pxor	%xmm0, %xmm0
	addq	$4, %rdx
	xorl	%r8d, %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	%eax, %r12d
	addl	%eax, %eax
	andl	$2147483647, %r12d
	andl	%esi, %eax
	shrl	$31, %ecx
	subl	%eax, %r12d
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm2
	cmpq	%rdi, %rdx
	jne	.L43
	movsd	%xmm2, (%r9)
	addq	$8, %r9
	addq	%r11, %r10
	leaq	(%rdx,%r11), %rdi
	cmpq	%r9, %rbp
	jne	.L44
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L49:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
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
	leaq	0(,%rdx,4), %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$31, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	%rcx, (%rsp)
	movl	88(%rsp), %ecx
	movq	%rax, -80(%rsp)
	leaq	0(,%r8,4), %rax
	movl	80(%rsp), %r14d
	salq	%cl, %rbx
	movq	%rax, -72(%rsp)
	leaq	0(,%r9,4), %rax
	movq	%rax, -96(%rsp)
	leaq	-1(%rbx), %rax
	subl	%r14d, %r12d
	movq	%rax, -88(%rsp)
	movl	$2, %eax
	salq	%cl, %rax
	movq	%rdi, -40(%rsp)
	movq	%rax, -16(%rsp)
	movq	$-4, %rax
	salq	%cl, %rax
	addq	64(%rsp), %rax
	movq	%rbx, -24(%rsp)
	movq	%rax, -8(%rsp)
	movl	72(%rsp), %eax
	movq	%rdi, -32(%rsp)
	leaq	0(,%rax,4), %rcx
	movq	%rax, -64(%rsp)
	movq	%rcx, -48(%rsp)
	movq	%rbx, -112(%rsp)
	movq	%rsi, -56(%rsp)
	subq	%rax, %rsi
	movq	%rsi, %r15
	.p2align 4,,10
	.p2align 3
.L59:
	movq	-112(%rsp), %rax
	movq	-8(%rsp), %rbx
	movq	(%rsp), %rbp
	movq	%rax, %r13
	movl	(%rbx,%rax,4), %eax
	subq	-24(%rsp), %r13
	negl	%eax
	movl	%eax, -100(%rsp)
	movq	-32(%rsp), %rax
	movq	%rax, -120(%rsp)
	.p2align 4,,10
	.p2align 3
.L58:
	testq	%r8, %r8
	je	.L54
	movq	-72(%rsp), %rax
	movq	-64(%rsp), %rbx
	movl	-4(%rbp,%rax), %eax
	movl	%eax, %r11d
	movl	%eax, -104(%rsp)
	shrl	$30, %r11d
	negl	%r11d
	shrl	%r11d
	cmpq	%rbx, -56(%rsp)
	jbe	.L54
	xorl	%edx, %edx
	movslq	-100(%rsp), %rbx
	movq	-120(%rsp), %r10
	xorl	%esi, %esi
	addq	-48(%rsp), %r10
	xorl	%r9d, %r9d
	movslq	%edx, %rdi
	.p2align 4,,10
	.p2align 3
.L56:
	movl	%r11d, %edx
	cmpq	%rsi, %r8
	jbe	.L55
	movl	0(%rbp,%rsi,4), %edx
.L55:
	movl	%edx, %eax
	movl	%r14d, %ecx
	sall	%cl, %eax
	movl	%r12d, %ecx
	andl	$2147483647, %eax
	shrl	%cl, %edx
	orl	%r9d, %eax
	movl	%edx, %r9d
	movl	(%r10,%rsi,4), %edx
	imulq	%rbx, %rax
	addq	%rdx, %rax
	leaq	(%rax,%rdi), %rdx
	movl	%edx, %eax
	shrq	$31, %rdx
	andl	$2147483647, %eax
	movslq	%edx, %rdi
	movl	%eax, (%r10,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %r15
	jne	.L56
.L54:
	cmpq	-88(%rsp), %r13
	je	.L66
	movq	-80(%rsp), %rbx
	addq	%rbx, -120(%rsp)
.L57:
	addq	-96(%rsp), %rbp
	addq	$1, %r13
	cmpq	%r13, -112(%rsp)
	jne	.L58
	addq	$1, -112(%rsp)
	movq	-80(%rsp), %rcx
	movq	-112(%rsp), %rax
	addq	%rcx, -32(%rsp)
	cmpq	%rax, -16(%rsp)
	jne	.L59
	addq	$8, %rsp
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
.L66:
	.cfi_restore_state
	movq	-40(%rsp), %rax
	negl	-100(%rsp)
	movq	%rax, -120(%rsp)
	jmp	.L57
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1, %r14d
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, 32(%rsp)
	leaq	48(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	movl	$1, %eax
	movq	%rsi, 8(%rsp)
	movl	$0, 20(%rsp)
	salq	%cl, %rax
	movl	$10, %ecx
	leaq	-1(%rax), %rbx
	addq	%rsi, %rax
	subl	%edx, %ecx
	movq	%rbx, 24(%rsp)
	sall	%cl, %r14d
	movq	%rax, 40(%rsp)
	movl	%r14d, 16(%rsp)
	leaq	gauss_1024_12289(%rip), %r14
.L78:
	movl	$0, 4(%rsp)
	xorl	%r15d, %r15d
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L69:
	movl	%ebx, %eax
	addl	$1, %r15d
	negl	%eax
	xorl	%edi, %eax
	addl	%ebx, %eax
	addl	%eax, 4(%rsp)
	cmpl	%r15d, 16(%rsp)
	jbe	.L80
.L71:
	movl	$8, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	falcon_inner_i_shake256_extract@PLT
	movq	48(%rsp), %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movabsq	$-1283868770400643928, %rax
	movl	$8, %edx
	movq	%rcx, %rbx
	andq	%r12, %rcx
	addq	%rax, %rcx
	shrq	$63, %rbx
	shrq	$63, %rcx
	movl	%ecx, (%rsp)
	call	falcon_inner_i_shake256_extract@PLT
	movq	48(%rsp), %r10
	movl	(%rsp), %ecx
	xorl	%edi, %edi
	movabsq	$6416574995475331444, %rax
	movl	$1, %esi
	andq	%r12, %r10
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%r10, %rdx
	subq	%rax, %rdx
	movl	%ecx, %eax
	shrq	$63, %rdx
	xorl	$1, %eax
	xorl	$1, %edx
	andl	%edx, %eax
	negl	%eax
	andl	%esi, %eax
	addq	$1, %rsi
	orl	%eax, %edi
	cmpq	$27, %rsi
	je	.L69
	movq	(%r14,%rsi,8), %rax
	orl	%edx, %ecx
	jmp	.L70
.L80:
	movl	4(%rsp), %ebx
	leal	127(%rbx), %eax
	cmpl	$254, %eax
	ja	.L78
	movl	%ebx, %eax
	movq	8(%rsp), %rdx
	subq	32(%rsp), %rdx
	andl	$1, %eax
	cmpq	24(%rsp), %rdx
	jne	.L73
	cmpl	%eax, 20(%rsp)
	je	.L78
.L74:
	movq	8(%rsp), %rax
	movzbl	4(%rsp), %ebx
	addq	$1, %rax
	movb	%bl, -1(%rax)
	movq	%rax, 8(%rsp)
	cmpq	%rax, 40(%rsp)
	jne	.L78
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L81
	addq	$72, %rsp
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
.L73:
	.cfi_restore_state
	xorl	%eax, 20(%rsp)
	jmp	.L74
.L81:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5567:
	.size	poly_small_mkgauss, .-poly_small_mkgauss
	.p2align 4
	.type	modp_NTT2_ext.part.0, @function
modp_NTT2_ext.part.0:
.LFB5569:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	movq	%rsi, %r11
	movl	%r9d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	salq	%cl, %rax
	movl	%r8d, %r14d
	salq	$2, %r11
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r14, %rsi
	movq	%rax, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, -16(%rsp)
	movq	%rdx, -8(%rsp)
	movq	%rax, -24(%rsp)
	movq	$1, -32(%rsp)
	.p2align 4,,10
	.p2align 3
.L88:
	movq	%r13, %rax
	shrq	%r13
	movq	-32(%rsp), %rdi
	movq	-16(%rsp), %rbp
	movq	%r13, %rbx
	imulq	%r11, %rax
	imulq	%r11, %rbx
	movq	%rax, -40(%rsp)
	movq	%rbx, -56(%rsp)
	movq	-8(%rsp), %rbx
	leaq	(%rbx,%rdi,8), %rax
	leaq	(%rbx,%rdi,4), %r12
	movq	%rax, -48(%rsp)
	.p2align 4,,10
	.p2align 3
.L84:
	movq	-56(%rsp), %rax
	movl	(%r12), %ebx
	movq	%rbp, %r8
	xorl	%r10d, %r10d
	leaq	(%rax,%rbp), %rdi
	testq	%r13, %r13
	je	.L87
	.p2align 4,,10
	.p2align 3
.L86:
	movl	(%rdi), %ecx
	movl	(%r8), %edx
	addq	$1, %r10
	imulq	%rbx, %rcx
	movq	%rcx, %rax
	imulq	%r15, %rax
	andl	$2147483647, %eax
	imulq	%r14, %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%esi, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%esi, %ecx
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%esi, %ecx
	subl	%eax, %edx
	addl	%eax, %ecx
	movl	%edx, %eax
	movl	%ecx, %r9d
	sarl	$31, %eax
	sarl	$31, %r9d
	andl	%esi, %eax
	andl	%esi, %r9d
	addl	%eax, %edx
	addl	%r9d, %ecx
	movl	%ecx, (%r8)
	addq	%r11, %r8
	movl	%edx, (%rdi)
	addq	%r11, %rdi
	cmpq	%r10, %r13
	jne	.L86
.L87:
	addq	$4, %r12
	addq	-40(%rsp), %rbp
	cmpq	%r12, -48(%rsp)
	jne	.L84
	salq	-32(%rsp)
	movq	-32(%rsp), %rax
	cmpq	%rax, -24(%rsp)
	ja	.L88
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
.LFE5569:
	.size	modp_NTT2_ext.part.0, .-modp_NTT2_ext.part.0
	.p2align 4
	.type	modp_iNTT2_ext.part.0, @function
modp_iNTT2_ext.part.0:
.LFB5570:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	movl	%r8d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	salq	%cl, %rax
	movl	%r9d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	movq	%r15, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	salq	$2, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, -32(%rsp)
	movq	%rdx, -24(%rsp)
	movl	%ecx, -4(%rsp)
	movq	%rax, -16(%rsp)
	movq	%rax, -48(%rsp)
	movq	$1, -40(%rsp)
	.p2align 4,,10
	.p2align 3
.L102:
	movq	-40(%rsp), %rax
	movq	%r13, %rcx
	movq	-24(%rsp), %rdi
	shrq	-48(%rsp)
	movq	-48(%rsp), %rbx
	movq	-32(%rsp), %rbp
	movq	%rax, %r11
	addq	%rax, %rax
	movq	%rax, -40(%rsp)
	imulq	%r13, %rax
	leaq	(%rdi,%rbx,4), %r12
	imulq	%r11, %rcx
	movq	%rax, -56(%rsp)
	leaq	(%rdi,%rbx,8), %rax
	movq	%rcx, -72(%rsp)
	movq	%rax, -64(%rsp)
	.p2align 4,,10
	.p2align 3
.L98:
	movq	-72(%rsp), %rax
	movl	(%r12), %ebx
	movq	%rbp, %rdi
	xorl	%r9d, %r9d
	leaq	(%rax,%rbp), %rcx
	testq	%r11, %r11
	je	.L101
	.p2align 4,,10
	.p2align 3
.L100:
	movl	(%rdi), %r10d
	movl	(%rcx), %r8d
	addq	$1, %r9
	leal	(%r10,%r8), %eax
	subl	%esi, %eax
	cltd
	andl	%esi, %edx
	addl	%eax, %edx
	movl	%r10d, %eax
	subl	%r8d, %eax
	movl	%edx, (%rdi)
	addq	%r13, %rdi
	cltd
	andl	%esi, %edx
	addl	%eax, %edx
	movl	%edx, %edx
	imulq	%rbx, %rdx
	movq	%rdx, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%r15, %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	%esi, %eax
	cltd
	andl	%esi, %edx
	addl	%edx, %eax
	movl	%eax, (%rcx)
	addq	%r13, %rcx
	cmpq	%r11, %r9
	jne	.L100
.L101:
	addq	$4, %r12
	addq	-56(%rsp), %rbp
	cmpq	%r12, -64(%rsp)
	jne	.L98
	cmpq	$1, -48(%rsp)
	jne	.L102
	movzbl	-4(%rsp), %ecx
	movl	$-2147483648, %ebx
	movq	-16(%rsp), %r8
	xorl	%edx, %edx
	movq	-32(%rsp), %rdi
	shrl	%cl, %ebx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L103:
	movl	(%rdi), %r9d
	addq	$1, %rdx
	imulq	%rcx, %r9
	movq	%r9, %rax
	imulq	%r14, %rax
	andl	$2147483647, %eax
	imulq	%r15, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%esi, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%esi, %r9d
	addl	%r9d, %eax
	movl	%eax, (%rdi)
	addq	%r13, %rdi
	cmpq	%rdx, %r8
	jne	.L103
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
	.type	zint_rebuild_CRT.constprop.0, @function
zint_rebuild_CRT.constprop.0:
.LFB5574:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movl	$2147473409, (%r9)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 24(%rsp)
	movl	%r8d, 100(%rsp)
	cmpq	$1, %rsi
	jbe	.L122
	movq	88(%rsp), %rax
	movq	%rdi, 80(%rsp)
	movl	$1, %r12d
	salq	$2, %rax
	movq	%rax, 48(%rsp)
	leaq	12+PRIMES(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	4(%r9), %rax
	movq	%rax, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L121:
	movq	64(%rsp), %rax
	movl	$2, %ecx
	xorl	%r13d, %r13d
	leaq	0(,%r12,4), %r10
	movl	(%rax), %edx
	movl	8(%rax), %r9d
	movl	$2, %eax
	subl	%edx, %eax
	movl	%edx, %esi
	movl	%edx, %r15d
	movl	%edx, %edi
	imull	%eax, %esi
	movl	%edx, 4(%rsp)
	subl	%esi, %ecx
	movl	%edx, %esi
	imull	%ecx, %eax
	movl	$2, %ecx
	imull	%eax, %esi
	subl	%esi, %ecx
	movl	%edx, %esi
	imull	%ecx, %eax
	movl	$2, %ecx
	imull	%eax, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	imull	%eax, %r15d
	subl	$2, %r15d
	imull	%eax, %r15d
	andl	$2147483647, %r15d
	movl	%r15d, %esi
	call	modp_R2
	cmpq	$0, 24(%rsp)
	movq	80(%rsp), %rbx
	movl	%eax, %r8d
	movl	4(%rsp), %eax
	movq	%rax, 16(%rsp)
	movq	%rax, %rdx
	movl	%r9d, %eax
	movq	%rax, 32(%rsp)
	movl	%r15d, %eax
	movq	%rax, 40(%rsp)
	je	.L120
	movl	%r15d, 96(%rsp)
	movq	%r13, %r15
	movl	%edx, %r13d
	.p2align 4,,10
	.p2align 3
.L119:
	movl	96(%rsp), %ecx
	movl	(%rbx,%r10), %ebp
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	%rbx, %rdi
	movq	%r10, 8(%rsp)
	movl	%r8d, 4(%rsp)
	call	zint_mod_small_unsigned
	movl	4(%rsp), %r8d
	movq	8(%rsp), %r10
	xorl	%esi, %esi
	subl	%eax, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	leal	0(%rbp,%rax), %ecx
	movq	40(%rsp), %rax
	imulq	32(%rsp), %rcx
	imulq	%rcx, %rax
	andl	$2147483647, %eax
	imulq	16(%rsp), %rax
	addq	%rcx, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r13d, %ecx
	leal	(%rax,%rcx), %r11d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L118:
	movl	(%r14,%rcx,4), %eax
	movl	(%rbx,%rcx,4), %edx
	imulq	%r11, %rax
	addq	%rsi, %rdx
	addq	%rdx, %rax
	movl	%eax, %edx
	shrq	$31, %rax
	andl	$2147483647, %edx
	movl	%eax, %esi
	movl	%edx, (%rbx,%rcx,4)
	addq	$1, %rcx
	cmpq	%r12, %rcx
	jne	.L118
	movl	%eax, (%rbx,%r10)
	addq	$1, %r15
	addq	48(%rsp), %rbx
	cmpq	24(%rsp), %r15
	jne	.L119
.L120:
	movq	56(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L117:
	movl	(%rdx), %eax
	addq	$4, %rdx
	imulq	%rdi, %rax
	addq	%rcx, %rax
	movl	%eax, %ecx
	shrq	$31, %rax
	andl	$2147483647, %ecx
	movl	%ecx, -4(%rdx)
	movl	%eax, %ecx
	cmpq	%rdx, %rsi
	jne	.L117
	movq	56(%rsp), %rdi
	addq	$12, 64(%rsp)
	addq	$1, %r12
	movl	%eax, (%rdi)
	addq	$4, %rdi
	movq	%rdi, 56(%rsp)
	cmpq	72(%rsp), %r12
	jne	.L121
	movq	80(%rsp), %r15
.L122:
	movl	100(%rsp), %eax
	testl	%eax, %eax
	je	.L112
	movq	24(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L112
	movq	88(%rsp), %r10
	movq	72(%rsp), %r11
	xorl	%r8d, %r8d
	salq	$2, %r10
	leaq	-1(%r11), %r9
.L123:
	movq	%r9, %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	testq	%r11, %r11
	je	.L127
	.p2align 4,,10
	.p2align 3
.L124:
	movl	(%r14,%rdx,4), %ebp
	sall	$30, %ecx
	movl	(%r15,%rdx,4), %eax
	movl	%ebp, %edi
	shrl	%edi
	orl	%ecx, %edi
	movl	%ebp, %ecx
	movl	%edi, %ebp
	andl	$1, %ecx
	subl	%eax, %ebp
	subl	%edi, %eax
	movl	%esi, %edi
	sarl	$31, %ebp
	shrl	$31, %eax
	andl	$1, %edi
	orl	%ebp, %eax
	subl	$1, %edi
	andl	%edi, %eax
	orl	%eax, %esi
	subq	$1, %rdx
	jnb	.L124
	sarl	$31, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L126:
	movl	(%r15,%rdx,4), %ecx
	movl	%ecx, %eax
	subl	%edi, %eax
	subl	(%r14,%rdx,4), %eax
	movl	%eax, %edi
	andl	$2147483647, %eax
	xorl	%ecx, %eax
	shrl	$31, %edi
	andl	%esi, %eax
	xorl	%eax, %ecx
	movl	%ecx, (%r15,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %r11
	jne	.L126
.L127:
	addq	$1, %r8
	addq	%r10, %r15
	cmpq	%r8, %rbx
	jne	.L123
.L112:
	addq	$104, %rsp
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
.LFE5574:
	.size	zint_rebuild_CRT.constprop.0, .-zint_rebuild_CRT.constprop.0
	.p2align 4
	.type	poly_sub_scaled_ntt, @function
poly_sub_scaled_ntt:
.LFB5553:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
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
	leaq	1(%r8), %rbx
	leaq	0(,%rbx,4), %r15
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%rcx, 112(%rsp)
	movzbl	248(%rsp), %ecx
	movq	%rdx, 160(%rsp)
	movq	256(%rsp), %rdx
	salq	%cl, %rax
	movq	%rsi, 136(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, %eax
	salq	%cl, %rax
	movq	%rdi, 152(%rsp)
	addq	%rax, %rdx
	movq	%rbx, 104(%rsp)
	leaq	(%rdx,%rax), %rsi
	movq	%rdx, 96(%rsp)
	movq	%rbx, %rdx
	salq	%cl, %rdx
	movq	%rsi, 144(%rsp)
	leaq	(%rsi,%rdx,4), %rdx
	movq	%rdx, 56(%rsp)
	testq	%rbx, %rbx
	je	.L144
	leaq	-4(%r15), %rbx
	addq	%rdx, %rax
	movq	%rsi, 48(%rsp)
	movl	$383167813, %r10d
	movq	%rbx, 40(%rsp)
	leaq	0(,%r9,4), %rbx
	movq	%rbx, 32(%rsp)
	movl	%r8d, %ebx
	subl	$1, %ebx
	movq	%rax, 120(%rsp)
	movq	$0, 80(%rsp)
	movl	%ebx, 132(%rsp)
	leaq	12+PRIMES(%rip), %rbx
	movq	%rbx, 88(%rsp)
	movl	$2147473409, %ebx
	movq	%r15, 24(%rsp)
	movq	%r8, %r15
	.p2align 4,,10
	.p2align 3
.L155:
	movl	$2, %edx
	movl	%ebx, %edi
	movl	$-2147483648, %ebp
	movl	%ebx, %r13d
	movl	%edx, %eax
	movl	%edx, %ecx
	subl	%ebx, %ebp
	subl	%ebx, %eax
	movl	%eax, %esi
	imull	%ebx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
	imull	%ebx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
	imull	%ebx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	%eax, %r9d
	imull	%ebx, %r9d
	subl	%edx, %r9d
	imull	%eax, %r9d
	andl	$2147483647, %r9d
	movl	%r9d, %esi
	movl	%r9d, %r12d
	call	modp_R2
	movl	132(%rsp), %esi
	movl	%eax, %r14d
	testl	%esi, %esi
	je	.L145
	movl	%eax, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L147:
	btl	%ecx, %esi
	jnc	.L146
	imulq	%rax, %rbp
	movq	%rbp, %rdi
	imulq	%r12, %rdi
	andl	$2147483647, %edi
	imulq	%r13, %rdi
	addq	%rbp, %rdi
	shrq	$31, %rdi
	subl	%ebx, %edi
	movl	%edi, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	addl	%edi, %ebp
.L146:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %rdi
	imulq	%r12, %rax
	andl	$2147483647, %eax
	imulq	%r13, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ebx, %edi
	addl	%edi, %eax
	movl	%edx, %edi
	sall	%cl, %edi
	cmpl	%esi, %edi
	jbe	.L147
.L145:
	movq	96(%rsp), %rsi
	movl	%ebx, %r8d
	movl	%r10d, %ecx
	movl	%r9d, (%rsp)
	movl	248(%rsp), %edx
	movq	256(%rsp), %rdi
	call	modp_mkgm2
	movq	16(%rsp), %rsi
	movl	(%rsp), %r9d
	xorl	%edx, %edx
	movq	56(%rsp), %rdi
	movq	224(%rsp), %r8
	.p2align 4,,10
	.p2align 3
.L148:
	movl	(%r8,%rdx,4), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L148
	movl	248(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L149
	movl	248(%rsp), %ecx
	movq	56(%rsp), %rdi
	movl	%ebx, %r8d
	movl	$1, %esi
	movq	256(%rsp), %rdx
	movl	%r9d, (%rsp)
	call	modp_NTT2_ext.part.0
	movl	(%rsp), %r9d
.L149:
	movq	112(%rsp), %rdi
	movq	48(%rsp), %r11
	xorl	%r10d, %r10d
	movq	%r15, %rsi
	movl	%ebp, 128(%rsp)
	movl	%ebx, %r15d
	movl	%r14d, %ebx
	movl	%r9d, %r14d
	movq	%r12, 64(%rsp)
	movq	%r11, %rbp
	movq	%rdi, %r12
	movq	%r13, 72(%rsp)
	movq	%r10, %r13
	.p2align 4,,10
	.p2align 3
.L151:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L150
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movl	%ebx, %r8d
	movq	%r12, %rdi
	movq	%rsi, 8(%rsp)
	call	zint_mod_small_unsigned
	movq	40(%rsp), %rdx
	movl	-4(%r12,%rdx), %esi
	movl	%esi, %ecx
	movl	%esi, (%rsp)
	movq	8(%rsp), %rsi
	shrl	$30, %ecx
	negl	%ecx
	andl	128(%rsp), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	addl	%ecx, %eax
.L150:
	movl	%eax, 0(%rbp)
	addq	$1, %r13
	addq	32(%rsp), %r12
	addq	24(%rsp), %rbp
	cmpq	%r13, 16(%rsp)
	jne	.L151
	movl	248(%rsp), %edx
	movl	%r14d, %r9d
	movq	64(%rsp), %r12
	movl	%ebx, %r14d
	movq	72(%rsp), %r13
	movl	%r15d, %ebx
	movq	%rsi, %r15
	testl	%edx, %edx
	je	.L152
	movl	248(%rsp), %ecx
	movq	256(%rsp), %rdx
	movl	%ebx, %r8d
	movl	%r9d, (%rsp)
	movq	104(%rsp), %rsi
	movq	48(%rsp), %rdi
	call	modp_NTT2_ext.part.0
	movl	(%rsp), %r9d
.L152:
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	24(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L153:
	movl	(%rdx), %eax
	movl	(%rcx), %r8d
	addq	$4, %rcx
	imulq	%rax, %r8
	movq	%r8, %rax
	imulq	%r12, %rax
	andl	$2147483647, %eax
	imulq	%r13, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%eax, %r8d
	movl	%r8d, %r8d
	imulq	%r14, %r8
	movq	%r8, %rax
	imulq	%r12, %rax
	andl	$2147483647, %eax
	imulq	%r13, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%r8d, %eax
	movl	%eax, (%rdx)
	addq	%rdi, %rdx
	cmpq	%rcx, %rsi
	jne	.L153
	movl	248(%rsp), %eax
	testl	%eax, %eax
	je	.L154
	movl	248(%rsp), %ecx
	movq	96(%rsp), %rdx
	movl	%ebx, %r8d
	movq	104(%rsp), %rsi
	movq	48(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
.L154:
	movq	80(%rsp), %rbx
	addq	$4, 48(%rsp)
	leaq	1(%rbx), %rax
	cmpq	%rbx, %r15
	je	.L190
	movq	88(%rsp), %rdx
	movq	%rax, 80(%rsp)
	movl	4(%rdx), %r10d
	movl	(%rdx), %ebx
	addq	$12, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L190:
	movq	24(%rsp), %r15
.L144:
	movq	104(%rsp), %r14
	movq	56(%rsp), %r9
	xorl	%ebp, %ebp
	movl	$1, %r8d
	movq	16(%rsp), %rcx
	movq	144(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r14, %rsi
	call	zint_rebuild_CRT.constprop.0
	movq	160(%rsp), %r12
	movl	232(%rsp), %r13d
	movl	$31, %r11d
	movq	152(%rsp), %rax
	movq	136(%rsp), %rbx
	salq	$2, %r12
	movq	%r13, 8(%rsp)
	subl	240(%rsp), %r11d
	movq	%r12, (%rsp)
	leaq	(%rax,%r13,4), %r8
	subq	%r13, %rbx
	movq	%r14, %r12
	movl	240(%rsp), %r13d
	movq	144(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L157:
	testq	%r12, %r12
	je	.L159
	movl	-4(%r14,%r15), %r10d
	movq	8(%rsp), %rdx
	shrl	$30, %r10d
	negl	%r10d
	shrl	%r10d
	cmpq	%rdx, 136(%rsp)
	jbe	.L159
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movl	%eax, %edi
	.p2align 4,,10
	.p2align 3
.L161:
	movl	%r10d, %eax
	cmpq	%r12, %rdx
	jnb	.L160
	movl	(%r14,%rdx,4), %eax
.L160:
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
	cmpq	%rbx, %rdx
	jne	.L161
.L159:
	addq	$1, %rbp
	addq	%r15, %r14
	addq	(%rsp), %r8
	cmpq	%rbp, 16(%rsp)
	jne	.L157
	addq	$168, %rsp
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
.LFE5553:
	.size	poly_sub_scaled_ntt, .-poly_sub_scaled_ntt
	.p2align 4
	.type	make_fg, @function
make_fg:
.LFB5561:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	salq	%cl, %rax
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
	movq	%rdi, %rbx
	leaq	(%rbx,%rax), %rbp
	movq	%rbx, %r11
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movl	%r8d, 196(%rsp)
	movl	$1, %r8d
	movq	%rdi, 160(%rsp)
	salq	%cl, %r8
	movq	%rdx, %rdi
	movl	%ecx, 192(%rsp)
	movq	%rax, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L193:
	movsbl	(%rsi,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%r10d, %edx
	movl	%edx, (%r11,%rax,4)
	movsbl	(%rdi,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%r10d, %edx
	movl	%edx, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L193
	movl	196(%rsp), %eax
	testl	%eax, %eax
	jne	.L196
	testb	$1, %r9b
	jne	.L194
	testl	%eax, %eax
	je	.L192
.L196:
	movl	%r9d, %eax
	movl	$1, %r13d
	movq	$0, 152(%rsp)
	movq	$1, 72(%rsp)
	andl	$1, %eax
	movb	%al, 203(%rsp)
	movl	192(%rsp), %eax
	leal	-1(%rax), %edi
	movl	%eax, 36(%rsp)
	movl	%edi, 148(%rsp)
	movl	%eax, %edi
	subl	196(%rsp), %edi
	movl	%edi, 204(%rsp)
	.p2align 4,,10
	.p2align 3
.L235:
	movl	152(%rsp), %eax
	movl	36(%rsp), %esi
	movq	160(%rsp), %r11
	addl	$1, %eax
	cmpl	%eax, 196(%rsp)
	movl	%esi, %ecx
	seta	%al
	orb	203(%rsp), %al
	movb	%al, 147(%rsp)
	movl	$1, %eax
	salq	%cl, %rax
	movq	%rax, %r14
	movq	%rax, 176(%rsp)
	movq	72(%rsp), %rax
	shrq	%r14
	leaq	0(,%rax,4), %r12
	movq	%r14, %rax
	movq	%r14, 40(%rsp)
	imulq	%r12, %rax
	leaq	(%r11,%rax), %rcx
	movq	%rax, %rdi
	movq	%r13, %rax
	addq	%rcx, %rdi
	movq	%rcx, 168(%rsp)
	movl	%esi, %ecx
	movq	%r11, %rsi
	salq	%cl, %rax
	movq	%rdi, 136(%rsp)
	movq	%rdi, %rbp
	leaq	0(,%rax,4), %rdx
	leaq	(%rdi,%rdx), %r15
	movq	%rdx, %rbx
	movl	$4, %edx
	salq	%cl, %rdx
	addq	%r15, %rbx
	movq	%r15, 128(%rsp)
	movq	%rbx, 48(%rsp)
	addq	%rdx, %rbx
	movq	%rdx, %r15
	movq	%rdx, 184(%rsp)
	movq	%rbx, 56(%rsp)
	addq	%rdx, %rbx
	leaq	0(,%rax,8), %rdx
	movq	%rbx, 8(%rsp)
	call	memmove@PLT
	testq	%r13, %r13
	je	.L198
	movl	36(%rsp), %eax
	movq	152(%rsp), %rdi
	movq	$0, (%rsp)
	leaq	0(,%r13,4), %r10
	movq	168(%rsp), %rcx
	movq	160(%rsp), %r11
	movq	%rbp, 16(%rsp)
	leaq	(%rbx,%r14,8), %rbp
	testl	%eax, %eax
	movq	%r13, 120(%rsp)
	movq	%r10, %r13
	sete	%al
	testl	%edi, %edi
	movq	%rcx, 64(%rsp)
	setne	%dl
	movq	%r11, 80(%rsp)
	movl	$383167813, %r11d
	orl	%eax, %edx
	testl	%edi, %edi
	leaq	12+PRIMES(%rip), %rdi
	movb	%dl, 88(%rsp)
	sete	%dl
	addq	%rbx, %r15
	movl	$2147473409, %ebx
	orl	%eax, %edx
	movq	128(%rsp), %rax
	movq	%rdi, 112(%rsp)
	movb	%dl, 96(%rsp)
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L214:
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
	call	modp_R2
	movl	36(%rsp), %edx
	movq	56(%rsp), %rsi
	movl	%r11d, %ecx
	movq	48(%rsp), %rdi
	movl	%r9d, 104(%rsp)
	movl	%eax, %r14d
	call	modp_mkgm2
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	movl	104(%rsp), %r9d
	.p2align 4,,10
	.p2align 3
.L199:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	%r13, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%rax, %r15
	jne	.L199
	cmpb	$0, 88(%rsp)
	je	.L288
	cmpq	$0, 40(%rsp)
	je	.L205
.L201:
	movq	8(%rsp), %rdx
	movq	80(%rsp), %rcx
	movl	%r9d, %edi
	movl	%ebx, %esi
	movl	%r14d, %r8d
	.p2align 4,,10
	.p2align 3
.L204:
	movl	4(%rdx), %eax
	movl	(%rdx), %r10d
	addq	$8, %rdx
	imulq	%rax, %r10
	movq	%r10, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
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
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, (%rcx)
	addq	%r12, %rcx
	cmpq	%rdx, %rbp
	jne	.L204
.L205:
	cmpb	$0, 96(%rsp)
	jne	.L202
	movl	36(%rsp), %ecx
	movq	56(%rsp), %rdx
	movl	%ebx, %r8d
	movl	%r9d, 104(%rsp)
	movq	120(%rsp), %rsi
	movq	16(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
	movl	104(%rsp), %r9d
.L202:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L206:
	movl	(%rdx), %ecx
	addq	$4, %rax
	addq	%r13, %rdx
	movl	%ecx, -4(%rax)
	cmpq	%rax, %r15
	jne	.L206
	cmpb	$0, 88(%rsp)
	je	.L289
	cmpq	$0, 40(%rsp)
	je	.L212
.L208:
	movq	8(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	%r9d, %edi
	movl	%ebx, %esi
	.p2align 4,,10
	.p2align 3
.L211:
	movl	4(%rdx), %eax
	movl	(%rdx), %r8d
	addq	$8, %rdx
	imulq	%rax, %r8
	movq	%r8, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%eax, %r8d
	movl	%r8d, %r8d
	imulq	%r14, %r8
	movq	%r8, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r8, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%r8d, %eax
	movl	%eax, (%rcx)
	addq	%r12, %rcx
	cmpq	%rdx, %rbp
	jne	.L211
.L212:
	cmpb	$0, 96(%rsp)
	jne	.L209
	movl	36(%rsp), %ecx
	movq	56(%rsp), %rdx
	movl	%ebx, %r8d
	movl	%r9d, 104(%rsp)
	movq	120(%rsp), %rsi
	movq	24(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
	movl	104(%rsp), %r9d
.L209:
	cmpb	$0, 147(%rsp)
	jne	.L213
	movl	148(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L213
	movq	56(%rsp), %rdx
	movq	72(%rsp), %rsi
	movl	%ebx, %r8d
	movl	%r14d, %ecx
	movq	80(%rsp), %rdi
	movl	%r9d, 104(%rsp)
	call	modp_iNTT2_ext.part.0
	movl	104(%rsp), %r9d
	movl	%ebx, %r8d
	movl	%r14d, %ecx
	movq	56(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	call	modp_iNTT2_ext.part.0
.L213:
	addq	$1, (%rsp)
	movq	(%rsp), %rax
	addq	$4, 80(%rsp)
	addq	$4, 64(%rsp)
	addq	$4, 24(%rsp)
	addq	$4, 16(%rsp)
	cmpq	120(%rsp), %rax
	je	.L284
	movq	112(%rsp), %rax
	movl	(%rax), %ebx
	movl	4(%rax), %r11d
	addq	$12, %rax
	movq	%rax, 112(%rsp)
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L289:
	movl	192(%rsp), %ecx
	movq	48(%rsp), %rdx
	movl	%ebx, %r8d
	movl	$1, %esi
	movq	8(%rsp), %rdi
	movl	%r9d, 104(%rsp)
	call	modp_NTT2_ext.part.0
	cmpq	$0, 40(%rsp)
	movl	104(%rsp), %r9d
	jne	.L208
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L288:
	movl	192(%rsp), %ecx
	movq	48(%rsp), %rdx
	movl	%ebx, %r8d
	movl	$1, %esi
	movq	8(%rsp), %rdi
	movl	%r9d, 104(%rsp)
	call	modp_NTT2_ext.part.0
	cmpq	$0, 40(%rsp)
	movl	104(%rsp), %r9d
	jne	.L201
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L284:
	movq	120(%rsp), %r13
.L198:
	movq	48(%rsp), %r15
	movl	$1, %r8d
	movq	%r13, %rdx
	movq	%r13, %rsi
	movq	176(%rsp), %rbx
	movq	136(%rsp), %rdi
	movq	%r15, %r9
	movq	%rbx, %rcx
	call	zint_rebuild_CRT.constprop.0
	movq	%r15, %r9
	movq	%rbx, %rcx
	movq	%r13, %rdx
	movq	128(%rsp), %rdi
	movl	$1, %r8d
	movq	%r13, %rsi
	call	zint_rebuild_CRT.constprop.0
	cmpq	72(%rsp), %r13
	jnb	.L215
	leal	-1(%r13), %eax
	leaq	PRIMES(%rip), %rdi
	movq	%r13, 96(%rsp)
	movl	%eax, 120(%rsp)
	leaq	0(%r13,%r13,2), %rax
	leaq	0(,%r13,4), %r15
	leaq	(%rdi,%rax,4), %rax
	movq	8(%rsp), %rdi
	movq	%r12, 112(%rsp)
	movq	%r13, %r12
	movq	%rax, 64(%rsp)
	movq	160(%rsp), %rax
	addq	%r15, %rax
	movq	%rax, 88(%rsp)
	movq	168(%rsp), %rax
	addq	%r15, %rax
	movq	%rax, 80(%rsp)
	movq	184(%rsp), %rax
	addq	%rdi, %rax
	movq	%rax, (%rsp)
	movq	40(%rsp), %rax
	leaq	(%rdi,%rax,8), %rax
	movq	%rax, 104(%rsp)
	.p2align 4,,10
	.p2align 3
.L234:
	movq	64(%rsp), %rax
	movl	$2, %edx
	movl	$-2147483648, %ebp
	movl	%edx, %ecx
	movl	(%rax), %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
	movl	%ebx, %esi
	movl	%ebx, %r9d
	movl	%ebx, %edi
	imull	%eax, %esi
	subl	%ebx, %ebp
	subl	%esi, %ecx
	movl	%ebx, %esi
	imull	%ecx, %eax
	movl	%edx, %ecx
	imull	%eax, %esi
	subl	%esi, %ecx
	movl	%ebx, %esi
	imull	%ecx, %eax
	movl	%edx, %ecx
	imull	%eax, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	imull	%eax, %r9d
	subl	%edx, %r9d
	imull	%eax, %r9d
	andl	$2147483647, %r9d
	movl	%r9d, %esi
	movl	%r9d, %r13d
	call	modp_R2
	movl	120(%rsp), %edx
	movl	%eax, %r14d
	testl	%edx, %edx
	je	.L216
	movl	%r9d, %edi
	movl	%ebx, %esi
	movl	%eax, %eax
	xorl	%ecx, %ecx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L218:
	btl	%ecx, %edx
	jnc	.L217
	imulq	%rax, %rbp
	movq	%rbp, %r9
	imulq	%rdi, %r9
	andl	$2147483647, %r9d
	imulq	%rsi, %r9
	addq	%rbp, %r9
	shrq	$31, %r9
	subl	%ebx, %r9d
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	addl	%r9d, %ebp
.L217:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %r9
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r9, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r9d
	sarl	$31, %r9d
	andl	%ebx, %r9d
	addl	%r9d, %eax
	movl	%r8d, %r9d
	sall	%cl, %r9d
	cmpl	%edx, %r9d
	jbe	.L218
.L216:
	movq	64(%rsp), %rax
	movq	48(%rsp), %rdi
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movl	36(%rsp), %edx
	movq	56(%rsp), %rsi
	movl	4(%rax), %ecx
	call	modp_mkgm2
	movq	8(%rsp), %r11
	movl	%ebp, 16(%rsp)
	movq	136(%rsp), %rdi
	movl	%r13d, 24(%rsp)
	movl	%r14d, %r13d
	movq	%r12, %r14
	movl	%ebx, %r12d
	movq	%r11, %rbx
	movq	%rdi, %rbp
	.p2align 4,,10
	.p2align 3
.L220:
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L219
	movl	24(%rsp), %ecx
	movq	%r14, %rsi
	movl	%r13d, %r8d
	movl	%r12d, %edx
	movq	%rbp, %rdi
	call	zint_mod_small_unsigned
	movl	-4(%rbp,%r15), %esi
	shrl	$30, %esi
	negl	%esi
	andl	16(%rsp), %esi
	subl	%esi, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r12d, %esi
	addl	%esi, %eax
.L219:
	movl	%eax, (%rbx)
	addq	%r15, %rbp
	addq	$4, %rbx
	cmpq	%rbx, (%rsp)
	jne	.L220
	movl	36(%rsp), %eax
	movl	%r12d, %ebx
	movl	16(%rsp), %ebp
	movq	%r14, %r12
	movl	%r13d, %r14d
	movl	24(%rsp), %r13d
	testl	%eax, %eax
	je	.L221
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rdi
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movl	%eax, %ecx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
.L221:
	cmpq	$0, 40(%rsp)
	movq	8(%rsp), %rdx
	movl	%r13d, %edi
	movl	%ebx, %esi
	movq	88(%rsp), %rcx
	movl	%r14d, %r8d
	je	.L225
	movq	112(%rsp), %r9
	movq	104(%rsp), %r10
	.p2align 4,,10
	.p2align 3
.L224:
	movl	4(%rdx), %eax
	movl	(%rdx), %r11d
	addq	$8, %rdx
	imulq	%rax, %r11
	movq	%r11, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
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
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	%ebx, %r11d
	addl	%r11d, %eax
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	cmpq	%rdx, %r10
	jne	.L224
.L225:
	movq	8(%rsp), %r11
	movq	128(%rsp), %rdi
	movl	%ebp, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r14d, %r13d
	movq	%r12, %r14
	movl	%ebx, %r12d
	movq	%r11, %rbp
	movq	%rdi, %rbx
	.p2align 4,,10
	.p2align 3
.L223:
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L226
	movl	16(%rsp), %ecx
	movq	%r14, %rsi
	movl	%r13d, %r8d
	movl	%r12d, %edx
	movq	%rbx, %rdi
	call	zint_mod_small_unsigned
	movl	-4(%rbx,%r15), %esi
	shrl	$30, %esi
	negl	%esi
	andl	24(%rsp), %esi
	subl	%esi, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%r12d, %esi
	addl	%esi, %eax
.L226:
	movl	%eax, 0(%rbp)
	addq	%r15, %rbx
	addq	$4, %rbp
	cmpq	%rbp, (%rsp)
	jne	.L223
	movl	36(%rsp), %eax
	movl	%r12d, %ebx
	movq	%r14, %r12
	movl	%r13d, %r14d
	movl	16(%rsp), %r13d
	testl	%eax, %eax
	je	.L227
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rdi
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movl	%eax, %ecx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
.L227:
	cmpq	$0, 40(%rsp)
	movq	8(%rsp), %rdx
	movl	%r13d, %edi
	movl	%ebx, %esi
	movq	80(%rsp), %rcx
	je	.L232
	movq	112(%rsp), %r8
	movq	104(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L231:
	movl	4(%rdx), %eax
	movl	(%rdx), %r10d
	addq	$8, %rdx
	imulq	%rax, %r10
	movq	%r10, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%eax, %r10d
	movl	%r10d, %r10d
	imulq	%r14, %r10
	movq	%r10, %rax
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%ebx, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r10d, %eax
	movl	%eax, (%rcx)
	addq	%r8, %rcx
	cmpq	%r9, %rdx
	jne	.L231
.L232:
	addq	$1, 96(%rsp)
	cmpb	$0, 147(%rsp)
	jne	.L229
	movl	148(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L233
	movq	72(%rsp), %rbp
	movq	56(%rsp), %rdx
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	88(%rsp), %rdi
	movl	%r14d, %ecx
	movq	%rbp, %rsi
	call	modp_iNTT2_ext.part.0
	movq	56(%rsp), %rdx
	movl	%r13d, %r9d
	movl	%ebx, %r8d
	movq	80(%rsp), %rdi
	movl	%r14d, %ecx
	movq	%rbp, %rsi
	call	modp_iNTT2_ext.part.0
.L233:
	movq	96(%rsp), %rdi
	cmpq	%rdi, 72(%rsp)
	jbe	.L192
.L236:
	addq	$12, 64(%rsp)
	addq	$4, 88(%rsp)
	addq	$4, 80(%rsp)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L229:
	movq	96(%rsp), %rdi
	cmpq	%rdi, 72(%rsp)
	ja	.L236
.L215:
	addq	$1, 152(%rsp)
	movq	152(%rsp), %rdi
	subl	$1, 36(%rsp)
	movl	36(%rsp), %eax
	subl	$1, 148(%rsp)
	cmpl	%eax, 204(%rsp)
	je	.L192
	leaq	8+MAX_BL_SMALL(%rip), %rax
	movq	72(%rsp), %r13
	movq	(%rax,%rdi,8), %rax
	movq	%rax, 72(%rsp)
	jmp	.L235
.L194:
	movl	192(%rsp), %ebx
	leaq	0(%rbp,%rcx), %r12
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	leaq	(%r12,%rcx), %rsi
	movq	%r12, %rdi
	movl	$383167813, %ecx
	movl	%ebx, %edx
	call	modp_mkgm2
	testl	%ebx, %ebx
	jne	.L290
.L192:
	addq	$216, %rsp
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
.L290:
	.cfi_restore_state
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movl	$2042615807, %r9d
	movl	$1, %esi
	movq	160(%rsp), %rdi
	call	modp_NTT2_ext.part.0
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
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
	jmp	modp_NTT2_ext.part.0
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
	movl	%edi, %r11d
	movl	%ecx, %r10d
	movl	$1, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r11d, %r15d
	movq	%r8, %rdi
	movl	$1, %r9d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	subl	%r10d, %r15d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	movl	%ecx, 236(%rsp)
	movl	%r15d, %ecx
	salq	%cl, %rax
	movq	%r8, 200(%rsp)
	movq	%r10, %r8
	movq	%rax, 184(%rsp)
	movq	%rax, %rbx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rax,%r10,8), %rcx
	shrq	%rbx
	movq	%r10, 224(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rcx, 120(%rsp)
	leal	1(%r10), %ecx
	movq	(%rax,%rcx,8), %r14
	leaq	MAX_BL_LARGE(%rip), %rax
	movl	%r11d, %ecx
	movl	%r15d, 160(%rsp)
	movq	(%rax,%r10,8), %rbp
	imulq	%r14, %rbx
	movq	%r14, 16(%rsp)
	movq	%rdi, %r14
	leaq	0(,%rbx,8), %r12
	leaq	(%rdi,%r12), %r13
	movq	%r13, %rdi
	call	make_fg
	movl	%r15d, %ecx
	movq	%rbp, %rax
	movq	120(%rsp), %rsi
	salq	%cl, %rax
	movq	%rbp, 144(%rsp)
	salq	$2, %rax
	salq	%cl, %rsi
	leaq	(%r14,%rax), %rdx
	movq	%rax, %rdi
	movq	%rsi, %rbp
	addq	%rdx, %rdi
	salq	$2, %rbp
	movq	%rdx, 208(%rsp)
	leaq	0(,%rsi,8), %rdx
	movq	%r13, %rsi
	movq	%rdi, %r13
	movq	%rdi, 168(%rsp)
	call	memmove@PLT
	leaq	0(%r13,%rbp), %r11
	movq	%rbp, %rdi
	movq	%r12, %rdx
	addq	%r11, %rdi
	movq	%r14, %rsi
	movq	%r11, 176(%rsp)
	movq	%rdi, %r12
	movq	%rdi, 96(%rsp)
	call	memmove@PLT
	leaq	(%r12,%rbx,4), %rdi
	movl	120(%rsp), %esi
	movl	%r15d, %ecx
	movq	%rdi, 104(%rsp)
	movq	144(%rsp), %rbp
	movl	$4, %edi
	salq	%cl, %rdi
	movl	%esi, 232(%rsp)
	movq	%rdi, 216(%rsp)
	testq	%rbp, %rbp
	je	.L292
	movq	16(%rsp), %r15
	leaq	0(,%rbp,4), %rsi
	movq	208(%rsp), %rax
	leaq	12+PRIMES(%rip), %rdi
	movq	%rsi, 64(%rsp)
	movq	%rsi, %r10
	addq	%r14, %rsi
	movl	$2147473409, %edx
	leal	-1(%r15), %r11d
	movq	%rdi, 88(%rsp)
	leaq	0(,%r15,4), %r13
	movq	%r14, 136(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rsi, 112(%rsp)
	movq	%rax, 80(%rsp)
	movq	%r14, 72(%rsp)
	movl	%r11d, 152(%rsp)
	.p2align 4,,10
	.p2align 3
.L301:
	movl	$2, %eax
	movl	$2, %ecx
	movl	%edx, %edi
	movl	%edx, 16(%rsp)
	subl	%edx, %eax
	movl	$-2147483648, %ebx
	movl	%eax, %esi
	imull	%edx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	$2, %ecx
	movl	%eax, %esi
	imull	%edx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	$2, %ecx
	movl	%eax, %esi
	imull	%edx, %esi
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	%eax, %r14d
	imull	%edx, %r14d
	subl	$2, %r14d
	imull	%eax, %r14d
	andl	$2147483647, %r14d
	movl	%r14d, %esi
	call	modp_R2
	movl	16(%rsp), %edx
	movl	152(%rsp), %r11d
	movl	%eax, %r8d
	subl	%edx, %ebx
	movl	%ebx, 16(%rsp)
	testl	%r11d, %r11d
	je	.L293
	movl	%r14d, %edi
	movl	%edx, %esi
	xorl	%ecx, %ecx
	movl	%eax, %eax
	movl	%ebx, %r9d
	.p2align 4,,10
	.p2align 3
.L295:
	btl	%ecx, %r11d
	jnc	.L294
	imulq	%rax, %r9
	movq	%r9, %rbx
	imulq	%rdi, %rbx
	andl	$2147483647, %ebx
	imulq	%rsi, %rbx
	addq	%r9, %rbx
	shrq	$31, %rbx
	subl	%edx, %ebx
	movl	%ebx, %r9d
	sarl	$31, %r9d
	andl	%edx, %r9d
	addl	%ebx, %r9d
.L294:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %rbx
	imulq	%rdi, %rax
	andl	$2147483647, %eax
	imulq	%rsi, %rax
	addq	%rbx, %rax
	shrq	$31, %rax
	subl	%edx, %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	%edx, %ebx
	addl	%ebx, %eax
	movl	$1, %ebx
	sall	%cl, %ebx
	cmpl	%r11d, %ebx
	jbe	.L295
	movl	%r9d, 16(%rsp)
.L293:
	xorl	%r11d, %r11d
	cmpq	$0, 8(%rsp)
	movq	72(%rsp), %rbx
	movq	80(%rsp), %r9
	movq	104(%rsp), %r12
	movq	96(%rsp), %rbp
	je	.L300
	movl	%r14d, 24(%rsp)
	movq	%r9, %r14
	movq	%r11, %r9
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L415:
	movl	24(%rsp), %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	movq	%r9, 56(%rsp)
	movq	%r10, 48(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%edx, 32(%rsp)
	call	zint_mod_small_unsigned
	movl	32(%rsp), %edx
	movl	24(%rsp), %ecx
	movq	%r15, %rsi
	movl	%eax, %r11d
	movl	-4(%rbp,%r13), %eax
	movl	40(%rsp), %r8d
	movq	%r12, %rdi
	shrl	$30, %eax
	negl	%eax
	andl	16(%rsp), %eax
	subl	%eax, %r11d
	movl	%r11d, %eax
	sarl	$31, %eax
	andl	%edx, %eax
	addl	%eax, %r11d
	movl	%r11d, (%rbx)
	call	zint_mod_small_unsigned
	movl	-4(%r12,%r13), %ecx
	movl	32(%rsp), %edx
	movq	56(%rsp), %r9
	movq	48(%rsp), %r10
	shrl	$30, %ecx
	movl	40(%rsp), %r8d
	negl	%ecx
	andl	16(%rsp), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%ecx, %eax
.L344:
	movl	%eax, (%r14)
	addq	$1, %r9
	addq	%r13, %rbp
	addq	%r13, %r12
	addq	%r10, %rbx
	addq	%r10, %r14
	cmpq	%r9, 8(%rsp)
	je	.L300
.L296:
	testq	%r15, %r15
	jne	.L415
	movl	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L300:
	addq	$4, 72(%rsp)
	movq	72(%rsp), %rax
	addq	$4, 80(%rsp)
	cmpq	%rax, 112(%rsp)
	je	.L416
	movq	88(%rsp), %rax
	movl	(%rax), %edx
	addq	$12, %rax
	movq	%rax, 88(%rsp)
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L292:
	movq	144(%rsp), %r14
	movq	96(%rsp), %rbx
	movl	$1, %r8d
	movq	184(%rsp), %rbp
	movq	200(%rsp), %r15
	movq	%rbx, %r9
	movq	%r14, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rcx
	movq	%r15, %rdi
	call	zint_rebuild_CRT.constprop.0
	movq	%r14, %rdx
	movq	%rbx, %r9
	movq	%rbp, %rcx
	movq	208(%rsp), %rdi
	movl	$1, %r8d
	movq	%r14, %rsi
	call	zint_rebuild_CRT.constprop.0
	movq	%rbx, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	andl	$7, %edx
	je	.L321
	addq	$8, %rax
	subq	%rdx, %rax
	addq	%r15, %rax
	movq	%rax, 96(%rsp)
.L321:
	movq	96(%rsp), %rsi
	movl	$8, %eax
	movq	8(%rsp), %rdi
	movzbl	160(%rsp), %ecx
	salq	%cl, %rax
	addq	%rax, %rsi
	movq	%rsi, 16(%rsp)
	addq	%rax, %rsi
	leaq	(%rsi,%rdi,8), %r15
	movq	%rsi, 24(%rsp)
	movq	200(%rsp), %rsi
	movq	%r15, %rdx
	movq	%r15, %rbp
	subq	%rsi, %rdx
	movq	%rdx, %rcx
	andl	$3, %ecx
	je	.L322
	addq	$4, %rdx
	subq	%rcx, %rdx
	leaq	(%rsi,%rdx), %rbp
.L322:
	movq	216(%rsp), %rbx
	movq	200(%rsp), %rsi
	addq	%rbp, %rbx
	movq	%rbx, %rdx
	movq	%rbx, 80(%rsp)
	subq	%rsi, %rdx
	movq	%rdx, %rcx
	andl	$7, %ecx
	je	.L323
	addq	$8, %rdx
	subq	%rcx, %rdx
	leaq	(%rsi,%rdx), %rbx
.L323:
	addq	%r15, %rax
	movl	$10, %r12d
	movl	160(%rsp), %r14d
	movq	168(%rsp), %rsi
	cmpq	%rax, %rbx
	movq	96(%rsp), %rdi
	cmovb	%rax, %rbx
	movq	120(%rsp), %rax
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
	movq	176(%rsp), %rsi
	addq	%r13, %rsi
	movq	120(%rsp), %r13
	movq	%r13, %rcx
	call	poly_big_to_fp
	movl	%r13d, %eax
	movq	96(%rsp), %rdi
	movl	%r14d, %r13d
	subl	%r12d, %eax
	movq	224(%rsp), %rsi
	movl	%eax, %edx
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
	movl	%edx, 72(%rsp)
	call	falcon_inner_FFT@PLT
	movl	%r14d, %esi
	movq	16(%rsp), %r14
	movq	%r14, %rdi
	call	falcon_inner_FFT@PLT
	movq	%r14, %rdx
	movq	%r14, 16(%rsp)
	movl	%r13d, %ecx
	movq	96(%rsp), %r14
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	%r13d, %esi
	movq	%r14, %rdi
	movabsq	$-4503599627370496, %r14
	call	falcon_inner_poly_adj_fft@PLT
	movq	16(%rsp), %rdi
	movl	%r13d, %esi
	call	falcon_inner_poly_adj_fft@PLT
	movq	144(%rsp), %r10
	movl	%r10d, %eax
	sall	$5, %eax
	subl	%r10d, %eax
	movl	%eax, %r11d
	movl	%eax, 64(%rsp)
	subl	%r12d, %r11d
	movl	%r13d, %r12d
	movq	184(%rsp), %r13
.L337:
	movl	$10, %eax
	movq	%r10, %r9
	movl	%r12d, %r8d
	movq	%r15, %rdi
	cmpq	%rax, %r10
	movq	200(%rsp), %rsi
	movl	%r11d, 48(%rsp)
	cmovbe	%r10, %rax
	movq	144(%rsp), %rcx
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
	movq	208(%rsp), %rax
	movq	144(%rsp), %rcx
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
	movq	.LC1(%rip), %rsi
	movl	48(%rsp), %r11d
	movl	%r10d, %ecx
	movq	%rsi, %xmm4
	movq	.LC5(%rip), %rsi
	subl	%eax, %ecx
	movl	%r11d, %eax
	movl	%ecx, %edx
	movq	%rsi, %xmm5
	movq	.LC6(%rip), %rsi
	sall	$5, %edx
	subl	%ecx, %edx
	movq	%rsi, %xmm6
	movq	.LC7(%rip), %rsi
	subl	%edx, %eax
	addl	56(%rsp), %eax
	movq	%rsi, %xmm2
	js	.L417
	je	.L352
	movsd	.LC4(%rip), %xmm0
.L325:
	movapd	%xmm4, %xmm1
	.p2align 4,,10
	.p2align 3
.L328:
	testb	$1, %al
	je	.L327
	mulsd	%xmm0, %xmm1
.L327:
	mulsd	%xmm0, %xmm0
	sarl	%eax
	jne	.L328
.L326:
	movabsq	$4503599627370496, %r9
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L332:
	movsd	(%rbx,%rsi,8), %xmm0
	mulsd	%xmm1, %xmm0
	comisd	%xmm5, %xmm0
	jbe	.L410
	comisd	%xmm0, %xmm6
	jbe	.L410
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
	jne	.L332
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
	cmpl	$4, 236(%rsp)
	movl	%esi, 8(%rsp)
	jbe	.L418
	pushq	%r12
	.cfi_def_cfa_offset 312
	movl	16(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 320
	movq	%r10, %rsi
	pushq	%rax
	.cfi_def_cfa_offset 328
	movl	%eax, 64(%rsp)
	pushq	%rbp
	.cfi_def_cfa_offset 336
	movq	152(%rsp), %r8
	movq	200(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	232(%rsp), %rdi
	movq	%r8, %r9
	movq	%r10, 64(%rsp)
	call	poly_sub_scaled
	addq	$32, %rsp
	.cfi_def_cfa_offset 304
	movq	%r8, %r9
	pushq	%r12
	.cfi_def_cfa_offset 312
	movl	16(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 320
	movl	56(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 328
	pushq	%rbp
	.cfi_def_cfa_offset 336
	movq	64(%rsp), %r10
	movq	208(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	240(%rsp), %rdi
	movq	%r10, %rsi
	movq	%r10, 40(%rsp)
	call	poly_sub_scaled
	movl	80(%rsp), %r11d
	movq	40(%rsp), %r10
	addq	$32, %rsp
	.cfi_def_cfa_offset 304
.L334:
	movl	72(%rsp), %eax
	addl	%r11d, %eax
	leal	10(%rax), %edx
	cmpl	%edx, 64(%rsp)
	jle	.L335
	movl	%r10d, %ecx
	addl	$40, %eax
	movl	%edx, 64(%rsp)
	sall	$5, %ecx
	subl	%r10d, %ecx
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	subq	%rax, %r10
.L335:
	testl	%r11d, %r11d
	jle	.L336
	subl	$25, %r11d
	movl	$0, %eax
	cmovs	%eax, %r11d
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L410:
	xorl	%eax, %eax
.L291:
	addq	$248, %rsp
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
.L416:
	.cfi_restore_state
	movq	96(%rsp), %rax
	movq	120(%rsp), %rdi
	movq	$0, 72(%rsp)
	movl	$2147473409, %r13d
	movq	216(%rsp), %rsi
	salq	$2, %rdi
	addq	%rsi, %rax
	movq	%rdi, 192(%rsp)
	movl	160(%rsp), %edi
	movq	%rax, 152(%rsp)
	addq	%rsi, %rax
	movq	%rax, 32(%rsp)
	addq	%rsi, %rax
	subl	$1, %edi
	movq	%rax, 40(%rsp)
	addq	%rsi, %rax
	movq	8(%rsp), %rsi
	movq	%rax, 16(%rsp)
	leaq	(%rax,%rsi,4), %rax
	movl	%edi, 164(%rsp)
	movq	144(%rsp), %rdi
	movq	%rax, 24(%rsp)
	leaq	4+PRIMES(%rip), %rax
	movq	%rax, 88(%rsp)
	movl	232(%rsp), %eax
	salq	$3, %rdi
	movq	%rdi, 56(%rsp)
	subl	$1, %eax
	movl	%eax, 232(%rsp)
	.p2align 4,,10
	.p2align 3
.L320:
	movl	$2, %eax
	movl	$2, %edx
	movl	%r13d, %edi
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
	movl	%eax, 48(%rsp)
	call	modp_R2
	movq	72(%rsp), %rsi
	movl	%eax, %r15d
	cmpq	%rsi, 120(%rsp)
	je	.L419
	movq	88(%rsp), %rax
	movl	48(%rsp), %r9d
	movl	%r13d, %r8d
	movl	160(%rsp), %edx
	movq	152(%rsp), %rsi
	movl	(%rax), %ecx
	movq	96(%rsp), %rdi
	call	modp_mkgm2
	movq	72(%rsp), %rax
	cmpq	%rax, 120(%rsp)
	jbe	.L303
	leaq	0(,%rax,4), %rbp
	movq	168(%rsp), %rax
	movq	32(%rsp), %r9
	xorl	%edx, %edx
	movq	192(%rsp), %rsi
	movq	184(%rsp), %r8
	movq	40(%rsp), %r10
	leaq	(%rax,%rbp), %rdi
	xorl	%eax, %eax
	addq	176(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L304:
	movl	(%rdi,%rdx), %ecx
	movl	%ecx, (%r9,%rax,4)
	movl	0(%rbp,%rdx), %ecx
	addq	%rsi, %rdx
	movl	%ecx, (%r10,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L304
	movl	160(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L306
	movq	120(%rsp), %r14
	movl	48(%rsp), %r9d
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movq	152(%rsp), %r12
	movq	%r14, %rsi
	movq	%r12, %rdx
	call	modp_iNTT2_ext.part.0
	movl	48(%rsp), %r9d
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	modp_iNTT2_ext.part.0
.L306:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L313
.L422:
	movq	64(%rsp), %rsi
	movq	16(%rsp), %r10
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	128(%rsp), %r8
	movq	136(%rsp), %r9
	movq	24(%rsp), %r11
	.p2align 4,,10
	.p2align 3
.L314:
	movl	(%r9,%rdx), %ecx
	movl	%ecx, (%r10,%rax,4)
	movl	(%r8,%rdx), %ecx
	addq	%rsi, %rdx
	movl	%ecx, (%r11,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L314
	movl	164(%rsp), %edx
	testl	%edx, %edx
	je	.L345
	movl	48(%rsp), %ebp
	movl	164(%rsp), %r14d
	movl	%r13d, %r8d
	movl	$1, %esi
	movq	96(%rsp), %rbx
	movq	16(%rsp), %rdi
	movl	%ebp, %r9d
	movl	%r14d, %ecx
	movq	%rbx, %rdx
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rdi
	movl	%ebp, %r9d
	movl	%r13d, %r8d
	movl	%r14d, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
.L345:
	movl	48(%rsp), %r10d
	movl	%r15d, %r14d
	movl	%r13d, %r9d
	xorl	%ecx, %ecx
	movq	128(%rsp), %rbx
	movq	136(%rsp), %r11
	.p2align 4,,10
	.p2align 3
.L318:
	movq	32(%rsp), %rax
	movq	40(%rsp), %r15
	movl	(%rax,%rcx,8), %esi
	movl	4(%rax,%rcx,8), %edi
	movq	16(%rsp), %rax
	movl	(%r15,%rcx,8), %r8d
	movl	4(%r15,%rcx,8), %r15d
	movl	(%rax,%rcx,4), %edx
	imulq	%r14, %rdx
	movq	%rdx, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	movq	24(%rsp), %rdx
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	(%rdx,%rcx,4), %ebp
	movl	%eax, %r12d
	sarl	$31, %r12d
	imulq	%r14, %rbp
	andl	%r13d, %r12d
	addl	%eax, %r12d
	movl	%r12d, %r12d
	movq	%rbp, %rdx
	imulq	%r12, %r15
	imulq	%r10, %rdx
	imulq	%r12, %r8
	movq	%r15, %rax
	imulq	%r10, %rax
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rbp, %rdx
	shrq	$31, %rdx
	subl	%r13d, %edx
	addq	%r15, %rax
	movl	%edx, %ebp
	shrq	$31, %rax
	sarl	$31, %ebp
	subl	%r13d, %eax
	andl	%r13d, %ebp
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%r13d, %r15d
	addl	%r15d, %eax
	movq	64(%rsp), %r15
	movl	%eax, (%r11)
	movq	%r8, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addl	%ebp, %edx
	addq	$1, %rcx
	movl	%edx, %edx
	imulq	%rdx, %rdi
	addq	%r8, %rax
	imulq	%rdx, %rsi
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%r13d, %r8d
	addl	%r8d, %eax
	movl	%eax, (%r11,%r15)
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
	addl	%edi, %eax
	movl	%eax, (%rbx)
	movq	%rsi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	cltd
	andl	%r13d, %edx
	addl	%edx, %eax
	movl	%eax, (%rbx,%r15)
	movq	56(%rsp), %rax
	addq	%rax, %r11
	addq	%rax, %rbx
	cmpq	%rcx, 8(%rsp)
	ja	.L318
.L319:
	movl	160(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L316
.L317:
	movl	48(%rsp), %ebp
	movl	160(%rsp), %r15d
	movl	%r13d, %r8d
	movq	152(%rsp), %r14
	movq	144(%rsp), %rbx
	movq	136(%rsp), %rdi
	movl	%ebp, %r9d
	movl	%r15d, %ecx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	call	modp_iNTT2_ext.part.0
	movl	%ebp, %r9d
	movl	%r13d, %r8d
	movl	%r15d, %ecx
	movq	128(%rsp), %rdi
	movq	%r14, %rdx
	movq	%rbx, %rsi
	call	modp_iNTT2_ext.part.0
.L316:
	addq	$1, 72(%rsp)
	movq	72(%rsp), %rax
	addq	$12, 88(%rsp)
	movq	88(%rsp), %rsi
	addq	$4, 136(%rsp)
	addq	$4, 128(%rsp)
	cmpq	%rax, 144(%rsp)
	je	.L292
	movl	-4(%rsi), %r13d
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L419:
	movq	120(%rsp), %rbx
	movq	96(%rsp), %r14
	movl	$1, %r8d
	movq	184(%rsp), %rbp
	movq	168(%rsp), %rdi
	movq	%r14, %r9
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	call	zint_rebuild_CRT.constprop.0
	movq	%r14, %r9
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movq	176(%rsp), %rdi
	movl	$1, %r8d
	movq	%rbx, %rsi
	call	zint_rebuild_CRT.constprop.0
	movq	88(%rsp), %rax
	movl	%r13d, %r8d
	movq	%r14, %rdi
	movl	48(%rsp), %r9d
	movl	160(%rsp), %edx
	movl	(%rax), %ecx
	movq	152(%rsp), %rsi
	call	modp_mkgm2
.L303:
	movl	$-2147483648, %ebx
	movl	232(%rsp), %r9d
	subl	%r13d, %ebx
	movl	%ebx, %r8d
	movl	%r8d, 80(%rsp)
	testl	%r9d, %r9d
	je	.L307
	movl	48(%rsp), %esi
	movl	%r13d, %edx
	movl	%r15d, %eax
	xorl	%ecx, %ecx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L309:
	btl	%ecx, %r9d
	jnc	.L308
	imulq	%rax, %r8
	movq	%r8, %r10
	imulq	%rsi, %r10
	andl	$2147483647, %r10d
	imulq	%rdx, %r10
	addq	%r8, %r10
	shrq	$31, %r10
	subl	%r13d, %r10d
	movl	%r10d, %r8d
	sarl	$31, %r8d
	andl	%r13d, %r8d
	addl	%r10d, %r8d
.L308:
	imulq	%rax, %rax
	addl	$1, %ecx
	movq	%rax, %r10
	imulq	%rsi, %rax
	andl	$2147483647, %eax
	imulq	%rdx, %rax
	addq	%r10, %rax
	shrq	$31, %rax
	subl	%r13d, %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	andl	%r13d, %r10d
	addl	%r10d, %eax
	movl	%edi, %r10d
	sall	%cl, %r10d
	cmpl	%r10d, %r9d
	jnb	.L309
	movl	%r8d, 80(%rsp)
.L307:
	movq	32(%rsp), %rbx
	movl	%r15d, %r8d
	movl	%r13d, %edx
	movq	40(%rsp), %rbp
	movq	176(%rsp), %r14
	movq	168(%rsp), %r12
	movq	%rbx, %r13
	movq	120(%rsp), %r15
	movq	192(%rsp), %rbx
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L421:
	movl	48(%rsp), %ecx
	movq	%r15, %rsi
	movq	%r12, %rdi
	movl	%r8d, 112(%rsp)
	movl	%edx, 104(%rsp)
	call	zint_mod_small_unsigned
	movl	-4(%r12,%rbx), %esi
	movl	104(%rsp), %edx
	movq	%r14, %rdi
	movl	112(%rsp), %r8d
	shrl	$30, %esi
	movl	%esi, %ecx
	negl	%ecx
	andl	80(%rsp), %ecx
	subl	%ecx, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	movl	%esi, %ecx
	movq	%r15, %rsi
	andl	%edx, %ecx
	addl	%ecx, %eax
	movl	48(%rsp), %ecx
	movl	%eax, 0(%r13)
	call	zint_mod_small_unsigned
	movl	-4(%r14,%rbx), %ecx
	movl	104(%rsp), %edx
	movl	112(%rsp), %r8d
	shrl	$30, %ecx
	negl	%ecx
	andl	80(%rsp), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%ecx, %eax
.L348:
	movl	%eax, 0(%rbp)
	addq	%rbx, %r12
	addq	%rbx, %r14
	addq	$4, %rbp
	addq	$4, %r13
	cmpq	%rbp, 16(%rsp)
	je	.L420
.L311:
	testq	%r15, %r15
	jne	.L421
	movl	$0, 0(%r13)
	xorl	%eax, %eax
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L420:
	movl	160(%rsp), %ebx
	movl	%r8d, %r15d
	movl	%edx, %r13d
	testl	%ebx, %ebx
	je	.L306
	movl	48(%rsp), %ebp
	movq	96(%rsp), %r14
	movl	%edx, %r8d
	movl	%ebx, %ecx
	movq	32(%rsp), %rdi
	movl	$1, %esi
	movl	%ebp, %r9d
	movq	%r14, %rdx
	call	modp_NTT2_ext.part.0
	movq	40(%rsp), %rdi
	movl	%ebp, %r9d
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movq	%r14, %rdx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L422
.L313:
	movl	164(%rsp), %eax
	testl	%eax, %eax
	je	.L317
	movl	48(%rsp), %r15d
	movl	164(%rsp), %r14d
	movl	%r13d, %r8d
	movl	$1, %esi
	movq	96(%rsp), %rbx
	movq	16(%rsp), %rdi
	movl	%r15d, %r9d
	movl	%r14d, %ecx
	movq	%rbx, %rdx
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rdi
	movl	%r15d, %r9d
	movl	%r13d, %r8d
	movl	%r14d, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	jmp	.L319
.L417:
	movsd	.LC3(%rip), %xmm0
	negl	%eax
	jmp	.L325
.L418:
	subq	$8, %rsp
	.cfi_def_cfa_offset 312
	pushq	88(%rsp)
	.cfi_def_cfa_offset 320
	pushq	%r12
	.cfi_def_cfa_offset 328
	movl	%esi, 32(%rsp)
	pushq	%rsi
	.cfi_def_cfa_offset 336
	movq	%r10, %rsi
	pushq	%rax
	.cfi_def_cfa_offset 344
	movl	%eax, 80(%rsp)
	pushq	%rbp
	.cfi_def_cfa_offset 352
	movq	168(%rsp), %r9
	movq	216(%rsp), %rcx
	movq	192(%rsp), %rdx
	movq	248(%rsp), %rdi
	movq	%r9, %r8
	movq	%r10, 80(%rsp)
	call	poly_sub_scaled_ntt
	addq	$40, %rsp
	.cfi_def_cfa_offset 312
	pushq	88(%rsp)
	.cfi_def_cfa_offset 320
	pushq	%r12
	.cfi_def_cfa_offset 328
	movl	32(%rsp), %esi
	pushq	%rsi
	.cfi_def_cfa_offset 336
	movl	72(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 344
	pushq	%rbp
	.cfi_def_cfa_offset 352
	movq	80(%rsp), %r10
	movq	168(%rsp), %r9
	movq	224(%rsp), %rcx
	movq	192(%rsp), %rdx
	movq	256(%rsp), %rdi
	movq	%r10, %rsi
	movq	%r9, %r8
	movq	%r10, 56(%rsp)
	call	poly_sub_scaled_ntt
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
	movq	8(%rsp), %r10
	movl	48(%rsp), %r11d
	jmp	.L334
.L352:
	movapd	%xmm4, %xmm1
	jmp	.L326
.L336:
	movq	144(%rsp), %rbx
	salq	$2, %rbx
	cmpq	120(%rsp), %r10
	jnb	.L343
	movq	120(%rsp), %rax
	movq	200(%rsp), %rdi
	leaq	0(,%r10,4), %r8
	xorl	%r9d, %r9d
	movq	208(%rsp), %r10
	leaq	0(,%rax,4), %rcx
	leaq	(%r10,%rcx), %rsi
	addq	%rdi, %rcx
.L342:
	movl	-4(%rdi,%r8), %edx
	leaq	(%rdi,%r8), %rax
	shrl	$30, %edx
	negl	%edx
	shrl	%edx
.L340:
	movl	%edx, (%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L340
	movl	-4(%r10,%r8), %edx
	leaq	(%r10,%r8), %rax
	shrl	$30, %edx
	negl	%edx
	shrl	%edx
.L341:
	movl	%edx, (%rax)
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L341
	addq	$1, %r9
	addq	%rbx, %rdi
	addq	%rbx, %r10
	addq	%rbx, %rsi
	addq	%rbx, %rcx
	cmpq	%r9, 184(%rsp)
	jne	.L342
.L343:
	movq	184(%rsp), %r13
	movq	120(%rsp), %r14
	xorl	%ebp, %ebp
	movq	200(%rsp), %rcx
	addq	%r13, %r13
	salq	$2, %r14
	movq	%rcx, %r12
.L339:
	movq	%r12, %rsi
	movq	%rcx, %rdi
	movq	%r14, %rdx
	addq	$1, %rbp
	call	memmove@PLT
	addq	%rbx, %r12
	movq	%rax, %rcx
	addq	%r14, %rcx
	cmpq	%r13, %rbp
	jne	.L339
	movl	$1, %eax
	jmp	.L291
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
	subq	$648, %rsp
	.cfi_def_cfa_offset 704
	movq	%rdx, 16(%rsp)
	movl	$8, %edx
	movq	712(%rsp), %r12
	movq	%rdx, %rax
	movq	%rcx, 416(%rsp)
	movzbl	704(%rsp), %ecx
	movq	%rsi, 32(%rsp)
	movl	$1, %esi
	movq	712(%rsp), %r14
	salq	%cl, %rax
	movq	%rsi, %rbp
	movq	%rdi, 112(%rsp)
	movq	%rsi, %rdi
	addq	%rax, %r12
	movq	%rax, 576(%rsp)
	salq	%cl, %rbp
	movq	%r12, %rbx
	movq	%rbp, 24(%rsp)
	movq	%rbp, %r13
	addq	%rax, %rbx
	movl	$2, %eax
	movq	%r12, 120(%rsp)
	movq	%rbx, 224(%rsp)
	movq	%rax, %rbx
	salq	%cl, %rbx
	movq	712(%rsp), %rcx
	addq	%rbx, %rcx
	testq	%r9, %r9
	movl	704(%rsp), %ebx
	cmove	712(%rsp), %r9
	cmovne	712(%rsp), %rcx
	movq	%r9, 248(%rsp)
	leal	-1(%rbx), %r9d
	movq	%rcx, 256(%rsp)
	movl	%r9d, %ecx
	salq	%cl, %rdi
	movl	%r9d, 320(%rsp)
	movq	%rdi, %r15
	movq	%rdi, 288(%rsp)
	addq	%rdi, %rdi
	shrq	%r15
	leaq	0(,%r15,8), %rcx
	movq	%r15, 208(%rsp)
	addq	%rcx, %r14
	movq	%rcx, %rbx
	movl	%r9d, %ecx
	salq	%cl, %rax
	addq	%r14, %rbx
	movq	%r14, 432(%rsp)
	salq	$2, %rax
	movq	%rbx, 440(%rsp)
	addq	%rax, %rbx
	movq	%rax, 584(%rsp)
	movq	%rbx, 448(%rsp)
	movq	712(%rsp), %rbx
	addq	%rax, %rbx
	movq	%rbx, 456(%rsp)
	addq	%rax, %rbx
	movl	$4, %eax
	movq	%rax, %r10
	movq	%rbx, 360(%rsp)
	salq	%cl, %r10
	movzbl	704(%rsp), %ecx
	movq	%rdi, 608(%rsp)
	addq	%r10, %rbx
	movq	%r10, 464(%rsp)
	movq	%rbx, 592(%rsp)
	addq	%r10, %rbx
	salq	%cl, %rax
	movq	%rbx, %r14
	leaq	(%rbx,%rax), %rcx
	movq	%rbx, 296(%rsp)
	addq	%r10, %r14
	movq	%rcx, 328(%rsp)
	addq	%r10, %rcx
	movq	%r14, 312(%rsp)
	addq	%r10, %r14
	movq	%r14, 600(%rsp)
	addq	%r10, %r14
	movq	%rcx, 336(%rsp)
	addq	%rax, %rcx
	movq	%r14, 216(%rsp)
	addq	%r10, %r14
	movq	%rcx, 344(%rsp)
	leaq	(%r14,%r15,4), %rcx
	movq	%rdx, %r15
	movq	%r14, 192(%rsp)
	movq	%rbx, %r14
	movq	%rcx, 200(%rsp)
	movq	%rbx, %rcx
	movq	%r10, %rbx
	addq	712(%rsp), %r10
	movq	%r10, 472(%rsp)
	addq	%rbx, %r10
	subq	712(%rsp), %rcx
	movq	%r10, %rbx
	subq	712(%rsp), %rbx
	leaq	8(%rcx), %r11
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	andl	$7, %ebx
	movl	%r9d, %ecx
	andl	$7, %edi
	movq	%rbx, %rsi
	leaq	8(%rdx), %rbx
	movl	$16, %edx
	salq	%cl, %r15
	salq	%cl, %rdx
	movq	%r15, 352(%rsp)
	movq	%rdx, 480(%rsp)
	movl	$32, %edx
	salq	%cl, %rdx
	movq	%r15, %rcx
	addq	712(%rsp), %r15
	movq	%r15, %r9
	movq	%r15, 496(%rsp)
	movq	%rcx, %r15
	addq	%rcx, %r9
	movq	%rdx, 616(%rsp)
	movq	%r9, 504(%rsp)
	addq	%rcx, %r9
	movq	%r9, 512(%rsp)
	addq	%rcx, %r9
	shrq	%rbp
	movq	%r9, 520(%rsp)
	addq	%rcx, %r9
	movq	712(%rsp), %rcx
	leaq	0(,%rbp,4), %rdx
	movq	%r9, 624(%rsp)
	addq	%rdx, %rcx
	movq	%rbp, 528(%rsp)
	addq	%rcx, %rdx
	movq	%rcx, 368(%rsp)
	movq	%rdx, %rcx
	movq	%rdx, 376(%rsp)
	addq	%rax, %rcx
	movq	%rcx, 384(%rsp)
	addq	%rax, %rcx
	movq	%rcx, 392(%rsp)
	addq	%rax, %rcx
	movq	%rcx, 536(%rsp)
	movq	712(%rsp), %rcx
	addq	%rax, %rcx
	movq	%rcx, 280(%rsp)
	addq	%rax, %rcx
	movq	%rcx, 264(%rsp)
	addq	%rax, %rcx
	leaq	(%rcx,%rax), %r9
	movq	%rcx, 232(%rsp)
	movq	%r9, %rdx
	subq	712(%rsp), %rdx
	movq	%r9, 240(%rsp)
	movq	%rdx, %r9
	leaq	8(%rdx), %rcx
	andl	$7, %r9d
	subq	%r9, %rcx
	testq	%r9, %r9
	cmovne	%rcx, %rdx
	movq	232(%rsp), %rcx
	addq	712(%rsp), %rdx
	subq	712(%rsp), %rcx
	movq	%rdx, 544(%rsp)
	movq	%rcx, %rdx
	andl	$7, %ecx
	movq	%rcx, %r9
	leaq	8(%rdx), %rcx
	subq	%r9, %rcx
	testq	%r9, %r9
	movq	240(%rsp), %r9
	cmovne	%rcx, %rdx
	movq	712(%rsp), %rcx
	salq	$3, %rbp
	movq	%rbp, 632(%rsp)
	addq	%rdx, %rcx
	movq	%rcx, 552(%rsp)
	addq	%rbp, %rcx
	testq	%r8, %r8
	cmove	%r12, %r8
	subq	%rdi, %r11
	addq	712(%rsp), %r11
	testq	%rdi, %rdi
	movq	%r11, %rdi
	movq	%rcx, 560(%rsp)
	cmove	%r14, %rdi
	subq	%rsi, %rbx
	addq	712(%rsp), %rbx
	testq	%rsi, %rsi
	cmove	%r10, %rbx
	movq	%r8, 424(%rsp)
	movq	%rdi, 400(%rsp)
	movq	%rbx, 408(%rsp)
	leaq	(%rbx,%r15,2), %rbx
	movq	%rbx, 488(%rsp)
	leaq	(%r9,%rax), %rbx
	addq	%rbx, %rax
	movq	%rbx, 272(%rsp)
	leaq	-4(%rax,%r13,4), %rbx
	movq	%rax, 304(%rsp)
	movq	32(%rsp), %rax
	movq	%rbx, 568(%rsp)
	movl	704(%rsp), %ebx
	movq	%rbx, 80(%rsp)
	leaq	0(%r13,%rax), %rbx
	movq	16(%rsp), %rax
	movq	%rbx, 176(%rsp)
	addq	%r13, %rax
	movq	%rax, 184(%rsp)
	.p2align 4,,10
	.p2align 3
.L424:
	movq	112(%rsp), %rbx
	movq	32(%rsp), %r15
	movl	704(%rsp), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	poly_small_mkgauss
	movq	16(%rsp), %r14
	movl	704(%rsp), %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	poly_small_mkgauss
	movq	80(%rsp), %rbx
	movq	%r15, %rdi
	movq	%r14, %r8
	leaq	falcon_inner_max_fg_bits(%rip), %rax
	movq	24(%rsp), %r9
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
.L426:
	movsbl	(%rdi,%rax), %edx
	cmpl	%ecx, %edx
	jge	.L424
	cmpl	%esi, %edx
	jle	.L424
	movsbl	(%r8,%rax), %edx
	cmpl	%edx, %esi
	jge	.L424
	cmpl	%ecx, %edx
	jge	.L424
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L426
	testl	%ecx, %ecx
	js	.L424
	movq	32(%rsp), %rdx
	movq	176(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L427:
	movsbl	(%rdx), %eax
	addq	$1, %rdx
	imull	%eax, %eax
	addl	%eax, %ecx
	orl	%ecx, %edi
	cmpq	%rdx, %rsi
	jne	.L427
	sarl	$31, %edi
	movq	16(%rsp), %rdx
	movq	184(%rsp), %r8
	xorl	%esi, %esi
	orl	%ecx, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L428:
	movsbl	(%rdx), %eax
	addq	$1, %rdx
	imull	%eax, %eax
	addl	%eax, %ecx
	orl	%ecx, %esi
	cmpq	%rdx, %r8
	jne	.L428
	sarl	$31, %esi
	orl	%ecx, %esi
	movl	%esi, %eax
	addl	%edi, %esi
	orl	%edi, %eax
	sarl	$31, %eax
	orl	%esi, %eax
	cmpl	$16822, %eax
	ja	.L424
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rsi
	xorl	%eax, %eax
	movq	712(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L429:
	movsbl	(%rsi,%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L429
	movq	24(%rsp), %rcx
	movq	120(%rsp), %rsi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L430:
	movsbl	(%rdi,%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L430
	movl	704(%rsp), %esi
	movq	712(%rsp), %rdi
	call	falcon_inner_FFT@PLT
	movq	120(%rsp), %rbx
	movl	704(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_FFT@PLT
	movq	224(%rsp), %r14
	movl	704(%rsp), %ecx
	movq	%rbx, %rdx
	movq	712(%rsp), %rsi
	movq	%r14, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	704(%rsp), %esi
	movq	712(%rsp), %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movl	704(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movl	704(%rsp), %esi
	movsd	fpr_q(%rip), %xmm0
	movq	712(%rsp), %rdi
	call	falcon_inner_poly_mulconst@PLT
	movsd	fpr_q(%rip), %xmm0
	movl	704(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_poly_mulconst@PLT
	movl	704(%rsp), %edx
	movq	712(%rsp), %rdi
	movq	%r14, %rsi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	704(%rsp), %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	704(%rsp), %esi
	movq	712(%rsp), %rdi
	call	falcon_inner_iFFT@PLT
	movl	704(%rsp), %esi
	movq	%rbx, %rdi
	call	falcon_inner_iFFT@PLT
	movq	24(%rsp), %rdx
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	movq	712(%rsp), %rsi
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L431:
	movsd	(%rsi,%rax,8), %xmm0
	movsd	(%rcx,%rax,8), %xmm2
	addq	$1, %rax
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	addsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	cmpq	%rax, %rdx
	jne	.L431
	movsd	.LC8(%rip), %xmm5
	comisd	%xmm1, %xmm5
	jbe	.L424
	movq	32(%rsp), %r14
	movq	256(%rsp), %r8
	movl	704(%rsp), %ecx
	movq	16(%rsp), %rdx
	movq	248(%rsp), %rdi
	movq	%r14, %rsi
	call	falcon_inner_compute_public@PLT
	testl	%eax, %eax
	je	.L424
	movq	80(%rsp), %rax
	movq	16(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rsi
	leaq	falcon_inner_max_FG_bits(%rip), %rbx
	movq	712(%rsp), %r13
	movl	704(%rsp), %r8d
	movzbl	(%rbx,%rax), %ebx
	movl	%r8d, %ecx
	movb	%bl, 327(%rsp)
	leaq	MAX_BL_SMALL(%rip), %rbx
	movq	(%rbx,%rax,8), %r15
	leaq	0(,%r15,4), %rbx
	movq	%r15, 48(%rsp)
	addq	%rbx, %r13
	leaq	0(%r13,%rbx), %rbp
	movq	%r13, 88(%rsp)
	leaq	0(%rbp,%rbx), %r12
	movq	%rbp, %rdi
	movq	%rbp, 96(%rsp)
	leaq	(%r12,%rbx), %rax
	movq	%r12, 104(%rsp)
	movq	%rax, 72(%rsp)
	call	make_fg
	movq	72(%rsp), %r14
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	$2, %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	movq	%r14, %r9
	call	zint_rebuild_CRT.constprop.0
	testq	%r15, %r15
	je	.L424
	leaq	(%r14,%rbx), %rax
	movl	$2, %ecx
	movq	%r14, 72(%rsp)
	leaq	(%rax,%rbx), %r9
	movq	%rax, 128(%rsp)
	movl	%ecx, %edx
	movl	%ecx, %esi
	movl	0(%rbp), %eax
	leaq	(%r9,%rbx), %r14
	movq	%r9, 8(%rsp)
	subl	%eax, %edx
	movl	%eax, %edi
	imull	%edx, %edi
	subl	%edi, %esi
	movl	%eax, %edi
	imull	%esi, %edx
	movl	%ecx, %esi
	imull	%edx, %edi
	subl	%edi, %esi
	movl	%eax, %edi
	imull	%esi, %edx
	movl	%ecx, %esi
	imull	%edx, %edi
	subl	%edi, %esi
	imull	%esi, %edx
	imull	%edx, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	movl	%ecx, %edx
	movl	%eax, %esi
	movl	(%r12), %eax
	andl	$2147483647, %esi
	subl	%eax, %edx
	movl	%eax, %edi
	movl	%esi, 148(%rsp)
	movl	%ecx, %esi
	imull	%edx, %edi
	subl	%edi, %esi
	movl	%eax, %edi
	imull	%esi, %edx
	movl	%ecx, %esi
	imull	%edx, %edi
	subl	%edi, %esi
	movl	%eax, %edi
	imull	%esi, %edx
	movl	%ecx, %esi
	imull	%edx, %edi
	subl	%edi, %esi
	movq	%r9, %rdi
	imull	%esi, %edx
	imull	%edx, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	andl	$2147483647, %esi
	movl	%esi, 144(%rsp)
	movq	%rbp, %rsi
	call	memcpy@PLT
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
	leaq	-1(%r15), %rsi
	leaq	4(%r13), %rdi
	movl	$1, 0(%r13)
	leaq	0(,%rsi,4), %rdx
	movq	%rsi, 136(%rsp)
	xorl	%esi, %esi
	call	memset@PLT
	movq	712(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset@PLT
	movq	72(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	%rbp, %rsi
	movq	128(%rsp), %rbp
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	call	memcpy@PLT
	imull	$62, %r15d, %eax
	subl	$1, 0(%rbp)
	addl	$30, %eax
	movl	%eax, 44(%rsp)
	cmpl	$29, %eax
	jbe	.L433
	movq	8(%rsp), %r9
	leaq	-4(%rbx), %rax
	leaq	(%r9,%rax), %rdi
	addq	%r14, %rax
	movq	%rax, 168(%rsp)
	leaq	(%rbx,%r14), %rax
	movq	%rdi, 160(%rsp)
	movq	%rax, 152(%rsp)
	.p2align 4,,10
	.p2align 3
.L434:
	movl	$-1, %edx
	movq	8(%rsp), %r11
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	136(%rsp), %rsi
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	movl	%edx, %ebx
	movl	$-1, %ecx
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L495:
	movl	%eax, %ecx
.L435:
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
	jne	.L495
	movq	8(%rsp), %rax
	notl	%ebx
	movl	%edi, %edx
	andl	%ecx, %edi
	andl	%ebx, %edx
	andl	%r8d, %ecx
	andl	%r8d, %ebx
	orl	%r10d, %edi
	movl	(%rax), %esi
	movl	(%r14), %eax
	orl	%r9d, %ecx
	salq	$31, %rdx
	salq	$31, %rbx
	addq	%rdi, %rdx
	xorl	%r12d, %r12d
	movl	$1, %r10d
	movl	%esi, 56(%rsp)
	addq	%rcx, %rbx
	movl	%eax, %edi
	movl	$1, %r9d
	movl	%eax, 64(%rsp)
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L436:
	movq	%rbx, %rax
	movq	%rbx, %rbp
	subq	%rdx, %rax
	xorq	%rdx, %rbp
	movq	%rax, %r11
	xorq	%rdx, %r11
	andq	%r11, %rbp
	movl	%edi, %r11d
	xorq	%rax, %rbp
	movl	%esi, %eax
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
	andl	%edi, %r11d
	subq	%r15, %rdx
	subl	%r11d, %esi
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
	andl	%esi, %r12d
	subl	%r12d, %edi
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
	andl	%esi, %ebp
	andl	%edi, %eax
	addl	%ebp, %esi
	leaq	-1(%r13), %rbp
	addl	%eax, %edi
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
	jne	.L436
	movq	48(%rsp), %rbx
	movq	8(%rsp), %r11
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	56(%rsp), %edx
	movl	64(%rsp), %esi
	xorl	%edi, %edi
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L582:
	movl	(%r11,%rdi,4), %edx
	movl	(%r14,%rdi,4), %esi
.L439:
	movq	%rdx, %rbp
	imulq	%r8, %rdx
	movq	%rsi, %r13
	imulq	%r9, %rbp
	imulq	%r12, %r13
	imulq	%r10, %rsi
	addq	%r13, %rbp
	addq	%rsi, %rdx
	addq	%rbp, %rax
	addq	%rdx, %rcx
	testq	%rdi, %rdi
	je	.L437
	movl	%eax, %edx
	andl	$2147483647, %edx
	movl	%edx, -4(%r11,%rdi,4)
	movl	%ecx, %edx
	andl	$2147483647, %edx
	movl	%edx, -4(%r14,%rdi,4)
.L437:
	sarq	$31, %rax
	addq	$1, %rdi
	sarq	$31, %rcx
	cmpq	%rdi, %rbx
	jne	.L582
	movq	160(%rsp), %rbx
	movq	%rax, %rdx
	movq	8(%rsp), %rdi
	shrq	$63, %rdx
	movl	%eax, (%rbx)
	movq	168(%rsp), %rbx
	sarq	$63, %rax
	movl	%edx, %esi
	shrl	%eax
	movl	%ecx, (%rbx)
	shrq	$63, %rcx
	.p2align 4,,10
	.p2align 3
.L440:
	movl	(%rdi), %r11d
	addq	$4, %rdi
	xorl	%eax, %r11d
	addl	%r11d, %esi
	movl	%esi, %r11d
	shrl	$31, %esi
	andl	$2147483647, %r11d
	movl	%r11d, -4(%rdi)
	cmpq	%rdi, %r14
	jne	.L440
	movl	%ecx, %edi
	movq	152(%rsp), %rbx
	movq	%r14, %rsi
	movl	%ecx, %eax
	negl	%edi
	shrl	%edi
	.p2align 4,,10
	.p2align 3
.L441:
	movl	(%rsi), %r11d
	addq	$4, %rsi
	xorl	%edi, %r11d
	addl	%r11d, %eax
	movl	%eax, %r11d
	shrl	$31, %eax
	andl	$2147483647, %r11d
	movl	%r11d, -4(%rsi)
	cmpq	%rsi, %rbx
	jne	.L441
	negq	%rdx
	leaq	(%r9,%r9), %rax
	movq	%r9, %rbx
	movq	%r12, %rbp
	andq	%rdx, %rax
	negq	%rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 712
	subq	%rax, %rbx
	leaq	(%r12,%r12), %rax
	andq	%rdx, %rax
	movq	%rbx, %r9
	subq	%rax, %rbp
	leaq	(%r8,%r8), %rax
	andq	%rcx, %rax
	subq	%rax, %r8
	leaq	(%r10,%r10), %rax
	andq	%rax, %rcx
	movq	%r8, %r12
	subq	%rcx, %r10
	pushq	%r10
	.cfi_def_cfa_offset 720
	movq	%r10, %r13
	pushq	%r8
	.cfi_def_cfa_offset 728
	pushq	%rbp
	.cfi_def_cfa_offset 736
	movq	80(%rsp), %r15
	movl	176(%rsp), %r8d
	movq	136(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	120(%rsp), %rdi
	movq	%r15, %rcx
	call	zint_co_reduce_mod
	addq	$24, %rsp
	.cfi_def_cfa_offset 712
	movq	%rbx, %r9
	movq	%r15, %rcx
	pushq	%r13
	.cfi_def_cfa_offset 720
	pushq	%r12
	.cfi_def_cfa_offset 728
	pushq	%rbp
	.cfi_def_cfa_offset 736
	movl	180(%rsp), %r8d
	movq	128(%rsp), %rdx
	movq	160(%rsp), %rsi
	movq	744(%rsp), %rdi
	call	zint_co_reduce_mod
	subl	$30, 76(%rsp)
	movl	76(%rsp), %eax
	addq	$32, %rsp
	.cfi_def_cfa_offset 704
	cmpl	$29, %eax
	ja	.L434
.L433:
	movq	8(%rsp), %rax
	movl	(%rax), %ebx
	movl	%ebx, %edx
	movl	%ebx, 8(%rsp)
	xorl	$1, %edx
	cmpq	$1, 48(%rsp)
	je	.L442
	addq	$4, %rax
	.p2align 4,,10
	.p2align 3
.L443:
	orl	(%rax), %edx
	addq	$4, %rax
	cmpq	%rax, %r14
	jne	.L443
.L442:
	movq	96(%rsp), %rbx
	movl	%edx, %eax
	negl	%eax
	orl	%edx, %eax
	movl	(%rbx), %edx
	movq	104(%rsp), %rbx
	sarl	$31, %eax
	addl	$1, %eax
	andl	(%rbx), %edx
	testl	%edx, %eax
	je	.L424
	movq	712(%rsp), %rax
	movq	88(%rsp), %rdi
	movq	%rax, 48(%rsp)
	movq	%rax, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L444:
	movl	(%rcx), %esi
	movl	%eax, %eax
	addq	$4, %rcx
	leaq	(%rsi,%rsi,2), %rdx
	salq	$12, %rdx
	addq	%rsi, %rdx
	addq	%rdx, %rax
	movl	%eax, %edx
	shrq	$31, %rax
	andl	$2147483647, %edx
	movl	%edx, -4(%rcx)
	cmpq	%rcx, %rdi
	jne	.L444
	testl	%eax, %eax
	jne	.L424
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L445:
	movl	(%rcx), %esi
	movl	%eax, %eax
	addq	$4, %rcx
	leaq	(%rsi,%rsi,2), %rdx
	salq	$12, %rdx
	addq	%rsi, %rdx
	addq	%rdx, %rax
	movl	%eax, %edx
	shrq	$31, %rax
	andl	$2147483647, %edx
	movl	%edx, -4(%rcx)
	cmpq	%rcx, %rdi
	jne	.L445
	testl	%eax, %eax
	jne	.L424
	cmpl	$2, 704(%rsp)
	ja	.L583
	movl	704(%rsp), %ebx
	movq	32(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	712(%rsp), %r14
	movl	%ebx, %r13d
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L448:
	movq	%r14, %r8
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	je	.L424
.L446:
	subl	$1, %ebx
	jnb	.L448
.L488:
	movzbl	327(%rsp), %ecx
	movl	$1, %edx
	movq	24(%rsp), %r9
	movl	%edx, %eax
	movq	416(%rsp), %r10
	movq	712(%rsp), %r8
	subl	$1, %ecx
	sall	%cl, %eax
	movl	%edx, %ecx
	xorl	%edx, %edx
	leal	-1(%rax), %esi
	subl	%eax, %ecx
	.p2align 4,,10
	.p2align 3
.L449:
	movl	(%r8,%rdx,4), %edi
	leal	(%rdi,%rdi), %eax
	andl	$-2147483648, %eax
	orl	%edi, %eax
	cmpl	%ecx, %eax
	jl	.L424
	cmpl	%eax, %esi
	jl	.L424
	movb	%al, (%r10,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.L449
	movq	24(%rsp), %r8
	movq	424(%rsp), %r9
	xorl	%edx, %edx
	movq	280(%rsp), %r10
.L489:
	movl	(%r10,%rdx,4), %edi
	leal	(%rdi,%rdi), %eax
	andl	$-2147483648, %eax
	orl	%edi, %eax
	cmpl	%eax, %esi
	jl	.L424
	cmpl	%ecx, %eax
	jl	.L424
	movb	%al, (%r9,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L489
	movl	704(%rsp), %edx
	movq	712(%rsp), %rsi
	movl	$2147473409, %r8d
	movl	$2042615807, %r9d
	movq	240(%rsp), %rdi
	movl	$383167813, %ecx
	call	modp_mkgm2
	movq	24(%rsp), %rsi
	movq	424(%rsp), %rdi
	xorl	%edx, %edx
	movq	712(%rsp), %r8
.L491:
	movsbl	(%rdi,%rdx), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%ecx, %eax
	movl	%eax, (%r8,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L491
	movq	24(%rsp), %rcx
	movq	32(%rsp), %r9
	xorl	%eax, %eax
	movq	280(%rsp), %rsi
	movq	264(%rsp), %rdi
	movq	232(%rsp), %r8
	movq	16(%rsp), %r10
	movq	416(%rsp), %r11
.L492:
	movsbl	(%r9,%rax), %ebx
	movl	%ebx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ebx, %edx
	movl	%edx, (%rsi,%rax,4)
	movsbl	(%r10,%rax), %ebx
	movl	%ebx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ebx, %edx
	movl	%edx, (%rdi,%rax,4)
	movsbl	(%r11,%rax), %ebx
	movl	%ebx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ebx, %edx
	movl	%edx, (%r8,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L492
	movl	704(%rsp), %eax
	testl	%eax, %eax
	je	.L493
	movq	240(%rsp), %rbx
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	280(%rsp), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	call	modp_NTT2_ext.part.0
	movl	704(%rsp), %ecx
	movq	%rbx, %rdx
	movq	264(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	movl	704(%rsp), %ecx
	movq	%rbx, %rdx
	movq	232(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	movl	704(%rsp), %ecx
	movq	%rbx, %rdx
	movq	712(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
.L493:
	movq	24(%rsp), %rdi
	movq	280(%rsp), %r8
	xorl	%ecx, %ecx
	movq	264(%rsp), %r9
	movq	232(%rsp), %r10
	movq	712(%rsp), %r11
.L494:
	movl	(%r10,%rcx,4), %eax
	movl	(%r9,%rcx,4), %edx
	movl	(%r11,%rcx,4), %esi
	imulq	%rax, %rdx
	imulq	$2042615807, %rdx, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rdx, %rax
	movl	(%r8,%rcx,4), %edx
	shrq	$31, %rax
	imulq	%rsi, %rdx
	imulq	$2042615807, %rdx, %rsi
	andl	$2147483647, %esi
	imulq	$2147473409, %rsi, %rsi
	addq	%rdx, %rsi
	shrq	$31, %rsi
	leal	-2147473409(%rsi), %edx
	subl	%eax, %esi
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%esi, %edx
	leal	-2147473409(%rax), %esi
	sarl	$31, %esi
	movl	%edx, %eax
	andl	$2147473409, %esi
	subl	%esi, %eax
	cltd
	andl	$2147473409, %edx
	addl	%edx, %eax
	cmpl	$1916765260, %eax
	jne	.L424
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L494
	addq	$648, %rsp
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
.L583:
	.cfi_restore_state
	movl	320(%rsp), %ebx
	movq	32(%rsp), %rbp
	movq	16(%rsp), %r12
	movl	704(%rsp), %r13d
	movq	712(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L447:
	movq	%r14, %r8
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	je	.L424
	subl	$1, %ebx
	cmpl	$1, %ebx
	jne	.L447
	leaq	PRIMES(%rip), %rax
	movq	448(%rsp), %r13
	movq	440(%rsp), %r15
	movl	$2147473409, %r8d
	movq	%rax, 72(%rsp)
	movq	208(%rsp), %r11
	movq	%rax, 8(%rsp)
.L455:
	movl	$2, %eax
	movl	$2, %edx
	movl	%r8d, %edi
	xorl	%r12d, %r12d
	subl	%r8d, %eax
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%r8d, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %esi
	imull	%r8d, %esi
	subl	$2, %esi
	imull	%eax, %esi
	andl	$2147483647, %esi
	movl	%esi, %r9d
	call	modp_R2
	movl	%r9d, %esi
	movl	%r8d, %r9d
	movq	432(%rsp), %rbp
	movl	%eax, %edi
	movl	$-2147483648, %eax
	movq	712(%rsp), %r10
	subl	%r8d, %eax
	imulq	%rdi, %rax
	movq	%rax, %r14
	imulq	%rsi, %r14
	andl	$2147483647, %r14d
	imulq	%r9, %r14
	addq	%rax, %r14
	shrq	$31, %r14
	subl	%r8d, %r14d
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%eax, %r14d
	.p2align 4,,10
	.p2align 3
.L450:
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L497:
	xorl	%edx, %edx
.L451:
	imulq	%rdi, %rax
	movq	%rsi, %rcx
	imulq	%rax, %rcx
	andl	$2147483647, %ecx
	imulq	%r9, %rcx
	addq	%rcx, %rax
	movl	(%r10,%rdx,4), %ecx
	shrq	$31, %rax
	subl	%r8d, %eax
	subl	%r8d, %ecx
	movl	%eax, %ebx
	subl	%r8d, %eax
	sarl	$31, %ebx
	andl	%r8d, %ebx
	addl	%ebx, %eax
	addl	%ecx, %eax
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ecx, %eax
	testq	%rdx, %rdx
	jne	.L497
	movl	4(%r10), %edx
	movl	$1, %ebx
	shrl	$30, %edx
	negl	%edx
	andl	%r14d, %edx
	subl	%edx, %eax
	cltd
	andl	%r8d, %edx
	addl	%edx, %eax
	movl	%eax, (%r15,%r12,8)
	xorl	%eax, %eax
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L498:
	xorl	%ebx, %ebx
.L452:
	imulq	%rdi, %rax
	movq	%rsi, %rdx
	imulq	%rax, %rdx
	andl	$2147483647, %edx
	imulq	%r9, %rdx
	addq	%rdx, %rax
	movl	0(%rbp,%rbx,4), %edx
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
	testq	%rbx, %rbx
	jne	.L498
	movl	4(%rbp), %edx
	addq	$8, %r10
	addq	$8, %rbp
	shrl	$30, %edx
	negl	%edx
	andl	%r14d, %edx
	subl	%edx, %eax
	cltd
	andl	%r8d, %edx
	addl	%edx, %eax
	movl	%eax, 0(%r13,%r12,8)
	addq	$1, %r12
	cmpq	%r12, %r11
	ja	.L450
	addq	$12, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$4, %r13
	addq	$4, %r15
	leaq	24+PRIMES(%rip), %rdi
	cmpq	%rax, %rdi
	je	.L454
	movl	(%rax), %r8d
	jmp	.L455
.L454:
	movq	584(%rsp), %r14
	movq	440(%rsp), %rsi
	movl	$2147473409, %ebp
	movq	712(%rsp), %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%r14, %rdx
	movq	456(%rsp), %r14
	movq	448(%rsp), %rsi
	movq	%r14, %rdi
	call	memmove@PLT
	movq	%rbx, 96(%rsp)
	movl	704(%rsp), %eax
	movl	$383167813, %r10d
	movq	$0, 64(%rsp)
	subl	$2, %eax
	movq	%r14, 56(%rsp)
	movq	600(%rsp), %r14
	movl	%eax, 88(%rsp)
.L461:
	movl	$2, %eax
	movl	$2, %edx
	movl	%ebp, %edi
	movl	%ebp, %r8d
	subl	%ebp, %eax
	movl	%eax, %ecx
	imull	%ebp, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebp, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	imull	%ebp, %ecx
	subl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, %edx
	imull	%ebp, %edx
	subl	$2, %edx
	imull	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %esi
	movl	%eax, %r9d
	movl	%eax, 44(%rsp)
	call	modp_R2
	movq	328(%rsp), %rsi
	movq	296(%rsp), %rdi
	movl	%r10d, %ecx
	movl	704(%rsp), %edx
	movl	%eax, %ebx
	call	modp_mkgm2
	movq	24(%rsp), %rcx
	movq	32(%rsp), %r8
	xorl	%eax, %eax
	movq	336(%rsp), %rsi
	movq	344(%rsp), %rdi
	movq	16(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L456:
	movsbl	(%r8,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	%ebp, %edx
	addl	%r10d, %edx
	movl	%edx, (%rsi,%rax,4)
	movsbl	(%r9,%rax), %r10d
	movl	%r10d, %edx
	sarl	$31, %edx
	andl	%ebp, %edx
	addl	%r10d, %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L456
	movl	44(%rsp), %r15d
	movl	%ebp, %r8d
	movl	$1, %esi
	movq	296(%rsp), %r13
	movq	336(%rsp), %r12
	movl	704(%rsp), %ecx
	movl	%r15d, %r9d
	movq	%r13, %rdx
	movq	%r12, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r13, %rdx
	movl	%r15d, %r9d
	movl	%ebp, %r8d
	movq	344(%rsp), %r13
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r13, %rdi
	call	modp_NTT2_ext.part.0
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%ebp, %edx
	movl	704(%rsp), %esi
	movq	%r12, %rdi
	call	modp_poly_rec_res
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%ebp, %edx
	movl	704(%rsp), %esi
	movq	%r13, %rdi
	call	modp_poly_rec_res
	movq	464(%rsp), %r15
	movq	328(%rsp), %rsi
	movq	312(%rsp), %rdi
	movq	%r15, %rdx
	call	memmove@PLT
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	memmove@PLT
	movq	216(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	call	memmove@PLT
	movq	208(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%eax, %eax
	movq	192(%rsp), %rsi
	movq	200(%rsp), %rdi
	movq	48(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L457:
	movl	(%r9,%rax,8), %edx
	movl	%edx, (%rsi,%rax,4)
	movl	(%r8,%rax,8), %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	ja	.L457
	movl	44(%rsp), %r15d
	movl	88(%rsp), %r12d
	movl	%ebp, %r8d
	movl	$1, %esi
	movq	296(%rsp), %r13
	movq	192(%rsp), %rdi
	movl	%r15d, %r9d
	movl	%r12d, %ecx
	movq	%r13, %rdx
	call	modp_NTT2_ext.part.0
	movl	%r15d, %r9d
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movq	200(%rsp), %rdi
	movq	%r13, %rdx
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	movl	%ebx, %eax
	movq	48(%rsp), %r11
	movl	%r15d, %r10d
	movq	%rax, 8(%rsp)
	movq	56(%rsp), %rbx
	movl	%ebp, %r9d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L458:
	movq	192(%rsp), %rax
	movq	216(%rsp), %r15
	movq	200(%rsp), %r12
	movl	(%r14,%rcx,8), %esi
	movl	(%rax,%rcx,4), %edx
	imulq	8(%rsp), %rdx
	movl	(%r15,%rcx,8), %r8d
	movl	4(%r15,%rcx,8), %r15d
	movl	(%r12,%rcx,4), %r12d
	imulq	8(%rsp), %r12
	movq	%rdx, %rax
	movl	4(%r14,%rcx,8), %edi
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdx, %rax
	movq	%r12, %rdx
	shrq	$31, %rax
	imulq	%r10, %rdx
	subl	%ebp, %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	andl	$2147483647, %edx
	andl	%ebp, %r13d
	imulq	%r9, %rdx
	addl	%eax, %r13d
	movl	%r13d, %r13d
	imulq	%r13, %r15
	addq	%r12, %rdx
	imulq	%r13, %r8
	shrq	$31, %rdx
	subl	%ebp, %edx
	movq	%r15, %rax
	movl	%edx, %r12d
	imulq	%r10, %rax
	sarl	$31, %r12d
	andl	%ebp, %r12d
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%r15, %rax
	shrq	$31, %rax
	subl	%ebp, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%ebp, %r15d
	addl	%r15d, %eax
	movl	%eax, (%r11)
	movq	%r8, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addl	%r12d, %edx
	addq	$1, %rcx
	addq	$16, %r11
	movl	%edx, %edx
	addq	$16, %rbx
	imulq	%rdx, %rdi
	addq	%r8, %rax
	imulq	%rdx, %rsi
	shrq	$31, %rax
	subl	%ebp, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%ebp, %r8d
	addl	%r8d, %eax
	movl	%eax, -8(%r11)
	movq	%rdi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rdi, %rax
	shrq	$31, %rax
	subl	%ebp, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	andl	%ebp, %edi
	addl	%edi, %eax
	movl	%eax, -16(%rbx)
	movq	%rsi, %rax
	imulq	%r10, %rax
	andl	$2147483647, %eax
	imulq	%r9, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	%ebp, %eax
	cltd
	andl	%ebp, %edx
	addl	%edx, %eax
	movl	%eax, -8(%rbx)
	cmpq	%rcx, 208(%rsp)
	ja	.L458
	movq	312(%rsp), %rbx
	movl	44(%rsp), %r13d
	movl	%ebp, %r8d
	movl	$2, %esi
	movl	320(%rsp), %r15d
	movq	48(%rsp), %rdi
	movq	%rbx, %rdx
	movl	%r13d, %r9d
	movl	%r15d, %ecx
	call	modp_iNTT2_ext.part.0
	movq	56(%rsp), %rdi
	movq	%rbx, %rdx
	movl	%r13d, %r9d
	movl	%ebp, %r8d
	movl	%r15d, %ecx
	movl	$2, %esi
	call	modp_iNTT2_ext.part.0
	movq	64(%rsp), %rax
	leaq	1(%rax), %rbx
	movq	%rbx, %r12
	testq	%rax, %rax
	je	.L584
	cmpq	$2, %rbx
	jne	.L462
	movl	$1, %r8d
	movl	$2, %edx
	movl	$2, %esi
	movq	296(%rsp), %r15
	movq	608(%rsp), %r14
	movq	712(%rsp), %rdi
	movq	%r15, %r9
	movq	96(%rsp), %rbx
	movq	%r14, %rcx
	call	zint_rebuild_CRT.constprop.0
	movq	%r15, %r9
	movl	$1, %esi
	movq	%r14, %rcx
	movq	360(%rsp), %rdi
	movl	$1, %r8d
	movl	$1, %edx
	call	zint_rebuild_CRT.constprop.0
	movsd	.LC2(%rip), %xmm2
	xorl	%esi, %esi
	movq	288(%rsp), %r10
	movq	400(%rsp), %r11
	movq	712(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L463:
	movl	(%r9,%rsi,8), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm6, %xmm6
	movl	4(%r9,%rsi,8), %edi
	movl	%edi, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %ebp
	movl	%ecx, %edx
	shrl	%ebp
	andl	$1, %edx
	xorl	%ebp, %eax
	xorl	%ebp, %edi
	addl	%edx, %eax
	movl	%eax, %edx
	movl	%eax, %r8d
	addl	%eax, %eax
	shrl	$31, %edx
	andl	$2147483647, %r8d
	andl	%ecx, %eax
	addl	%edi, %edx
	subl	%eax, %r8d
	movl	%edx, %edi
	cvtsi2sdl	%r8d, %xmm1
	addl	%edx, %edx
	andl	$2147483647, %edi
	andl	%ecx, %edx
	subl	%edx, %edi
	cvtsi2sdl	%edi, %xmm0
	addsd	%xmm6, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%r11,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r10
	ja	.L463
	movq	352(%rsp), %rdi
	movq	400(%rsp), %rax
	xorl	%esi, %esi
	movq	288(%rsp), %r9
	leaq	(%rax,%rdi), %r8
	movq	456(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L464:
	movl	4(%rdi,%rsi,8), %eax
	movl	(%rdi,%rsi,8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm7, %xmm7
	movl	%eax, %ecx
	shrl	$30, %ecx
	negl	%ecx
	movl	%ecx, %r11d
	movl	%ecx, %r10d
	shrl	%r11d
	andl	$1, %r10d
	xorl	%r11d, %edx
	xorl	%r11d, %eax
	addl	%r10d, %edx
	movl	%edx, %r11d
	movl	%edx, %r10d
	addl	%edx, %edx
	shrl	$31, %r11d
	andl	$2147483647, %r10d
	andl	%ecx, %edx
	addl	%r11d, %eax
	movl	%eax, %r11d
	addl	%eax, %eax
	andl	%ecx, %eax
	andl	$2147483647, %r11d
	subl	%eax, %r11d
	movl	%r10d, %eax
	cvtsi2sdl	%r11d, %xmm0
	subl	%edx, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%r8,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r9
	ja	.L464
	movq	352(%rsp), %rdx
	movq	360(%rsp), %rsi
	movq	712(%rsp), %rdi
	call	memmove@PLT
	movq	400(%rsp), %rsi
	movq	408(%rsp), %rdi
	movq	480(%rsp), %rdx
	call	memmove@PLT
	movq	288(%rsp), %rsi
	movq	488(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	712(%rsp), %r8
	.p2align 4,,10
	.p2align 3
.L465:
	movl	(%r8,%rcx,4), %r9d
	pxor	%xmm0, %xmm0
	pxor	%xmm4, %xmm4
	movl	%r9d, %edx
	shrl	$30, %edx
	negl	%edx
	movl	%edx, %eax
	shrl	%eax
	xorl	%r9d, %eax
	movl	%edx, %r9d
	andl	$1, %r9d
	addl	%r9d, %eax
	movl	%eax, %r9d
	addl	%eax, %eax
	andl	$2147483647, %r9d
	andl	%edx, %eax
	movl	%r9d, %edx
	subl	%eax, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm0, (%rdi,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	ja	.L465
	movq	352(%rsp), %rdi
	movq	488(%rsp), %rax
	xorl	%edx, %edx
	movq	472(%rsp), %r8
	leaq	(%rax,%rdi), %rcx
	movq	288(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L466:
	movl	(%r8,%rdx,4), %r9d
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movl	%r9d, %esi
	shrl	$30, %esi
	negl	%esi
	movl	%esi, %eax
	shrl	%eax
	xorl	%r9d, %eax
	movl	%esi, %r9d
	andl	$1, %r9d
	addl	%r9d, %eax
	movl	%eax, %r9d
	addl	%eax, %eax
	andl	$2147483647, %r9d
	andl	%esi, %eax
	movl	%r9d, %esi
	subl	%eax, %esi
	cvtsi2sdl	%esi, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	ja	.L466
	movq	616(%rsp), %rdx
	movq	408(%rsp), %rsi
	movq	712(%rsp), %rdi
	call	memmove@PLT
	movl	320(%rsp), %r14d
	movq	712(%rsp), %rdi
	movl	%r14d, %esi
	call	falcon_inner_FFT@PLT
	movq	496(%rsp), %r12
	movl	%r14d, %esi
	movq	%r12, %rdi
	call	falcon_inner_FFT@PLT
	movq	504(%rsp), %rbp
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	falcon_inner_FFT@PLT
	movq	512(%rsp), %r13
	movl	%r14d, %esi
	movq	%r13, %rdi
	call	falcon_inner_FFT@PLT
	movl	%r14d, %r9d
	movq	%r13, %r8
	movq	%rbp, %rcx
	movq	520(%rsp), %r15
	movq	712(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r15, %rdi
	call	falcon_inner_poly_add_muladj_fft@PLT
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	movq	%r13, %rdx
	movq	624(%rsp), %rbp
	movq	%rbp, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	%r14d, %esi
	movq	%r15, %rdi
	call	falcon_inner_iFFT@PLT
	movsd	.LC9(%rip), %xmm3
	xorl	%ecx, %ecx
	movsd	.LC10(%rip), %xmm4
	movsd	.LC7(%rip), %xmm1
	movq	%r15, %rsi
	movq	288(%rsp), %rdi
	movabsq	$-4503599627370496, %r9
	movabsq	$4503599627370496, %r10
	.p2align 4,,10
	.p2align 3
.L469:
	movsd	(%rsi,%rcx,8), %xmm0
	comisd	%xmm0, %xmm3
	jbe	.L424
	comisd	%xmm4, %xmm0
	jbe	.L424
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r8
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r11
	movapd	%xmm0, %xmm2
	movq	%r8, %rax
	subsd	%xmm1, %xmm2
	subsd	.LC1(%rip), %xmm0
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	cvttsd2siq	%xmm2, %rdx
	addq	%r9, %r11
	subl	$2, %eax
	cvttsd2siq	%xmm0, %rbp
	shrl	$31, %eax
	pxor	%xmm0, %xmm0
	addq	%r10, %rdx
	xorq	%r11, %rdx
	sarq	$63, %rbp
	andq	%rbp, %rdx
	xorq	%r11, %rdx
	movq	%rax, %r11
	subq	$1, %rax
	negq	%r11
	andq	%r8, %rax
	andq	%r11, %rdx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, (%rsi,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	ja	.L469
	movl	320(%rsp), %r14d
	movq	520(%rsp), %r15
	movl	%r14d, %esi
	movq	%r15, %rdi
	call	falcon_inner_FFT@PLT
	movq	504(%rsp), %rbp
	movl	%r14d, %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movq	%r15, %rsi
	movq	512(%rsp), %r15
	movl	%r14d, %edx
	movq	%r15, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movq	712(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rbp, %rsi
	call	falcon_inner_poly_sub@PLT
	movq	%r15, %rsi
	movq	496(%rsp), %r15
	movl	%r14d, %edx
	movq	%r15, %rdi
	call	falcon_inner_poly_sub@PLT
	movq	712(%rsp), %rdi
	movl	%r14d, %esi
	call	falcon_inner_iFFT@PLT
	movl	%r14d, %esi
	movq	%r15, %rdi
	call	falcon_inner_iFFT@PLT
	movq	408(%rsp), %r14
	movq	712(%rsp), %rsi
	movq	480(%rsp), %rdx
	movq	%r14, %rdi
	call	memmove@PLT
	movq	352(%rsp), %rax
	xorl	%ecx, %ecx
	movq	288(%rsp), %rsi
	movq	472(%rsp), %r8
	movq	%r14, %r9
	movq	712(%rsp), %rbp
	movabsq	$-4503599627370496, %r11
	movabsq	$4503599627370496, %rdi
	leaq	(%r14,%rax), %r10
	movq	.LC7(%rip), %rax
	movq	%rax, %xmm1
.L470:
	movsd	(%r9,%rcx,8), %xmm0
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r12
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r13
	movapd	%xmm0, %xmm2
	movq	%r12, %rax
	subsd	%xmm1, %xmm2
	subsd	.LC1(%rip), %xmm0
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	cvttsd2siq	%xmm2, %rdx
	addq	%r11, %r13
	subl	$2, %eax
	cvttsd2siq	%xmm0, %r14
	movsd	(%r10,%rcx,8), %xmm0
	shrl	$31, %eax
	movapd	%xmm0, %xmm2
	addq	%rdi, %rdx
	addsd	%xmm1, %xmm2
	xorq	%r13, %rdx
	sarq	$63, %r14
	andq	%r14, %rdx
	xorq	%r13, %rdx
	movq	%rax, %r13
	subq	$1, %rax
	negq	%r13
	andq	%r12, %rax
	andq	%r13, %rdx
	cvttsd2siq	%xmm2, %r13
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r12
	subsd	%xmm1, %xmm2
	orq	%rdx, %rax
	subsd	.LC1(%rip), %xmm0
	movl	%eax, 0(%rbp,%rcx,4)
	cvttsd2siq	%xmm2, %rdx
	subq	%rdi, %r13
	cvttsd2siq	%xmm0, %r14
	movq	%r12, %rax
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	addq	%rdi, %rdx
	xorq	%r13, %rdx
	subl	$2, %eax
	sarq	$63, %r14
	shrl	$31, %eax
	andq	%r14, %rdx
	xorq	%r13, %rdx
	movq	%rax, %r13
	subq	$1, %rax
	negq	%r13
	andq	%r12, %rax
	andq	%r13, %rdx
	orq	%rdx, %rax
	movl	%eax, (%r8,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	ja	.L470
	movl	$2042615807, %esi
	movl	$2147473409, %edi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	call	modp_R2
	movl	704(%rsp), %edx
	movl	$383167813, %ecx
	movq	536(%rsp), %rsi
	movq	392(%rsp), %rdi
	movl	%eax, %ebp
	call	modp_mkgm2
	xorl	%eax, %eax
	cmpq	$0, 528(%rsp)
	je	.L473
	movq	528(%rsp), %r8
	movq	368(%rsp), %rsi
	movq	712(%rsp), %rdi
.L471:
	movl	(%rdi,%rax,4), %ecx
	leal	(%rcx,%rcx), %edx
	andl	$-2147483648, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rdi,%rax,4)
	movl	(%rsi,%rax,4), %ecx
	leal	(%rcx,%rcx), %edx
	andl	$-2147483648, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	$2147473409, %ecx
	addl	%ecx, %edx
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L471
.L473:
	movl	320(%rsp), %r15d
	movq	392(%rsp), %r14
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	712(%rsp), %rdi
	movl	$1, %esi
	movl	%r15d, %ecx
	movq	%r14, %rdx
	call	modp_NTT2_ext.part.0
	movl	$1, %esi
	movl	%r15d, %ecx
	movq	%r14, %rdx
	movq	368(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rsi
	movq	32(%rsp), %r9
	xorl	%eax, %eax
	movq	376(%rsp), %rdi
	movq	384(%rsp), %r8
	movq	16(%rsp), %r10
.L472:
	movsbl	(%r9,%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi,%rax,4)
	movsbl	(%r10,%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%r8,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L472
	movq	392(%rsp), %r14
	movq	376(%rsp), %r15
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r14, %rdx
	movl	$1, %esi
	movq	384(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r14, %r10
	xorl	%ecx, %ecx
	movq	%r15, %r9
	movq	368(%rsp), %r13
	movq	712(%rsp), %r14
.L474:
	movq	%rcx, %rdx
	movl	4(%r10,%rcx,4), %r15d
	movl	(%r10,%rcx,4), %r8d
	shrq	%rdx
	movl	(%r9,%rcx,4), %esi
	movl	4(%r9,%rcx,4), %edi
	movl	(%r14,%rdx,4), %r11d
	imulq	%rbp, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	movl	0(%r13,%rdx,4), %r11d
	shrq	$31, %rax
	subl	$2147473409, %eax
	imulq	%rbp, %r11
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	$2147473409, %r12d
	imulq	$2042615807, %r11, %rdx
	addl	%eax, %r12d
	movl	%r12d, %r12d
	imulq	%r12, %r15
	andl	$2147483647, %edx
	imulq	$2147473409, %rdx, %rdx
	imulq	%r12, %r8
	imulq	$2042615807, %r15, %rax
	addq	%r11, %rdx
	shrq	$31, %rdx
	andl	$2147483647, %eax
	subl	$2147473409, %edx
	imulq	$2147473409, %rax, %rax
	movl	%edx, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addq	%r15, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	$2147473409, %r15d
	addl	%r15d, %eax
	movl	%eax, (%r9,%rcx,4)
	imulq	$2042615807, %r8, %rax
	andl	$2147483647, %eax
	addl	%r11d, %edx
	imulq	$2147473409, %rax, %rax
	movl	%edx, %edx
	imulq	%rdx, %rdi
	imulq	%rdx, %rsi
	addq	%r8, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	$2147473409, %r8d
	addl	%r8d, %eax
	movl	%eax, 4(%r9,%rcx,4)
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
	movl	%eax, (%r10,%rcx,4)
	imulq	$2042615807, %rsi, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%rsi, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	cltd
	andl	$2147473409, %edx
	addl	%edx, %eax
	movl	%eax, 4(%r10,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, 24(%rsp)
	ja	.L474
	movq	376(%rsp), %r14
	movq	536(%rsp), %r15
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	call	modp_iNTT2_ext.part.0
	movl	704(%rsp), %ecx
	movq	%r15, %rdx
	movq	384(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	call	modp_iNTT2_ext.part.0
	movq	576(%rsp), %rdx
	movq	712(%rsp), %rdi
	movq	%r14, %rsi
	call	memmove@PLT
	movl	$2147473409, %r8d
	movl	$383167813, %ecx
	movq	264(%rsp), %r14
	movl	704(%rsp), %edx
	movq	232(%rsp), %rsi
	movl	$2042615807, %r9d
	movq	%r14, %rdi
	call	modp_mkgm2
	movl	704(%rsp), %ecx
	movq	%r14, %rdx
	movl	$1, %esi
	movq	712(%rsp), %rdi
	movl	$2042615807, %r9d
	call	modp_NTT2_ext.part.0
	movl	704(%rsp), %ecx
	movq	%r14, %rdx
	movq	280(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	call	modp_NTT2_ext.part.0
	movq	32(%rsp), %rax
	movq	304(%rsp), %rdi
	movq	568(%rsp), %rcx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	$1, %edx
	movl	%eax, (%rdi)
	movq	272(%rsp), %rdi
	movl	%eax, (%rdi)
	movl	704(%rsp), %edi
	testl	%edi, %edi
	je	.L477
	movq	24(%rsp), %r8
	movq	272(%rsp), %r9
	movq	32(%rsp), %rdi
.L475:
	movsbl	(%rdi,%rdx), %esi
	subq	$4, %rcx
	movl	%esi, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%esi, %eax
	movl	%eax, (%r9,%rdx,4)
	movsbl	(%rdi,%rdx), %esi
	addq	$1, %rdx
	movl	%esi, %eax
	negl	%eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%esi, %eax
	movl	%eax, 4(%rcx)
	cmpq	%rdx, %r8
	jne	.L475
.L477:
	movq	264(%rsp), %r14
	movq	272(%rsp), %r15
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r14, %rdx
	movl	$1, %esi
	movq	304(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %r8
	movq	232(%rsp), %rsi
	movq	240(%rsp), %rdi
	movq	%r14, %r9
	movq	712(%rsp), %r10
.L476:
	movl	(%r9,%rdx,4), %r11d
	movl	(%r10,%rdx,4), %r12d
	imulq	%rbp, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r11, %r12
	imulq	$2042615807, %r12, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r12, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	$2147473409, %r12d
	addl	%r12d, %eax
	movl	%eax, (%rsi,%rdx,4)
	movl	(%r8,%rdx,4), %eax
	imulq	%rax, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%r11d, %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L476
	movq	16(%rsp), %rax
	movq	304(%rsp), %rdi
	movl	704(%rsp), %esi
	movq	568(%rsp), %rcx
	movsbl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%edx, %eax
	movl	$1, %edx
	movl	%eax, (%rdi)
	movq	272(%rsp), %rdi
	movl	%eax, (%rdi)
	testl	%esi, %esi
	je	.L480
	movq	24(%rsp), %r8
	movq	272(%rsp), %r9
	movq	16(%rsp), %rdi
.L478:
	movsbl	(%rdi,%rdx), %esi
	subq	$4, %rcx
	movl	%esi, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%esi, %eax
	movl	%eax, (%r9,%rdx,4)
	movsbl	(%rdi,%rdx), %esi
	addq	$1, %rdx
	movl	%esi, %eax
	negl	%eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%esi, %eax
	movl	%eax, 4(%rcx)
	cmpq	%rdx, %r8
	jne	.L478
.L480:
	movq	264(%rsp), %r14
	movq	272(%rsp), %r15
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r14, %rdx
	movl	$1, %esi
	movq	304(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r15, %r9
	movq	280(%rsp), %r8
	movq	232(%rsp), %rcx
	movq	%r14, %r10
	movq	240(%rsp), %rsi
.L479:
	movl	(%r10,%rdx,4), %r11d
	movl	(%r8,%rdx,4), %r12d
	movl	(%rcx,%rdx,4), %r13d
	imulq	%rbp, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r11, %r12
	imulq	$2042615807, %r12, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r12, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %r12d
	leal	20478(%r13,%rax), %eax
	sarl	$31, %r12d
	andl	$2147473409, %r12d
	addl	%r12d, %eax
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	$2147473409, %r12d
	addl	%r12d, %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	(%r9,%rdx,4), %eax
	movl	(%rsi,%rdx,4), %r12d
	imulq	%rax, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	leal	-2147473409(%rax), %r11d
	leal	20478(%r12,%rax), %eax
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%r11d, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%r11d, %eax
	movl	%eax, (%rsi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.L479
	movq	272(%rsp), %r14
	movq	264(%rsp), %r13
	movl	$2147473409, %r8d
	movl	$2042615807, %r9d
	movl	704(%rsp), %edx
	movl	$383167813, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	modp_mkgm2
	movq	232(%rsp), %r15
	movq	%r14, %rdx
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$1, %esi
	movq	%r15, %rdi
	call	modp_iNTT2_ext.part.0
	movq	%r14, %rdx
	movl	$2147473409, %r8d
	movq	240(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movl	$2042615807, %r9d
	movq	%r14, %rdi
	call	modp_iNTT2_ext.part.0
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%r15, %rcx
	movq	%r14, %r8
.L481:
	movl	(%rcx,%rdx,4), %r9d
	leal	-1073736705(%r9), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %r9d
	movl	%r9d, (%rdi,%rdx,4)
	movl	(%r8,%rdx,4), %r9d
	leal	-1073736705(%r9), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %r9d
	movl	%r9d, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L481
	movq	24(%rsp), %rdx
	movq	544(%rsp), %rcx
	xorl	%eax, %eax
	movq	232(%rsp), %rsi
.L482:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	(%rsi,%rax,4), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L482
	movq	544(%rsp), %r14
	movl	704(%rsp), %esi
	movq	%r14, %rdi
	call	falcon_inner_FFT@PLT
	movq	632(%rsp), %rdx
	movq	552(%rsp), %rdi
	movq	%r14, %rsi
	call	memmove@PLT
	movq	24(%rsp), %rdx
	movq	560(%rsp), %rcx
	xorl	%eax, %eax
	movq	264(%rsp), %rsi
.L483:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	(%rsi,%rax,4), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L483
	movq	560(%rsp), %r14
	movl	704(%rsp), %esi
	movq	%r14, %rdi
	call	falcon_inner_FFT@PLT
	movl	704(%rsp), %edx
	movq	552(%rsp), %rsi
	movq	%r14, %rdi
	call	falcon_inner_poly_div_autoadj_fft@PLT
	movl	704(%rsp), %esi
	movq	%r14, %rdi
	call	falcon_inner_iFFT@PLT
	movq	24(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	.LC7(%rip), %rax
	movq	264(%rsp), %r8
	movabsq	$-4503599627370496, %r9
	movabsq	$4503599627370496, %r10
	movq	%rax, %xmm1
.L484:
	movsd	(%rdi,%rcx,8), %xmm0
	movapd	%xmm0, %xmm2
	cvttsd2siq	%xmm0, %r11
	addsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %r12
	movapd	%xmm0, %xmm2
	movq	%r11, %rax
	subsd	%xmm1, %xmm2
	subsd	.LC1(%rip), %xmm0
	shrq	$52, %rax
	addl	$1, %eax
	andl	$4095, %eax
	cvttsd2siq	%xmm2, %rdx
	addq	%r9, %r12
	subl	$2, %eax
	cvttsd2siq	%xmm0, %r13
	shrl	$31, %eax
	addq	%r10, %rdx
	xorq	%r12, %rdx
	sarq	$63, %r13
	andq	%r13, %rdx
	xorq	%r12, %rdx
	movq	%rax, %r12
	subq	$1, %rax
	negq	%r12
	andq	%r11, %rax
	andq	%r12, %rdx
	orq	%rdx, %rax
	cltd
	andl	$2147473409, %edx
	addl	%edx, %eax
	movl	%eax, (%r8,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	jne	.L484
	movq	240(%rsp), %rsi
	movq	232(%rsp), %rdi
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %edx
	movl	$383167813, %ecx
	call	modp_mkgm2
	movq	24(%rsp), %rsi
	movq	32(%rsp), %r9
	xorl	%eax, %eax
	movq	272(%rsp), %rdi
	movq	304(%rsp), %r8
	movq	16(%rsp), %r10
.L485:
	movsbl	(%r9,%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi,%rax,4)
	movsbl	(%r10,%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	$2147473409, %edx
	addl	%ecx, %edx
	movl	%edx, (%r8,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L485
	movq	232(%rsp), %r14
	movq	264(%rsp), %r13
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	704(%rsp), %ecx
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%r13, %rdi
	call	modp_NTT2_ext.part.0
	movq	272(%rsp), %r15
	movq	%r14, %rdx
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movl	$1, %esi
	movq	%r15, %rdi
	call	modp_NTT2_ext.part.0
	movq	%r14, %rdx
	movl	$1, %esi
	movq	304(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	%r14, %rdi
	call	modp_NTT2_ext.part.0
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	280(%rsp), %rcx
	movq	712(%rsp), %rsi
	movq	%r15, %r9
	movq	%r14, %r10
.L486:
	movl	(%r8,%rdx,4), %r11d
	movl	(%r9,%rdx,4), %r12d
	imulq	%rbp, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	shrq	$31, %rax
	subl	$2147473409, %eax
	movl	%eax, %r11d
	sarl	$31, %r11d
	andl	$2147473409, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r11d
	imulq	%r11, %r12
	imulq	$2042615807, %r12, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r12, %rax
	movl	(%rsi,%rdx,4), %r12d
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %r12d
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %r12d
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%eax, %r12d
	movl	%r12d, (%rsi,%rdx,4)
	movl	(%r10,%rdx,4), %eax
	imulq	%rax, %r11
	imulq	$2042615807, %r11, %rax
	andl	$2147483647, %eax
	imulq	$2147473409, %rax, %rax
	addq	%r11, %rax
	movl	(%rcx,%rdx,4), %r11d
	shrq	$31, %rax
	subl	$2147473409, %eax
	subl	%eax, %r11d
	sarl	$31, %eax
	andl	$2147473409, %eax
	subl	%eax, %r11d
	movl	%r11d, %eax
	sarl	$31, %eax
	andl	$2147473409, %eax
	addl	%eax, %r11d
	movl	%r11d, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.L486
	movq	240(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	712(%rsp), %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	call	modp_iNTT2_ext.part.0
	movq	%r14, %rdx
	movl	$1, %esi
	movq	280(%rsp), %r14
	movl	704(%rsp), %ecx
	movl	$2042615807, %r9d
	movl	$2147473409, %r8d
	movq	%r14, %rdi
	call	modp_iNTT2_ext.part.0
	movq	24(%rsp), %rdi
	movq	712(%rsp), %rsi
	movq	%r14, %rcx
.L487:
	movl	(%rsi,%rbx,4), %edx
	leal	-1073736705(%rdx), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %edx
	movl	%edx, (%rsi,%rbx,4)
	movl	(%rcx,%rbx,4), %edx
	leal	-1073736705(%rdx), %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	$2147473409, %eax
	subl	%eax, %edx
	movl	%edx, (%rcx,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.L487
	jmp	.L488
.L584:
	movl	44(%rsp), %r9d
	movl	%ebp, %r8d
	movl	$1, %esi
	movq	%r14, %rdi
	movq	312(%rsp), %r15
	movl	320(%rsp), %r13d
	movq	%r15, %rdx
	movl	%r13d, %ecx
	call	modp_iNTT2_ext.part.0
	movq	%r15, %rdx
	movl	44(%rsp), %r9d
	movl	%ebp, %r8d
	movq	216(%rsp), %r15
	movl	%r13d, %ecx
	movl	$1, %esi
	movq	%r15, %rdi
	call	modp_iNTT2_ext.part.0
	movq	288(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%r15, %r8
	movq	360(%rsp), %rsi
	movq	592(%rsp), %rdi
	jmp	.L460
.L585:
	addq	$1, %rbx
.L460:
	movl	(%r14,%rax,4), %edx
	movl	%edx, (%rsi,%rax,4)
	movl	(%r8,%rax,4), %edx
	movl	%edx, (%rdi,%rax,4)
	movq	%rbx, %rax
	cmpq	%rbx, %rcx
	ja	.L585
.L462:
	movq	72(%rsp), %rax
	addq	$4, 48(%rsp)
	addq	$4, 56(%rsp)
	movl	12(%rax), %ebp
	movl	16(%rax), %r10d
	addq	$12, %rax
	movq	%r12, 64(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.L461
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1105199104
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	-4194304
	.long	-1042284545
	.align 8
.LC6:
	.long	-4194304
	.long	1105199103
	.align 8
.LC7:
	.long	0
	.long	1127219200
	.align 8
.LC8:
	.long	1608035756
	.long	1087401370
	.align 8
.LC9:
	.long	0
	.long	1138753536
	.align 8
.LC10:
	.long	0
	.long	-1008730112
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
