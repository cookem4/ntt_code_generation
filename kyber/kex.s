	.file	"kex.c"
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
	.globl	kex_uake_initA
	.type	kex_uake_initA, @function
kex_uake_initA:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# send, send
	sw	a1,-24(s0)	# tk, tk
	sw	a2,-28(s0)	# sk, sk
	sw	a3,-32(s0)	# pkb, pkb
# kex.c:8:   crypto_kem_keypair(send, sk);
	lw	a1,-28(s0)		#, sk
	lw	a0,-20(s0)		#, send
	call	pqcrystals_kyber512_ref_keypair		#
# kex.c:9:   crypto_kem_enc(send+CRYPTO_PUBLICKEYBYTES, tk, pkb);
	lw	a5,-20(s0)		# tmp73, send
	addi	a5,a5,800	#, _1, tmp73
	lw	a2,-32(s0)		#, pkb
	lw	a1,-24(s0)		#, tk
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_enc		#
# kex.c:10: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	kex_uake_initA, .-kex_uake_initA
	.align	2
	.globl	kex_uake_sharedB
	.type	kex_uake_sharedB, @function
kex_uake_sharedB:
	addi	sp,sp,-96	#,,
	sw	ra,92(sp)	#,
	sw	s0,88(sp)	#,
	addi	s0,sp,96	#,,
	sw	a0,-84(s0)	# send, send
	sw	a1,-88(s0)	# k, k
	sw	a2,-92(s0)	# recv, recv
	sw	a3,-96(s0)	# skb, skb
# kex.c:15:   crypto_kem_enc(send, buf, recv);
	addi	a5,s0,-80	#, tmp74,
	lw	a2,-92(s0)		#, recv
	mv	a1,a5	#, tmp74
	lw	a0,-84(s0)		#, send
	call	pqcrystals_kyber512_ref_enc		#
# kex.c:16:   crypto_kem_dec(buf+CRYPTO_BYTES, recv+CRYPTO_PUBLICKEYBYTES, skb);
	addi	a5,s0,-80	#, _1,
	addi	a5,a5,32	#, _1, _1
	lw	a4,-92(s0)		# tmp75, recv
	addi	a4,a4,800	#, _2, tmp75
	lw	a2,-96(s0)		#, skb
	mv	a1,a4	#, _2
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_dec		#
# kex.c:17:   kdf(k, buf, 2*CRYPTO_BYTES);
	addi	a5,s0,-80	#, tmp76,
	li	a3,64		#,
	mv	a2,a5	#, tmp76
	li	a1,32		#,
	lw	a0,-88(s0)		#, k
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kex.c:18: }
	nop	
	lw	ra,92(sp)		#,
	lw	s0,88(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	kex_uake_sharedB, .-kex_uake_sharedB
	.align	2
	.globl	kex_uake_sharedA
	.type	kex_uake_sharedA, @function
kex_uake_sharedA:
	addi	sp,sp,-112	#,,
	sw	ra,108(sp)	#,
	sw	s0,104(sp)	#,
	addi	s0,sp,112	#,,
	sw	a0,-100(s0)	# k, k
	sw	a1,-104(s0)	# recv, recv
	sw	a2,-108(s0)	# tk, tk
	sw	a3,-112(s0)	# sk, sk
# kex.c:24:   crypto_kem_dec(buf, recv, sk);
	addi	a5,s0,-84	#, tmp75,
	lw	a2,-112(s0)		#, sk
	lw	a1,-104(s0)		#, recv
	mv	a0,a5	#, tmp75
	call	pqcrystals_kyber512_ref_dec		#
# kex.c:25:   for(i=0;i<CRYPTO_BYTES;i++)
	sw	zero,-20(s0)	#, i
# kex.c:25:   for(i=0;i<CRYPTO_BYTES;i++)
	j	.L4		#
.L5:
# kex.c:26:     buf[i+CRYPTO_BYTES] = tk[i];
	lw	a4,-108(s0)		# tmp76, tk
	lw	a5,-20(s0)		# tmp77, i
	add	a4,a4,a5	# tmp77, _1, tmp76
# kex.c:26:     buf[i+CRYPTO_BYTES] = tk[i];
	lw	a5,-20(s0)		# tmp78, i
	addi	a5,a5,32	#, _2, tmp78
# kex.c:26:     buf[i+CRYPTO_BYTES] = tk[i];
	lbu	a4,0(a4)	# _3, *_1
# kex.c:26:     buf[i+CRYPTO_BYTES] = tk[i];
	addi	a5,a5,-16	#, tmp86, _2
	add	a5,a5,s0	#, tmp79, tmp86
	sb	a4,-68(a5)	# _3, buf[_2]
# kex.c:25:   for(i=0;i<CRYPTO_BYTES;i++)
	lw	a5,-20(s0)		# tmp81, i
	addi	a5,a5,1	#, tmp80, tmp81
	sw	a5,-20(s0)	# tmp80, i
.L4:
# kex.c:25:   for(i=0;i<CRYPTO_BYTES;i++)
	lw	a4,-20(s0)		# tmp82, i
	li	a5,31		# tmp83,
	bleu	a4,a5,.L5	#, tmp82, tmp83,
# kex.c:27:   kdf(k, buf, 2*CRYPTO_BYTES);
	addi	a5,s0,-84	#, tmp84,
	li	a3,64		#,
	mv	a2,a5	#, tmp84
	li	a1,32		#,
	lw	a0,-100(s0)		#, k
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kex.c:28: }
	nop	
	lw	ra,108(sp)		#,
	lw	s0,104(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	kex_uake_sharedA, .-kex_uake_sharedA
	.align	2
	.globl	kex_ake_initA
	.type	kex_ake_initA, @function
kex_ake_initA:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# send, send
	sw	a1,-24(s0)	# tk, tk
	sw	a2,-28(s0)	# sk, sk
	sw	a3,-32(s0)	# pkb, pkb
# kex.c:32:   crypto_kem_keypair(send, sk);
	lw	a1,-28(s0)		#, sk
	lw	a0,-20(s0)		#, send
	call	pqcrystals_kyber512_ref_keypair		#
# kex.c:33:   crypto_kem_enc(send+CRYPTO_PUBLICKEYBYTES, tk, pkb);
	lw	a5,-20(s0)		# tmp73, send
	addi	a5,a5,800	#, _1, tmp73
	lw	a2,-32(s0)		#, pkb
	lw	a1,-24(s0)		#, tk
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_enc		#
# kex.c:34: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	kex_ake_initA, .-kex_ake_initA
	.align	2
	.globl	kex_ake_sharedB
	.type	kex_ake_sharedB, @function
kex_ake_sharedB:
	addi	sp,sp,-144	#,,
	sw	ra,140(sp)	#,
	sw	s0,136(sp)	#,
	addi	s0,sp,144	#,,
	sw	a0,-116(s0)	# send, send
	sw	a1,-120(s0)	# k, k
	sw	a2,-124(s0)	# recv, recv
	sw	a3,-128(s0)	# skb, skb
	sw	a4,-132(s0)	# pka, pka
# kex.c:39:   crypto_kem_enc(send, buf, recv);
	addi	a5,s0,-112	#, tmp76,
	lw	a2,-124(s0)		#, recv
	mv	a1,a5	#, tmp76
	lw	a0,-116(s0)		#, send
	call	pqcrystals_kyber512_ref_enc		#
# kex.c:40:   crypto_kem_enc(send+CRYPTO_CIPHERTEXTBYTES, buf+CRYPTO_BYTES, pka);
	lw	a5,-116(s0)		# tmp77, send
	addi	a4,a5,768	#, _1, tmp77
	addi	a5,s0,-112	#, _2,
	addi	a5,a5,32	#, _2, _2
	lw	a2,-132(s0)		#, pka
	mv	a1,a5	#, _2
	mv	a0,a4	#, _1
	call	pqcrystals_kyber512_ref_enc		#
# kex.c:41:   crypto_kem_dec(buf+2*CRYPTO_BYTES, recv+CRYPTO_PUBLICKEYBYTES, skb);
	addi	a5,s0,-112	#, _3,
	addi	a5,a5,64	#, _3, _3
	lw	a4,-124(s0)		# tmp78, recv
	addi	a4,a4,800	#, _4, tmp78
	lw	a2,-128(s0)		#, skb
	mv	a1,a4	#, _4
	mv	a0,a5	#, _3
	call	pqcrystals_kyber512_ref_dec		#
# kex.c:42:   kdf(k, buf, 3*CRYPTO_BYTES);
	addi	a5,s0,-112	#, tmp79,
	li	a3,96		#,
	mv	a2,a5	#, tmp79
	li	a1,32		#,
	lw	a0,-120(s0)		#, k
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kex.c:43: }
	nop	
	lw	ra,140(sp)		#,
	lw	s0,136(sp)		#,
	addi	sp,sp,144	#,,
	jr	ra		#
	.size	kex_ake_sharedB, .-kex_ake_sharedB
	.align	2
	.globl	kex_ake_sharedA
	.type	kex_ake_sharedA, @function
kex_ake_sharedA:
	addi	sp,sp,-160	#,,
	sw	ra,156(sp)	#,
	sw	s0,152(sp)	#,
	addi	s0,sp,160	#,,
	sw	a0,-132(s0)	# k, k
	sw	a1,-136(s0)	# recv, recv
	sw	a2,-140(s0)	# tk, tk
	sw	a3,-144(s0)	# sk, sk
	sw	a4,-148(s0)	# ska, ska
# kex.c:49:   crypto_kem_dec(buf, recv, sk);
	addi	a5,s0,-116	#, tmp77,
	lw	a2,-144(s0)		#, sk
	lw	a1,-136(s0)		#, recv
	mv	a0,a5	#, tmp77
	call	pqcrystals_kyber512_ref_dec		#
# kex.c:50:   crypto_kem_dec(buf+CRYPTO_BYTES, recv+CRYPTO_CIPHERTEXTBYTES, ska);
	addi	a5,s0,-116	#, _1,
	addi	a5,a5,32	#, _1, _1
	lw	a4,-136(s0)		# tmp78, recv
	addi	a4,a4,768	#, _2, tmp78
	lw	a2,-148(s0)		#, ska
	mv	a1,a4	#, _2
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_dec		#
# kex.c:51:   for(i=0;i<CRYPTO_BYTES;i++)
	sw	zero,-20(s0)	#, i
# kex.c:51:   for(i=0;i<CRYPTO_BYTES;i++)
	j	.L9		#
.L10:
# kex.c:52:     buf[i+2*CRYPTO_BYTES] = tk[i];
	lw	a4,-140(s0)		# tmp79, tk
	lw	a5,-20(s0)		# tmp80, i
	add	a4,a4,a5	# tmp80, _3, tmp79
# kex.c:52:     buf[i+2*CRYPTO_BYTES] = tk[i];
	lw	a5,-20(s0)		# tmp81, i
	addi	a5,a5,64	#, _4, tmp81
# kex.c:52:     buf[i+2*CRYPTO_BYTES] = tk[i];
	lbu	a4,0(a4)	# _5, *_3
# kex.c:52:     buf[i+2*CRYPTO_BYTES] = tk[i];
	addi	a5,a5,-16	#, tmp89, _4
	add	a5,a5,s0	#, tmp82, tmp89
	sb	a4,-100(a5)	# _5, buf[_4]
# kex.c:51:   for(i=0;i<CRYPTO_BYTES;i++)
	lw	a5,-20(s0)		# tmp84, i
	addi	a5,a5,1	#, tmp83, tmp84
	sw	a5,-20(s0)	# tmp83, i
.L9:
# kex.c:51:   for(i=0;i<CRYPTO_BYTES;i++)
	lw	a4,-20(s0)		# tmp85, i
	li	a5,31		# tmp86,
	bleu	a4,a5,.L10	#, tmp85, tmp86,
# kex.c:53:   kdf(k, buf, 3*CRYPTO_BYTES);
	addi	a5,s0,-116	#, tmp87,
	li	a3,96		#,
	mv	a2,a5	#, tmp87
	li	a1,32		#,
	lw	a0,-132(s0)		#, k
	call	pqcrystals_kyber_fips202_ref_shake256		#
# kex.c:54: }
	nop	
	lw	ra,156(sp)		#,
	lw	s0,152(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	kex_ake_sharedA, .-kex_ake_sharedA
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
