	.file	"randombytes.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g2ee5e430018) version 12.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -mtune=rocket -misa-spec=20191213 -march=rv32i -O0
	.text
	.align	2
	.globl	randombytes
	.type	randombytes, @function
randombytes:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# out, out
	sw	a1,-40(s0)	# outlen, outlen
# randombytes.c:45:   while(outlen > 0) {
	j	.L2		#
.L5:
# randombytes.c:46:     ret = syscall(SYS_getrandom, out, outlen, 0);
	li	a3,0		#,
	lw	a2,-40(s0)		#, outlen
	lw	a1,-36(s0)		#, out
	li	a0,278		#,
	call	syscall		#
	sw	a0,-20(s0)	#, ret
# randombytes.c:47:     if(ret == -1 && errno == EINTR)
	lw	a4,-20(s0)		# tmp76, ret
	li	a5,-1		# tmp77,
	bne	a4,a5,.L3	#, tmp76, tmp77,
# randombytes.c:47:     if(ret == -1 && errno == EINTR)
	call	__errno_location		#
	mv	a5,a0	# _1,
	lw	a4,0(a5)		# _2, *_1
# randombytes.c:47:     if(ret == -1 && errno == EINTR)
	li	a5,4		# tmp78,
	bne	a4,a5,.L3	#, _2, tmp78,
# randombytes.c:48:       continue;
	j	.L2		#
.L3:
# randombytes.c:49:     else if(ret == -1)
	lw	a4,-20(s0)		# tmp79, ret
	li	a5,-1		# tmp80,
	bne	a4,a5,.L4	#, tmp79, tmp80,
# randombytes.c:50:       abort();
	call	abort		#
.L4:
# randombytes.c:52:     out += ret;
	lw	a5,-20(s0)		# ret.0_3, ret
	lw	a4,-36(s0)		# tmp82, out
	add	a5,a4,a5	# ret.0_3, tmp81, tmp82
	sw	a5,-36(s0)	# tmp81, out
# randombytes.c:53:     outlen -= ret;
	lw	a5,-20(s0)		# ret.1_4, ret
	lw	a4,-40(s0)		# tmp84, outlen
	sub	a5,a4,a5	# tmp83, tmp84, ret.1_4
	sw	a5,-40(s0)	# tmp83, outlen
.L2:
# randombytes.c:45:   while(outlen > 0) {
	lw	a5,-40(s0)		# tmp85, outlen
	bne	a5,zero,.L5	#, tmp85,,
# randombytes.c:55: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	randombytes, .-randombytes
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
