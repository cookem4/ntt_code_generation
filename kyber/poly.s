	.file	"poly.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g2ee5e430018) version 12.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -mtune=rocket -misa-spec=20191213 -march=rv32i -O0
	.text
	.globl	__divsi3
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_compress
	.type	pqcrystals_kyber512_ref_poly_compress, @function
pqcrystals_kyber512_ref_poly_compress:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
	sw	a1,-56(s0)	# a, a
# poly.c:25:   for(i=0;i<KYBER_N/8;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:25:   for(i=0;i<KYBER_N/8;i++) {
	j	.L2		#
.L5:
# poly.c:26:     for(j=0;j<8;j++) {
	sw	zero,-24(s0)	#, j
# poly.c:26:     for(j=0;j<8;j++) {
	j	.L3		#
.L4:
# poly.c:28:       u  = a->coeffs[8*i+j];
	lw	a5,-20(s0)		# tmp121, i
	slli	a4,a5,3	#, _1, tmp121
# poly.c:28:       u  = a->coeffs[8*i+j];
	lw	a5,-24(s0)		# tmp122, j
	add	a5,a4,a5	# tmp122, _2, _1
# poly.c:28:       u  = a->coeffs[8*i+j];
	lw	a4,-56(s0)		# tmp123, a
	slli	a5,a5,1	#, tmp124, _2
	add	a5,a4,a5	# tmp124, tmp125, tmp123
	lhu	a5,0(a5)	# tmp126, a_66(D)->coeffs[_2]
	sh	a5,-26(s0)	# tmp126, u
# poly.c:29:       u += (u >> 15) & KYBER_Q;
	lh	a5,-26(s0)		# tmp127, u
	srai	a5,a5,15	#, tmp128, tmp127
	slli	a5,a5,16	#, _3, tmp128
	srai	a5,a5,16	#, _3, _3
	slli	a4,a5,16	#, _4, _3
	srli	a4,a4,16	#, _4, _4
	li	a5,4096		# tmp131,
	addi	a5,a5,-767	#, tmp130, tmp131
	and	a5,a4,a5	# tmp130, tmp129, _4
	slli	a4,a5,16	#, _5, tmp129
	srli	a4,a4,16	#, _5, _5
# poly.c:29:       u += (u >> 15) & KYBER_Q;
	lhu	a5,-26(s0)	# u.0_6, u
	add	a5,a4,a5	# u.0_6, tmp132, _5
	slli	a5,a5,16	#, _7, tmp132
	srli	a5,a5,16	#, _7, _7
	sh	a5,-26(s0)	# _7, u
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	lhu	a5,-26(s0)	# u.1_8, u
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	slli	a5,a5,4	#, _10, _9
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	addi	a4,a5,1664	#, _11, _10
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	li	a5,4096		# tmp135,
	addi	a1,a5,-767	#,, tmp135
	mv	a0,a4	#, _11
	call	__divsi3		#
	mv	a5,a0	# tmp136,
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	andi	a5,a5,0xff	# _13, _12
	andi	a5,a5,15	#, tmp137, _13
	andi	a4,a5,0xff	# _14, tmp137
# poly.c:30:       t[j] = ((((uint16_t)u << 4) + KYBER_Q/2)/KYBER_Q) & 15;
	lw	a5,-24(s0)		# tmp139, j
	addi	a5,a5,-16	#, tmp159, tmp139
	add	a5,a5,s0	#, tmp138, tmp159
	sb	a4,-20(a5)	# _14, t[j_52]
# poly.c:26:     for(j=0;j<8;j++) {
	lw	a5,-24(s0)		# tmp141, j
	addi	a5,a5,1	#, tmp140, tmp141
	sw	a5,-24(s0)	# tmp140, j
.L3:
# poly.c:26:     for(j=0;j<8;j++) {
	lw	a4,-24(s0)		# tmp142, j
	li	a5,7		# tmp143,
	bleu	a4,a5,.L4	#, tmp142, tmp143,
# poly.c:33:     r[0] = t[0] | (t[1] << 4);
	lbu	a5,-36(s0)	# _15, t[0]
	slli	a4,a5,24	#, _16, _15
	srai	a4,a4,24	#, _16, _16
# poly.c:33:     r[0] = t[0] | (t[1] << 4);
	lbu	a5,-35(s0)	# _17, t[1]
# poly.c:33:     r[0] = t[0] | (t[1] << 4);
	slli	a5,a5,4	#, _19, _18
# poly.c:33:     r[0] = t[0] | (t[1] << 4);
	slli	a5,a5,24	#, _20, _19
	srai	a5,a5,24	#, _20, _20
	or	a5,a4,a5	# _20, tmp144, _16
	slli	a5,a5,24	#, _21, tmp144
	srai	a5,a5,24	#, _21, _21
	andi	a4,a5,0xff	# _22, _21
# poly.c:33:     r[0] = t[0] | (t[1] << 4);
	lw	a5,-52(s0)		# tmp145, r
	sb	a4,0(a5)	# _22, *r_50
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	lbu	a5,-34(s0)	# _23, t[2]
	slli	a4,a5,24	#, _24, _23
	srai	a4,a4,24	#, _24, _24
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	lbu	a5,-33(s0)	# _25, t[3]
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	slli	a5,a5,4	#, _27, _26
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	slli	a5,a5,24	#, _28, _27
	srai	a5,a5,24	#, _28, _28
	or	a5,a4,a5	# _28, tmp146, _24
	slli	a4,a5,24	#, _29, tmp146
	srai	a4,a4,24	#, _29, _29
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	lw	a5,-52(s0)		# tmp147, r
	addi	a5,a5,1	#, _30, tmp147
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	andi	a4,a4,0xff	# _31, _29
# poly.c:34:     r[1] = t[2] | (t[3] << 4);
	sb	a4,0(a5)	# _31, *_30
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	lbu	a5,-32(s0)	# _32, t[4]
	slli	a4,a5,24	#, _33, _32
	srai	a4,a4,24	#, _33, _33
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	lbu	a5,-31(s0)	# _34, t[5]
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	slli	a5,a5,4	#, _36, _35
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	slli	a5,a5,24	#, _37, _36
	srai	a5,a5,24	#, _37, _37
	or	a5,a4,a5	# _37, tmp148, _33
	slli	a4,a5,24	#, _38, tmp148
	srai	a4,a4,24	#, _38, _38
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	lw	a5,-52(s0)		# tmp149, r
	addi	a5,a5,2	#, _39, tmp149
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	andi	a4,a4,0xff	# _40, _38
# poly.c:35:     r[2] = t[4] | (t[5] << 4);
	sb	a4,0(a5)	# _40, *_39
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	lbu	a5,-30(s0)	# _41, t[6]
	slli	a4,a5,24	#, _42, _41
	srai	a4,a4,24	#, _42, _42
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	lbu	a5,-29(s0)	# _43, t[7]
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	slli	a5,a5,4	#, _45, _44
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	slli	a5,a5,24	#, _46, _45
	srai	a5,a5,24	#, _46, _46
	or	a5,a4,a5	# _46, tmp150, _42
	slli	a4,a5,24	#, _47, tmp150
	srai	a4,a4,24	#, _47, _47
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	lw	a5,-52(s0)		# tmp151, r
	addi	a5,a5,3	#, _48, tmp151
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	andi	a4,a4,0xff	# _49, _47
# poly.c:36:     r[3] = t[6] | (t[7] << 4);
	sb	a4,0(a5)	# _49, *_48
# poly.c:37:     r += 4;
	lw	a5,-52(s0)		# tmp153, r
	addi	a5,a5,4	#, tmp152, tmp153
	sw	a5,-52(s0)	# tmp152, r
# poly.c:25:   for(i=0;i<KYBER_N/8;i++) {
	lw	a5,-20(s0)		# tmp155, i
	addi	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L2:
# poly.c:25:   for(i=0;i<KYBER_N/8;i++) {
	lw	a4,-20(s0)		# tmp156, i
	li	a5,31		# tmp157,
	bleu	a4,a5,.L5	#, tmp156, tmp157,
# poly.c:58: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_compress, .-pqcrystals_kyber512_ref_poly_compress
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_decompress
	.type	pqcrystals_kyber512_ref_poly_decompress, @function
pqcrystals_kyber512_ref_poly_decompress:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
# poly.c:75:   for(i=0;i<KYBER_N/2;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:75:   for(i=0;i<KYBER_N/2;i++) {
	j	.L7		#
.L8:
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	lw	a5,-40(s0)		# tmp89, a
	lbu	a5,0(a5)	# _1, *a_18
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	andi	a4,a5,15	#, _3, _2
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	mv	a5,a4	# tmp90, _3
	slli	a5,a5,1	#, tmp91, tmp90
	add	a5,a5,a4	# _3, tmp90, tmp90
	slli	a5,a5,2	#, tmp92, tmp90
	add	a5,a5,a4	# _3, tmp90, tmp90
	slli	a5,a5,8	#, tmp93, tmp90
	add	a5,a5,a4	# _3, _4, tmp90
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	addi	a5,a5,8	#, _5, _4
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	srai	a4,a5,4	#, _6, _5
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	lw	a5,-20(s0)		# tmp94, i
	slli	a5,a5,1	#, _7, tmp94
# poly.c:76:     r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*KYBER_Q) + 8) >> 4;
	slli	a4,a4,16	#, _8, _6
	srai	a4,a4,16	#, _8, _8
	lw	a3,-36(s0)		# tmp95, r
	slli	a5,a5,1	#, tmp96, _7
	add	a5,a3,a5	# tmp96, tmp97, tmp95
	sh	a4,0(a5)	# _8, r_24(D)->coeffs[_7]
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	lw	a5,-40(s0)		# tmp98, a
	lbu	a5,0(a5)	# _9, *a_18
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	srli	a5,a5,4	#, tmp99, _9
	andi	a5,a5,0xff	# _10, tmp99
	mv	a4,a5	# _11, _10
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	mv	a5,a4	# tmp100, _11
	slli	a5,a5,1	#, tmp101, tmp100
	add	a5,a5,a4	# _11, tmp100, tmp100
	slli	a5,a5,2	#, tmp102, tmp100
	add	a5,a5,a4	# _11, tmp100, tmp100
	slli	a5,a5,8	#, tmp103, tmp100
	add	a5,a5,a4	# _11, _12, tmp100
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	addi	a5,a5,8	#, _13, _12
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	srai	a4,a5,4	#, _14, _13
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	lw	a5,-20(s0)		# tmp104, i
	slli	a5,a5,1	#, _15, tmp104
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	addi	a5,a5,1	#, _16, _15
# poly.c:77:     r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*KYBER_Q) + 8) >> 4;
	slli	a4,a4,16	#, _17, _14
	srai	a4,a4,16	#, _17, _17
	lw	a3,-36(s0)		# tmp105, r
	slli	a5,a5,1	#, tmp106, _16
	add	a5,a3,a5	# tmp106, tmp107, tmp105
	sh	a4,0(a5)	# _17, r_24(D)->coeffs[_16]
# poly.c:78:     a += 1;
	lw	a5,-40(s0)		# tmp109, a
	addi	a5,a5,1	#, tmp108, tmp109
	sw	a5,-40(s0)	# tmp108, a
# poly.c:75:   for(i=0;i<KYBER_N/2;i++) {
	lw	a5,-20(s0)		# tmp111, i
	addi	a5,a5,1	#, tmp110, tmp111
	sw	a5,-20(s0)	# tmp110, i
.L7:
# poly.c:75:   for(i=0;i<KYBER_N/2;i++) {
	lw	a4,-20(s0)		# tmp112, i
	li	a5,127		# tmp113,
	bleu	a4,a5,.L8	#, tmp112, tmp113,
# poly.c:100: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_decompress, .-pqcrystals_kyber512_ref_poly_decompress
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_tobytes
	.type	pqcrystals_kyber512_ref_poly_tobytes, @function
pqcrystals_kyber512_ref_poly_tobytes:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
# poly.c:116:   for(i=0;i<KYBER_N/2;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:116:   for(i=0;i<KYBER_N/2;i++) {
	j	.L10		#
.L11:
# poly.c:118:     t0  = a->coeffs[2*i];
	lw	a5,-20(s0)		# tmp103, i
	slli	a5,a5,1	#, _1, tmp103
# poly.c:118:     t0  = a->coeffs[2*i];
	lw	a4,-40(s0)		# tmp104, a
	slli	a5,a5,1	#, tmp105, _1
	add	a5,a4,a5	# tmp105, tmp106, tmp104
	lh	a5,0(a5)		# _2, a_36(D)->coeffs[_1]
# poly.c:118:     t0  = a->coeffs[2*i];
	sh	a5,-22(s0)	# _2, t0
# poly.c:119:     t0 += ((int16_t)t0 >> 15) & KYBER_Q;
	lh	a5,-22(s0)		# t0.2_3, t0
# poly.c:119:     t0 += ((int16_t)t0 >> 15) & KYBER_Q;
	srai	a5,a5,15	#, tmp107, t0.2_3
	slli	a5,a5,16	#, _4, tmp107
	srai	a5,a5,16	#, _4, _4
	slli	a4,a5,16	#, _5, _4
	srli	a4,a4,16	#, _5, _5
	li	a5,4096		# tmp110,
	addi	a5,a5,-767	#, tmp109, tmp110
	and	a5,a4,a5	# tmp109, tmp108, _5
	slli	a5,a5,16	#, _6, tmp108
	srli	a5,a5,16	#, _6, _6
# poly.c:119:     t0 += ((int16_t)t0 >> 15) & KYBER_Q;
	lhu	a4,-22(s0)	# tmp112, t0
	add	a5,a5,a4	# tmp111, tmp113, _6
	sh	a5,-22(s0)	# tmp113, t0
# poly.c:120:     t1 = a->coeffs[2*i+1];
	lw	a5,-20(s0)		# tmp114, i
	slli	a5,a5,1	#, _7, tmp114
# poly.c:120:     t1 = a->coeffs[2*i+1];
	addi	a5,a5,1	#, _8, _7
# poly.c:120:     t1 = a->coeffs[2*i+1];
	lw	a4,-40(s0)		# tmp115, a
	slli	a5,a5,1	#, tmp116, _8
	add	a5,a4,a5	# tmp116, tmp117, tmp115
	lh	a5,0(a5)		# _9, a_36(D)->coeffs[_8]
# poly.c:120:     t1 = a->coeffs[2*i+1];
	sh	a5,-24(s0)	# _9, t1
# poly.c:121:     t1 += ((int16_t)t1 >> 15) & KYBER_Q;
	lh	a5,-24(s0)		# t1.3_10, t1
# poly.c:121:     t1 += ((int16_t)t1 >> 15) & KYBER_Q;
	srai	a5,a5,15	#, tmp118, t1.3_10
	slli	a5,a5,16	#, _11, tmp118
	srai	a5,a5,16	#, _11, _11
	slli	a4,a5,16	#, _12, _11
	srli	a4,a4,16	#, _12, _12
	li	a5,4096		# tmp121,
	addi	a5,a5,-767	#, tmp120, tmp121
	and	a5,a4,a5	# tmp120, tmp119, _12
	slli	a5,a5,16	#, _13, tmp119
	srli	a5,a5,16	#, _13, _13
# poly.c:121:     t1 += ((int16_t)t1 >> 15) & KYBER_Q;
	lhu	a4,-24(s0)	# tmp123, t1
	add	a5,a5,a4	# tmp122, tmp124, _13
	sh	a5,-24(s0)	# tmp124, t1
# poly.c:122:     r[3*i+0] = (t0 >> 0);
	lw	a4,-20(s0)		# tmp125, i
	mv	a5,a4	# tmp126, tmp125
	slli	a5,a5,1	#, tmp127, tmp126
	add	a5,a5,a4	# tmp125, _14, tmp126
# poly.c:122:     r[3*i+0] = (t0 >> 0);
	lw	a4,-36(s0)		# tmp128, r
	add	a5,a4,a5	# _14, _15, tmp128
# poly.c:122:     r[3*i+0] = (t0 >> 0);
	lhu	a4,-22(s0)	# tmp130, t0
	andi	a4,a4,0xff	# _16, tmp129
	sb	a4,0(a5)	# _16, *_15
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	lhu	a5,-22(s0)	# tmp131, t0
	srli	a5,a5,8	#, tmp132, tmp131
	slli	a5,a5,16	#, _17, tmp132
	srli	a5,a5,16	#, _17, _17
	slli	a4,a5,24	#, _18, _17
	srai	a4,a4,24	#, _18, _18
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	lhu	a5,-24(s0)	# _19, t1
	slli	a5,a5,4	#, _20, _19
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	slli	a5,a5,24	#, _21, _20
	srai	a5,a5,24	#, _21, _21
	or	a5,a4,a5	# _21, tmp133, _18
	slli	a3,a5,24	#, _22, tmp133
	srai	a3,a3,24	#, _22, _22
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	lw	a4,-20(s0)		# tmp134, i
	mv	a5,a4	# tmp135, tmp134
	slli	a5,a5,1	#, tmp136, tmp135
	add	a5,a5,a4	# tmp134, _23, tmp135
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	addi	a5,a5,1	#, _24, _23
	lw	a4,-36(s0)		# tmp137, r
	add	a5,a4,a5	# _24, _25, tmp137
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	andi	a4,a3,0xff	# _26, _22
# poly.c:123:     r[3*i+1] = (t0 >> 8) | (t1 << 4);
	sb	a4,0(a5)	# _26, *_25
# poly.c:124:     r[3*i+2] = (t1 >> 4);
	lhu	a5,-24(s0)	# tmp138, t1
	srli	a5,a5,4	#, tmp139, tmp138
	slli	a3,a5,16	#, _27, tmp139
	srli	a3,a3,16	#, _27, _27
# poly.c:124:     r[3*i+2] = (t1 >> 4);
	lw	a4,-20(s0)		# tmp140, i
	mv	a5,a4	# tmp141, tmp140
	slli	a5,a5,1	#, tmp142, tmp141
	add	a5,a5,a4	# tmp140, _28, tmp141
# poly.c:124:     r[3*i+2] = (t1 >> 4);
	addi	a5,a5,2	#, _29, _28
	lw	a4,-36(s0)		# tmp143, r
	add	a5,a4,a5	# _29, _30, tmp143
# poly.c:124:     r[3*i+2] = (t1 >> 4);
	andi	a4,a3,0xff	# _31, _27
	sb	a4,0(a5)	# _31, *_30
# poly.c:116:   for(i=0;i<KYBER_N/2;i++) {
	lw	a5,-20(s0)		# tmp145, i
	addi	a5,a5,1	#, tmp144, tmp145
	sw	a5,-20(s0)	# tmp144, i
.L10:
# poly.c:116:   for(i=0;i<KYBER_N/2;i++) {
	lw	a4,-20(s0)		# tmp146, i
	li	a5,127		# tmp147,
	bleu	a4,a5,.L11	#, tmp146, tmp147,
# poly.c:126: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_tobytes, .-pqcrystals_kyber512_ref_poly_tobytes
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_frombytes
	.type	pqcrystals_kyber512_ref_poly_frombytes, @function
pqcrystals_kyber512_ref_poly_frombytes:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
# poly.c:141:   for(i=0;i<KYBER_N/2;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:141:   for(i=0;i<KYBER_N/2;i++) {
	j	.L13		#
.L14:
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	lw	a4,-20(s0)		# tmp103, i
	mv	a5,a4	# tmp104, tmp103
	slli	a5,a5,1	#, tmp105, tmp104
	add	a5,a5,a4	# tmp103, _1, tmp104
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	lw	a4,-40(s0)		# tmp106, a
	add	a5,a4,a5	# _1, _2, tmp106
	lbu	a5,0(a5)	# _3, *_2
	slli	a3,a5,16	#, _4, _3
	srai	a3,a3,16	#, _4, _4
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	lw	a4,-20(s0)		# tmp107, i
	mv	a5,a4	# tmp108, tmp107
	slli	a5,a5,1	#, tmp109, tmp108
	add	a5,a5,a4	# tmp107, _5, tmp108
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	addi	a5,a5,1	#, _6, _5
	lw	a4,-40(s0)		# tmp110, a
	add	a5,a4,a5	# _6, _7, tmp110
	lbu	a5,0(a5)	# _8, *_7
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	slli	a5,a5,8	#, _10, _9
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	slli	a5,a5,16	#, _11, _10
	srai	a5,a5,16	#, _11, _11
	or	a5,a3,a5	# _11, tmp111, _4
	slli	a3,a5,16	#, _12, tmp111
	srai	a3,a3,16	#, _12, _12
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	lw	a5,-20(s0)		# tmp112, i
	slli	a5,a5,1	#, _13, tmp112
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	li	a4,4096		# tmp115,
	addi	a4,a4,-1	#, tmp114, tmp115
	and	a4,a3,a4	# tmp114, tmp113, _12
	slli	a4,a4,16	#, _14, tmp113
	srai	a4,a4,16	#, _14, _14
# poly.c:142:     r->coeffs[2*i]   = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
	lw	a3,-36(s0)		# tmp116, r
	slli	a5,a5,1	#, tmp117, _13
	add	a5,a3,a5	# tmp117, tmp118, tmp116
	sh	a4,0(a5)	# _14, r_37(D)->coeffs[_13]
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	lw	a4,-20(s0)		# tmp119, i
	mv	a5,a4	# tmp120, tmp119
	slli	a5,a5,1	#, tmp121, tmp120
	add	a5,a5,a4	# tmp119, _15, tmp120
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	addi	a5,a5,1	#, _16, _15
	lw	a4,-40(s0)		# tmp122, a
	add	a5,a4,a5	# _16, _17, tmp122
	lbu	a5,0(a5)	# _18, *_17
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	srli	a5,a5,4	#, tmp123, _18
	andi	a5,a5,0xff	# _19, tmp123
	slli	a3,a5,16	#, _20, _19
	srai	a3,a3,16	#, _20, _20
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	lw	a4,-20(s0)		# tmp124, i
	mv	a5,a4	# tmp125, tmp124
	slli	a5,a5,1	#, tmp126, tmp125
	add	a5,a5,a4	# tmp124, _21, tmp125
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	addi	a5,a5,2	#, _22, _21
	lw	a4,-40(s0)		# tmp127, a
	add	a5,a4,a5	# _22, _23, tmp127
	lbu	a5,0(a5)	# _24, *_23
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	slli	a5,a5,4	#, _26, _25
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	slli	a5,a5,16	#, _27, _26
	srai	a5,a5,16	#, _27, _27
	or	a5,a3,a5	# _27, tmp128, _20
	slli	a3,a5,16	#, _28, tmp128
	srai	a3,a3,16	#, _28, _28
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	lw	a5,-20(s0)		# tmp129, i
	slli	a5,a5,1	#, _29, tmp129
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	addi	a5,a5,1	#, _30, _29
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	li	a4,4096		# tmp132,
	addi	a4,a4,-1	#, tmp131, tmp132
	and	a4,a3,a4	# tmp131, tmp130, _28
	slli	a4,a4,16	#, _31, tmp130
	srai	a4,a4,16	#, _31, _31
# poly.c:143:     r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
	lw	a3,-36(s0)		# tmp133, r
	slli	a5,a5,1	#, tmp134, _30
	add	a5,a3,a5	# tmp134, tmp135, tmp133
	sh	a4,0(a5)	# _31, r_37(D)->coeffs[_30]
# poly.c:141:   for(i=0;i<KYBER_N/2;i++) {
	lw	a5,-20(s0)		# tmp137, i
	addi	a5,a5,1	#, tmp136, tmp137
	sw	a5,-20(s0)	# tmp136, i
.L13:
# poly.c:141:   for(i=0;i<KYBER_N/2;i++) {
	lw	a4,-20(s0)		# tmp138, i
	li	a5,127		# tmp139,
	bleu	a4,a5,.L14	#, tmp138, tmp139,
# poly.c:145: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_frombytes, .-pqcrystals_kyber512_ref_poly_frombytes
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_frommsg
	.type	pqcrystals_kyber512_ref_poly_frommsg, @function
pqcrystals_kyber512_ref_poly_frommsg:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# msg, msg
# poly.c:164:   for(i=0;i<KYBER_N/8;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:164:   for(i=0;i<KYBER_N/8;i++) {
	j	.L16		#
.L19:
# poly.c:165:     for(j=0;j<8;j++) {
	sw	zero,-24(s0)	#, j
# poly.c:165:     for(j=0;j<8;j++) {
	j	.L17		#
.L18:
# poly.c:166:       mask = -(int16_t)((msg[i] >> j)&1);
	lw	a4,-40(s0)		# tmp82, msg
	lw	a5,-20(s0)		# tmp83, i
	add	a5,a4,a5	# tmp83, _1, tmp82
	lbu	a5,0(a5)	# _2, *_1
	mv	a4,a5	# _3, _2
# poly.c:166:       mask = -(int16_t)((msg[i] >> j)&1);
	lw	a5,-24(s0)		# tmp84, j
	sra	a5,a4,a5	# tmp84, _4, _3
# poly.c:166:       mask = -(int16_t)((msg[i] >> j)&1);
	slli	a5,a5,16	#, _5, _4
	srli	a5,a5,16	#, _5, _5
	andi	a5,a5,1	#, tmp85, _5
	slli	a5,a5,16	#, _6, tmp85
	srli	a5,a5,16	#, _6, _6
# poly.c:166:       mask = -(int16_t)((msg[i] >> j)&1);
	neg	a5,a5	# tmp87, tmp86
	slli	a5,a5,16	#, _7, tmp87
	srli	a5,a5,16	#, _7, _7
	sh	a5,-26(s0)	# _7, mask
# poly.c:167:       r->coeffs[8*i+j] = mask & ((KYBER_Q+1)/2);
	lw	a5,-20(s0)		# tmp88, i
	slli	a4,a5,3	#, _8, tmp88
# poly.c:167:       r->coeffs[8*i+j] = mask & ((KYBER_Q+1)/2);
	lw	a5,-24(s0)		# tmp89, j
	add	a5,a4,a5	# tmp89, _9, _8
# poly.c:167:       r->coeffs[8*i+j] = mask & ((KYBER_Q+1)/2);
	lhu	a4,-26(s0)	# tmp91, mask
	andi	a4,a4,1665	#, tmp92, tmp90
	slli	a4,a4,16	#, _10, tmp92
	srai	a4,a4,16	#, _10, _10
# poly.c:167:       r->coeffs[8*i+j] = mask & ((KYBER_Q+1)/2);
	lw	a3,-36(s0)		# tmp93, r
	slli	a5,a5,1	#, tmp94, _9
	add	a5,a3,a5	# tmp94, tmp95, tmp93
	sh	a4,0(a5)	# _10, r_21(D)->coeffs[_9]
# poly.c:165:     for(j=0;j<8;j++) {
	lw	a5,-24(s0)		# tmp97, j
	addi	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, j
.L17:
# poly.c:165:     for(j=0;j<8;j++) {
	lw	a4,-24(s0)		# tmp98, j
	li	a5,7		# tmp99,
	bleu	a4,a5,.L18	#, tmp98, tmp99,
# poly.c:164:   for(i=0;i<KYBER_N/8;i++) {
	lw	a5,-20(s0)		# tmp101, i
	addi	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L16:
# poly.c:164:   for(i=0;i<KYBER_N/8;i++) {
	lw	a4,-20(s0)		# tmp102, i
	li	a5,31		# tmp103,
	bleu	a4,a5,.L19	#, tmp102, tmp103,
# poly.c:170: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_frommsg, .-pqcrystals_kyber512_ref_poly_frommsg
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_tomsg
	.type	pqcrystals_kyber512_ref_poly_tomsg, @function
pqcrystals_kyber512_ref_poly_tomsg:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# msg, msg
	sw	a1,-40(s0)	# a, a
# poly.c:185:   for(i=0;i<KYBER_N/8;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:185:   for(i=0;i<KYBER_N/8;i++) {
	j	.L21		#
.L24:
# poly.c:186:     msg[i] = 0;
	lw	a4,-36(s0)		# tmp94, msg
	lw	a5,-20(s0)		# tmp95, i
	add	a5,a4,a5	# tmp95, _1, tmp94
# poly.c:186:     msg[i] = 0;
	sb	zero,0(a5)	#, *_1
# poly.c:187:     for(j=0;j<8;j++) {
	sw	zero,-24(s0)	#, j
# poly.c:187:     for(j=0;j<8;j++) {
	j	.L22		#
.L23:
# poly.c:188:       t  = a->coeffs[8*i+j];
	lw	a5,-20(s0)		# tmp96, i
	slli	a4,a5,3	#, _2, tmp96
# poly.c:188:       t  = a->coeffs[8*i+j];
	lw	a5,-24(s0)		# tmp97, j
	add	a5,a4,a5	# tmp97, _3, _2
# poly.c:188:       t  = a->coeffs[8*i+j];
	lw	a4,-40(s0)		# tmp98, a
	slli	a5,a5,1	#, tmp99, _3
	add	a5,a4,a5	# tmp99, tmp100, tmp98
	lh	a5,0(a5)		# _4, a_33(D)->coeffs[_3]
# poly.c:188:       t  = a->coeffs[8*i+j];
	sh	a5,-26(s0)	# _4, t
# poly.c:189:       t += ((int16_t)t >> 15) & KYBER_Q;
	lh	a5,-26(s0)		# t.4_5, t
# poly.c:189:       t += ((int16_t)t >> 15) & KYBER_Q;
	srai	a5,a5,15	#, tmp101, t.4_5
	slli	a5,a5,16	#, _6, tmp101
	srai	a5,a5,16	#, _6, _6
	slli	a4,a5,16	#, _7, _6
	srli	a4,a4,16	#, _7, _7
	li	a5,4096		# tmp104,
	addi	a5,a5,-767	#, tmp103, tmp104
	and	a5,a4,a5	# tmp103, tmp102, _7
	slli	a5,a5,16	#, _8, tmp102
	srli	a5,a5,16	#, _8, _8
# poly.c:189:       t += ((int16_t)t >> 15) & KYBER_Q;
	lhu	a4,-26(s0)	# tmp106, t
	add	a5,a5,a4	# tmp105, tmp107, _8
	sh	a5,-26(s0)	# tmp107, t
# poly.c:190:       t  = (((t << 1) + KYBER_Q/2)/KYBER_Q) & 1;
	lhu	a5,-26(s0)	# _9, t
	slli	a5,a5,1	#, _10, _9
# poly.c:190:       t  = (((t << 1) + KYBER_Q/2)/KYBER_Q) & 1;
	addi	a4,a5,1664	#, _11, _10
# poly.c:190:       t  = (((t << 1) + KYBER_Q/2)/KYBER_Q) & 1;
	li	a5,4096		# tmp110,
	addi	a1,a5,-767	#,, tmp110
	mv	a0,a4	#, _11
	call	__divsi3		#
	mv	a5,a0	# tmp111,
# poly.c:190:       t  = (((t << 1) + KYBER_Q/2)/KYBER_Q) & 1;
	slli	a5,a5,16	#, _13, _12
	srli	a5,a5,16	#, _13, _13
# poly.c:190:       t  = (((t << 1) + KYBER_Q/2)/KYBER_Q) & 1;
	andi	a5,a5,1	#, tmp112, _13
	sh	a5,-26(s0)	# tmp112, t
# poly.c:191:       msg[i] |= t << j;
	lw	a4,-36(s0)		# tmp113, msg
	lw	a5,-20(s0)		# tmp114, i
	add	a5,a4,a5	# tmp114, _14, tmp113
	lbu	a5,0(a5)	# _15, *_14
	slli	a4,a5,24	#, _16, _15
	srai	a4,a4,24	#, _16, _16
# poly.c:191:       msg[i] |= t << j;
	lhu	a3,-26(s0)	# _17, t
	lw	a5,-24(s0)		# tmp115, j
	sll	a5,a3,a5	# tmp115, _18, _17
# poly.c:191:       msg[i] |= t << j;
	slli	a5,a5,24	#, _19, _18
	srai	a5,a5,24	#, _19, _19
	or	a5,a4,a5	# _19, tmp116, _16
	slli	a3,a5,24	#, _20, tmp116
	srai	a3,a3,24	#, _20, _20
# poly.c:191:       msg[i] |= t << j;
	lw	a4,-36(s0)		# tmp117, msg
	lw	a5,-20(s0)		# tmp118, i
	add	a5,a4,a5	# tmp118, _21, tmp117
# poly.c:191:       msg[i] |= t << j;
	andi	a4,a3,0xff	# _22, _20
	sb	a4,0(a5)	# _22, *_21
# poly.c:187:     for(j=0;j<8;j++) {
	lw	a5,-24(s0)		# tmp120, j
	addi	a5,a5,1	#, tmp119, tmp120
	sw	a5,-24(s0)	# tmp119, j
.L22:
# poly.c:187:     for(j=0;j<8;j++) {
	lw	a4,-24(s0)		# tmp121, j
	li	a5,7		# tmp122,
	bleu	a4,a5,.L23	#, tmp121, tmp122,
# poly.c:185:   for(i=0;i<KYBER_N/8;i++) {
	lw	a5,-20(s0)		# tmp124, i
	addi	a5,a5,1	#, tmp123, tmp124
	sw	a5,-20(s0)	# tmp123, i
.L21:
# poly.c:185:   for(i=0;i<KYBER_N/8;i++) {
	lw	a4,-20(s0)		# tmp125, i
	li	a5,31		# tmp126,
	bleu	a4,a5,.L24	#, tmp125, tmp126,
# poly.c:194: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_tomsg, .-pqcrystals_kyber512_ref_poly_tomsg
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_getnoise_eta1
	.type	pqcrystals_kyber512_ref_poly_getnoise_eta1, @function
pqcrystals_kyber512_ref_poly_getnoise_eta1:
	addi	sp,sp,-224	#,,
	sw	ra,220(sp)	#,
	sw	s0,216(sp)	#,
	addi	s0,sp,224	#,,
	sw	a0,-212(s0)	# r, r
	sw	a1,-216(s0)	# seed, seed
	mv	a5,a2	# tmp72, nonce
	sb	a5,-217(s0)	# tmp73, nonce
# poly.c:211:   prf(buf, sizeof(buf), seed, nonce);
	lbu	a4,-217(s0)	# tmp74, nonce
	addi	a5,s0,-208	#, tmp75,
	mv	a3,a4	#, tmp74
	lw	a2,-216(s0)		#, seed
	li	a1,192		#,
	mv	a0,a5	#, tmp75
	call	pqcrystals_kyber512_ref_kyber_shake256_prf		#
# poly.c:212:   poly_cbd_eta1(r, buf);
	addi	a5,s0,-208	#, tmp76,
	mv	a1,a5	#, tmp76
	lw	a0,-212(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_cbd_eta1		#
# poly.c:213: }
	nop	
	lw	ra,220(sp)		#,
	lw	s0,216(sp)		#,
	addi	sp,sp,224	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_getnoise_eta1, .-pqcrystals_kyber512_ref_poly_getnoise_eta1
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_getnoise_eta2
	.type	pqcrystals_kyber512_ref_poly_getnoise_eta2, @function
pqcrystals_kyber512_ref_poly_getnoise_eta2:
	addi	sp,sp,-160	#,,
	sw	ra,156(sp)	#,
	sw	s0,152(sp)	#,
	addi	s0,sp,160	#,,
	sw	a0,-148(s0)	# r, r
	sw	a1,-152(s0)	# seed, seed
	mv	a5,a2	# tmp72, nonce
	sb	a5,-153(s0)	# tmp73, nonce
# poly.c:230:   prf(buf, sizeof(buf), seed, nonce);
	lbu	a4,-153(s0)	# tmp74, nonce
	addi	a5,s0,-144	#, tmp75,
	mv	a3,a4	#, tmp74
	lw	a2,-152(s0)		#, seed
	li	a1,128		#,
	mv	a0,a5	#, tmp75
	call	pqcrystals_kyber512_ref_kyber_shake256_prf		#
# poly.c:231:   poly_cbd_eta2(r, buf);
	addi	a5,s0,-144	#, tmp76,
	mv	a1,a5	#, tmp76
	lw	a0,-148(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_cbd_eta2		#
# poly.c:232: }
	nop	
	lw	ra,156(sp)		#,
	lw	s0,152(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_getnoise_eta2, .-pqcrystals_kyber512_ref_poly_getnoise_eta2
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_ntt
	.type	pqcrystals_kyber512_ref_poly_ntt, @function
pqcrystals_kyber512_ref_poly_ntt:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
# poly.c:246:   ntt(r->coeffs);
	lw	a5,-20(s0)		# _1, r
# poly.c:246:   ntt(r->coeffs);
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_ntt		#
# poly.c:247:   poly_reduce(r);
	lw	a0,-20(s0)		#, r
	call	pqcrystals_kyber512_ref_poly_reduce		#
# poly.c:248: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_ntt, .-pqcrystals_kyber512_ref_poly_ntt
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_invntt_tomont
	.type	pqcrystals_kyber512_ref_poly_invntt_tomont, @function
pqcrystals_kyber512_ref_poly_invntt_tomont:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
# poly.c:261:   invntt(r->coeffs);
	lw	a5,-20(s0)		# _1, r
# poly.c:261:   invntt(r->coeffs);
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_invntt		#
# poly.c:262: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_invntt_tomont, .-pqcrystals_kyber512_ref_poly_invntt_tomont
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_basemul_montgomery
	.type	pqcrystals_kyber512_ref_poly_basemul_montgomery, @function
pqcrystals_kyber512_ref_poly_basemul_montgomery:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
	sw	a2,-44(s0)	# b, b
# poly.c:276:   for(i=0;i<KYBER_N/4;i++) {
	sw	zero,-20(s0)	#, i
# poly.c:276:   for(i=0;i<KYBER_N/4;i++) {
	j	.L30		#
.L31:
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	lw	a5,-20(s0)		# tmp94, i
	slli	a5,a5,2	#, _1, tmp94
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	slli	a5,a5,1	#, tmp95, _1
	lw	a4,-36(s0)		# tmp96, r
	add	a0,a4,a5	# tmp95, _2, tmp96
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	lw	a5,-20(s0)		# tmp97, i
	slli	a5,a5,2	#, _3, tmp97
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	slli	a5,a5,1	#, tmp98, _3
	lw	a4,-40(s0)		# tmp99, a
	add	a1,a4,a5	# tmp98, _4, tmp99
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	lw	a5,-20(s0)		# tmp100, i
	slli	a5,a5,2	#, _5, tmp100
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	slli	a5,a5,1	#, tmp101, _5
	lw	a4,-44(s0)		# tmp102, b
	add	a2,a4,a5	# tmp101, _6, tmp102
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	lw	a5,-20(s0)		# tmp103, i
	addi	a5,a5,64	#, _7, tmp103
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)	# tmp104,
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)	# tmp105, tmp104,
	slli	a5,a5,1	#, tmp106, _7
	add	a5,a4,a5	# tmp106, tmp107, tmp105
	lh	a5,0(a5)		# _8, pqcrystals_kyber512_ref_zetas[_7]
# poly.c:277:     basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], zetas[64+i]);
	mv	a3,a5	#, _8
	call	pqcrystals_kyber512_ref_basemul		#
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	lw	a5,-20(s0)		# tmp108, i
	slli	a5,a5,2	#, _9, tmp108
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	addi	a5,a5,2	#, _10, _9
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	slli	a5,a5,1	#, tmp109, _10
	lw	a4,-36(s0)		# tmp110, r
	add	a0,a4,a5	# tmp109, _11, tmp110
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	lw	a5,-20(s0)		# tmp111, i
	slli	a5,a5,2	#, _12, tmp111
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	addi	a5,a5,2	#, _13, _12
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	slli	a5,a5,1	#, tmp112, _13
	lw	a4,-40(s0)		# tmp113, a
	add	a1,a4,a5	# tmp112, _14, tmp113
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	lw	a5,-20(s0)		# tmp114, i
	slli	a5,a5,2	#, _15, tmp114
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	addi	a5,a5,2	#, _16, _15
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	slli	a5,a5,1	#, tmp115, _16
	lw	a4,-44(s0)		# tmp116, b
	add	a2,a4,a5	# tmp115, _17, tmp116
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	lw	a5,-20(s0)		# tmp117, i
	addi	a5,a5,64	#, _18, tmp117
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)	# tmp118,
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)	# tmp119, tmp118,
	slli	a5,a5,1	#, tmp120, _18
	add	a5,a4,a5	# tmp120, tmp121, tmp119
	lh	a5,0(a5)		# _19, pqcrystals_kyber512_ref_zetas[_18]
	slli	a5,a5,16	#, _20, _19
	srli	a5,a5,16	#, _20, _20
# poly.c:278:     basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -zetas[64+i]);
	neg	a5,a5	# tmp123, tmp122
	slli	a5,a5,16	#, _21, tmp123
	srli	a5,a5,16	#, _21, _21
	slli	a5,a5,16	#, _22, _21
	srai	a5,a5,16	#, _22, _22
	mv	a3,a5	#, _22
	call	pqcrystals_kyber512_ref_basemul		#
# poly.c:276:   for(i=0;i<KYBER_N/4;i++) {
	lw	a5,-20(s0)		# tmp125, i
	addi	a5,a5,1	#, tmp124, tmp125
	sw	a5,-20(s0)	# tmp124, i
.L30:
# poly.c:276:   for(i=0;i<KYBER_N/4;i++) {
	lw	a4,-20(s0)		# tmp126, i
	li	a5,63		# tmp127,
	bleu	a4,a5,.L31	#, tmp126, tmp127,
# poly.c:280: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_basemul_montgomery, .-pqcrystals_kyber512_ref_poly_basemul_montgomery
	.globl	__mulsi3
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_tomont
	.type	pqcrystals_kyber512_ref_poly_tomont, @function
pqcrystals_kyber512_ref_poly_tomont:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
# poly.c:293:   const int16_t f = (1ULL << 32) % KYBER_Q;
	li	a5,1353		# tmp77,
	sh	a5,-22(s0)	# tmp77, f
# poly.c:294:   for(i=0;i<KYBER_N;i++)
	sw	zero,-20(s0)	#, i
# poly.c:294:   for(i=0;i<KYBER_N;i++)
	j	.L33		#
.L34:
# poly.c:295:     r->coeffs[i] = montgomery_reduce((int32_t)r->coeffs[i]*f);
	lw	a4,-36(s0)		# tmp78, r
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,1	#, tmp80, tmp79
	add	a5,a4,a5	# tmp80, tmp81, tmp78
	lh	a5,0(a5)		# _1, r_11(D)->coeffs[i_6]
# poly.c:295:     r->coeffs[i] = montgomery_reduce((int32_t)r->coeffs[i]*f);
	mv	a4,a5	# _2, _1
# poly.c:295:     r->coeffs[i] = montgomery_reduce((int32_t)r->coeffs[i]*f);
	lh	a5,-22(s0)		# _3, f
	mv	a1,a5	#, _3
	mv	a0,a4	#, _2
	call	__mulsi3		#
	mv	a5,a0	# tmp82,
	mv	a0,a5	#, _4
	call	pqcrystals_kyber512_ref_montgomery_reduce		#
	mv	a5,a0	# tmp83,
	mv	a3,a5	# _5, tmp83
# poly.c:295:     r->coeffs[i] = montgomery_reduce((int32_t)r->coeffs[i]*f);
	lw	a4,-36(s0)		# tmp84, r
	lw	a5,-20(s0)		# tmp85, i
	slli	a5,a5,1	#, tmp86, tmp85
	add	a5,a4,a5	# tmp86, tmp87, tmp84
	sh	a3,0(a5)	# _5, r_11(D)->coeffs[i_6]
# poly.c:294:   for(i=0;i<KYBER_N;i++)
	lw	a5,-20(s0)		# tmp89, i
	addi	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L33:
# poly.c:294:   for(i=0;i<KYBER_N;i++)
	lw	a4,-20(s0)		# tmp90, i
	li	a5,255		# tmp91,
	bleu	a4,a5,.L34	#, tmp90, tmp91,
# poly.c:296: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_tomont, .-pqcrystals_kyber512_ref_poly_tomont
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_reduce
	.type	pqcrystals_kyber512_ref_poly_reduce, @function
pqcrystals_kyber512_ref_poly_reduce:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
# poly.c:309:   for(i=0;i<KYBER_N;i++)
	sw	zero,-20(s0)	#, i
# poly.c:309:   for(i=0;i<KYBER_N;i++)
	j	.L36		#
.L37:
# poly.c:310:     r->coeffs[i] = barrett_reduce(r->coeffs[i]);
	lw	a4,-36(s0)		# tmp74, r
	lw	a5,-20(s0)		# tmp75, i
	slli	a5,a5,1	#, tmp76, tmp75
	add	a5,a4,a5	# tmp76, tmp77, tmp74
	lh	a5,0(a5)		# _1, r_7(D)->coeffs[i_3]
	mv	a0,a5	#, _1
	call	pqcrystals_kyber512_ref_barrett_reduce		#
	mv	a5,a0	# tmp78,
	mv	a3,a5	# _2, tmp78
# poly.c:310:     r->coeffs[i] = barrett_reduce(r->coeffs[i]);
	lw	a4,-36(s0)		# tmp79, r
	lw	a5,-20(s0)		# tmp80, i
	slli	a5,a5,1	#, tmp81, tmp80
	add	a5,a4,a5	# tmp81, tmp82, tmp79
	sh	a3,0(a5)	# _2, r_7(D)->coeffs[i_3]
# poly.c:309:   for(i=0;i<KYBER_N;i++)
	lw	a5,-20(s0)		# tmp84, i
	addi	a5,a5,1	#, tmp83, tmp84
	sw	a5,-20(s0)	# tmp83, i
.L36:
# poly.c:309:   for(i=0;i<KYBER_N;i++)
	lw	a4,-20(s0)		# tmp85, i
	li	a5,255		# tmp86,
	bleu	a4,a5,.L37	#, tmp85, tmp86,
# poly.c:311: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_reduce, .-pqcrystals_kyber512_ref_poly_reduce
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_add
	.type	pqcrystals_kyber512_ref_poly_add, @function
pqcrystals_kyber512_ref_poly_add:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
	sw	a2,-44(s0)	# b, b
# poly.c:325:   for(i=0;i<KYBER_N;i++)
	sw	zero,-20(s0)	#, i
# poly.c:325:   for(i=0;i<KYBER_N;i++)
	j	.L39		#
.L40:
# poly.c:326:     r->coeffs[i] = a->coeffs[i] + b->coeffs[i];
	lw	a4,-40(s0)		# tmp78, a
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,1	#, tmp80, tmp79
	add	a5,a4,a5	# tmp80, tmp81, tmp78
	lh	a5,0(a5)		# _1, a_11(D)->coeffs[i_7]
	slli	a4,a5,16	#, _2, _1
	srli	a4,a4,16	#, _2, _2
# poly.c:326:     r->coeffs[i] = a->coeffs[i] + b->coeffs[i];
	lw	a3,-44(s0)		# tmp82, b
	lw	a5,-20(s0)		# tmp83, i
	slli	a5,a5,1	#, tmp84, tmp83
	add	a5,a3,a5	# tmp84, tmp85, tmp82
	lh	a5,0(a5)		# _3, b_12(D)->coeffs[i_7]
	slli	a5,a5,16	#, _4, _3
	srli	a5,a5,16	#, _4, _4
# poly.c:326:     r->coeffs[i] = a->coeffs[i] + b->coeffs[i];
	add	a5,a4,a5	# _4, tmp86, _2
	slli	a5,a5,16	#, _5, tmp86
	srli	a5,a5,16	#, _5, _5
	slli	a4,a5,16	#, _6, _5
	srai	a4,a4,16	#, _6, _6
# poly.c:326:     r->coeffs[i] = a->coeffs[i] + b->coeffs[i];
	lw	a3,-36(s0)		# tmp87, r
	lw	a5,-20(s0)		# tmp88, i
	slli	a5,a5,1	#, tmp89, tmp88
	add	a5,a3,a5	# tmp89, tmp90, tmp87
	sh	a4,0(a5)	# _6, r_13(D)->coeffs[i_7]
# poly.c:325:   for(i=0;i<KYBER_N;i++)
	lw	a5,-20(s0)		# tmp92, i
	addi	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, i
.L39:
# poly.c:325:   for(i=0;i<KYBER_N;i++)
	lw	a4,-20(s0)		# tmp93, i
	li	a5,255		# tmp94,
	bleu	a4,a5,.L40	#, tmp93, tmp94,
# poly.c:327: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_add, .-pqcrystals_kyber512_ref_poly_add
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_sub
	.type	pqcrystals_kyber512_ref_poly_sub, @function
pqcrystals_kyber512_ref_poly_sub:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# r, r
	sw	a1,-40(s0)	# a, a
	sw	a2,-44(s0)	# b, b
# poly.c:341:   for(i=0;i<KYBER_N;i++)
	sw	zero,-20(s0)	#, i
# poly.c:341:   for(i=0;i<KYBER_N;i++)
	j	.L42		#
.L43:
# poly.c:342:     r->coeffs[i] = a->coeffs[i] - b->coeffs[i];
	lw	a4,-40(s0)		# tmp78, a
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,1	#, tmp80, tmp79
	add	a5,a4,a5	# tmp80, tmp81, tmp78
	lh	a5,0(a5)		# _1, a_11(D)->coeffs[i_7]
	slli	a4,a5,16	#, _2, _1
	srli	a4,a4,16	#, _2, _2
# poly.c:342:     r->coeffs[i] = a->coeffs[i] - b->coeffs[i];
	lw	a3,-44(s0)		# tmp82, b
	lw	a5,-20(s0)		# tmp83, i
	slli	a5,a5,1	#, tmp84, tmp83
	add	a5,a3,a5	# tmp84, tmp85, tmp82
	lh	a5,0(a5)		# _3, b_12(D)->coeffs[i_7]
	slli	a5,a5,16	#, _4, _3
	srli	a5,a5,16	#, _4, _4
# poly.c:342:     r->coeffs[i] = a->coeffs[i] - b->coeffs[i];
	sub	a5,a4,a5	# tmp86, _2, _4
	slli	a5,a5,16	#, _5, tmp86
	srli	a5,a5,16	#, _5, _5
	slli	a4,a5,16	#, _6, _5
	srai	a4,a4,16	#, _6, _6
# poly.c:342:     r->coeffs[i] = a->coeffs[i] - b->coeffs[i];
	lw	a3,-36(s0)		# tmp87, r
	lw	a5,-20(s0)		# tmp88, i
	slli	a5,a5,1	#, tmp89, tmp88
	add	a5,a3,a5	# tmp89, tmp90, tmp87
	sh	a4,0(a5)	# _6, r_13(D)->coeffs[i_7]
# poly.c:341:   for(i=0;i<KYBER_N;i++)
	lw	a5,-20(s0)		# tmp92, i
	addi	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, i
.L42:
# poly.c:341:   for(i=0;i<KYBER_N;i++)
	lw	a4,-20(s0)		# tmp93, i
	li	a5,255		# tmp94,
	bleu	a4,a5,.L43	#, tmp93, tmp94,
# poly.c:343: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_sub, .-pqcrystals_kyber512_ref_poly_sub
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
