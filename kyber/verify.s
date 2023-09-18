	.file	"verify.c"
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
	.globl	pqcrystals_kyber512_ref_verify
	.type	pqcrystals_kyber512_ref_verify, @function
pqcrystals_kyber512_ref_verify:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# a, a
	sw	a1,-40(s0)	# b, b
	sw	a2,-44(s0)	# len, len
# verify.c:19:   uint8_t r = 0;
	sb	zero,-21(s0)	#, r
# verify.c:21:   for(i=0;i<len;i++)
	sw	zero,-20(s0)	#, i
# verify.c:21:   for(i=0;i<len;i++)
	j	.L2		#
.L3:
# verify.c:22:     r |= a[i] ^ b[i];
	lw	a4,-36(s0)		# tmp82, a
	lw	a5,-20(s0)		# tmp83, i
	add	a5,a4,a5	# tmp83, _1, tmp82
	lbu	a4,0(a5)	# _2, *_1
# verify.c:22:     r |= a[i] ^ b[i];
	lw	a3,-40(s0)		# tmp84, b
	lw	a5,-20(s0)		# tmp85, i
	add	a5,a3,a5	# tmp85, _3, tmp84
	lbu	a5,0(a5)	# _4, *_3
# verify.c:22:     r |= a[i] ^ b[i];
	xor	a5,a4,a5	# _4, tmp86, _2
	andi	a5,a5,0xff	# _5, tmp86
	lbu	a4,-21(s0)	# tmp88, r
	or	a5,a5,a4	# tmp87, tmp89, _5
	sb	a5,-21(s0)	# tmp89, r
# verify.c:21:   for(i=0;i<len;i++)
	lw	a5,-20(s0)		# tmp91, i
	addi	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, i
.L2:
# verify.c:21:   for(i=0;i<len;i++)
	lw	a4,-20(s0)		# tmp92, i
	lw	a5,-44(s0)		# tmp93, len
	bltu	a4,a5,.L3	#, tmp92, tmp93,
# verify.c:24:   return (-(uint64_t)r) >> 63;
	lbu	a5,-21(s0)	# tmp95, r
	andi	a5,a5,0xff	# tmp96, tmp94
	mv	a6,a5	# _6, tmp96
	li	a7,0		# _6,
# verify.c:24:   return (-(uint64_t)r) >> 63;
	li	a4,0		# tmp97,
	li	a5,0		#,
	sub	a2,a4,a6	# tmp98, tmp97, _6
	mv	a1,a2	# tmp100, tmp98
	sgtu	a1,a1,a4	# tmp99, tmp100, tmp97
	sub	a3,a5,a7	#,, _6
	sub	a5,a3,a1	# tmp101,, tmp99
	mv	a3,a5	#, tmp101
	mv	a4,a2	# _7, tmp98
	mv	a5,a3	# _7,
# verify.c:24:   return (-(uint64_t)r) >> 63;
	srli	t1,a5,31	#, _8, _7
	li	t2,0		# _8,
	mv	a5,t1	# _14, _8
# verify.c:25: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_verify, .-pqcrystals_kyber512_ref_verify
	.align	2
	.globl	pqcrystals_kyber512_ref_cmov
	.type	pqcrystals_kyber512_ref_cmov, @function
pqcrystals_kyber512_ref_cmov:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# x, x
	sw	a2,-44(s0)	# len, len
	mv	a5,a3	# tmp82, b
	sb	a5,-45(s0)	# tmp83, b
# verify.c:51:   __asm__("" : "+r"(b) : /* no inputs */);
	lbu	a5,-45(s0)	# tmp86, b
	sb	a5,-45(s0)	# b, b
# verify.c:54:   b = -b;
	lbu	a5,-45(s0)	# tmp88, b
	neg	a5,a5	# tmp89, tmp87
	sb	a5,-45(s0)	# tmp89, b
# verify.c:55:   for(i=0;i<len;i++)
	sw	zero,-20(s0)	#, i
# verify.c:55:   for(i=0;i<len;i++)
	j	.L6		#
.L7:
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	lw	a4,-36(s0)		# tmp90, r
	lw	a5,-20(s0)		# tmp91, i
	add	a5,a4,a5	# tmp91, _1, tmp90
	lbu	a3,0(a5)	# _2, *_1
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	lw	a4,-36(s0)		# tmp92, r
	lw	a5,-20(s0)		# tmp93, i
	add	a5,a4,a5	# tmp93, _3, tmp92
	lbu	a4,0(a5)	# _4, *_3
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	lw	a2,-40(s0)		# tmp94, x
	lw	a5,-20(s0)		# tmp95, i
	add	a5,a2,a5	# tmp95, _5, tmp94
	lbu	a5,0(a5)	# _6, *_5
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	xor	a5,a4,a5	# _6, tmp96, _4
	andi	a5,a5,0xff	# _7, tmp96
	lbu	a4,-45(s0)	# tmp98, b
	and	a5,a5,a4	# tmp97, tmp99, _7
	andi	a4,a5,0xff	# _8, tmp99
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	lw	a2,-36(s0)		# tmp100, r
	lw	a5,-20(s0)		# tmp101, i
	add	a5,a2,a5	# tmp101, _9, tmp100
# verify.c:56:     r[i] ^= b & (r[i] ^ x[i]);
	xor	a4,a3,a4	# _8, tmp102, _2
	andi	a4,a4,0xff	# _10, tmp102
	sb	a4,0(a5)	# _10, *_9
# verify.c:55:   for(i=0;i<len;i++)
	lw	a5,-20(s0)		# tmp104, i
	addi	a5,a5,1	#, tmp103, tmp104
	sw	a5,-20(s0)	# tmp103, i
.L6:
# verify.c:55:   for(i=0;i<len;i++)
	lw	a4,-20(s0)		# tmp105, i
	lw	a5,-44(s0)		# tmp106, len
	bltu	a4,a5,.L7	#, tmp105, tmp106,
# verify.c:57: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_cmov, .-pqcrystals_kyber512_ref_cmov
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
