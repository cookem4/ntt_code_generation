	.file	"cbd.c"
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
	.type	load32_littleendian, @function
load32_littleendian:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# x, x
# cbd.c:18:   r  = (uint32_t)x[0];
	lw	a5,-36(s0)		# tmp87, x
	lbu	a5,0(a5)	# _1, *x_15(D)
# cbd.c:18:   r  = (uint32_t)x[0];
	sw	a5,-20(s0)	# _1, r
# cbd.c:19:   r |= (uint32_t)x[1] << 8;
	lw	a5,-36(s0)		# tmp88, x
	addi	a5,a5,1	#, _2, tmp88
	lbu	a5,0(a5)	# _3, *_2
# cbd.c:19:   r |= (uint32_t)x[1] << 8;
	slli	a5,a5,8	#, _5, _4
# cbd.c:19:   r |= (uint32_t)x[1] << 8;
	lw	a4,-20(s0)		# tmp90, r
	or	a5,a4,a5	# _5, tmp89, tmp90
	sw	a5,-20(s0)	# tmp89, r
# cbd.c:20:   r |= (uint32_t)x[2] << 16;
	lw	a5,-36(s0)		# tmp91, x
	addi	a5,a5,2	#, _6, tmp91
	lbu	a5,0(a5)	# _7, *_6
# cbd.c:20:   r |= (uint32_t)x[2] << 16;
	slli	a5,a5,16	#, _9, _8
# cbd.c:20:   r |= (uint32_t)x[2] << 16;
	lw	a4,-20(s0)		# tmp93, r
	or	a5,a4,a5	# _9, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, r
# cbd.c:21:   r |= (uint32_t)x[3] << 24;
	lw	a5,-36(s0)		# tmp94, x
	addi	a5,a5,3	#, _10, tmp94
	lbu	a5,0(a5)	# _11, *_10
# cbd.c:21:   r |= (uint32_t)x[3] << 24;
	slli	a5,a5,24	#, _13, _12
# cbd.c:21:   r |= (uint32_t)x[3] << 24;
	lw	a4,-20(s0)		# tmp96, r
	or	a5,a4,a5	# _13, tmp95, tmp96
	sw	a5,-20(s0)	# tmp95, r
# cbd.c:22:   return r;
	lw	a5,-20(s0)		# _20, r
# cbd.c:23: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	load32_littleendian, .-load32_littleendian
	.align	2
	.type	load24_littleendian, @function
load24_littleendian:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# x, x
# cbd.c:40:   r  = (uint32_t)x[0];
	lw	a5,-36(s0)		# tmp83, x
	lbu	a5,0(a5)	# _1, *x_11(D)
# cbd.c:40:   r  = (uint32_t)x[0];
	sw	a5,-20(s0)	# _1, r
# cbd.c:41:   r |= (uint32_t)x[1] << 8;
	lw	a5,-36(s0)		# tmp84, x
	addi	a5,a5,1	#, _2, tmp84
	lbu	a5,0(a5)	# _3, *_2
# cbd.c:41:   r |= (uint32_t)x[1] << 8;
	slli	a5,a5,8	#, _5, _4
# cbd.c:41:   r |= (uint32_t)x[1] << 8;
	lw	a4,-20(s0)		# tmp86, r
	or	a5,a4,a5	# _5, tmp85, tmp86
	sw	a5,-20(s0)	# tmp85, r
# cbd.c:42:   r |= (uint32_t)x[2] << 16;
	lw	a5,-36(s0)		# tmp87, x
	addi	a5,a5,2	#, _6, tmp87
	lbu	a5,0(a5)	# _7, *_6
# cbd.c:42:   r |= (uint32_t)x[2] << 16;
	slli	a5,a5,16	#, _9, _8
# cbd.c:42:   r |= (uint32_t)x[2] << 16;
	lw	a4,-20(s0)		# tmp89, r
	or	a5,a4,a5	# _9, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, r
# cbd.c:43:   return r;
	lw	a5,-20(s0)		# _15, r
# cbd.c:44: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	load24_littleendian, .-load24_littleendian
	.align	2
	.type	cbd2, @function
cbd2:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
	sw	a1,-56(s0)	# buf, buf
# cbd.c:64:   for(i=0;i<KYBER_N/8;i++) {
	sw	zero,-20(s0)	#, i
# cbd.c:64:   for(i=0;i<KYBER_N/8;i++) {
	j	.L6		#
.L9:
# cbd.c:65:     t  = load32_littleendian(buf+4*i);
	lw	a5,-20(s0)		# tmp89, i
	slli	a5,a5,2	#, _1, tmp89
# cbd.c:65:     t  = load32_littleendian(buf+4*i);
	lw	a4,-56(s0)		# tmp90, buf
	add	a5,a4,a5	# _1, _2, tmp90
	mv	a0,a5	#, _2
	call	load32_littleendian		#
	sw	a0,-28(s0)	#, t
# cbd.c:66:     d  = t & 0x55555555;
	lw	a4,-28(s0)		# tmp92, t
	li	a5,1431654400		# tmp94,
	addi	a5,a5,1365	#, tmp93, tmp94
	and	a5,a4,a5	# tmp93, tmp91, tmp92
	sw	a5,-32(s0)	# tmp91, d
# cbd.c:67:     d += (t>>1) & 0x55555555;
	lw	a5,-28(s0)		# tmp95, t
	srli	a4,a5,1	#, _3, tmp95
# cbd.c:67:     d += (t>>1) & 0x55555555;
	li	a5,1431654400		# tmp97,
	addi	a5,a5,1365	#, tmp96, tmp97
	and	a5,a4,a5	# tmp96, _4, _3
# cbd.c:67:     d += (t>>1) & 0x55555555;
	lw	a4,-32(s0)		# tmp99, d
	add	a5,a4,a5	# _4, tmp98, tmp99
	sw	a5,-32(s0)	# tmp98, d
# cbd.c:69:     for(j=0;j<8;j++) {
	sw	zero,-24(s0)	#, j
# cbd.c:69:     for(j=0;j<8;j++) {
	j	.L7		#
.L8:
# cbd.c:70:       a = (d >> (4*j+0)) & 0x3;
	lw	a5,-24(s0)		# tmp100, j
	slli	a5,a5,2	#, _5, tmp100
# cbd.c:70:       a = (d >> (4*j+0)) & 0x3;
	lw	a4,-32(s0)		# tmp101, d
	srl	a5,a4,a5	# _5, _6, tmp101
# cbd.c:70:       a = (d >> (4*j+0)) & 0x3;
	slli	a5,a5,16	#, _7, _6
	srai	a5,a5,16	#, _7, _7
# cbd.c:70:       a = (d >> (4*j+0)) & 0x3;
	andi	a5,a5,3	#, tmp102, _7
	sh	a5,-34(s0)	# tmp102, a
# cbd.c:71:       b = (d >> (4*j+2)) & 0x3;
	lw	a5,-24(s0)		# tmp103, j
	slli	a5,a5,2	#, _8, tmp103
# cbd.c:71:       b = (d >> (4*j+2)) & 0x3;
	addi	a5,a5,2	#, _9, _8
# cbd.c:71:       b = (d >> (4*j+2)) & 0x3;
	lw	a4,-32(s0)		# tmp104, d
	srl	a5,a4,a5	# _9, _10, tmp104
# cbd.c:71:       b = (d >> (4*j+2)) & 0x3;
	slli	a5,a5,16	#, _11, _10
	srai	a5,a5,16	#, _11, _11
# cbd.c:71:       b = (d >> (4*j+2)) & 0x3;
	andi	a5,a5,3	#, tmp105, _11
	sh	a5,-36(s0)	# tmp105, b
# cbd.c:72:       r->coeffs[8*i+j] = a - b;
	lhu	a4,-34(s0)	# a.0_12, a
	lhu	a5,-36(s0)	# b.1_13, b
	sub	a5,a4,a5	# tmp106, a.0_12, b.1_13
	slli	a3,a5,16	#, _14, tmp106
	srli	a3,a3,16	#, _14, _14
# cbd.c:72:       r->coeffs[8*i+j] = a - b;
	lw	a5,-20(s0)		# tmp107, i
	slli	a4,a5,3	#, _15, tmp107
# cbd.c:72:       r->coeffs[8*i+j] = a - b;
	lw	a5,-24(s0)		# tmp108, j
	add	a5,a4,a5	# tmp108, _16, _15
# cbd.c:72:       r->coeffs[8*i+j] = a - b;
	slli	a4,a3,16	#, _17, _14
	srai	a4,a4,16	#, _17, _17
# cbd.c:72:       r->coeffs[8*i+j] = a - b;
	lw	a3,-52(s0)		# tmp109, r
	slli	a5,a5,1	#, tmp110, _16
	add	a5,a3,a5	# tmp110, tmp111, tmp109
	sh	a4,0(a5)	# _17, r_33(D)->coeffs[_16]
# cbd.c:69:     for(j=0;j<8;j++) {
	lw	a5,-24(s0)		# tmp113, j
	addi	a5,a5,1	#, tmp112, tmp113
	sw	a5,-24(s0)	# tmp112, j
.L7:
# cbd.c:69:     for(j=0;j<8;j++) {
	lw	a4,-24(s0)		# tmp114, j
	li	a5,7		# tmp115,
	bleu	a4,a5,.L8	#, tmp114, tmp115,
# cbd.c:64:   for(i=0;i<KYBER_N/8;i++) {
	lw	a5,-20(s0)		# tmp117, i
	addi	a5,a5,1	#, tmp116, tmp117
	sw	a5,-20(s0)	# tmp116, i
.L6:
# cbd.c:64:   for(i=0;i<KYBER_N/8;i++) {
	lw	a4,-20(s0)		# tmp118, i
	li	a5,31		# tmp119,
	bleu	a4,a5,.L9	#, tmp118, tmp119,
# cbd.c:75: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	cbd2, .-cbd2
	.align	2
	.type	cbd3, @function
cbd3:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
	sw	a1,-56(s0)	# buf, buf
# cbd.c:95:   for(i=0;i<KYBER_N/4;i++) {
	sw	zero,-20(s0)	#, i
# cbd.c:95:   for(i=0;i<KYBER_N/4;i++) {
	j	.L11		#
.L14:
# cbd.c:96:     t  = load24_littleendian(buf+3*i);
	lw	a4,-20(s0)		# tmp91, i
	mv	a5,a4	# tmp92, tmp91
	slli	a5,a5,1	#, tmp93, tmp92
	add	a5,a5,a4	# tmp91, _1, tmp92
# cbd.c:96:     t  = load24_littleendian(buf+3*i);
	lw	a4,-56(s0)		# tmp94, buf
	add	a5,a4,a5	# _1, _2, tmp94
	mv	a0,a5	#, _2
	call	load24_littleendian		#
	sw	a0,-28(s0)	#, t
# cbd.c:97:     d  = t & 0x00249249;
	lw	a4,-28(s0)		# tmp96, t
	li	a5,2396160		# tmp98,
	addi	a5,a5,585	#, tmp97, tmp98
	and	a5,a4,a5	# tmp97, tmp95, tmp96
	sw	a5,-32(s0)	# tmp95, d
# cbd.c:98:     d += (t>>1) & 0x00249249;
	lw	a5,-28(s0)		# tmp99, t
	srli	a4,a5,1	#, _3, tmp99
# cbd.c:98:     d += (t>>1) & 0x00249249;
	li	a5,2396160		# tmp101,
	addi	a5,a5,585	#, tmp100, tmp101
	and	a5,a4,a5	# tmp100, _4, _3
# cbd.c:98:     d += (t>>1) & 0x00249249;
	lw	a4,-32(s0)		# tmp103, d
	add	a5,a4,a5	# _4, tmp102, tmp103
	sw	a5,-32(s0)	# tmp102, d
# cbd.c:99:     d += (t>>2) & 0x00249249;
	lw	a5,-28(s0)		# tmp104, t
	srli	a4,a5,2	#, _5, tmp104
# cbd.c:99:     d += (t>>2) & 0x00249249;
	li	a5,2396160		# tmp106,
	addi	a5,a5,585	#, tmp105, tmp106
	and	a5,a4,a5	# tmp105, _6, _5
# cbd.c:99:     d += (t>>2) & 0x00249249;
	lw	a4,-32(s0)		# tmp108, d
	add	a5,a4,a5	# _6, tmp107, tmp108
	sw	a5,-32(s0)	# tmp107, d
# cbd.c:101:     for(j=0;j<4;j++) {
	sw	zero,-24(s0)	#, j
# cbd.c:101:     for(j=0;j<4;j++) {
	j	.L12		#
.L13:
# cbd.c:102:       a = (d >> (6*j+0)) & 0x7;
	lw	a4,-24(s0)		# tmp109, j
	mv	a5,a4	# tmp110, tmp109
	slli	a5,a5,1	#, tmp111, tmp110
	add	a5,a5,a4	# tmp109, tmp110, tmp110
	slli	a5,a5,1	#, tmp112, tmp110
	mv	a4,a5	# _7, tmp110
# cbd.c:102:       a = (d >> (6*j+0)) & 0x7;
	lw	a5,-32(s0)		# tmp113, d
	srl	a5,a5,a4	# _7, _8, tmp113
# cbd.c:102:       a = (d >> (6*j+0)) & 0x7;
	slli	a5,a5,16	#, _9, _8
	srai	a5,a5,16	#, _9, _9
# cbd.c:102:       a = (d >> (6*j+0)) & 0x7;
	andi	a5,a5,7	#, tmp114, _9
	sh	a5,-34(s0)	# tmp114, a
# cbd.c:103:       b = (d >> (6*j+3)) & 0x7;
	lw	a4,-24(s0)		# tmp115, j
	mv	a5,a4	# tmp116, tmp115
	slli	a5,a5,1	#, tmp117, tmp116
	add	a5,a5,a4	# tmp115, tmp116, tmp116
	slli	a5,a5,1	#, tmp118, tmp116
# cbd.c:103:       b = (d >> (6*j+3)) & 0x7;
	addi	a5,a5,3	#, _11, _10
# cbd.c:103:       b = (d >> (6*j+3)) & 0x7;
	lw	a4,-32(s0)		# tmp119, d
	srl	a5,a4,a5	# _11, _12, tmp119
# cbd.c:103:       b = (d >> (6*j+3)) & 0x7;
	slli	a5,a5,16	#, _13, _12
	srai	a5,a5,16	#, _13, _13
# cbd.c:103:       b = (d >> (6*j+3)) & 0x7;
	andi	a5,a5,7	#, tmp120, _13
	sh	a5,-36(s0)	# tmp120, b
# cbd.c:104:       r->coeffs[4*i+j] = a - b;
	lhu	a4,-34(s0)	# a.2_14, a
	lhu	a5,-36(s0)	# b.3_15, b
	sub	a5,a4,a5	# tmp121, a.2_14, b.3_15
	slli	a3,a5,16	#, _16, tmp121
	srli	a3,a3,16	#, _16, _16
# cbd.c:104:       r->coeffs[4*i+j] = a - b;
	lw	a5,-20(s0)		# tmp122, i
	slli	a4,a5,2	#, _17, tmp122
# cbd.c:104:       r->coeffs[4*i+j] = a - b;
	lw	a5,-24(s0)		# tmp123, j
	add	a5,a4,a5	# tmp123, _18, _17
# cbd.c:104:       r->coeffs[4*i+j] = a - b;
	slli	a4,a3,16	#, _19, _16
	srai	a4,a4,16	#, _19, _19
# cbd.c:104:       r->coeffs[4*i+j] = a - b;
	lw	a3,-52(s0)		# tmp124, r
	slli	a5,a5,1	#, tmp125, _18
	add	a5,a3,a5	# tmp125, tmp126, tmp124
	sh	a4,0(a5)	# _19, r_36(D)->coeffs[_18]
# cbd.c:101:     for(j=0;j<4;j++) {
	lw	a5,-24(s0)		# tmp128, j
	addi	a5,a5,1	#, tmp127, tmp128
	sw	a5,-24(s0)	# tmp127, j
.L12:
# cbd.c:101:     for(j=0;j<4;j++) {
	lw	a4,-24(s0)		# tmp129, j
	li	a5,3		# tmp130,
	bleu	a4,a5,.L13	#, tmp129, tmp130,
# cbd.c:95:   for(i=0;i<KYBER_N/4;i++) {
	lw	a5,-20(s0)		# tmp132, i
	addi	a5,a5,1	#, tmp131, tmp132
	sw	a5,-20(s0)	# tmp131, i
.L11:
# cbd.c:95:   for(i=0;i<KYBER_N/4;i++) {
	lw	a4,-20(s0)		# tmp133, i
	li	a5,63		# tmp134,
	bleu	a4,a5,.L14	#, tmp133, tmp134,
# cbd.c:107: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	cbd3, .-cbd3
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_cbd_eta1
	.type	pqcrystals_kyber512_ref_poly_cbd_eta1, @function
pqcrystals_kyber512_ref_poly_cbd_eta1:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
	sw	a1,-24(s0)	# buf, buf
# cbd.c:115:   cbd3(r, buf);
	lw	a1,-24(s0)		#, buf
	lw	a0,-20(s0)		#, r
	call	cbd3		#
# cbd.c:119: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_cbd_eta1, .-pqcrystals_kyber512_ref_poly_cbd_eta1
	.align	2
	.globl	pqcrystals_kyber512_ref_poly_cbd_eta2
	.type	pqcrystals_kyber512_ref_poly_cbd_eta2, @function
pqcrystals_kyber512_ref_poly_cbd_eta2:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
	sw	a1,-24(s0)	# buf, buf
# cbd.c:124:   cbd2(r, buf);
	lw	a1,-24(s0)		#, buf
	lw	a0,-20(s0)		#, r
	call	cbd2		#
# cbd.c:128: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_poly_cbd_eta2, .-pqcrystals_kyber512_ref_poly_cbd_eta2
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
