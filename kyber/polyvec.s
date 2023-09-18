	.file	"polyvec.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g2ee5e430018) version 12.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -mtune=rocket -misa-spec=20191213 -march=rv32i -O0
	.text
	.globl	__udivsi3
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_compress
	.type	pqcrystals_kyber512_ref_polyvec_compress, @function
pqcrystals_kyber512_ref_polyvec_compress:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
	sw	a1,-56(s0)	# a, a
# polyvec.c:45:   for(i=0;i<KYBER_K;i++) {
	sw	zero,-20(s0)	#, i
# polyvec.c:45:   for(i=0;i<KYBER_K;i++) {
	j	.L2		#
.L7:
# polyvec.c:46:     for(j=0;j<KYBER_N/4;j++) {
	sw	zero,-24(s0)	#, j
# polyvec.c:46:     for(j=0;j<KYBER_N/4;j++) {
	j	.L3		#
.L6:
# polyvec.c:47:       for(k=0;k<4;k++) {
	sw	zero,-28(s0)	#, k
# polyvec.c:47:       for(k=0;k<4;k++) {
	j	.L4		#
.L5:
# polyvec.c:48:         t[k]  = a->vec[i].coeffs[4*j+k];
	lw	a5,-24(s0)		# tmp126, j
	slli	a4,a5,2	#, _1, tmp126
# polyvec.c:48:         t[k]  = a->vec[i].coeffs[4*j+k];
	lw	a5,-28(s0)		# tmp127, k
	add	a5,a4,a5	# tmp127, _2, _1
# polyvec.c:48:         t[k]  = a->vec[i].coeffs[4*j+k];
	lw	a4,-56(s0)		# tmp128, a
	lw	a3,-20(s0)		# tmp129, i
	slli	a3,a3,8	#, tmp130, tmp129
	add	a5,a3,a5	# _2, tmp131, tmp130
	slli	a5,a5,1	#, tmp132, tmp131
	add	a5,a4,a5	# tmp132, tmp133, tmp128
	lh	a5,0(a5)		# _3, a_77(D)->vec[i_57].coeffs[_2]
	slli	a4,a5,16	#, _4, _3
	srli	a4,a4,16	#, _4, _4
# polyvec.c:48:         t[k]  = a->vec[i].coeffs[4*j+k];
	lw	a5,-28(s0)		# tmp134, k
	slli	a5,a5,1	#, tmp135, tmp134
	addi	a5,a5,-16	#, tmp183, tmp135
	add	a5,a5,s0	#, tmp135, tmp183
	sh	a4,-20(a5)	# _4, t[k_59]
# polyvec.c:49:         t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
	lw	a5,-28(s0)		# tmp136, k
	slli	a5,a5,1	#, tmp137, tmp136
	addi	a5,a5,-16	#, tmp184, tmp137
	add	a5,a5,s0	#, tmp137, tmp184
	lhu	a4,-20(a5)	# _5, t[k_59]
# polyvec.c:49:         t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
	lw	a5,-28(s0)		# tmp138, k
	slli	a5,a5,1	#, tmp139, tmp138
	addi	a5,a5,-16	#, tmp185, tmp139
	add	a5,a5,s0	#, tmp139, tmp185
	lhu	a5,-20(a5)	# _6, t[k_59]
# polyvec.c:49:         t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
	slli	a5,a5,16	#, _7, _6
	srai	a5,a5,16	#, _7, _7
# polyvec.c:49:         t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
	srai	a5,a5,15	#, tmp140, _7
	slli	a5,a5,16	#, _8, tmp140
	srai	a5,a5,16	#, _8, _8
	slli	a3,a5,16	#, _9, _8
	srli	a3,a3,16	#, _9, _9
	li	a5,4096		# tmp143,
	addi	a5,a5,-767	#, tmp142, tmp143
	and	a5,a3,a5	# tmp142, tmp141, _9
	slli	a5,a5,16	#, _10, tmp141
	srli	a5,a5,16	#, _10, _10
# polyvec.c:49:         t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
	add	a5,a4,a5	# _10, tmp144, _5
	slli	a4,a5,16	#, _11, tmp144
	srli	a4,a4,16	#, _11, _11
	lw	a5,-28(s0)		# tmp145, k
	slli	a5,a5,1	#, tmp146, tmp145
	addi	a5,a5,-16	#, tmp186, tmp146
	add	a5,a5,s0	#, tmp146, tmp186
	sh	a4,-20(a5)	# _11, t[k_59]
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	lw	a5,-28(s0)		# tmp147, k
	slli	a5,a5,1	#, tmp148, tmp147
	addi	a5,a5,-16	#, tmp187, tmp148
	add	a5,a5,s0	#, tmp148, tmp187
	lhu	a5,-20(a5)	# _12, t[k_59]
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	slli	a5,a5,10	#, _14, _13
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	addi	a4,a5,1664	#, _15, _14
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	li	a5,4096		# tmp151,
	addi	a1,a5,-767	#,, tmp151
	mv	a0,a4	#, _15
	call	__udivsi3		#
	mv	a5,a0	# tmp152,
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	slli	a5,a5,16	#, _17, _16
	srli	a5,a5,16	#, _17, _17
	andi	a5,a5,1023	#, tmp153, _17
	slli	a4,a5,16	#, _18, tmp153
	srli	a4,a4,16	#, _18, _18
# polyvec.c:50:         t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
	lw	a5,-28(s0)		# tmp154, k
	slli	a5,a5,1	#, tmp155, tmp154
	addi	a5,a5,-16	#, tmp188, tmp155
	add	a5,a5,s0	#, tmp155, tmp188
	sh	a4,-20(a5)	# _18, t[k_59]
# polyvec.c:47:       for(k=0;k<4;k++) {
	lw	a5,-28(s0)		# tmp157, k
	addi	a5,a5,1	#, tmp156, tmp157
	sw	a5,-28(s0)	# tmp156, k
.L4:
# polyvec.c:47:       for(k=0;k<4;k++) {
	lw	a4,-28(s0)		# tmp158, k
	li	a5,3		# tmp159,
	bleu	a4,a5,.L5	#, tmp158, tmp159,
# polyvec.c:53:       r[0] = (t[0] >> 0);
	lhu	a5,-36(s0)	# _19, t[0]
# polyvec.c:53:       r[0] = (t[0] >> 0);
	andi	a4,a5,0xff	# _20, _19
	lw	a5,-52(s0)		# tmp160, r
	sb	a4,0(a5)	# _20, *r_55
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	lhu	a5,-36(s0)	# _21, t[0]
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	srli	a5,a5,8	#, tmp161, _21
	slli	a5,a5,16	#, _22, tmp161
	srli	a5,a5,16	#, _22, _22
	slli	a4,a5,24	#, _23, _22
	srai	a4,a4,24	#, _23, _23
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	lhu	a5,-34(s0)	# _24, t[1]
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	slli	a5,a5,2	#, _26, _25
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	slli	a5,a5,24	#, _27, _26
	srai	a5,a5,24	#, _27, _27
	or	a5,a4,a5	# _27, tmp162, _23
	slli	a4,a5,24	#, _28, tmp162
	srai	a4,a4,24	#, _28, _28
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	lw	a5,-52(s0)		# tmp163, r
	addi	a5,a5,1	#, _29, tmp163
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	andi	a4,a4,0xff	# _30, _28
# polyvec.c:54:       r[1] = (t[0] >> 8) | (t[1] << 2);
	sb	a4,0(a5)	# _30, *_29
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	lhu	a5,-34(s0)	# _31, t[1]
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	srli	a5,a5,6	#, tmp164, _31
	slli	a5,a5,16	#, _32, tmp164
	srli	a5,a5,16	#, _32, _32
	slli	a4,a5,24	#, _33, _32
	srai	a4,a4,24	#, _33, _33
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	lhu	a5,-32(s0)	# _34, t[2]
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	slli	a5,a5,4	#, _36, _35
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	slli	a5,a5,24	#, _37, _36
	srai	a5,a5,24	#, _37, _37
	or	a5,a4,a5	# _37, tmp165, _33
	slli	a4,a5,24	#, _38, tmp165
	srai	a4,a4,24	#, _38, _38
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	lw	a5,-52(s0)		# tmp166, r
	addi	a5,a5,2	#, _39, tmp166
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	andi	a4,a4,0xff	# _40, _38
# polyvec.c:55:       r[2] = (t[1] >> 6) | (t[2] << 4);
	sb	a4,0(a5)	# _40, *_39
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	lhu	a5,-32(s0)	# _41, t[2]
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	srli	a5,a5,4	#, tmp167, _41
	slli	a5,a5,16	#, _42, tmp167
	srli	a5,a5,16	#, _42, _42
	slli	a4,a5,24	#, _43, _42
	srai	a4,a4,24	#, _43, _43
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	lhu	a5,-30(s0)	# _44, t[3]
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	slli	a5,a5,6	#, _46, _45
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	slli	a5,a5,24	#, _47, _46
	srai	a5,a5,24	#, _47, _47
	or	a5,a4,a5	# _47, tmp168, _43
	slli	a4,a5,24	#, _48, tmp168
	srai	a4,a4,24	#, _48, _48
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	lw	a5,-52(s0)		# tmp169, r
	addi	a5,a5,3	#, _49, tmp169
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	andi	a4,a4,0xff	# _50, _48
# polyvec.c:56:       r[3] = (t[2] >> 4) | (t[3] << 6);
	sb	a4,0(a5)	# _50, *_49
# polyvec.c:57:       r[4] = (t[3] >> 2);
	lhu	a5,-30(s0)	# _51, t[3]
# polyvec.c:57:       r[4] = (t[3] >> 2);
	srli	a5,a5,2	#, tmp170, _51
	slli	a4,a5,16	#, _52, tmp170
	srli	a4,a4,16	#, _52, _52
# polyvec.c:57:       r[4] = (t[3] >> 2);
	lw	a5,-52(s0)		# tmp171, r
	addi	a5,a5,4	#, _53, tmp171
# polyvec.c:57:       r[4] = (t[3] >> 2);
	andi	a4,a4,0xff	# _54, _52
	sb	a4,0(a5)	# _54, *_53
# polyvec.c:58:       r += 5;
	lw	a5,-52(s0)		# tmp173, r
	addi	a5,a5,5	#, tmp172, tmp173
	sw	a5,-52(s0)	# tmp172, r
# polyvec.c:46:     for(j=0;j<KYBER_N/4;j++) {
	lw	a5,-24(s0)		# tmp175, j
	addi	a5,a5,1	#, tmp174, tmp175
	sw	a5,-24(s0)	# tmp174, j
.L3:
# polyvec.c:46:     for(j=0;j<KYBER_N/4;j++) {
	lw	a4,-24(s0)		# tmp176, j
	li	a5,63		# tmp177,
	bleu	a4,a5,.L6	#, tmp176, tmp177,
# polyvec.c:45:   for(i=0;i<KYBER_K;i++) {
	lw	a5,-20(s0)		# tmp179, i
	addi	a5,a5,1	#, tmp178, tmp179
	sw	a5,-20(s0)	# tmp178, i
.L2:
# polyvec.c:45:   for(i=0;i<KYBER_K;i++) {
	lw	a4,-20(s0)		# tmp180, i
	li	a5,1		# tmp181,
	bleu	a4,a5,.L7	#, tmp180, tmp181,
# polyvec.c:64: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_compress, .-pqcrystals_kyber512_ref_polyvec_compress
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_decompress
	.type	pqcrystals_kyber512_ref_polyvec_decompress, @function
pqcrystals_kyber512_ref_polyvec_decompress:
	addi	sp,sp,-64	#,,
	sw	s0,60(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
	sw	a1,-56(s0)	# a, a
# polyvec.c:100:   for(i=0;i<KYBER_K;i++) {
	sw	zero,-20(s0)	#, i
# polyvec.c:100:   for(i=0;i<KYBER_K;i++) {
	j	.L9		#
.L14:
# polyvec.c:101:     for(j=0;j<KYBER_N/4;j++) {
	sw	zero,-24(s0)	#, j
# polyvec.c:101:     for(j=0;j<KYBER_N/4;j++) {
	j	.L10		#
.L13:
# polyvec.c:102:       t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
	lw	a5,-56(s0)		# tmp123, a
	lbu	a5,0(a5)	# _1, *a_52
	slli	a4,a5,16	#, _2, _1
	srai	a4,a4,16	#, _2, _2
# polyvec.c:102:       t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
	lw	a5,-56(s0)		# tmp124, a
	addi	a5,a5,1	#, _3, tmp124
	lbu	a5,0(a5)	# _4, *_3
# polyvec.c:102:       t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
	slli	a5,a5,8	#, _6, _5
# polyvec.c:102:       t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
	slli	a5,a5,16	#, _7, _6
	srai	a5,a5,16	#, _7, _7
	or	a5,a4,a5	# _7, tmp125, _2
	slli	a5,a5,16	#, _8, tmp125
	srai	a5,a5,16	#, _8, _8
	slli	a5,a5,16	#, _9, _8
	srli	a5,a5,16	#, _9, _9
# polyvec.c:102:       t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
	sh	a5,-36(s0)	# _9, t[0]
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	lw	a5,-56(s0)		# tmp126, a
	addi	a5,a5,1	#, _10, tmp126
	lbu	a5,0(a5)	# _11, *_10
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	srli	a5,a5,2	#, tmp127, _11
	andi	a5,a5,0xff	# _12, tmp127
	slli	a4,a5,16	#, _13, _12
	srai	a4,a4,16	#, _13, _13
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	lw	a5,-56(s0)		# tmp128, a
	addi	a5,a5,2	#, _14, tmp128
	lbu	a5,0(a5)	# _15, *_14
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	slli	a5,a5,6	#, _17, _16
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	slli	a5,a5,16	#, _18, _17
	srai	a5,a5,16	#, _18, _18
	or	a5,a4,a5	# _18, tmp129, _13
	slli	a5,a5,16	#, _19, tmp129
	srai	a5,a5,16	#, _19, _19
	slli	a5,a5,16	#, _20, _19
	srli	a5,a5,16	#, _20, _20
# polyvec.c:103:       t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
	sh	a5,-34(s0)	# _20, t[1]
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	lw	a5,-56(s0)		# tmp130, a
	addi	a5,a5,2	#, _21, tmp130
	lbu	a5,0(a5)	# _22, *_21
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	srli	a5,a5,4	#, tmp131, _22
	andi	a5,a5,0xff	# _23, tmp131
	slli	a4,a5,16	#, _24, _23
	srai	a4,a4,16	#, _24, _24
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	lw	a5,-56(s0)		# tmp132, a
	addi	a5,a5,3	#, _25, tmp132
	lbu	a5,0(a5)	# _26, *_25
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	slli	a5,a5,4	#, _28, _27
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	slli	a5,a5,16	#, _29, _28
	srai	a5,a5,16	#, _29, _29
	or	a5,a4,a5	# _29, tmp133, _24
	slli	a5,a5,16	#, _30, tmp133
	srai	a5,a5,16	#, _30, _30
	slli	a5,a5,16	#, _31, _30
	srli	a5,a5,16	#, _31, _31
# polyvec.c:104:       t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
	sh	a5,-32(s0)	# _31, t[2]
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	lw	a5,-56(s0)		# tmp134, a
	addi	a5,a5,3	#, _32, tmp134
	lbu	a5,0(a5)	# _33, *_32
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	srli	a5,a5,6	#, tmp135, _33
	andi	a5,a5,0xff	# _34, tmp135
	slli	a4,a5,16	#, _35, _34
	srai	a4,a4,16	#, _35, _35
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	lw	a5,-56(s0)		# tmp136, a
	addi	a5,a5,4	#, _36, tmp136
	lbu	a5,0(a5)	# _37, *_36
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	slli	a5,a5,2	#, _39, _38
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	slli	a5,a5,16	#, _40, _39
	srai	a5,a5,16	#, _40, _40
	or	a5,a4,a5	# _40, tmp137, _35
	slli	a5,a5,16	#, _41, tmp137
	srai	a5,a5,16	#, _41, _41
	slli	a5,a5,16	#, _42, _41
	srli	a5,a5,16	#, _42, _42
# polyvec.c:105:       t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
	sh	a5,-30(s0)	# _42, t[3]
# polyvec.c:106:       a += 5;
	lw	a5,-56(s0)		# tmp139, a
	addi	a5,a5,5	#, tmp138, tmp139
	sw	a5,-56(s0)	# tmp138, a
# polyvec.c:108:       for(k=0;k<4;k++)
	sw	zero,-28(s0)	#, k
# polyvec.c:108:       for(k=0;k<4;k++)
	j	.L11		#
.L12:
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	lw	a5,-28(s0)		# tmp140, k
	slli	a5,a5,1	#, tmp141, tmp140
	addi	a5,a5,-16	#, tmp167, tmp141
	add	a5,a5,s0	#, tmp141, tmp167
	lhu	a5,-20(a5)	# _43, t[k_56]
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	andi	a4,a5,1023	#, _45, _44
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	mv	a5,a4	# tmp142, _45
	slli	a5,a5,1	#, tmp143, tmp142
	add	a5,a5,a4	# _45, tmp142, tmp142
	slli	a5,a5,2	#, tmp144, tmp142
	add	a5,a5,a4	# _45, tmp142, tmp142
	slli	a5,a5,8	#, tmp145, tmp142
	add	a5,a5,a4	# _45, _46, tmp142
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	addi	a5,a5,512	#, _47, _46
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	srli	a3,a5,10	#, _48, _47
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	lw	a5,-24(s0)		# tmp146, j
	slli	a4,a5,2	#, _49, tmp146
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	lw	a5,-28(s0)		# tmp147, k
	add	a5,a4,a5	# tmp147, _50, _49
# polyvec.c:109:         r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
	slli	a4,a3,16	#, _51, _48
	srai	a4,a4,16	#, _51, _51
	lw	a3,-52(s0)		# tmp148, r
	lw	a2,-20(s0)		# tmp149, i
	slli	a2,a2,8	#, tmp150, tmp149
	add	a5,a2,a5	# _50, tmp151, tmp150
	slli	a5,a5,1	#, tmp152, tmp151
	add	a5,a3,a5	# tmp152, tmp153, tmp148
	sh	a4,0(a5)	# _51, r_73(D)->vec[i_54].coeffs[_50]
# polyvec.c:108:       for(k=0;k<4;k++)
	lw	a5,-28(s0)		# tmp155, k
	addi	a5,a5,1	#, tmp154, tmp155
	sw	a5,-28(s0)	# tmp154, k
.L11:
# polyvec.c:108:       for(k=0;k<4;k++)
	lw	a4,-28(s0)		# tmp156, k
	li	a5,3		# tmp157,
	bleu	a4,a5,.L12	#, tmp156, tmp157,
# polyvec.c:101:     for(j=0;j<KYBER_N/4;j++) {
	lw	a5,-24(s0)		# tmp159, j
	addi	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, j
.L10:
# polyvec.c:101:     for(j=0;j<KYBER_N/4;j++) {
	lw	a4,-24(s0)		# tmp160, j
	li	a5,63		# tmp161,
	bleu	a4,a5,.L13	#, tmp160, tmp161,
# polyvec.c:100:   for(i=0;i<KYBER_K;i++) {
	lw	a5,-20(s0)		# tmp163, i
	addi	a5,a5,1	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, i
.L9:
# polyvec.c:100:   for(i=0;i<KYBER_K;i++) {
	lw	a4,-20(s0)		# tmp164, i
	li	a5,1		# tmp165,
	bleu	a4,a5,.L14	#, tmp164, tmp165,
# polyvec.c:115: }
	nop	
	nop	
	lw	s0,60(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_decompress, .-pqcrystals_kyber512_ref_polyvec_decompress
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_tobytes
	.type	pqcrystals_kyber512_ref_polyvec_tobytes, @function
pqcrystals_kyber512_ref_polyvec_tobytes:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
# polyvec.c:129:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:129:   for(i=0;i<KYBER_K;i++)
	j	.L16		#
.L17:
# polyvec.c:130:     poly_tobytes(r+i*KYBER_POLYBYTES, &a->vec[i]);
	lw	a4,-20(s0)		# tmp75, i
	mv	a5,a4	# tmp76, tmp75
	slli	a5,a5,1	#, tmp77, tmp76
	add	a5,a5,a4	# tmp75, tmp76, tmp76
	slli	a5,a5,7	#, tmp78, tmp76
	mv	a4,a5	# _1, tmp76
# polyvec.c:130:     poly_tobytes(r+i*KYBER_POLYBYTES, &a->vec[i]);
	lw	a5,-36(s0)		# tmp79, r
	add	a3,a5,a4	# _1, _2, tmp79
	lw	a5,-20(s0)		# tmp81, i
	slli	a5,a5,9	#, tmp80, tmp81
	lw	a4,-40(s0)		# tmp82, a
	add	a5,a4,a5	# tmp80, _3, tmp82
	mv	a1,a5	#, _3
	mv	a0,a3	#, _2
	call	pqcrystals_kyber512_ref_poly_tobytes		#
# polyvec.c:129:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp84, i
	addi	a5,a5,1	#, tmp83, tmp84
	sw	a5,-20(s0)	# tmp83, i
.L16:
# polyvec.c:129:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp85, i
	li	a5,1		# tmp86,
	bleu	a4,a5,.L17	#, tmp85, tmp86,
# polyvec.c:131: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_tobytes, .-pqcrystals_kyber512_ref_polyvec_tobytes
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_frombytes
	.type	pqcrystals_kyber512_ref_polyvec_frombytes, @function
pqcrystals_kyber512_ref_polyvec_frombytes:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
# polyvec.c:146:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:146:   for(i=0;i<KYBER_K;i++)
	j	.L19		#
.L20:
# polyvec.c:147:     poly_frombytes(&r->vec[i], a+i*KYBER_POLYBYTES);
	lw	a5,-20(s0)		# tmp76, i
	slli	a5,a5,9	#, tmp75, tmp76
	lw	a4,-36(s0)		# tmp77, r
	add	a3,a4,a5	# tmp75, _1, tmp77
# polyvec.c:147:     poly_frombytes(&r->vec[i], a+i*KYBER_POLYBYTES);
	lw	a4,-20(s0)		# tmp78, i
	mv	a5,a4	# tmp79, tmp78
	slli	a5,a5,1	#, tmp80, tmp79
	add	a5,a5,a4	# tmp78, tmp79, tmp79
	slli	a5,a5,7	#, tmp81, tmp79
	mv	a4,a5	# _2, tmp79
# polyvec.c:147:     poly_frombytes(&r->vec[i], a+i*KYBER_POLYBYTES);
	lw	a5,-40(s0)		# tmp82, a
	add	a5,a5,a4	# _2, _3, tmp82
	mv	a1,a5	#, _3
	mv	a0,a3	#, _1
	call	pqcrystals_kyber512_ref_poly_frombytes		#
# polyvec.c:146:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp84, i
	addi	a5,a5,1	#, tmp83, tmp84
	sw	a5,-20(s0)	# tmp83, i
.L19:
# polyvec.c:146:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp85, i
	li	a5,1		# tmp86,
	bleu	a4,a5,.L20	#, tmp85, tmp86,
# polyvec.c:148: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_frombytes, .-pqcrystals_kyber512_ref_polyvec_frombytes
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_ntt
	.type	pqcrystals_kyber512_ref_polyvec_ntt, @function
pqcrystals_kyber512_ref_polyvec_ntt:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
# polyvec.c:160:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:160:   for(i=0;i<KYBER_K;i++)
	j	.L22		#
.L23:
# polyvec.c:161:     poly_ntt(&r->vec[i]);
	lw	a5,-20(s0)		# tmp74, i
	slli	a5,a5,9	#, tmp73, tmp74
	lw	a4,-36(s0)		# tmp75, r
	add	a5,a4,a5	# tmp73, _1, tmp75
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_poly_ntt		#
# polyvec.c:160:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp77, i
	addi	a5,a5,1	#, tmp76, tmp77
	sw	a5,-20(s0)	# tmp76, i
.L22:
# polyvec.c:160:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp78, i
	li	a5,1		# tmp79,
	bleu	a4,a5,.L23	#, tmp78, tmp79,
# polyvec.c:162: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_ntt, .-pqcrystals_kyber512_ref_polyvec_ntt
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_invntt_tomont
	.type	pqcrystals_kyber512_ref_polyvec_invntt_tomont, @function
pqcrystals_kyber512_ref_polyvec_invntt_tomont:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
# polyvec.c:175:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:175:   for(i=0;i<KYBER_K;i++)
	j	.L25		#
.L26:
# polyvec.c:176:     poly_invntt_tomont(&r->vec[i]);
	lw	a5,-20(s0)		# tmp74, i
	slli	a5,a5,9	#, tmp73, tmp74
	lw	a4,-36(s0)		# tmp75, r
	add	a5,a4,a5	# tmp73, _1, tmp75
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_poly_invntt_tomont		#
# polyvec.c:175:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp77, i
	addi	a5,a5,1	#, tmp76, tmp77
	sw	a5,-20(s0)	# tmp76, i
.L25:
# polyvec.c:175:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp78, i
	li	a5,1		# tmp79,
	bleu	a4,a5,.L26	#, tmp78, tmp79,
# polyvec.c:177: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_invntt_tomont, .-pqcrystals_kyber512_ref_polyvec_invntt_tomont
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.type	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery, @function
pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery:
	addi	sp,sp,-560	#,,
	sw	ra,556(sp)	#,
	sw	s0,552(sp)	#,
	addi	s0,sp,560	#,,
	sw	a0,-548(s0)	# r, r
	sw	a1,-552(s0)	# a, a
	sw	a2,-556(s0)	# b, b
# polyvec.c:194:   poly_basemul_montgomery(r, &a->vec[0], &b->vec[0]);
	lw	a5,-552(s0)		# _1, a
	lw	a4,-556(s0)		# _2, b
	mv	a2,a4	#, _2
	mv	a1,a5	#, _1
	lw	a0,-548(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_basemul_montgomery		#
# polyvec.c:195:   for(i=1;i<KYBER_K;i++) {
	li	a5,1		# tmp76,
	sw	a5,-20(s0)	# tmp76, i
# polyvec.c:195:   for(i=1;i<KYBER_K;i++) {
	j	.L28		#
.L29:
# polyvec.c:196:     poly_basemul_montgomery(&t, &a->vec[i], &b->vec[i]);
	lw	a5,-20(s0)		# tmp78, i
	slli	a5,a5,9	#, tmp77, tmp78
	lw	a4,-552(s0)		# tmp79, a
	add	a3,a4,a5	# tmp77, _3, tmp79
	lw	a5,-20(s0)		# tmp81, i
	slli	a5,a5,9	#, tmp80, tmp81
	lw	a4,-556(s0)		# tmp82, b
	add	a4,a4,a5	# tmp80, _4, tmp82
	addi	a5,s0,-532	#, tmp83,
	mv	a2,a4	#, _4
	mv	a1,a3	#, _3
	mv	a0,a5	#, tmp83
	call	pqcrystals_kyber512_ref_poly_basemul_montgomery		#
# polyvec.c:197:     poly_add(r, r, &t);
	addi	a5,s0,-532	#, tmp84,
	mv	a2,a5	#, tmp84
	lw	a1,-548(s0)		#, r
	lw	a0,-548(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_add		#
# polyvec.c:195:   for(i=1;i<KYBER_K;i++) {
	lw	a5,-20(s0)		# tmp86, i
	addi	a5,a5,1	#, tmp85, tmp86
	sw	a5,-20(s0)	# tmp85, i
.L28:
# polyvec.c:195:   for(i=1;i<KYBER_K;i++) {
	lw	a4,-20(s0)		# tmp87, i
	li	a5,1		# tmp88,
	bleu	a4,a5,.L29	#, tmp87, tmp88,
# polyvec.c:200:   poly_reduce(r);
	lw	a0,-548(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_reduce		#
# polyvec.c:201: }
	nop	
	lw	ra,556(sp)		#,
	lw	s0,552(sp)		#,
	addi	sp,sp,560	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery, .-pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_reduce
	.type	pqcrystals_kyber512_ref_polyvec_reduce, @function
pqcrystals_kyber512_ref_polyvec_reduce:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
# polyvec.c:215:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:215:   for(i=0;i<KYBER_K;i++)
	j	.L31		#
.L32:
# polyvec.c:216:     poly_reduce(&r->vec[i]);
	lw	a5,-20(s0)		# tmp74, i
	slli	a5,a5,9	#, tmp73, tmp74
	lw	a4,-36(s0)		# tmp75, r
	add	a5,a4,a5	# tmp73, _1, tmp75
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_poly_reduce		#
# polyvec.c:215:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp77, i
	addi	a5,a5,1	#, tmp76, tmp77
	sw	a5,-20(s0)	# tmp76, i
.L31:
# polyvec.c:215:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp78, i
	li	a5,1		# tmp79,
	bleu	a4,a5,.L32	#, tmp78, tmp79,
# polyvec.c:217: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_reduce, .-pqcrystals_kyber512_ref_polyvec_reduce
	.align	2
	.globl	pqcrystals_kyber512_ref_polyvec_add
	.type	pqcrystals_kyber512_ref_polyvec_add, @function
pqcrystals_kyber512_ref_polyvec_add:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
	sw	a2,-44(s0)	# b, b
# polyvec.c:231:   for(i=0;i<KYBER_K;i++)
	sw	zero,-20(s0)	#, i
# polyvec.c:231:   for(i=0;i<KYBER_K;i++)
	j	.L34		#
.L35:
# polyvec.c:232:     poly_add(&r->vec[i], &a->vec[i], &b->vec[i]);
	lw	a5,-20(s0)		# tmp76, i
	slli	a5,a5,9	#, tmp75, tmp76
	lw	a4,-36(s0)		# tmp77, r
	add	a3,a4,a5	# tmp75, _1, tmp77
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,9	#, tmp78, tmp79
	lw	a4,-40(s0)		# tmp80, a
	add	a1,a4,a5	# tmp78, _2, tmp80
	lw	a5,-20(s0)		# tmp82, i
	slli	a5,a5,9	#, tmp81, tmp82
	lw	a4,-44(s0)		# tmp83, b
	add	a5,a4,a5	# tmp81, _3, tmp83
	mv	a2,a5	#, _3
	mv	a0,a3	#, _1
	call	pqcrystals_kyber512_ref_poly_add		#
# polyvec.c:231:   for(i=0;i<KYBER_K;i++)
	lw	a5,-20(s0)		# tmp85, i
	addi	a5,a5,1	#, tmp84, tmp85
	sw	a5,-20(s0)	# tmp84, i
.L34:
# polyvec.c:231:   for(i=0;i<KYBER_K;i++)
	lw	a4,-20(s0)		# tmp86, i
	li	a5,1		# tmp87,
	bleu	a4,a5,.L35	#, tmp86, tmp87,
# polyvec.c:233: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_polyvec_add, .-pqcrystals_kyber512_ref_polyvec_add
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
