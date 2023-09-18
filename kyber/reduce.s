	.file	"reduce.c"
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
	.globl	pqcrystals_kyber512_ref_montgomery_reduce
	.type	pqcrystals_kyber512_ref_montgomery_reduce, @function
pqcrystals_kyber512_ref_montgomery_reduce:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# a, a
# reduce.c:20:   t = (int16_t)a*QINV;
	lw	a5,-36(s0)		# tmp80, a
	slli	a5,a5,16	#, _1, tmp80
	srli	a5,a5,16	#, _1, _1
# reduce.c:20:   t = (int16_t)a*QINV;
	mv	a4,a5	# tmp82, tmp81
	slli	a4,a4,1	#, tmp83, tmp82
	add	a4,a4,a5	# tmp81, tmp84, tmp82
	slli	a4,a4,2	#, tmp86, tmp85
	add	a4,a4,a5	# tmp81, tmp88, tmp87
	slli	a4,a4,8	#, tmp90, tmp89
	sub	a5,a4,a5	# tmp92, tmp91, tmp81
	neg	a5,a5	# tmp94, tmp93
	slli	a5,a5,16	#, _2, tmp94
	srli	a5,a5,16	#, _2, _2
# reduce.c:20:   t = (int16_t)a*QINV;
	sh	a5,-18(s0)	# _2, t
# reduce.c:21:   t = (a - (int32_t)t*KYBER_Q) >> 16;
	lh	a4,-18(s0)		# _3, t
# reduce.c:21:   t = (a - (int32_t)t*KYBER_Q) >> 16;
	mv	a5,a4	# tmp95, _3
	slli	a5,a5,1	#, tmp96, tmp95
	add	a5,a5,a4	# _3, tmp95, tmp95
	slli	a5,a5,2	#, tmp97, tmp95
	add	a5,a5,a4	# _3, tmp95, tmp95
	slli	a5,a5,8	#, tmp98, tmp95
	add	a5,a5,a4	# _3, _4, tmp95
	neg	a5,a5	# _4, _4
# reduce.c:21:   t = (a - (int32_t)t*KYBER_Q) >> 16;
	lw	a4,-36(s0)		# tmp99, a
	add	a5,a5,a4	# tmp99, _5, _4
# reduce.c:21:   t = (a - (int32_t)t*KYBER_Q) >> 16;
	srai	a5,a5,16	#, _6, _5
# reduce.c:21:   t = (a - (int32_t)t*KYBER_Q) >> 16;
	sh	a5,-18(s0)	# _6, t
# reduce.c:22:   return t;
	lh	a5,-18(s0)		# _10, t
# reduce.c:23: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_montgomery_reduce, .-pqcrystals_kyber512_ref_montgomery_reduce
	.globl	__mulsi3
	.align	2
	.globl	pqcrystals_kyber512_ref_barrett_reduce
	.type	pqcrystals_kyber512_ref_barrett_reduce, @function
pqcrystals_kyber512_ref_barrett_reduce:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp84, a
	sh	a5,-34(s0)	# tmp85, a
# reduce.c:37:   const int16_t v = ((1<<26) + KYBER_Q/2)/KYBER_Q;
	li	a5,20480		# tmp87,
	addi	a5,a5,-321	#, tmp86, tmp87
	sh	a5,-18(s0)	# tmp86, v
# reduce.c:39:   t  = ((int32_t)v*a + (1<<25)) >> 26;
	lh	a5,-18(s0)		# _1, v
# reduce.c:39:   t  = ((int32_t)v*a + (1<<25)) >> 26;
	lh	a4,-34(s0)		# _2, a
	mv	a1,a4	#, _2
	mv	a0,a5	#, _1
	call	__mulsi3		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# _3, tmp88
# reduce.c:39:   t  = ((int32_t)v*a + (1<<25)) >> 26;
	li	a5,33554432		# tmp89,
	add	a5,a4,a5	# tmp89, _4, _3
# reduce.c:39:   t  = ((int32_t)v*a + (1<<25)) >> 26;
	srai	a5,a5,26	#, _5, _4
# reduce.c:39:   t  = ((int32_t)v*a + (1<<25)) >> 26;
	sh	a5,-20(s0)	# _5, t
# reduce.c:40:   t *= KYBER_Q;
	lhu	a5,-20(s0)	# t.0_6, t
	mv	a4,a5	# tmp91, tmp90
	slli	a4,a4,1	#, tmp92, tmp91
	add	a4,a4,a5	# tmp90, tmp93, tmp91
	slli	a4,a4,2	#, tmp95, tmp94
	add	a4,a4,a5	# tmp90, tmp97, tmp96
	slli	a4,a4,8	#, tmp99, tmp98
	add	a5,a4,a5	# tmp90, tmp101, tmp100
	slli	a5,a5,16	#, _7, tmp101
	srli	a5,a5,16	#, _7, _7
	sh	a5,-20(s0)	# _7, t
# reduce.c:41:   return a - t;
	lhu	a4,-34(s0)	# a.1_8, a
	lhu	a5,-20(s0)	# t.2_9, t
	sub	a5,a4,a5	# tmp102, a.1_8, t.2_9
	slli	a5,a5,16	#, _10, tmp102
	srli	a5,a5,16	#, _10, _10
	slli	a5,a5,16	#, _15, _10
	srai	a5,a5,16	#, _15, _15
# reduce.c:42: }
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_barrett_reduce, .-pqcrystals_kyber512_ref_barrett_reduce
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
