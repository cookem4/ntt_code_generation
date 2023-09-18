	.file	"indcpa.c"
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
	.type	pack_pk, @function
pack_pk:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# pk, pk
	sw	a2,-44(s0)	# seed, seed
# indcpa.c:27:   polyvec_tobytes(r, pk);
	lw	a1,-40(s0)		#, pk
	lw	a0,-36(s0)		#, r
	call	pqcrystals_kyber512_ref_polyvec_tobytes		#
# indcpa.c:28:   for(i=0;i<KYBER_SYMBYTES;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:28:   for(i=0;i<KYBER_SYMBYTES;i++)
	j	.L2		#
.L3:
# indcpa.c:29:     r[i+KYBER_POLYVECBYTES] = seed[i];
	lw	a4,-44(s0)		# tmp76, seed
	lw	a5,-20(s0)		# tmp77, i
	add	a4,a4,a5	# tmp77, _1, tmp76
# indcpa.c:29:     r[i+KYBER_POLYVECBYTES] = seed[i];
	lw	a5,-20(s0)		# tmp78, i
	addi	a5,a5,768	#, _2, tmp78
	lw	a3,-36(s0)		# tmp79, r
	add	a5,a3,a5	# _2, _3, tmp79
# indcpa.c:29:     r[i+KYBER_POLYVECBYTES] = seed[i];
	lbu	a4,0(a4)	# _4, *_1
# indcpa.c:29:     r[i+KYBER_POLYVECBYTES] = seed[i];
	sb	a4,0(a5)	# _4, *_3
# indcpa.c:28:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a5,-20(s0)		# tmp81, i
	addi	a5,a5,1	#, tmp80, tmp81
	sw	a5,-20(s0)	# tmp80, i
.L2:
# indcpa.c:28:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a4,-20(s0)		# tmp82, i
	li	a5,31		# tmp83,
	bleu	a4,a5,.L3	#, tmp82, tmp83,
# indcpa.c:30: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pack_pk, .-pack_pk
	.align	2
	.type	unpack_pk, @function
unpack_pk:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# pk, pk
	sw	a1,-40(s0)	# seed, seed
	sw	a2,-44(s0)	# packedpk, packedpk
# indcpa.c:47:   polyvec_frombytes(pk, packedpk);
	lw	a1,-44(s0)		#, packedpk
	lw	a0,-36(s0)		#, pk
	call	pqcrystals_kyber512_ref_polyvec_frombytes		#
# indcpa.c:48:   for(i=0;i<KYBER_SYMBYTES;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:48:   for(i=0;i<KYBER_SYMBYTES;i++)
	j	.L5		#
.L6:
# indcpa.c:49:     seed[i] = packedpk[i+KYBER_POLYVECBYTES];
	lw	a5,-20(s0)		# tmp76, i
	addi	a5,a5,768	#, _1, tmp76
	lw	a4,-44(s0)		# tmp77, packedpk
	add	a4,a4,a5	# _1, _2, tmp77
# indcpa.c:49:     seed[i] = packedpk[i+KYBER_POLYVECBYTES];
	lw	a3,-40(s0)		# tmp78, seed
	lw	a5,-20(s0)		# tmp79, i
	add	a5,a3,a5	# tmp79, _3, tmp78
# indcpa.c:49:     seed[i] = packedpk[i+KYBER_POLYVECBYTES];
	lbu	a4,0(a4)	# _4, *_2
# indcpa.c:49:     seed[i] = packedpk[i+KYBER_POLYVECBYTES];
	sb	a4,0(a5)	# _4, *_3
# indcpa.c:48:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a5,-20(s0)		# tmp81, i
	addi	a5,a5,1	#, tmp80, tmp81
	sw	a5,-20(s0)	# tmp80, i
.L5:
# indcpa.c:48:   for(i=0;i<KYBER_SYMBYTES;i++)
	lw	a4,-20(s0)		# tmp82, i
	li	a5,31		# tmp83,
	bleu	a4,a5,.L6	#, tmp82, tmp83,
# indcpa.c:50: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	unpack_pk, .-unpack_pk
	.align	2
	.type	pack_sk, @function
pack_sk:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
	sw	a1,-24(s0)	# sk, sk
# indcpa.c:62:   polyvec_tobytes(r, sk);
	lw	a1,-24(s0)		#, sk
	lw	a0,-20(s0)		#, r
	call	pqcrystals_kyber512_ref_polyvec_tobytes		#
# indcpa.c:63: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pack_sk, .-pack_sk
	.align	2
	.type	unpack_sk, @function
unpack_sk:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# sk, sk
	sw	a1,-24(s0)	# packedsk, packedsk
# indcpa.c:75:   polyvec_frombytes(sk, packedsk);
	lw	a1,-24(s0)		#, packedsk
	lw	a0,-20(s0)		#, sk
	call	pqcrystals_kyber512_ref_polyvec_frombytes		#
# indcpa.c:76: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	unpack_sk, .-unpack_sk
	.align	2
	.type	pack_ciphertext, @function
pack_ciphertext:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
	sw	a1,-24(s0)	# b, b
	sw	a2,-28(s0)	# v, v
# indcpa.c:91:   polyvec_compress(r, b);
	lw	a1,-24(s0)		#, b
	lw	a0,-20(s0)		#, r
	call	pqcrystals_kyber512_ref_polyvec_compress		#
# indcpa.c:92:   poly_compress(r+KYBER_POLYVECCOMPRESSEDBYTES, v);
	lw	a5,-20(s0)		# tmp73, r
	addi	a5,a5,640	#, _1, tmp73
	lw	a1,-28(s0)		#, v
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_poly_compress		#
# indcpa.c:93: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pack_ciphertext, .-pack_ciphertext
	.align	2
	.type	unpack_ciphertext, @function
unpack_ciphertext:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# b, b
	sw	a1,-24(s0)	# v, v
	sw	a2,-28(s0)	# c, c
# indcpa.c:107:   polyvec_decompress(b, c);
	lw	a1,-28(s0)		#, c
	lw	a0,-20(s0)		#, b
	call	pqcrystals_kyber512_ref_polyvec_decompress		#
# indcpa.c:108:   poly_decompress(v, c+KYBER_POLYVECCOMPRESSEDBYTES);
	lw	a5,-28(s0)		# tmp73, c
	addi	a5,a5,640	#, _1, tmp73
	mv	a1,a5	#, _1
	lw	a0,-24(s0)		#, v
	call	pqcrystals_kyber512_ref_poly_decompress		#
# indcpa.c:109: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	unpack_ciphertext, .-unpack_ciphertext
	.align	2
	.type	rej_uniform, @function
rej_uniform:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# len, len
	sw	a2,-44(s0)	# buf, buf
	sw	a3,-48(s0)	# buflen, buflen
# indcpa.c:132:   ctr = pos = 0;
	sw	zero,-24(s0)	#, pos
# indcpa.c:132:   ctr = pos = 0;
	lw	a5,-24(s0)		# tmp107, pos
	sw	a5,-20(s0)	# tmp107, ctr
# indcpa.c:133:   while(ctr < len && pos + 3 <= buflen) {
	j	.L12		#
.L15:
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	lw	a4,-44(s0)		# tmp108, buf
	lw	a5,-24(s0)		# tmp109, pos
	add	a5,a4,a5	# tmp109, _1, tmp108
	lbu	a5,0(a5)	# _2, *_1
	slli	a4,a5,16	#, _3, _2
	srai	a4,a4,16	#, _3, _3
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	lw	a5,-24(s0)		# tmp110, pos
	addi	a5,a5,1	#, _4, tmp110
	lw	a3,-44(s0)		# tmp111, buf
	add	a5,a3,a5	# _4, _5, tmp111
	lbu	a5,0(a5)	# _6, *_5
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	slli	a5,a5,8	#, _8, _7
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	slli	a5,a5,16	#, _9, _8
	srai	a5,a5,16	#, _9, _9
	or	a5,a4,a5	# _9, tmp112, _3
	slli	a5,a5,16	#, _10, tmp112
	srai	a5,a5,16	#, _10, _10
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	slli	a4,a5,16	#, _11, _10
	srli	a4,a4,16	#, _11, _11
# indcpa.c:134:     val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
	li	a5,4096		# tmp115,
	addi	a5,a5,-1	#, tmp114, tmp115
	and	a5,a4,a5	# tmp114, tmp113, _11
	sh	a5,-26(s0)	# tmp113, val0
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	lw	a5,-24(s0)		# tmp116, pos
	addi	a5,a5,1	#, _12, tmp116
	lw	a4,-44(s0)		# tmp117, buf
	add	a5,a4,a5	# _12, _13, tmp117
	lbu	a5,0(a5)	# _14, *_13
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	srli	a5,a5,4	#, tmp118, _14
	andi	a5,a5,0xff	# _15, tmp118
	slli	a4,a5,16	#, _16, _15
	srai	a4,a4,16	#, _16, _16
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	lw	a5,-24(s0)		# tmp119, pos
	addi	a5,a5,2	#, _17, tmp119
	lw	a3,-44(s0)		# tmp120, buf
	add	a5,a3,a5	# _17, _18, tmp120
	lbu	a5,0(a5)	# _19, *_18
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	slli	a5,a5,4	#, _21, _20
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	slli	a5,a5,16	#, _22, _21
	srai	a5,a5,16	#, _22, _22
	or	a5,a4,a5	# _22, tmp121, _16
	slli	a5,a5,16	#, _23, tmp121
	srai	a5,a5,16	#, _23, _23
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	slli	a4,a5,16	#, _24, _23
	srli	a4,a4,16	#, _24, _24
# indcpa.c:135:     val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
	li	a5,4096		# tmp124,
	addi	a5,a5,-1	#, tmp123, tmp124
	and	a5,a4,a5	# tmp123, tmp122, _24
	sh	a5,-28(s0)	# tmp122, val1
# indcpa.c:136:     pos += 3;
	lw	a5,-24(s0)		# tmp126, pos
	addi	a5,a5,3	#, tmp125, tmp126
	sw	a5,-24(s0)	# tmp125, pos
# indcpa.c:138:     if(val0 < KYBER_Q)
	lhu	a4,-26(s0)	# tmp129, val0
	li	a5,4096		# tmp131,
	addi	a5,a5,-768	#, tmp130, tmp131
	bgtu	a4,a5,.L13	#, tmp129, tmp130,
# indcpa.c:139:       r[ctr++] = val0;
	lw	a5,-20(s0)		# ctr.0_25, ctr
	addi	a4,a5,1	#, tmp132, ctr.0_25
	sw	a4,-20(s0)	# tmp132, ctr
# indcpa.c:139:       r[ctr++] = val0;
	slli	a5,a5,1	#, _26, ctr.0_25
	lw	a4,-36(s0)		# tmp133, r
	add	a5,a4,a5	# _26, _27, tmp133
# indcpa.c:139:       r[ctr++] = val0;
	lh	a4,-26(s0)		# val0.1_28, val0
	sh	a4,0(a5)	# val0.1_28, *_27
.L13:
# indcpa.c:140:     if(ctr < len && val1 < KYBER_Q)
	lw	a4,-20(s0)		# tmp134, ctr
	lw	a5,-40(s0)		# tmp135, len
	bgeu	a4,a5,.L12	#, tmp134, tmp135,
# indcpa.c:140:     if(ctr < len && val1 < KYBER_Q)
	lhu	a4,-28(s0)	# tmp138, val1
	li	a5,4096		# tmp140,
	addi	a5,a5,-768	#, tmp139, tmp140
	bgtu	a4,a5,.L12	#, tmp138, tmp139,
# indcpa.c:141:       r[ctr++] = val1;
	lw	a5,-20(s0)		# ctr.2_29, ctr
	addi	a4,a5,1	#, tmp141, ctr.2_29
	sw	a4,-20(s0)	# tmp141, ctr
# indcpa.c:141:       r[ctr++] = val1;
	slli	a5,a5,1	#, _30, ctr.2_29
	lw	a4,-36(s0)		# tmp142, r
	add	a5,a4,a5	# _30, _31, tmp142
# indcpa.c:141:       r[ctr++] = val1;
	lh	a4,-28(s0)		# val1.3_32, val1
	sh	a4,0(a5)	# val1.3_32, *_31
.L12:
# indcpa.c:133:   while(ctr < len && pos + 3 <= buflen) {
	lw	a4,-20(s0)		# tmp143, ctr
	lw	a5,-40(s0)		# tmp144, len
	bgeu	a4,a5,.L14	#, tmp143, tmp144,
# indcpa.c:133:   while(ctr < len && pos + 3 <= buflen) {
	lw	a5,-24(s0)		# tmp145, pos
	addi	a5,a5,3	#, _33, tmp145
# indcpa.c:133:   while(ctr < len && pos + 3 <= buflen) {
	lw	a4,-48(s0)		# tmp146, buflen
	bgeu	a4,a5,.L15	#, tmp146, _33,
.L14:
# indcpa.c:144:   return ctr;
	lw	a5,-20(s0)		# _53, ctr
# indcpa.c:145: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	rej_uniform, .-rej_uniform
	.globl	__umodsi3
	.align	2
	.globl	pqcrystals_kyber512_ref_gen_matrix
	.type	pqcrystals_kyber512_ref_gen_matrix, @function
pqcrystals_kyber512_ref_gen_matrix:
	addi	sp,sp,-784	#,,
	sw	ra,780(sp)	#,
	sw	s0,776(sp)	#,
	addi	s0,sp,784	#,,
	sw	a0,-772(s0)	# a, a
	sw	a1,-776(s0)	# seed, seed
	sw	a2,-780(s0)	# transposed, transposed
# indcpa.c:171:   for(i=0;i<KYBER_K;i++) {
	sw	zero,-24(s0)	#, i
# indcpa.c:171:   for(i=0;i<KYBER_K;i++) {
	j	.L18		#
.L27:
# indcpa.c:172:     for(j=0;j<KYBER_K;j++) {
	sw	zero,-28(s0)	#, j
# indcpa.c:172:     for(j=0;j<KYBER_K;j++) {
	j	.L19		#
.L26:
# indcpa.c:173:       if(transposed)
	lw	a5,-780(s0)		# tmp90, transposed
	beq	a5,zero,.L20	#, tmp90,,
# indcpa.c:174:         xof_absorb(&state, seed, i, j);
	lw	a5,-24(s0)		# tmp91, i
	andi	a4,a5,0xff	# _1, tmp91
	lw	a5,-28(s0)		# tmp92, j
	andi	a3,a5,0xff	# _2, tmp92
	addi	a5,s0,-760	#, tmp93,
	mv	a2,a4	#, _1
	lw	a1,-776(s0)		#, seed
	mv	a0,a5	#, tmp93
	call	pqcrystals_kyber512_ref_kyber_shake128_absorb		#
	j	.L21		#
.L20:
# indcpa.c:176:         xof_absorb(&state, seed, j, i);
	lw	a5,-28(s0)		# tmp94, j
	andi	a4,a5,0xff	# _3, tmp94
	lw	a5,-24(s0)		# tmp95, i
	andi	a3,a5,0xff	# _4, tmp95
	addi	a5,s0,-760	#, tmp96,
	mv	a2,a4	#, _3
	lw	a1,-776(s0)		#, seed
	mv	a0,a5	#, tmp96
	call	pqcrystals_kyber512_ref_kyber_shake128_absorb		#
.L21:
# indcpa.c:178:       xof_squeezeblocks(buf, GEN_MATRIX_NBLOCKS, &state);
	addi	a4,s0,-760	#, tmp97,
	addi	a5,s0,-548	#, tmp98,
	mv	a2,a4	#, tmp97
	li	a1,3		#,
	mv	a0,a5	#, tmp98
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks		#
# indcpa.c:179:       buflen = GEN_MATRIX_NBLOCKS*XOF_BLOCKBYTES;
	li	a5,504		# tmp99,
	sw	a5,-36(s0)	# tmp99, buflen
# indcpa.c:180:       ctr = rej_uniform(a[i].vec[j].coeffs, KYBER_N, buf, buflen);
	lw	a5,-24(s0)		# tmp100, i
	slli	a5,a5,10	#, _5, tmp100
	lw	a4,-772(s0)		# tmp101, a
	add	a4,a4,a5	# _5, _6, tmp101
# indcpa.c:180:       ctr = rej_uniform(a[i].vec[j].coeffs, KYBER_N, buf, buflen);
	lw	a5,-28(s0)		# tmp103, j
	slli	a5,a5,9	#, tmp102, tmp103
	add	a5,a4,a5	# tmp102, _7, _6
# indcpa.c:180:       ctr = rej_uniform(a[i].vec[j].coeffs, KYBER_N, buf, buflen);
	addi	a4,s0,-548	#, tmp104,
	lw	a3,-36(s0)		#, buflen
	mv	a2,a4	#, tmp104
	li	a1,256		#,
	mv	a0,a5	#, _7
	call	rej_uniform		#
	sw	a0,-20(s0)	#, ctr
# indcpa.c:182:       while(ctr < KYBER_N) {
	j	.L22		#
.L25:
# indcpa.c:183:         off = buflen % 3;
	lw	a5,-36(s0)		# tmp106, buflen
	li	a1,3		#,
	mv	a0,a5	#, tmp106
	call	__umodsi3		#
	mv	a5,a0	# tmp111,
	sw	a5,-40(s0)	# tmp111, off
# indcpa.c:184:         for(k = 0; k < off; k++)
	sw	zero,-32(s0)	#, k
# indcpa.c:184:         for(k = 0; k < off; k++)
	j	.L23		#
.L24:
# indcpa.c:185:           buf[k] = buf[buflen - off + k];
	lw	a4,-36(s0)		# tmp112, buflen
	lw	a5,-40(s0)		# tmp113, off
	sub	a4,a4,a5	# _8, tmp112, tmp113
# indcpa.c:185:           buf[k] = buf[buflen - off + k];
	lw	a5,-32(s0)		# tmp114, k
	add	a5,a4,a5	# tmp114, _9, _8
# indcpa.c:185:           buf[k] = buf[buflen - off + k];
	addi	a5,a5,-16	#, tmp148, _9
	add	a5,a5,s0	#, tmp115, tmp148
	lbu	a4,-532(a5)	# _10, buf[_9]
# indcpa.c:185:           buf[k] = buf[buflen - off + k];
	lw	a5,-32(s0)		# tmp117, k
	addi	a5,a5,-16	#, tmp149, tmp117
	add	a5,a5,s0	#, tmp116, tmp149
	sb	a4,-532(a5)	# _10, buf[k_21]
# indcpa.c:184:         for(k = 0; k < off; k++)
	lw	a5,-32(s0)		# tmp119, k
	addi	a5,a5,1	#, tmp118, tmp119
	sw	a5,-32(s0)	# tmp118, k
.L23:
# indcpa.c:184:         for(k = 0; k < off; k++)
	lw	a4,-32(s0)		# tmp120, k
	lw	a5,-40(s0)		# tmp121, off
	bltu	a4,a5,.L24	#, tmp120, tmp121,
# indcpa.c:186:         xof_squeezeblocks(buf + off, 1, &state);
	addi	a4,s0,-548	#, tmp122,
	lw	a5,-40(s0)		# tmp123, off
	add	a5,a4,a5	# tmp123, _11, tmp122
	addi	a4,s0,-760	#, tmp124,
	mv	a2,a4	#, tmp124
	li	a1,1		#,
	mv	a0,a5	#, _11
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks		#
# indcpa.c:187:         buflen = off + XOF_BLOCKBYTES;
	lw	a5,-40(s0)		# tmp126, off
	addi	a5,a5,168	#, tmp125, tmp126
	sw	a5,-36(s0)	# tmp125, buflen
# indcpa.c:188:         ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
	lw	a5,-24(s0)		# tmp127, i
	slli	a5,a5,10	#, _12, tmp127
	lw	a4,-772(s0)		# tmp128, a
	add	a4,a4,a5	# _12, _13, tmp128
# indcpa.c:188:         ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
	lw	a5,-28(s0)		# tmp130, j
	slli	a5,a5,9	#, tmp129, tmp130
	add	a4,a4,a5	# tmp129, _14, _13
# indcpa.c:188:         ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
	lw	a5,-20(s0)		# tmp131, ctr
	slli	a5,a5,1	#, _15, tmp131
# indcpa.c:188:         ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
	add	a0,a4,a5	# _15, _16, _14
	li	a4,256		# tmp132,
	lw	a5,-20(s0)		# tmp133, ctr
	sub	a5,a4,a5	# _17, tmp132, tmp133
	addi	a4,s0,-548	#, tmp134,
	lw	a3,-36(s0)		#, buflen
	mv	a2,a4	#, tmp134
	mv	a1,a5	#, _17
	call	rej_uniform		#
	mv	a4,a0	# _49,
# indcpa.c:188:         ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
	lw	a5,-20(s0)		# tmp136, ctr
	add	a5,a5,a4	# _49, tmp135, tmp136
	sw	a5,-20(s0)	# tmp135, ctr
.L22:
# indcpa.c:182:       while(ctr < KYBER_N) {
	lw	a4,-20(s0)		# tmp137, ctr
	li	a5,255		# tmp138,
	bleu	a4,a5,.L25	#, tmp137, tmp138,
# indcpa.c:172:     for(j=0;j<KYBER_K;j++) {
	lw	a5,-28(s0)		# tmp140, j
	addi	a5,a5,1	#, tmp139, tmp140
	sw	a5,-28(s0)	# tmp139, j
.L19:
# indcpa.c:172:     for(j=0;j<KYBER_K;j++) {
	lw	a4,-28(s0)		# tmp141, j
	li	a5,1		# tmp142,
	bleu	a4,a5,.L26	#, tmp141, tmp142,
# indcpa.c:171:   for(i=0;i<KYBER_K;i++) {
	lw	a5,-24(s0)		# tmp144, i
	addi	a5,a5,1	#, tmp143, tmp144
	sw	a5,-24(s0)	# tmp143, i
.L18:
# indcpa.c:171:   for(i=0;i<KYBER_K;i++) {
	lw	a4,-24(s0)		# tmp145, i
	li	a5,1		# tmp146,
	bleu	a4,a5,.L27	#, tmp145, tmp146,
# indcpa.c:192: }
	nop	
	nop	
	lw	ra,780(sp)		#,
	lw	s0,776(sp)		#,
	addi	sp,sp,784	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_gen_matrix, .-pqcrystals_kyber512_ref_gen_matrix
	.align	2
	.globl	pqcrystals_kyber512_ref_indcpa_keypair
	.type	pqcrystals_kyber512_ref_indcpa_keypair, @function
pqcrystals_kyber512_ref_indcpa_keypair:
	addi	sp,sp,-1136	#,,
	sw	ra,1132(sp)	#,
	sw	s0,1128(sp)	#,
	addi	s0,sp,1136	#,,
	li	t0,-4096		#,
	add	sp,sp,t0	#,,
	li	a5,-4096		# tmp79,
	addi	a5,a5,-16	#, tmp163, tmp79
	add	a5,a5,s0	#, tmp80, tmp163
	sw	a0,-1108(a5)	# pk, pk
	li	a5,-4096		# tmp81,
	addi	a5,a5,-16	#, tmp164, tmp81
	add	a5,a5,s0	#, tmp82, tmp164
	sw	a1,-1112(a5)	# sk, sk
# indcpa.c:210:   const uint8_t *publicseed = buf;
	addi	a5,s0,-96	#, tmp83,
	sw	a5,-28(s0)	# tmp83, publicseed
# indcpa.c:211:   const uint8_t *noiseseed = buf+KYBER_SYMBYTES;
	addi	a5,s0,-96	#, tmp84,
	addi	a5,a5,32	#, tmp85, tmp84
	sw	a5,-32(s0)	# tmp85, noiseseed
# indcpa.c:212:   uint8_t nonce = 0;
	sb	zero,-21(s0)	#, nonce
# indcpa.c:215:   randombytes(buf, KYBER_SYMBYTES);
	addi	a5,s0,-96	#, tmp86,
	li	a1,32		#,
	mv	a0,a5	#, tmp86
	call	randombytes		#
# indcpa.c:216:   hash_g(buf, buf, KYBER_SYMBYTES);
	addi	a4,s0,-96	#, tmp87,
	addi	a5,s0,-96	#, tmp88,
	li	a2,32		#,
	mv	a1,a4	#, tmp87
	mv	a0,a5	#, tmp88
	call	pqcrystals_kyber_fips202_ref_sha3_512		#
# indcpa.c:218:   gen_a(a, publicseed);
	li	a5,-4096		# tmp91,
	addi	a5,a5,1968	#, tmp90, tmp91
	addi	a5,a5,-16	#, tmp165, tmp90
	add	a5,a5,s0	#, tmp89, tmp165
	li	a2,0		#,
	lw	a1,-28(s0)		#, publicseed
	mv	a0,a5	#, tmp89
	call	pqcrystals_kyber512_ref_gen_matrix		#
# indcpa.c:220:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:220:   for(i=0;i<KYBER_K;i++)
	j	.L29		#
.L30:
# indcpa.c:221:     poly_getnoise_eta1(&skpv.vec[i], noiseseed, nonce++);
	li	a5,-4096		# tmp94,
	addi	a5,a5,-1104	#, tmp93, tmp94
	addi	a5,a5,-16	#, tmp166, tmp93
	add	a4,a5,s0	#, tmp92, tmp166
	lw	a5,-20(s0)		# tmp96, i
	slli	a5,a5,9	#, tmp95, tmp96
	add	a3,a4,a5	# tmp95, _1, tmp92
	lbu	a5,-21(s0)	# nonce.4_2, nonce
	addi	a4,a5,1	#, tmp97, nonce.4_2
	sb	a4,-21(s0)	# tmp97, nonce
	mv	a2,a5	#, nonce.4_2
	lw	a1,-32(s0)		#, noiseseed
	mv	a0,a3	#, _1
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1		#
# indcpa.c:220:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp99, i
	addi	a5,a5,1	#, tmp98, tmp99
	sw	a5,-20(s0)	# tmp98, i
.L29:
# indcpa.c:220:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp100, i
	li	a5,1		# tmp101,
	bleu	a4,a5,.L30	#, tmp100, tmp101,
# indcpa.c:222:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:222:   for(i=0;i<KYBER_K;i++)
	j	.L31		#
.L32:
# indcpa.c:223:     poly_getnoise_eta1(&e.vec[i], noiseseed, nonce++);
	li	a5,-4096		# tmp104,
	addi	a5,a5,944	#, tmp103, tmp104
	addi	a5,a5,-16	#, tmp167, tmp103
	add	a4,a5,s0	#, tmp102, tmp167
	lw	a5,-20(s0)		# tmp106, i
	slli	a5,a5,9	#, tmp105, tmp106
	add	a3,a4,a5	# tmp105, _3, tmp102
	lbu	a5,-21(s0)	# nonce.5_4, nonce
	addi	a4,a5,1	#, tmp107, nonce.5_4
	sb	a4,-21(s0)	# tmp107, nonce
	mv	a2,a5	#, nonce.5_4
	lw	a1,-32(s0)		#, noiseseed
	mv	a0,a3	#, _3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1		#
# indcpa.c:222:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp109, i
	addi	a5,a5,1	#, tmp108, tmp109
	sw	a5,-20(s0)	# tmp108, i
.L31:
# indcpa.c:222:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp110, i
	li	a5,1		# tmp111,
	bleu	a4,a5,.L32	#, tmp110, tmp111,
# indcpa.c:225:   polyvec_ntt(&skpv);
	li	a5,-4096		# tmp114,
	addi	a5,a5,-1104	#, tmp113, tmp114
	addi	a5,a5,-16	#, tmp168, tmp113
	add	a5,a5,s0	#, tmp112, tmp168
	mv	a0,a5	#, tmp112
	call	pqcrystals_kyber512_ref_polyvec_ntt		#
# indcpa.c:226:   polyvec_ntt(&e);
	li	a5,-4096		# tmp117,
	addi	a5,a5,944	#, tmp116, tmp117
	addi	a5,a5,-16	#, tmp169, tmp116
	add	a5,a5,s0	#, tmp115, tmp169
	mv	a0,a5	#, tmp115
	call	pqcrystals_kyber512_ref_polyvec_ntt		#
# indcpa.c:229:   for(i=0;i<KYBER_K;i++) {
	sw	zero,-20(s0)	#, i
# indcpa.c:229:   for(i=0;i<KYBER_K;i++) {
	j	.L33		#
.L34:
# indcpa.c:230:     polyvec_basemul_acc_montgomery(&pkpv.vec[i], &a[i], &skpv);
	li	a5,-4096		# tmp120,
	addi	a5,a5,-80	#, tmp119, tmp120
	addi	a5,a5,-16	#, tmp170, tmp119
	add	a4,a5,s0	#, tmp118, tmp170
	lw	a5,-20(s0)		# tmp122, i
	slli	a5,a5,9	#, tmp121, tmp122
	add	a3,a4,a5	# tmp121, _5, tmp118
# indcpa.c:230:     polyvec_basemul_acc_montgomery(&pkpv.vec[i], &a[i], &skpv);
	li	a5,-4096		# tmp125,
	addi	a5,a5,1968	#, tmp124, tmp125
	addi	a5,a5,-16	#, tmp171, tmp124
	add	a4,a5,s0	#, tmp123, tmp171
	lw	a5,-20(s0)		# tmp127, i
	slli	a5,a5,10	#, tmp126, tmp127
	add	a4,a4,a5	# tmp126, _6, tmp123
# indcpa.c:230:     polyvec_basemul_acc_montgomery(&pkpv.vec[i], &a[i], &skpv);
	li	a5,-4096		# tmp130,
	addi	a5,a5,-1104	#, tmp129, tmp130
	addi	a5,a5,-16	#, tmp172, tmp129
	add	a5,a5,s0	#, tmp128, tmp172
	mv	a2,a5	#, tmp128
	mv	a1,a4	#, _6
	mv	a0,a3	#, _5
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery		#
# indcpa.c:231:     poly_tomont(&pkpv.vec[i]);
	li	a5,-4096		# tmp133,
	addi	a5,a5,-80	#, tmp132, tmp133
	addi	a5,a5,-16	#, tmp173, tmp132
	add	a4,a5,s0	#, tmp131, tmp173
	lw	a5,-20(s0)		# tmp135, i
	slli	a5,a5,9	#, tmp134, tmp135
	add	a5,a4,a5	# tmp134, _7, tmp131
	mv	a0,a5	#, _7
	call	pqcrystals_kyber512_ref_poly_tomont		#
# indcpa.c:229:   for(i=0;i<KYBER_K;i++) {
	lw	a5,-20(s0)		# tmp137, i
	addi	a5,a5,1	#, tmp136, tmp137
	sw	a5,-20(s0)	# tmp136, i
.L33:
# indcpa.c:229:   for(i=0;i<KYBER_K;i++) {
	lw	a4,-20(s0)		# tmp138, i
	li	a5,1		# tmp139,
	bleu	a4,a5,.L34	#, tmp138, tmp139,
# indcpa.c:234:   polyvec_add(&pkpv, &pkpv, &e);
	li	a5,-4096		# tmp142,
	addi	a5,a5,944	#, tmp141, tmp142
	addi	a5,a5,-16	#, tmp174, tmp141
	add	a3,a5,s0	#, tmp140, tmp174
	li	a5,-4096		# tmp145,
	addi	a5,a5,-80	#, tmp144, tmp145
	addi	a5,a5,-16	#, tmp175, tmp144
	add	a4,a5,s0	#, tmp143, tmp175
	li	a5,-4096		# tmp148,
	addi	a5,a5,-80	#, tmp147, tmp148
	addi	a5,a5,-16	#, tmp176, tmp147
	add	a5,a5,s0	#, tmp146, tmp176
	mv	a2,a3	#, tmp140
	mv	a1,a4	#, tmp143
	mv	a0,a5	#, tmp146
	call	pqcrystals_kyber512_ref_polyvec_add		#
# indcpa.c:235:   polyvec_reduce(&pkpv);
	li	a5,-4096		# tmp151,
	addi	a5,a5,-80	#, tmp150, tmp151
	addi	a5,a5,-16	#, tmp177, tmp150
	add	a5,a5,s0	#, tmp149, tmp177
	mv	a0,a5	#, tmp149
	call	pqcrystals_kyber512_ref_polyvec_reduce		#
# indcpa.c:237:   pack_sk(sk, &skpv);
	li	a5,-4096		# tmp154,
	addi	a5,a5,-1104	#, tmp153, tmp154
	addi	a5,a5,-16	#, tmp178, tmp153
	add	a4,a5,s0	#, tmp152, tmp178
	li	a5,-4096		# tmp155,
	addi	a5,a5,-16	#, tmp179, tmp155
	add	a5,a5,s0	#, tmp156, tmp179
	mv	a1,a4	#, tmp152
	lw	a0,-1112(a5)		#, sk
	call	pack_sk		#
# indcpa.c:238:   pack_pk(pk, &pkpv, publicseed);
	li	a5,-4096		# tmp159,
	addi	a5,a5,-80	#, tmp158, tmp159
	addi	a5,a5,-16	#, tmp180, tmp158
	add	a4,a5,s0	#, tmp157, tmp180
	li	a5,-4096		# tmp160,
	addi	a5,a5,-16	#, tmp181, tmp160
	add	a5,a5,s0	#, tmp161, tmp181
	lw	a2,-28(s0)		#, publicseed
	mv	a1,a4	#, tmp157
	lw	a0,-1108(a5)		#, pk
	call	pack_pk		#
# indcpa.c:239: }
	nop	
	li	t0,4096		#,
	add	sp,sp,t0	#,,
	lw	ra,1132(sp)		#,
	lw	s0,1128(sp)		#,
	addi	sp,sp,1136	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_indcpa_keypair, .-pqcrystals_kyber512_ref_indcpa_keypair
	.align	2
	.globl	pqcrystals_kyber512_ref_indcpa_enc
	.type	pqcrystals_kyber512_ref_indcpa_enc, @function
pqcrystals_kyber512_ref_indcpa_enc:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	addi	s0,sp,2032	#,,
	li	t0,-4096		#,
	addi	t0,t0,-1632	#,,
	add	sp,sp,t0	#,,
	li	a5,-8192		# tmp81,
	addi	a5,a5,-16	#, tmp201, tmp81
	add	a5,a5,s0	#, tmp82, tmp201
	sw	a0,460(a5)	# c, c
	li	a5,-8192		# tmp83,
	addi	a5,a5,-16	#, tmp202, tmp83
	add	a5,a5,s0	#, tmp84, tmp202
	sw	a1,456(a5)	# m, m
	li	a5,-8192		# tmp85,
	addi	a5,a5,-16	#, tmp203, tmp85
	add	a5,a5,s0	#, tmp86, tmp203
	sw	a2,452(a5)	# pk, pk
	li	a5,-8192		# tmp87,
	addi	a5,a5,-16	#, tmp204, tmp87
	add	a5,a5,s0	#, tmp88, tmp204
	sw	a3,448(a5)	# coins, coins
# indcpa.c:264:   uint8_t nonce = 0;
	sb	zero,-21(s0)	#, nonce
# indcpa.c:268:   unpack_pk(&pkpv, seed, pk);
	li	a5,-8192		# tmp89,
	addi	a5,a5,-16	#, tmp205, tmp89
	add	a5,a5,s0	#, tmp90, tmp205
	addi	a3,s0,-56	#, tmp91,
	li	a4,-4096		# tmp94,
	addi	a4,a4,2008	#, tmp93, tmp94
	addi	a4,a4,-16	#, tmp206, tmp93
	add	a4,a4,s0	#, tmp92, tmp206
	lw	a2,452(a5)		#, pk
	mv	a1,a3	#, tmp91
	mv	a0,a4	#, tmp92
	call	unpack_pk		#
# indcpa.c:269:   poly_frommsg(&k, m);
	li	a5,-8192		# tmp95,
	addi	a5,a5,-16	#, tmp207, tmp95
	add	a5,a5,s0	#, tmp96, tmp207
	li	a4,-8192		# tmp99,
	addi	a4,a4,984	#, tmp98, tmp99
	addi	a4,a4,-16	#, tmp208, tmp98
	add	a4,a4,s0	#, tmp97, tmp208
	lw	a1,456(a5)		#, m
	mv	a0,a4	#, tmp97
	call	pqcrystals_kyber512_ref_poly_frommsg		#
# indcpa.c:270:   gen_at(at, seed);
	addi	a4,s0,-56	#, tmp100,
	li	a5,-4096		# tmp103,
	addi	a5,a5,-1064	#, tmp102, tmp103
	addi	a5,a5,-16	#, tmp209, tmp102
	add	a5,a5,s0	#, tmp101, tmp209
	li	a2,1		#,
	mv	a1,a4	#, tmp100
	mv	a0,a5	#, tmp101
	call	pqcrystals_kyber512_ref_gen_matrix		#
# indcpa.c:272:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:272:   for(i=0;i<KYBER_K;i++)
	j	.L36		#
.L37:
# indcpa.c:273:     poly_getnoise_eta1(sp.vec+i, coins, nonce++);
	lw	a5,-20(s0)		# tmp104, i
	slli	a5,a5,9	#, _1, tmp104
# indcpa.c:273:     poly_getnoise_eta1(sp.vec+i, coins, nonce++);
	addi	a4,s0,-1080	#, tmp105,
	add	a3,a4,a5	# _1, _2, tmp105
	lbu	a5,-21(s0)	# nonce.6_3, nonce
	addi	a4,a5,1	#, tmp106, nonce.6_3
	sb	a4,-21(s0)	# tmp106, nonce
	li	a4,-8192		# tmp107,
	addi	a4,a4,-16	#, tmp210, tmp107
	add	a4,a4,s0	#, tmp108, tmp210
	mv	a2,a5	#, nonce.6_3
	lw	a1,448(a4)		#, coins
	mv	a0,a3	#, _2
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1		#
# indcpa.c:272:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp110, i
	addi	a5,a5,1	#, tmp109, tmp110
	sw	a5,-20(s0)	# tmp109, i
.L36:
# indcpa.c:272:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp111, i
	li	a5,1		# tmp112,
	bleu	a4,a5,.L37	#, tmp111, tmp112,
# indcpa.c:274:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:274:   for(i=0;i<KYBER_K;i++)
	j	.L38		#
.L39:
# indcpa.c:275:     poly_getnoise_eta2(ep.vec+i, coins, nonce++);
	lw	a5,-20(s0)		# tmp113, i
	slli	a5,a5,9	#, _4, tmp113
# indcpa.c:275:     poly_getnoise_eta2(ep.vec+i, coins, nonce++);
	li	a4,-4096		# tmp116,
	addi	a4,a4,984	#, tmp115, tmp116
	addi	a4,a4,-16	#, tmp211, tmp115
	add	a4,a4,s0	#, tmp114, tmp211
	add	a3,a4,a5	# _4, _5, tmp114
	lbu	a5,-21(s0)	# nonce.7_6, nonce
	addi	a4,a5,1	#, tmp117, nonce.7_6
	sb	a4,-21(s0)	# tmp117, nonce
	li	a4,-8192		# tmp118,
	addi	a4,a4,-16	#, tmp212, tmp118
	add	a4,a4,s0	#, tmp119, tmp212
	mv	a2,a5	#, nonce.7_6
	lw	a1,448(a4)		#, coins
	mv	a0,a3	#, _5
	call	pqcrystals_kyber512_ref_poly_getnoise_eta2		#
# indcpa.c:274:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp121, i
	addi	a5,a5,1	#, tmp120, tmp121
	sw	a5,-20(s0)	# tmp120, i
.L38:
# indcpa.c:274:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp122, i
	li	a5,1		# tmp123,
	bleu	a4,a5,.L39	#, tmp122, tmp123,
# indcpa.c:276:   poly_getnoise_eta2(&epp, coins, nonce++);
	lbu	a5,-21(s0)	# nonce.8_7, nonce
	addi	a4,a5,1	#, tmp124, nonce.8_7
	sb	a4,-21(s0)	# tmp124, nonce
	li	a4,-8192		# tmp125,
	addi	a4,a4,-16	#, tmp213, tmp125
	add	a4,a4,s0	#, tmp126, tmp213
	li	a3,-8192		# tmp129,
	addi	a3,a3,472	#, tmp128, tmp129
	addi	a3,a3,-16	#, tmp214, tmp128
	add	a3,a3,s0	#, tmp127, tmp214
	mv	a2,a5	#, nonce.8_7
	lw	a1,448(a4)		#, coins
	mv	a0,a3	#, tmp127
	call	pqcrystals_kyber512_ref_poly_getnoise_eta2		#
# indcpa.c:278:   polyvec_ntt(&sp);
	addi	a5,s0,-1080	#, tmp130,
	mv	a0,a5	#, tmp130
	call	pqcrystals_kyber512_ref_polyvec_ntt		#
# indcpa.c:281:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# indcpa.c:281:   for(i=0;i<KYBER_K;i++)
	j	.L40		#
.L41:
# indcpa.c:282:     polyvec_basemul_acc_montgomery(&b.vec[i], &at[i], &sp);
	li	a5,-8192		# tmp133,
	addi	a5,a5,2008	#, tmp132, tmp133
	addi	a5,a5,-16	#, tmp215, tmp132
	add	a4,a5,s0	#, tmp131, tmp215
	lw	a5,-20(s0)		# tmp135, i
	slli	a5,a5,9	#, tmp134, tmp135
	add	a3,a4,a5	# tmp134, _8, tmp131
# indcpa.c:282:     polyvec_basemul_acc_montgomery(&b.vec[i], &at[i], &sp);
	li	a5,-4096		# tmp138,
	addi	a5,a5,-1064	#, tmp137, tmp138
	addi	a5,a5,-16	#, tmp216, tmp137
	add	a4,a5,s0	#, tmp136, tmp216
	lw	a5,-20(s0)		# tmp140, i
	slli	a5,a5,10	#, tmp139, tmp140
	add	a5,a4,a5	# tmp139, _9, tmp136
# indcpa.c:282:     polyvec_basemul_acc_montgomery(&b.vec[i], &at[i], &sp);
	addi	a4,s0,-1080	#, tmp141,
	mv	a2,a4	#, tmp141
	mv	a1,a5	#, _9
	mv	a0,a3	#, _8
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery		#
# indcpa.c:281:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp143, i
	addi	a5,a5,1	#, tmp142, tmp143
	sw	a5,-20(s0)	# tmp142, i
.L40:
# indcpa.c:281:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp144, i
	li	a5,1		# tmp145,
	bleu	a4,a5,.L41	#, tmp144, tmp145,
# indcpa.c:284:   polyvec_basemul_acc_montgomery(&v, &pkpv, &sp);
	addi	a3,s0,-1080	#, tmp146,
	li	a5,-4096		# tmp149,
	addi	a5,a5,2008	#, tmp148, tmp149
	addi	a5,a5,-16	#, tmp217, tmp148
	add	a4,a5,s0	#, tmp147, tmp217
	li	a5,-8192		# tmp152,
	addi	a5,a5,1496	#, tmp151, tmp152
	addi	a5,a5,-16	#, tmp218, tmp151
	add	a5,a5,s0	#, tmp150, tmp218
	mv	a2,a3	#, tmp146
	mv	a1,a4	#, tmp147
	mv	a0,a5	#, tmp150
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery		#
# indcpa.c:286:   polyvec_invntt_tomont(&b);
	li	a5,-8192		# tmp155,
	addi	a5,a5,2008	#, tmp154, tmp155
	addi	a5,a5,-16	#, tmp219, tmp154
	add	a5,a5,s0	#, tmp153, tmp219
	mv	a0,a5	#, tmp153
	call	pqcrystals_kyber512_ref_polyvec_invntt_tomont		#
# indcpa.c:287:   poly_invntt_tomont(&v);
	li	a5,-8192		# tmp158,
	addi	a5,a5,1496	#, tmp157, tmp158
	addi	a5,a5,-16	#, tmp220, tmp157
	add	a5,a5,s0	#, tmp156, tmp220
	mv	a0,a5	#, tmp156
	call	pqcrystals_kyber512_ref_poly_invntt_tomont		#
# indcpa.c:289:   polyvec_add(&b, &b, &ep);
	li	a5,-4096		# tmp161,
	addi	a5,a5,984	#, tmp160, tmp161
	addi	a5,a5,-16	#, tmp221, tmp160
	add	a3,a5,s0	#, tmp159, tmp221
	li	a5,-8192		# tmp164,
	addi	a5,a5,2008	#, tmp163, tmp164
	addi	a5,a5,-16	#, tmp222, tmp163
	add	a4,a5,s0	#, tmp162, tmp222
	li	a5,-8192		# tmp167,
	addi	a5,a5,2008	#, tmp166, tmp167
	addi	a5,a5,-16	#, tmp223, tmp166
	add	a5,a5,s0	#, tmp165, tmp223
	mv	a2,a3	#, tmp159
	mv	a1,a4	#, tmp162
	mv	a0,a5	#, tmp165
	call	pqcrystals_kyber512_ref_polyvec_add		#
# indcpa.c:290:   poly_add(&v, &v, &epp);
	li	a5,-8192		# tmp170,
	addi	a5,a5,472	#, tmp169, tmp170
	addi	a5,a5,-16	#, tmp224, tmp169
	add	a3,a5,s0	#, tmp168, tmp224
	li	a5,-8192		# tmp173,
	addi	a5,a5,1496	#, tmp172, tmp173
	addi	a5,a5,-16	#, tmp225, tmp172
	add	a4,a5,s0	#, tmp171, tmp225
	li	a5,-8192		# tmp176,
	addi	a5,a5,1496	#, tmp175, tmp176
	addi	a5,a5,-16	#, tmp226, tmp175
	add	a5,a5,s0	#, tmp174, tmp226
	mv	a2,a3	#, tmp168
	mv	a1,a4	#, tmp171
	mv	a0,a5	#, tmp174
	call	pqcrystals_kyber512_ref_poly_add		#
# indcpa.c:291:   poly_add(&v, &v, &k);
	li	a5,-8192		# tmp179,
	addi	a5,a5,984	#, tmp178, tmp179
	addi	a5,a5,-16	#, tmp227, tmp178
	add	a3,a5,s0	#, tmp177, tmp227
	li	a5,-8192		# tmp182,
	addi	a5,a5,1496	#, tmp181, tmp182
	addi	a5,a5,-16	#, tmp228, tmp181
	add	a4,a5,s0	#, tmp180, tmp228
	li	a5,-8192		# tmp185,
	addi	a5,a5,1496	#, tmp184, tmp185
	addi	a5,a5,-16	#, tmp229, tmp184
	add	a5,a5,s0	#, tmp183, tmp229
	mv	a2,a3	#, tmp177
	mv	a1,a4	#, tmp180
	mv	a0,a5	#, tmp183
	call	pqcrystals_kyber512_ref_poly_add		#
# indcpa.c:292:   polyvec_reduce(&b);
	li	a5,-8192		# tmp188,
	addi	a5,a5,2008	#, tmp187, tmp188
	addi	a5,a5,-16	#, tmp230, tmp187
	add	a5,a5,s0	#, tmp186, tmp230
	mv	a0,a5	#, tmp186
	call	pqcrystals_kyber512_ref_polyvec_reduce		#
# indcpa.c:293:   poly_reduce(&v);
	li	a5,-8192		# tmp191,
	addi	a5,a5,1496	#, tmp190, tmp191
	addi	a5,a5,-16	#, tmp231, tmp190
	add	a5,a5,s0	#, tmp189, tmp231
	mv	a0,a5	#, tmp189
	call	pqcrystals_kyber512_ref_poly_reduce		#
# indcpa.c:295:   pack_ciphertext(c, &b, &v);
	li	a5,-8192		# tmp194,
	addi	a5,a5,1496	#, tmp193, tmp194
	addi	a5,a5,-16	#, tmp232, tmp193
	add	a3,a5,s0	#, tmp192, tmp232
	li	a5,-8192		# tmp197,
	addi	a5,a5,2008	#, tmp196, tmp197
	addi	a5,a5,-16	#, tmp233, tmp196
	add	a4,a5,s0	#, tmp195, tmp233
	li	a5,-8192		# tmp198,
	addi	a5,a5,-16	#, tmp234, tmp198
	add	a5,a5,s0	#, tmp199, tmp234
	mv	a2,a3	#, tmp192
	mv	a1,a4	#, tmp195
	lw	a0,460(a5)		#, c
	call	pack_ciphertext		#
# indcpa.c:296: }
	nop	
	li	t0,4096		#,
	addi	t0,t0,1632	#,,
	add	sp,sp,t0	#,,
	lw	ra,2028(sp)		#,
	lw	s0,2024(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_indcpa_enc, .-pqcrystals_kyber512_ref_indcpa_enc
	.align	2
	.globl	pqcrystals_kyber512_ref_indcpa_dec
	.type	pqcrystals_kyber512_ref_indcpa_dec, @function
pqcrystals_kyber512_ref_indcpa_dec:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	sw	s1,2020(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-1072	#,,
	li	a5,-4096		# tmp72,
	addi	a5,a5,-16	#, tmp114, tmp72
	add	a5,a5,s0	#, tmp73, tmp114
	sw	a0,1020(a5)	# m, m
	li	a5,-4096		# tmp74,
	addi	a5,a5,-16	#, tmp115, tmp74
	add	a5,a5,s0	#, tmp75, tmp115
	sw	a1,1016(a5)	# c, c
	li	a5,-4096		# tmp76,
	addi	a5,a5,-16	#, tmp116, tmp76
	add	a5,a5,s0	#, tmp77, tmp116
	sw	a2,1012(a5)	# sk, sk
# indcpa.c:318:   unpack_ciphertext(&b, &v, c);
	li	a5,-4096		# tmp78,
	addi	a5,a5,-16	#, tmp117, tmp78
	add	a5,a5,s0	#, tmp79, tmp117
	li	a4,-4096		# tmp82,
	addi	a4,a4,1536	#, tmp81, tmp82
	addi	a4,a4,-16	#, tmp118, tmp81
	add	a3,a4,s0	#, tmp80, tmp118
	addi	a4,s0,-1040	#, tmp83,
	lw	a2,1016(a5)		#, c
	mv	a1,a3	#, tmp80
	mv	a0,a4	#, tmp83
	call	unpack_ciphertext		#
# indcpa.c:319:   unpack_sk(&skpv, sk);
	li	a5,-4096		# tmp84,
	addi	a5,a5,-16	#, tmp119, tmp84
	add	a5,a5,s0	#, tmp85, tmp119
	li	s1,-4096		# tmp121,
	addi	a4,s1,2032	#, tmp120, tmp121
	add	a4,s0,a4	# tmp120, tmp86,
	lw	a1,1012(a5)		#, sk
	mv	a0,a4	#, tmp86
	call	unpack_sk		#
# indcpa.c:321:   polyvec_ntt(&b);
	addi	a5,s0,-1040	#, tmp87,
	mv	a0,a5	#, tmp87
	call	pqcrystals_kyber512_ref_polyvec_ntt		#
# indcpa.c:322:   polyvec_basemul_acc_montgomery(&mp, &skpv, &b);
	addi	a3,s0,-1040	#, tmp88,
	addi	a5,s1,2032	#, tmp122, tmp123
	add	a4,s0,a5	# tmp122, tmp89,
	li	a5,-4096		# tmp92,
	addi	a5,a5,1024	#, tmp91, tmp92
	addi	a5,a5,-16	#, tmp124, tmp91
	add	a5,a5,s0	#, tmp90, tmp124
	mv	a2,a3	#, tmp88
	mv	a1,a4	#, tmp89
	mv	a0,a5	#, tmp90
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery		#
# indcpa.c:323:   poly_invntt_tomont(&mp);
	li	a5,-4096		# tmp95,
	addi	a5,a5,1024	#, tmp94, tmp95
	addi	a5,a5,-16	#, tmp125, tmp94
	add	a5,a5,s0	#, tmp93, tmp125
	mv	a0,a5	#, tmp93
	call	pqcrystals_kyber512_ref_poly_invntt_tomont		#
# indcpa.c:325:   poly_sub(&mp, &v, &mp);
	li	a5,-4096		# tmp98,
	addi	a5,a5,1024	#, tmp97, tmp98
	addi	a5,a5,-16	#, tmp126, tmp97
	add	a3,a5,s0	#, tmp96, tmp126
	li	a5,-4096		# tmp101,
	addi	a5,a5,1536	#, tmp100, tmp101
	addi	a5,a5,-16	#, tmp127, tmp100
	add	a4,a5,s0	#, tmp99, tmp127
	li	a5,-4096		# tmp104,
	addi	a5,a5,1024	#, tmp103, tmp104
	addi	a5,a5,-16	#, tmp128, tmp103
	add	a5,a5,s0	#, tmp102, tmp128
	mv	a2,a3	#, tmp96
	mv	a1,a4	#, tmp99
	mv	a0,a5	#, tmp102
	call	pqcrystals_kyber512_ref_poly_sub		#
# indcpa.c:326:   poly_reduce(&mp);
	li	a5,-4096		# tmp107,
	addi	a5,a5,1024	#, tmp106, tmp107
	addi	a5,a5,-16	#, tmp129, tmp106
	add	a5,a5,s0	#, tmp105, tmp129
	mv	a0,a5	#, tmp105
	call	pqcrystals_kyber512_ref_poly_reduce		#
# indcpa.c:328:   poly_tomsg(m, &mp);
	li	a5,-4096		# tmp110,
	addi	a5,a5,1024	#, tmp109, tmp110
	addi	a5,a5,-16	#, tmp130, tmp109
	add	a4,a5,s0	#, tmp108, tmp130
	li	a5,-4096		# tmp111,
	addi	a5,a5,-16	#, tmp131, tmp111
	add	a5,a5,s0	#, tmp112, tmp131
	mv	a1,a4	#, tmp108
	lw	a0,1020(a5)		#, m
	call	pqcrystals_kyber512_ref_poly_tomsg		#
# indcpa.c:329: }
	nop	
	addi	sp,sp,1072	#,,
	lw	ra,2028(sp)		#,
	lw	s0,2024(sp)		#,
	lw	s1,2020(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_indcpa_dec, .-pqcrystals_kyber512_ref_indcpa_dec
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
