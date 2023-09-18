	.file	"symmetric-shake.c"
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
	.globl	pqcrystals_kyber512_ref_kyber_shake128_absorb
	.type	pqcrystals_kyber512_ref_kyber_shake128_absorb, @function
pqcrystals_kyber512_ref_kyber_shake128_absorb:
	addi	sp,sp,-80	#,,
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sw	a0,-68(s0)	# state, state
	sw	a1,-72(s0)	# seed, seed
	mv	a5,a2	# tmp72, x
	mv	a4,a3	# tmp74, y
	sb	a5,-73(s0)	# tmp73, x
	mv	a5,a4	# tmp75, tmp74
	sb	a5,-74(s0)	# tmp75, y
# symmetric-shake.c:25:   memcpy(extseed, seed, KYBER_SYMBYTES);
	addi	a5,s0,-52	#, tmp76,
	li	a2,32		#,
	lw	a1,-72(s0)		#, seed
	mv	a0,a5	#, tmp76
	call	memcpy		#
# symmetric-shake.c:26:   extseed[KYBER_SYMBYTES+0] = x;
	lbu	a5,-73(s0)	# tmp77, x
	sb	a5,-20(s0)	# tmp77, extseed[32]
# symmetric-shake.c:27:   extseed[KYBER_SYMBYTES+1] = y;
	lbu	a5,-74(s0)	# tmp78, y
	sb	a5,-19(s0)	# tmp78, extseed[33]
# symmetric-shake.c:29:   shake128_absorb_once(state, extseed, sizeof(extseed));
	addi	a5,s0,-52	#, tmp79,
	li	a2,34		#,
	mv	a1,a5	#, tmp79
	lw	a0,-68(s0)		#, state
	call	pqcrystals_kyber_fips202_ref_shake128_absorb_once		#
# symmetric-shake.c:30: }
	nop	
	lw	ra,76(sp)		#,
	lw	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_kyber_shake128_absorb, .-pqcrystals_kyber512_ref_kyber_shake128_absorb
	.align	2
	.globl	pqcrystals_kyber512_ref_kyber_shake256_prf
	.type	pqcrystals_kyber512_ref_kyber_shake256_prf, @function
pqcrystals_kyber512_ref_kyber_shake256_prf:
	addi	sp,sp,-80	#,,
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sw	a0,-68(s0)	# out, out
	sw	a1,-72(s0)	# outlen, outlen
	sw	a2,-76(s0)	# key, key
	mv	a5,a3	# tmp72, nonce
	sb	a5,-77(s0)	# tmp73, nonce
# symmetric-shake.c:47:   memcpy(extkey, key, KYBER_SYMBYTES);
	addi	a5,s0,-52	#, tmp74,
	li	a2,32		#,
	lw	a1,-76(s0)		#, key
	mv	a0,a5	#, tmp74
	call	memcpy		#
# symmetric-shake.c:48:   extkey[KYBER_SYMBYTES] = nonce;
	lbu	a5,-77(s0)	# tmp75, nonce
	sb	a5,-20(s0)	# tmp75, extkey[32]
# symmetric-shake.c:50:   shake256(out, outlen, extkey, sizeof(extkey));
	addi	a5,s0,-52	#, tmp76,
	li	a3,33		#,
	mv	a2,a5	#, tmp76
	lw	a1,-72(s0)		#, outlen
	lw	a0,-68(s0)		#, out
	call	pqcrystals_kyber_fips202_ref_shake256		#
# symmetric-shake.c:51: }
	nop	
	lw	ra,76(sp)		#,
	lw	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_kyber_shake256_prf, .-pqcrystals_kyber512_ref_kyber_shake256_prf
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
