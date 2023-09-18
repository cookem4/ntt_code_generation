	.file	"kem.c"
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
	.globl	pqcrystals_kyber512_ref_keypair
	.type	pqcrystals_kyber512_ref_keypair, @function
pqcrystals_kyber512_ref_keypair:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# pk, pk
	sw	a1,-40(s0)	# sk, sk
# kem.c:27:   indcpa_keypair(pk, sk);
	lw	a1,-40(s0)		#, sk
	lw	a0,-36(s0)		#, pk
	call	pqcrystals_kyber512_ref_indcpa_keypair		#
# kem.c:28:   for(i=0;i<KYBER_INDCPA_PUBLICKEYBYTES;i++)
	sw	zero,-20(s0)	#, i
# kem.c:28:   for(i=0;i<KYBER_INDCPA_PUBLICKEYBYTES;i++)
	j	.L2		#
.L3:
# kem.c:29:     sk[i+KYBER_INDCPA_SECRETKEYBYTES] = pk[i];
	lw	a4,-36(s0)		# tmp80, pk
	lw	a5,-20(s0)		# tmp81, i
	add	a4,a4,a5	# tmp81, _1, tmp80
# kem.c:29:     sk[i+KYBER_INDCPA_SECRETKEYBYTES] = pk[i];
	lw	a5,-20(s0)		# tmp82, i
	addi	a5,a5,768	#, _2, tmp82
	lw	a3,-40(s0)		# tmp83, sk
	add	a5,a3,a5	# _2, _3, tmp83
# kem.c:29:     sk[i+KYBER_INDCPA_SECRETKEYBYTES] = pk[i];
	lbu	a4,0(a4)	# _4, *_1
# kem.c:29:     sk[i+KYBER_INDCPA_SECRETKEYBYTES] = pk[i];
	sb	a4,0(a5)	# _4, *_3
# kem.c:28:   for(i=0;i<KYBER_INDCPA_PUBLICKEYBYTES;i++)
	lw	a5,-20(s0)		# tmp85, i
	addi	a5,a5,1	#, tmp84, tmp85
	sw	a5,-20(s0)	# tmp84, i
.L2:
# kem.c:28:   for(i=0;i<KYBER_INDCPA_PUBLICKEYBYTES;i++)
	lw	a4,-20(s0)		# tmp86, i
	li	a5,799		# tmp87,
	bleu	a4,a5,.L3	#, tmp86, tmp87,
# kem.c:30:   hash_h(sk+KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES, pk, KYBER_PUBLICKEYBYTES);
	lw	a5,-40(s0)		# tmp88, sk
	addi	a5,a5,1568	#, _5, tmp88
	li	a2,800		#,
	lw	a1,-36(s0)		#, pk
	mv	a0,a5	#, _5
	call	pqcrystals_kyber_fips202_ref_sha3_256		#
# kem.c:32:   randombytes(sk+KYBER_SECRETKEYBYTES-KYBER_SYMBYTES, KYBER_SYMBYTES);
	lw	a5,-40(s0)		# tmp89, sk
	addi	a5,a5,1600	#, _6, tmp89
	li	a1,32		#,
	mv	a0,a5	#, _6
	call	randombytes		#
# kem.c:33:   return 0;
	li	a5,0		# _16,
# kem.c:34: }
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_keypair, .-pqcrystals_kyber512_ref_keypair
	.align	2
	.globl	pqcrystals_kyber512_ref_enc
	.type	pqcrystals_kyber512_ref_enc, @function
pqcrystals_kyber512_ref_enc:
	addi	sp,sp,-160	#,,
	sw	ra,156(sp)	#,
	sw	s0,152(sp)	#,
	addi	s0,sp,160	#,,
	sw	a0,-148(s0)	# ct, ct
	sw	a1,-152(s0)	# ss, ss
	sw	a2,-156(s0)	# pk, pk
# kem.c:59:   randombytes(buf, KYBER_SYMBYTES);
	addi	a5,s0,-80	#, tmp77,
	li	a1,32		#,
	mv	a0,a5	#, tmp77
	call	randombytes		#
# kem.c:61:   hash_h(buf, buf, KYBER_SYMBYTES);
	addi	a4,s0,-80	#, tmp78,
	addi	a5,s0,-80	#, tmp79,
	li	a2,32		#,
	mv	a1,a4	#, tmp78
	mv	a0,a5	#, tmp79
	call	pqcrystals_kyber_fips202_ref_sha3_256		#
# kem.c:64:   hash_h(buf+KYBER_SYMBYTES, pk, KYBER_PUBLICKEYBYTES);
	addi	a5,s0,-80	#, _1,
	addi	a5,a5,32	#, _1, _1
	li	a2,800		#,
	lw	a1,-156(s0)		#, pk
	mv	a0,a5	#, _1
	call	pqcrystals_kyber_fips202_ref_sha3_256		#
# kem.c:65:   hash_g(kr, buf, 2*KYBER_SYMBYTES);
	addi	a4,s0,-80	#, tmp80,
	addi	a5,s0,-144	#, tmp81,
	li	a2,64		#,
	mv	a1,a4	#, tmp80
	mv	a0,a5	#, tmp81
	call	pqcrystals_kyber_fips202_ref_sha3_512		#
# kem.c:68:   indcpa_enc(ct, buf, pk, kr+KYBER_SYMBYTES);
	addi	a5,s0,-144	#, _2,
	addi	a5,a5,32	#, _2, _2
	addi	a4,s0,-80	#, tmp82,
	mv	a3,a5	#, _2
	lw	a2,-156(s0)		#, pk
	mv	a1,a4	#, tmp82
	lw	a0,-148(s0)		#, ct
	call	pqcrystals_kyber512_ref_indcpa_enc		#
# kem.c:71:   hash_h(kr+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
	addi	a5,s0,-144	#, _3,
	addi	a5,a5,32	#, _3, _3
	li	a2,768		#,
	lw	a1,-148(s0)		#, ct
	mv	a0,a5	#, _3
	call	pqcrystals_kyber_fips202_ref_sha3_256		#
# kem.c:73:   kdf(ss, kr, 2*KYBER_SYMBYTES);
	addi	a5,s0,-144	#, tmp83,
	li	a3,64		#,
	mv	a2,a5	#, tmp83
	li	a1,32		#,
	lw	a0,-152(s0)		#, ss
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kem.c:74:   return 0;
	li	a5,0		# _15,
# kem.c:75: }
	mv	a0,a5	#, <retval>
	lw	ra,156(sp)		#,
	lw	s0,152(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_enc, .-pqcrystals_kyber512_ref_enc
	.align	2
	.globl	pqcrystals_kyber512_ref_dec
	.type	pqcrystals_kyber512_ref_dec, @function
pqcrystals_kyber512_ref_dec:
	addi	sp,sp,-944	#,,
	sw	ra,940(sp)	#,
	sw	s0,936(sp)	#,
	addi	s0,sp,944	#,,
	sw	a0,-932(s0)	# ss, ss
	sw	a1,-936(s0)	# ct, ct
	sw	a2,-940(s0)	# sk, sk
# kem.c:104:   const uint8_t *pk = sk+KYBER_INDCPA_SECRETKEYBYTES;
	lw	a5,-940(s0)		# tmp83, sk
	addi	a5,a5,768	#, tmp82, tmp83
	sw	a5,-24(s0)	# tmp82, pk
# kem.c:106:   indcpa_dec(buf, ct, sk);
	addi	a5,s0,-92	#, tmp84,
	lw	a2,-940(s0)		#, sk
	lw	a1,-936(s0)		#, ct
	mv	a0,a5	#, tmp84
	call	pqcrystals_kyber512_ref_indcpa_dec		#
# kem.c:109:   for(i=0;i<KYBER_SYMBYTES;i++)
	sw	zero,-20(s0)	#, i
# kem.c:109:   for(i=0;i<KYBER_SYMBYTES;i++)
	j	.L8		#
.L9:
# kem.c:110:     buf[KYBER_SYMBYTES+i] = sk[KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES+i];
	lw	a5,-20(s0)		# tmp85, i
	addi	a5,a5,1568	#, _1, tmp85
# kem.c:110:     buf[KYBER_SYMBYTES+i] = sk[KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES+i];
	lw	a4,-940(s0)		# tmp86, sk
	add	a4,a4,a5	# _1, _2, tmp86
# kem.c:110:     buf[KYBER_SYMBYTES+i] = sk[KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES+i];
	lw	a5,-20(s0)		# tmp87, i
	addi	a5,a5,32	#, _3, tmp87
# kem.c:110:     buf[KYBER_SYMBYTES+i] = sk[KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES+i];
	lbu	a4,0(a4)	# _4, *_2
# kem.c:110:     buf[KYBER_SYMBYTES+i] = sk[KYBER_SECRETKEYBYTES-2*KYBER_SYMBYTES+i];
	addi	a5,a5,-16	#, tmp104, _3
	add	a5,a5,s0	#, tmp88, tmp104
	sb	a4,-76(a5)	# _4, buf[_3]
# kem.c:109:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a5,-20(s0)		# tmp90, i
	addi	a5,a5,1	#, tmp89, tmp90
	sw	a5,-20(s0)	# tmp89, i
.L8:
# kem.c:109:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a4,-20(s0)		# tmp91, i
	li	a5,31		# tmp92,
	bleu	a4,a5,.L9	#, tmp91, tmp92,
# kem.c:111:   hash_g(kr, buf, 2*KYBER_SYMBYTES);
	addi	a4,s0,-92	#, tmp93,
	addi	a5,s0,-156	#, tmp94,
	li	a2,64		#,
	mv	a1,a4	#, tmp93
	mv	a0,a5	#, tmp94
	call	pqcrystals_kyber_fips202_ref_sha3_512		#
# kem.c:114:   indcpa_enc(cmp, buf, pk, kr+KYBER_SYMBYTES);
	addi	a5,s0,-156	#, _5,
	addi	a5,a5,32	#, _5, _5
	addi	a1,s0,-92	#, tmp95,
	addi	a4,s0,-924	#, tmp96,
	mv	a3,a5	#, _5
	lw	a2,-24(s0)		#, pk
	mv	a0,a4	#, tmp96
	call	pqcrystals_kyber512_ref_indcpa_enc		#
# kem.c:116:   fail = verify(ct, cmp, KYBER_CIPHERTEXTBYTES);
	addi	a5,s0,-924	#, tmp97,
	li	a2,768		#,
	mv	a1,a5	#, tmp97
	lw	a0,-936(s0)		#, ct
	call	pqcrystals_kyber512_ref_verify		#
	sw	a0,-28(s0)	#, fail
# kem.c:119:   hash_h(kr+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
	addi	a5,s0,-156	#, _6,
	addi	a5,a5,32	#, _6, _6
	li	a2,768		#,
	lw	a1,-936(s0)		#, ct
	mv	a0,a5	#, _6
	call	pqcrystals_kyber_fips202_ref_sha3_256		#
# kem.c:122:   cmov(kr, sk+KYBER_SECRETKEYBYTES-KYBER_SYMBYTES, KYBER_SYMBYTES, fail);
	lw	a5,-940(s0)		# tmp98, sk
	addi	a4,a5,1600	#, _7, tmp98
	lw	a5,-28(s0)		# tmp99, fail
	andi	a3,a5,0xff	# _8, tmp99
	addi	a5,s0,-156	#, tmp100,
	li	a2,32		#,
	mv	a1,a4	#, _7
	mv	a0,a5	#, tmp100
	call	pqcrystals_kyber512_ref_cmov		#
# kem.c:125:   kdf(ss, kr, 2*KYBER_SYMBYTES);
	addi	a5,s0,-156	#, tmp101,
	li	a3,64		#,
	mv	a2,a5	#, tmp101
	li	a1,32		#,
	lw	a0,-932(s0)		#, ss
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kem.c:126:   return 0;
	li	a5,0		# _25,
# kem.c:127: }
	mv	a0,a5	#, <retval>
	lw	ra,940(sp)		#,
	lw	s0,936(sp)		#,
	addi	sp,sp,944	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_dec, .-pqcrystals_kyber512_ref_dec
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
