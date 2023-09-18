	.file	"test_kyber.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g2ee5e430018) version 12.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -mtune=rocket -misa-spec=20191213 -march=rv32i -O0
	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"ERROR keys"
	.text
	.align	2
	.type	test_keys, @function
test_keys:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-1248	#,,
# test_kyber.c:18:   crypto_kem_keypair(pk, sk);
	li	a5,-4096		# tmp77,
	addi	a5,a5,1664	#, tmp76, tmp77
	addi	a5,a5,-16	#, tmp104, tmp76
	add	a4,a5,s0	#, tmp75, tmp104
	addi	a5,s0,-816	#, tmp78,
	mv	a1,a4	#, tmp75
	mv	a0,a5	#, tmp78
	call	pqcrystals_kyber512_ref_keypair		#
# test_kyber.c:21:   crypto_kem_enc(ct, key_b, pk);
	addi	a3,s0,-816	#, tmp79,
	li	a5,-4096		# tmp82,
	addi	a5,a5,832	#, tmp81, tmp82
	addi	a5,a5,-16	#, tmp105, tmp81
	add	a4,a5,s0	#, tmp80, tmp105
	li	a5,-4096		# tmp85,
	addi	a5,a5,896	#, tmp84, tmp85
	addi	a5,a5,-16	#, tmp106, tmp84
	add	a5,a5,s0	#, tmp83, tmp106
	mv	a2,a3	#, tmp79
	mv	a1,a4	#, tmp80
	mv	a0,a5	#, tmp83
	call	pqcrystals_kyber512_ref_enc		#
# test_kyber.c:24:   crypto_kem_dec(key_a, ct, sk);
	li	a5,-4096		# tmp88,
	addi	a5,a5,1664	#, tmp87, tmp88
	addi	a5,a5,-16	#, tmp107, tmp87
	add	a3,a5,s0	#, tmp86, tmp107
	li	a5,-4096		# tmp91,
	addi	a5,a5,896	#, tmp90, tmp91
	addi	a5,a5,-16	#, tmp108, tmp90
	add	a4,a5,s0	#, tmp89, tmp108
	li	a5,-4096		# tmp94,
	addi	a5,a5,864	#, tmp93, tmp94
	addi	a5,a5,-16	#, tmp109, tmp93
	add	a5,a5,s0	#, tmp92, tmp109
	mv	a2,a3	#, tmp86
	mv	a1,a4	#, tmp89
	mv	a0,a5	#, tmp92
	call	pqcrystals_kyber512_ref_dec		#
# test_kyber.c:26:   if(memcmp(key_a, key_b, CRYPTO_BYTES)) {
	li	a5,-4096		# tmp97,
	addi	a5,a5,832	#, tmp96, tmp97
	addi	a5,a5,-16	#, tmp110, tmp96
	add	a4,a5,s0	#, tmp95, tmp110
	li	a5,-4096		# tmp100,
	addi	a5,a5,864	#, tmp99, tmp100
	addi	a5,a5,-16	#, tmp111, tmp99
	add	a5,a5,s0	#, tmp98, tmp111
	li	a2,32		#,
	mv	a1,a4	#, tmp95
	mv	a0,a5	#, tmp98
	call	memcmp		#
	mv	a5,a0	# _1,
# test_kyber.c:26:   if(memcmp(key_a, key_b, CRYPTO_BYTES)) {
	beq	a5,zero,.L2	#, _1,,
# test_kyber.c:27:     printf("ERROR keys\n");
	lui	a5,%hi(.LC0)	# tmp101,
	addi	a0,a5,%lo(.LC0)	#, tmp101,
	call	puts		#
# test_kyber.c:28:     return 1;
	li	a5,1		# _2,
	j	.L4		#
.L2:
# test_kyber.c:31:   return 0;
	li	a5,0		# _2,
.L4:
# test_kyber.c:32: }
	mv	a0,a5	#, <retval>
	addi	sp,sp,1248	#,,
	lw	ra,2028(sp)		#,
	lw	s0,2024(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	test_keys, .-test_keys
	.section	.rodata
	.align	2
.LC1:
	.string	"ERROR invalid sk"
	.text
	.align	2
	.type	test_invalid_sk_a, @function
test_invalid_sk_a:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-1248	#,,
# test_kyber.c:43:   crypto_kem_keypair(pk, sk);
	li	a5,-4096		# tmp77,
	addi	a5,a5,1664	#, tmp76, tmp77
	addi	a5,a5,-16	#, tmp107, tmp76
	add	a4,a5,s0	#, tmp75, tmp107
	addi	a5,s0,-816	#, tmp78,
	mv	a1,a4	#, tmp75
	mv	a0,a5	#, tmp78
	call	pqcrystals_kyber512_ref_keypair		#
# test_kyber.c:46:   crypto_kem_enc(ct, key_b, pk);
	addi	a3,s0,-816	#, tmp79,
	li	a5,-4096		# tmp82,
	addi	a5,a5,832	#, tmp81, tmp82
	addi	a5,a5,-16	#, tmp108, tmp81
	add	a4,a5,s0	#, tmp80, tmp108
	li	a5,-4096		# tmp85,
	addi	a5,a5,896	#, tmp84, tmp85
	addi	a5,a5,-16	#, tmp109, tmp84
	add	a5,a5,s0	#, tmp83, tmp109
	mv	a2,a3	#, tmp79
	mv	a1,a4	#, tmp80
	mv	a0,a5	#, tmp83
	call	pqcrystals_kyber512_ref_enc		#
# test_kyber.c:49:   randombytes(sk, CRYPTO_SECRETKEYBYTES);
	li	a5,-4096		# tmp88,
	addi	a5,a5,1664	#, tmp87, tmp88
	addi	a5,a5,-16	#, tmp110, tmp87
	add	a5,a5,s0	#, tmp86, tmp110
	li	a1,1632		#,
	mv	a0,a5	#, tmp86
	call	randombytes		#
# test_kyber.c:52:   crypto_kem_dec(key_a, ct, sk);
	li	a5,-4096		# tmp91,
	addi	a5,a5,1664	#, tmp90, tmp91
	addi	a5,a5,-16	#, tmp111, tmp90
	add	a3,a5,s0	#, tmp89, tmp111
	li	a5,-4096		# tmp94,
	addi	a5,a5,896	#, tmp93, tmp94
	addi	a5,a5,-16	#, tmp112, tmp93
	add	a4,a5,s0	#, tmp92, tmp112
	li	a5,-4096		# tmp97,
	addi	a5,a5,864	#, tmp96, tmp97
	addi	a5,a5,-16	#, tmp113, tmp96
	add	a5,a5,s0	#, tmp95, tmp113
	mv	a2,a3	#, tmp89
	mv	a1,a4	#, tmp92
	mv	a0,a5	#, tmp95
	call	pqcrystals_kyber512_ref_dec		#
# test_kyber.c:54:   if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
	li	a5,-4096		# tmp100,
	addi	a5,a5,832	#, tmp99, tmp100
	addi	a5,a5,-16	#, tmp114, tmp99
	add	a4,a5,s0	#, tmp98, tmp114
	li	a5,-4096		# tmp103,
	addi	a5,a5,864	#, tmp102, tmp103
	addi	a5,a5,-16	#, tmp115, tmp102
	add	a5,a5,s0	#, tmp101, tmp115
	li	a2,32		#,
	mv	a1,a4	#, tmp98
	mv	a0,a5	#, tmp101
	call	memcmp		#
	mv	a5,a0	# _1,
# test_kyber.c:54:   if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
	bne	a5,zero,.L6	#, _1,,
# test_kyber.c:55:     printf("ERROR invalid sk\n");
	lui	a5,%hi(.LC1)	# tmp104,
	addi	a0,a5,%lo(.LC1)	#, tmp104,
	call	puts		#
# test_kyber.c:56:     return 1;
	li	a5,1		# _2,
	j	.L8		#
.L6:
# test_kyber.c:59:   return 0;
	li	a5,0		# _2,
.L8:
# test_kyber.c:60: }
	mv	a0,a5	#, <retval>
	addi	sp,sp,1248	#,,
	lw	ra,2028(sp)		#,
	lw	s0,2024(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	test_invalid_sk_a, .-test_invalid_sk_a
	.globl	__umodsi3
	.section	.rodata
	.align	2
.LC2:
	.string	"ERROR invalid ciphertext"
	.text
	.align	2
	.type	test_invalid_ciphertext, @function
test_invalid_ciphertext:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-1264	#,,
.L10:
# test_kyber.c:73:     randombytes(&b, sizeof(uint8_t));
	li	a5,-4096		# tmp83,
	addi	a5,a5,831	#, tmp82, tmp83
	addi	a5,a5,-16	#, tmp134, tmp82
	add	a5,a5,s0	#, tmp81, tmp134
	li	a1,1		#,
	mv	a0,a5	#, tmp81
	call	randombytes		#
# test_kyber.c:74:   } while(!b);
	li	a5,-4096		# tmp84,
	addi	a5,a5,-16	#, tmp135, tmp84
	add	a5,a5,s0	#, tmp85, tmp135
	lbu	a5,831(a5)	# b.0_1, b
	beq	a5,zero,.L10	#, b.0_1,,
# test_kyber.c:75:   randombytes((uint8_t *)&pos, sizeof(size_t));
	li	a5,-4096		# tmp88,
	addi	a5,a5,824	#, tmp87, tmp88
	addi	a5,a5,-16	#, tmp136, tmp87
	add	a5,a5,s0	#, tmp86, tmp136
	li	a1,4		#,
	mv	a0,a5	#, tmp86
	call	randombytes		#
# test_kyber.c:78:   crypto_kem_keypair(pk, sk);
	li	a5,-4096		# tmp91,
	addi	a5,a5,1664	#, tmp90, tmp91
	addi	a5,a5,-16	#, tmp137, tmp90
	add	a4,a5,s0	#, tmp89, tmp137
	addi	a5,s0,-816	#, tmp92,
	mv	a1,a4	#, tmp89
	mv	a0,a5	#, tmp92
	call	pqcrystals_kyber512_ref_keypair		#
# test_kyber.c:81:   crypto_kem_enc(ct, key_b, pk);
	addi	a3,s0,-816	#, tmp93,
	li	a5,-4096		# tmp96,
	addi	a5,a5,832	#, tmp95, tmp96
	addi	a5,a5,-16	#, tmp138, tmp95
	add	a4,a5,s0	#, tmp94, tmp138
	li	a5,-4096		# tmp99,
	addi	a5,a5,896	#, tmp98, tmp99
	addi	a5,a5,-16	#, tmp139, tmp98
	add	a5,a5,s0	#, tmp97, tmp139
	mv	a2,a3	#, tmp93
	mv	a1,a4	#, tmp94
	mv	a0,a5	#, tmp97
	call	pqcrystals_kyber512_ref_enc		#
# test_kyber.c:84:   ct[pos % CRYPTO_CIPHERTEXTBYTES] ^= b;
	li	a5,-4096		# tmp100,
	addi	a5,a5,-16	#, tmp140, tmp100
	add	a5,a5,s0	#, tmp101, tmp140
	lw	a5,824(a5)		# pos.1_2, pos
	li	a1,768		#,
	mv	a0,a5	#, pos.1_2
	call	__umodsi3		#
	mv	a5,a0	# tmp106,
# test_kyber.c:84:   ct[pos % CRYPTO_CIPHERTEXTBYTES] ^= b;
	li	a4,-4096		# tmp107,
	addi	a4,a4,-16	#, tmp141, tmp107
	add	a4,a4,s0	#, tmp108, tmp141
	add	a4,a4,a5	# _15, tmp109, tmp108
	lbu	a3,896(a4)	# _3, ct[_15]
# test_kyber.c:84:   ct[pos % CRYPTO_CIPHERTEXTBYTES] ^= b;
	li	a4,-4096		# tmp110,
	addi	a4,a4,-16	#, tmp142, tmp110
	add	a4,a4,s0	#, tmp111, tmp142
	lbu	a4,831(a4)	# b.2_4, b
	xor	a4,a3,a4	# b.2_4, tmp112, _3
	andi	a4,a4,0xff	# _5, tmp112
	li	a3,-4096		# tmp113,
	addi	a3,a3,-16	#, tmp143, tmp113
	add	a3,a3,s0	#, tmp114, tmp143
	add	a5,a3,a5	# _15, tmp115, tmp114
	sb	a4,896(a5)	# _5, ct[_15]
# test_kyber.c:87:   crypto_kem_dec(key_a, ct, sk);
	li	a5,-4096		# tmp118,
	addi	a5,a5,1664	#, tmp117, tmp118
	addi	a5,a5,-16	#, tmp144, tmp117
	add	a3,a5,s0	#, tmp116, tmp144
	li	a5,-4096		# tmp121,
	addi	a5,a5,896	#, tmp120, tmp121
	addi	a5,a5,-16	#, tmp145, tmp120
	add	a4,a5,s0	#, tmp119, tmp145
	li	a5,-4096		# tmp124,
	addi	a5,a5,864	#, tmp123, tmp124
	addi	a5,a5,-16	#, tmp146, tmp123
	add	a5,a5,s0	#, tmp122, tmp146
	mv	a2,a3	#, tmp116
	mv	a1,a4	#, tmp119
	mv	a0,a5	#, tmp122
	call	pqcrystals_kyber512_ref_dec		#
# test_kyber.c:89:   if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
	li	a5,-4096		# tmp127,
	addi	a5,a5,832	#, tmp126, tmp127
	addi	a5,a5,-16	#, tmp147, tmp126
	add	a4,a5,s0	#, tmp125, tmp147
	li	a5,-4096		# tmp130,
	addi	a5,a5,864	#, tmp129, tmp130
	addi	a5,a5,-16	#, tmp148, tmp129
	add	a5,a5,s0	#, tmp128, tmp148
	li	a2,32		#,
	mv	a1,a4	#, tmp125
	mv	a0,a5	#, tmp128
	call	memcmp		#
	mv	a5,a0	# _6,
# test_kyber.c:89:   if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
	bne	a5,zero,.L11	#, _6,,
# test_kyber.c:90:     printf("ERROR invalid ciphertext\n");
	lui	a5,%hi(.LC2)	# tmp131,
	addi	a0,a5,%lo(.LC2)	#, tmp131,
	call	puts		#
# test_kyber.c:91:     return 1;
	li	a5,1		# _7,
	j	.L13		#
.L11:
# test_kyber.c:94:   return 0;
	li	a5,0		# _7,
.L13:
# test_kyber.c:95: }
	mv	a0,a5	#, <retval>
	addi	sp,sp,1264	#,,
	lw	ra,2028(sp)		#,
	lw	s0,2024(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	test_invalid_ciphertext, .-test_invalid_ciphertext
	.section	.rodata
	.align	2
.LC3:
	.string	"CRYPTO_SECRETKEYBYTES:  %d\n"
	.align	2
.LC4:
	.string	"CRYPTO_PUBLICKEYBYTES:  %d\n"
	.align	2
.LC5:
	.string	"CRYPTO_CIPHERTEXTBYTES: %d\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
# test_kyber.c:102:   for(i=0;i<NTESTS;i++) {
	sw	zero,-20(s0)	#, i
# test_kyber.c:102:   for(i=0;i<NTESTS;i++) {
	j	.L15		#
.L18:
# test_kyber.c:103:     r  = test_keys();
	call	test_keys		#
	sw	a0,-24(s0)	#, r
# test_kyber.c:104:     r |= test_invalid_sk_a();
	call	test_invalid_sk_a		#
	mv	a4,a0	# _14,
# test_kyber.c:104:     r |= test_invalid_sk_a();
	lw	a5,-24(s0)		# tmp77, r
	or	a5,a5,a4	# _14, tmp76, tmp77
	sw	a5,-24(s0)	# tmp76, r
# test_kyber.c:105:     r |= test_invalid_ciphertext();
	call	test_invalid_ciphertext		#
	mv	a4,a0	# _17,
# test_kyber.c:105:     r |= test_invalid_ciphertext();
	lw	a5,-24(s0)		# tmp79, r
	or	a5,a5,a4	# _17, tmp78, tmp79
	sw	a5,-24(s0)	# tmp78, r
# test_kyber.c:106:     if(r)
	lw	a5,-24(s0)		# tmp80, r
	beq	a5,zero,.L16	#, tmp80,,
# test_kyber.c:107:       return 1;
	li	a5,1		# _2,
	j	.L17		#
.L16:
# test_kyber.c:102:   for(i=0;i<NTESTS;i++) {
	lw	a5,-20(s0)		# tmp82, i
	addi	a5,a5,1	#, tmp81, tmp82
	sw	a5,-20(s0)	# tmp81, i
.L15:
# test_kyber.c:102:   for(i=0;i<NTESTS;i++) {
	lw	a4,-20(s0)		# tmp83, i
	li	a5,999		# tmp84,
	bleu	a4,a5,.L18	#, tmp83, tmp84,
# test_kyber.c:110:   printf("CRYPTO_SECRETKEYBYTES:  %d\n",CRYPTO_SECRETKEYBYTES);
	li	a1,1632		#,
	lui	a5,%hi(.LC3)	# tmp85,
	addi	a0,a5,%lo(.LC3)	#, tmp85,
	call	printf		#
# test_kyber.c:111:   printf("CRYPTO_PUBLICKEYBYTES:  %d\n",CRYPTO_PUBLICKEYBYTES);
	li	a1,800		#,
	lui	a5,%hi(.LC4)	# tmp86,
	addi	a0,a5,%lo(.LC4)	#, tmp86,
	call	printf		#
# test_kyber.c:112:   printf("CRYPTO_CIPHERTEXTBYTES: %d\n",CRYPTO_CIPHERTEXTBYTES);
	li	a1,768		#,
	lui	a5,%hi(.LC5)	# tmp87,
	addi	a0,a5,%lo(.LC5)	#, tmp87,
	call	printf		#
# test_kyber.c:114:   return 0;
	li	a5,0		# _2,
.L17:
# test_kyber.c:115: }
	mv	a0,a5	#, <retval>
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
