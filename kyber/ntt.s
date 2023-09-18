	.file	"ntt.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (g2ee5e430018) version 12.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -mtune=rocket -misa-spec=20191213 -march=rv32i -O0
	.text
	.globl	pqcrystals_kyber512_ref_zetas
	.section	.rodata
	.align	2
	.type	pqcrystals_kyber512_ref_zetas, @object
	.size	pqcrystals_kyber512_ref_zetas, 256
pqcrystals_kyber512_ref_zetas:
	.half	-1044
	.half	-758
	.half	-359
	.half	-1517
	.half	1493
	.half	1422
	.half	287
	.half	202
	.half	-171
	.half	622
	.half	1577
	.half	182
	.half	962
	.half	-1202
	.half	-1474
	.half	1468
	.half	573
	.half	-1325
	.half	264
	.half	383
	.half	-829
	.half	1458
	.half	-1602
	.half	-130
	.half	-681
	.half	1017
	.half	732
	.half	608
	.half	-1542
	.half	411
	.half	-205
	.half	-1571
	.half	1223
	.half	652
	.half	-552
	.half	1015
	.half	-1293
	.half	1491
	.half	-282
	.half	-1544
	.half	516
	.half	-8
	.half	-320
	.half	-666
	.half	-1618
	.half	-1162
	.half	126
	.half	1469
	.half	-853
	.half	-90
	.half	-271
	.half	830
	.half	107
	.half	-1421
	.half	-247
	.half	-951
	.half	-398
	.half	961
	.half	-1508
	.half	-725
	.half	448
	.half	-1065
	.half	677
	.half	-1275
	.half	-1103
	.half	430
	.half	555
	.half	843
	.half	-1251
	.half	871
	.half	1550
	.half	105
	.half	422
	.half	587
	.half	177
	.half	-235
	.half	-291
	.half	-460
	.half	1574
	.half	1653
	.half	-246
	.half	778
	.half	1159
	.half	-147
	.half	-777
	.half	1483
	.half	-602
	.half	1119
	.half	-1590
	.half	644
	.half	-872
	.half	349
	.half	418
	.half	329
	.half	-156
	.half	-75
	.half	817
	.half	1097
	.half	603
	.half	610
	.half	1322
	.half	-1285
	.half	-1465
	.half	384
	.half	-1215
	.half	-136
	.half	1218
	.half	-1335
	.half	-874
	.half	220
	.half	-1187
	.half	-1659
	.half	-1185
	.half	-1530
	.half	-1278
	.half	794
	.half	-1510
	.half	-854
	.half	-870
	.half	478
	.half	-108
	.half	-308
	.half	996
	.half	991
	.half	958
	.half	-1460
	.half	1522
	.half	1628
	.globl	__mulsi3
	.text
	.align	2
	.type	fqmul, @function
fqmul:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp77, a
	mv	a4,a1	# tmp79, b
	sh	a5,-18(s0)	# tmp78, a
	mv	a5,a4	# tmp80, tmp79
	sh	a5,-20(s0)	# tmp80, b
# ntt.c:69:   return montgomery_reduce((int32_t)a*b);
	lh	a5,-18(s0)		# _1, a
# ntt.c:69:   return montgomery_reduce((int32_t)a*b);
	lh	a4,-20(s0)		# _2, b
	mv	a1,a4	#, _2
	mv	a0,a5	#, _1
	call	__mulsi3		#
	mv	a5,a0	# tmp81,
	mv	a0,a5	#, _3
	call	pqcrystals_kyber512_ref_montgomery_reduce		#
	mv	a5,a0	# tmp82,
# ntt.c:70: }
	mv	a0,a5	#, <retval>
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	fqmul, .-fqmul
	.align	2
	.globl	pqcrystals_kyber512_ref_ntt
	.type	pqcrystals_kyber512_ref_ntt, @function
pqcrystals_kyber512_ref_ntt:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
# ntt.c:84:   k = 1;
	li	a5,1		# tmp97,
	sw	a5,-32(s0)	# tmp97, k
# ntt.c:85:   for(len = 128; len >= 2; len >>= 1) {
	li	a5,128		# tmp98,
	sw	a5,-20(s0)	# tmp98, len
# ntt.c:85:   for(len = 128; len >= 2; len >>= 1) {
	j	.L4		#
.L9:
# ntt.c:86:     for(start = 0; start < 256; start = j + len) {
	sw	zero,-24(s0)	#, start
# ntt.c:86:     for(start = 0; start < 256; start = j + len) {
	j	.L5		#
.L8:
# ntt.c:87:       zeta = zetas[k++];
	lw	a5,-32(s0)		# k.0_1, k
	addi	a4,a5,1	#, tmp99, k.0_1
	sw	a4,-32(s0)	# tmp99, k
# ntt.c:87:       zeta = zetas[k++];
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)	# tmp100,
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)	# tmp101, tmp100,
	slli	a5,a5,1	#, tmp102, k.0_1
	add	a5,a4,a5	# tmp102, tmp103, tmp101
	lhu	a5,0(a5)	# tmp104, pqcrystals_kyber512_ref_zetas[k.0_1]
	sh	a5,-34(s0)	# tmp104, zeta
# ntt.c:88:       for(j = start; j < start + len; j++) {
	lw	a5,-24(s0)		# tmp105, start
	sw	a5,-28(s0)	# tmp105, j
# ntt.c:88:       for(j = start; j < start + len; j++) {
	j	.L6		#
.L7:
# ntt.c:89:         t = fqmul(zeta, r[j + len]);
	lw	a4,-28(s0)		# tmp106, j
	lw	a5,-20(s0)		# tmp107, len
	add	a5,a4,a5	# tmp107, _2, tmp106
# ntt.c:89:         t = fqmul(zeta, r[j + len]);
	slli	a5,a5,1	#, _3, _2
	lw	a4,-52(s0)		# tmp108, r
	add	a5,a4,a5	# _3, _4, tmp108
# ntt.c:89:         t = fqmul(zeta, r[j + len]);
	lh	a4,0(a5)		# _5, *_4
	lh	a5,-34(s0)		# tmp109, zeta
	mv	a1,a4	#, _5
	mv	a0,a5	#, tmp109
	call	fqmul		#
	mv	a5,a0	# tmp110,
	sh	a5,-36(s0)	# tmp110, t
# ntt.c:90:         r[j + len] = r[j] - t;
	lw	a5,-28(s0)		# tmp111, j
	slli	a5,a5,1	#, _6, tmp111
	lw	a4,-52(s0)		# tmp112, r
	add	a5,a4,a5	# _6, _7, tmp112
	lh	a5,0(a5)		# _8, *_7
	slli	a4,a5,16	#, _9, _8
	srli	a4,a4,16	#, _9, _9
# ntt.c:90:         r[j + len] = r[j] - t;
	lhu	a5,-36(s0)	# t.1_10, t
	sub	a5,a4,a5	# tmp113, _9, t.1_10
	slli	a3,a5,16	#, _11, tmp113
	srli	a3,a3,16	#, _11, _11
# ntt.c:90:         r[j + len] = r[j] - t;
	lw	a4,-28(s0)		# tmp114, j
	lw	a5,-20(s0)		# tmp115, len
	add	a5,a4,a5	# tmp115, _12, tmp114
# ntt.c:90:         r[j + len] = r[j] - t;
	slli	a5,a5,1	#, _13, _12
	lw	a4,-52(s0)		# tmp116, r
	add	a5,a4,a5	# _13, _14, tmp116
# ntt.c:90:         r[j + len] = r[j] - t;
	slli	a4,a3,16	#, _15, _11
	srai	a4,a4,16	#, _15, _15
# ntt.c:90:         r[j + len] = r[j] - t;
	sh	a4,0(a5)	# _15, *_14
# ntt.c:91:         r[j] = r[j] + t;
	lw	a5,-28(s0)		# tmp117, j
	slli	a5,a5,1	#, _16, tmp117
	lw	a4,-52(s0)		# tmp118, r
	add	a5,a4,a5	# _16, _17, tmp118
	lh	a5,0(a5)		# _18, *_17
	slli	a4,a5,16	#, _19, _18
	srli	a4,a4,16	#, _19, _19
# ntt.c:91:         r[j] = r[j] + t;
	lhu	a5,-36(s0)	# t.2_20, t
	add	a5,a4,a5	# t.2_20, tmp119, _19
	slli	a3,a5,16	#, _21, tmp119
	srli	a3,a3,16	#, _21, _21
# ntt.c:91:         r[j] = r[j] + t;
	lw	a5,-28(s0)		# tmp120, j
	slli	a5,a5,1	#, _22, tmp120
	lw	a4,-52(s0)		# tmp121, r
	add	a5,a4,a5	# _22, _23, tmp121
# ntt.c:91:         r[j] = r[j] + t;
	slli	a4,a3,16	#, _24, _21
	srai	a4,a4,16	#, _24, _24
# ntt.c:91:         r[j] = r[j] + t;
	sh	a4,0(a5)	# _24, *_23
# ntt.c:88:       for(j = start; j < start + len; j++) {
	lw	a5,-28(s0)		# tmp123, j
	addi	a5,a5,1	#, tmp122, tmp123
	sw	a5,-28(s0)	# tmp122, j
.L6:
# ntt.c:88:       for(j = start; j < start + len; j++) {
	lw	a4,-24(s0)		# tmp124, start
	lw	a5,-20(s0)		# tmp125, len
	add	a5,a4,a5	# tmp125, _25, tmp124
# ntt.c:88:       for(j = start; j < start + len; j++) {
	lw	a4,-28(s0)		# tmp126, j
	bltu	a4,a5,.L7	#, tmp126, _25,
# ntt.c:86:     for(start = 0; start < 256; start = j + len) {
	lw	a4,-28(s0)		# tmp128, j
	lw	a5,-20(s0)		# tmp129, len
	add	a5,a4,a5	# tmp129, tmp127, tmp128
	sw	a5,-24(s0)	# tmp127, start
.L5:
# ntt.c:86:     for(start = 0; start < 256; start = j + len) {
	lw	a4,-24(s0)		# tmp130, start
	li	a5,255		# tmp131,
	bleu	a4,a5,.L8	#, tmp130, tmp131,
# ntt.c:85:   for(len = 128; len >= 2; len >>= 1) {
	lw	a5,-20(s0)		# tmp133, len
	srli	a5,a5,1	#, tmp132, tmp133
	sw	a5,-20(s0)	# tmp132, len
.L4:
# ntt.c:85:   for(len = 128; len >= 2; len >>= 1) {
	lw	a4,-20(s0)		# tmp134, len
	li	a5,1		# tmp135,
	bgtu	a4,a5,.L9	#, tmp134, tmp135,
# ntt.c:95: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_ntt, .-pqcrystals_kyber512_ref_ntt
	.align	2
	.globl	pqcrystals_kyber512_ref_invntt
	.type	pqcrystals_kyber512_ref_invntt, @function
pqcrystals_kyber512_ref_invntt:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	sw	s1,52(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# r, r
# ntt.c:109:   const int16_t f = 1441; // mont^2/128
	li	a5,1441		# tmp112,
	sh	a5,-34(s0)	# tmp112, f
# ntt.c:111:   k = 127;
	li	a5,127		# tmp113,
	sw	a5,-32(s0)	# tmp113, k
# ntt.c:112:   for(len = 2; len <= 128; len <<= 1) {
	li	a5,2		# tmp114,
	sw	a5,-24(s0)	# tmp114, len
# ntt.c:112:   for(len = 2; len <= 128; len <<= 1) {
	j	.L11		#
.L16:
# ntt.c:113:     for(start = 0; start < 256; start = j + len) {
	sw	zero,-20(s0)	#, start
# ntt.c:113:     for(start = 0; start < 256; start = j + len) {
	j	.L12		#
.L15:
# ntt.c:114:       zeta = zetas[k--];
	lw	a5,-32(s0)		# k.3_1, k
	addi	a4,a5,-1	#, tmp115, k.3_1
	sw	a4,-32(s0)	# tmp115, k
# ntt.c:114:       zeta = zetas[k--];
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)	# tmp116,
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)	# tmp117, tmp116,
	slli	a5,a5,1	#, tmp118, k.3_1
	add	a5,a4,a5	# tmp118, tmp119, tmp117
	lhu	a5,0(a5)	# tmp120, pqcrystals_kyber512_ref_zetas[k.3_1]
	sh	a5,-36(s0)	# tmp120, zeta
# ntt.c:115:       for(j = start; j < start + len; j++) {
	lw	a5,-20(s0)		# tmp121, start
	sw	a5,-28(s0)	# tmp121, j
# ntt.c:115:       for(j = start; j < start + len; j++) {
	j	.L13		#
.L14:
# ntt.c:116:         t = r[j];
	lw	a5,-28(s0)		# tmp122, j
	slli	a5,a5,1	#, _2, tmp122
	lw	a4,-52(s0)		# tmp123, r
	add	a5,a4,a5	# _2, _3, tmp123
# ntt.c:116:         t = r[j];
	lhu	a5,0(a5)	# tmp124, *_3
	sh	a5,-38(s0)	# tmp124, t
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	lw	a4,-28(s0)		# tmp125, j
	lw	a5,-24(s0)		# tmp126, len
	add	a5,a4,a5	# tmp126, _4, tmp125
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	slli	a5,a5,1	#, _5, _4
	lw	a4,-52(s0)		# tmp127, r
	add	a5,a4,a5	# _5, _6, tmp127
	lh	a5,0(a5)		# _7, *_6
	slli	a4,a5,16	#, _8, _7
	srli	a4,a4,16	#, _8, _8
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	lhu	a5,-38(s0)	# t.4_9, t
	add	a5,a4,a5	# t.4_9, tmp128, _8
	slli	a5,a5,16	#, _10, tmp128
	srli	a5,a5,16	#, _10, _10
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	slli	a3,a5,16	#, _11, _10
	srai	a3,a3,16	#, _11, _11
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	lw	a5,-28(s0)		# tmp129, j
	slli	a5,a5,1	#, _12, tmp129
	lw	a4,-52(s0)		# tmp130, r
	add	s1,a4,a5	# _12, _13, tmp130
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	mv	a0,a3	#, _11
	call	pqcrystals_kyber512_ref_barrett_reduce		#
	mv	a5,a0	# tmp131,
# ntt.c:117:         r[j] = barrett_reduce(t + r[j + len]);
	sh	a5,0(s1)	# _14, *_13
# ntt.c:118:         r[j + len] = r[j + len] - t;
	lw	a4,-28(s0)		# tmp132, j
	lw	a5,-24(s0)		# tmp133, len
	add	a5,a4,a5	# tmp133, _15, tmp132
# ntt.c:118:         r[j + len] = r[j + len] - t;
	slli	a5,a5,1	#, _16, _15
	lw	a4,-52(s0)		# tmp134, r
	add	a5,a4,a5	# _16, _17, tmp134
	lh	a5,0(a5)		# _18, *_17
	slli	a4,a5,16	#, _19, _18
	srli	a4,a4,16	#, _19, _19
# ntt.c:118:         r[j + len] = r[j + len] - t;
	lhu	a5,-38(s0)	# t.5_20, t
	sub	a5,a4,a5	# tmp135, _19, t.5_20
	slli	a3,a5,16	#, _21, tmp135
	srli	a3,a3,16	#, _21, _21
# ntt.c:118:         r[j + len] = r[j + len] - t;
	lw	a4,-28(s0)		# tmp136, j
	lw	a5,-24(s0)		# tmp137, len
	add	a5,a4,a5	# tmp137, _22, tmp136
# ntt.c:118:         r[j + len] = r[j + len] - t;
	slli	a5,a5,1	#, _23, _22
	lw	a4,-52(s0)		# tmp138, r
	add	a5,a4,a5	# _23, _24, tmp138
# ntt.c:118:         r[j + len] = r[j + len] - t;
	slli	a4,a3,16	#, _25, _21
	srai	a4,a4,16	#, _25, _25
# ntt.c:118:         r[j + len] = r[j + len] - t;
	sh	a4,0(a5)	# _25, *_24
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	lw	a4,-28(s0)		# tmp139, j
	lw	a5,-24(s0)		# tmp140, len
	add	a5,a4,a5	# tmp140, _26, tmp139
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	slli	a5,a5,1	#, _27, _26
	lw	a4,-52(s0)		# tmp141, r
	add	a5,a4,a5	# _27, _28, tmp141
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	lh	a3,0(a5)		# _29, *_28
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	lw	a4,-28(s0)		# tmp142, j
	lw	a5,-24(s0)		# tmp143, len
	add	a5,a4,a5	# tmp143, _30, tmp142
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	slli	a5,a5,1	#, _31, _30
	lw	a4,-52(s0)		# tmp144, r
	add	s1,a4,a5	# _31, _32, tmp144
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	lh	a5,-36(s0)		# tmp145, zeta
	mv	a1,a3	#, _29
	mv	a0,a5	#, tmp145
	call	fqmul		#
	mv	a5,a0	# tmp146,
# ntt.c:119:         r[j + len] = fqmul(zeta, r[j + len]);
	sh	a5,0(s1)	# _33, *_32
# ntt.c:115:       for(j = start; j < start + len; j++) {
	lw	a5,-28(s0)		# tmp148, j
	addi	a5,a5,1	#, tmp147, tmp148
	sw	a5,-28(s0)	# tmp147, j
.L13:
# ntt.c:115:       for(j = start; j < start + len; j++) {
	lw	a4,-20(s0)		# tmp149, start
	lw	a5,-24(s0)		# tmp150, len
	add	a5,a4,a5	# tmp150, _34, tmp149
# ntt.c:115:       for(j = start; j < start + len; j++) {
	lw	a4,-28(s0)		# tmp151, j
	bltu	a4,a5,.L14	#, tmp151, _34,
# ntt.c:113:     for(start = 0; start < 256; start = j + len) {
	lw	a4,-28(s0)		# tmp153, j
	lw	a5,-24(s0)		# tmp154, len
	add	a5,a4,a5	# tmp154, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, start
.L12:
# ntt.c:113:     for(start = 0; start < 256; start = j + len) {
	lw	a4,-20(s0)		# tmp155, start
	li	a5,255		# tmp156,
	bleu	a4,a5,.L15	#, tmp155, tmp156,
# ntt.c:112:   for(len = 2; len <= 128; len <<= 1) {
	lw	a5,-24(s0)		# tmp158, len
	slli	a5,a5,1	#, tmp157, tmp158
	sw	a5,-24(s0)	# tmp157, len
.L11:
# ntt.c:112:   for(len = 2; len <= 128; len <<= 1) {
	lw	a4,-24(s0)		# tmp159, len
	li	a5,128		# tmp160,
	bleu	a4,a5,.L16	#, tmp159, tmp160,
# ntt.c:124:   for(j = 0; j < 256; j++)
	sw	zero,-28(s0)	#, j
# ntt.c:124:   for(j = 0; j < 256; j++)
	j	.L17		#
.L18:
# ntt.c:125:     r[j] = fqmul(r[j], f);
	lw	a5,-28(s0)		# tmp161, j
	slli	a5,a5,1	#, _35, tmp161
	lw	a4,-52(s0)		# tmp162, r
	add	a5,a4,a5	# _35, _36, tmp162
# ntt.c:125:     r[j] = fqmul(r[j], f);
	lh	a3,0(a5)		# _37, *_36
# ntt.c:125:     r[j] = fqmul(r[j], f);
	lw	a5,-28(s0)		# tmp163, j
	slli	a5,a5,1	#, _38, tmp163
	lw	a4,-52(s0)		# tmp164, r
	add	s1,a4,a5	# _38, _39, tmp164
# ntt.c:125:     r[j] = fqmul(r[j], f);
	lh	a5,-34(s0)		# tmp165, f
	mv	a1,a5	#, tmp165
	mv	a0,a3	#, _37
	call	fqmul		#
	mv	a5,a0	# tmp166,
# ntt.c:125:     r[j] = fqmul(r[j], f);
	sh	a5,0(s1)	# _40, *_39
# ntt.c:124:   for(j = 0; j < 256; j++)
	lw	a5,-28(s0)		# tmp168, j
	addi	a5,a5,1	#, tmp167, tmp168
	sw	a5,-28(s0)	# tmp167, j
.L17:
# ntt.c:124:   for(j = 0; j < 256; j++)
	lw	a4,-28(s0)		# tmp169, j
	li	a5,255		# tmp170,
	bleu	a4,a5,.L18	#, tmp169, tmp170,
# ntt.c:126: }
	nop	
	nop	
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	lw	s1,52(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_invntt, .-pqcrystals_kyber512_ref_invntt
	.align	2
	.globl	pqcrystals_kyber512_ref_basemul
	.type	pqcrystals_kyber512_ref_basemul, @function
pqcrystals_kyber512_ref_basemul:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	sw	s1,20(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# r, r
	sw	a1,-24(s0)	# a, a
	sw	a2,-28(s0)	# b, b
	mv	a5,a3	# tmp103, zeta
	sh	a5,-30(s0)	# tmp104, zeta
# ntt.c:141:   r[0]  = fqmul(a[1], b[1]);
	lw	a5,-24(s0)		# tmp105, a
	addi	a5,a5,2	#, _1, tmp105
# ntt.c:141:   r[0]  = fqmul(a[1], b[1]);
	lh	a4,0(a5)		# _2, *_1
# ntt.c:141:   r[0]  = fqmul(a[1], b[1]);
	lw	a5,-28(s0)		# tmp106, b
	addi	a5,a5,2	#, _3, tmp106
# ntt.c:141:   r[0]  = fqmul(a[1], b[1]);
	lh	a5,0(a5)		# _4, *_3
	mv	a1,a5	#, _4
	mv	a0,a4	#, _2
	call	fqmul		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# _5, tmp107
# ntt.c:141:   r[0]  = fqmul(a[1], b[1]);
	lw	a5,-20(s0)		# tmp108, r
	sh	a4,0(a5)	# _5, *r_34(D)
# ntt.c:142:   r[0]  = fqmul(r[0], zeta);
	lw	a5,-20(s0)		# tmp109, r
	lh	a5,0(a5)		# _6, *r_34(D)
	lh	a4,-30(s0)		# tmp110, zeta
	mv	a1,a4	#, tmp110
	mv	a0,a5	#, _6
	call	fqmul		#
	mv	a5,a0	# tmp111,
	mv	a4,a5	# _7, tmp111
# ntt.c:142:   r[0]  = fqmul(r[0], zeta);
	lw	a5,-20(s0)		# tmp112, r
	sh	a4,0(a5)	# _7, *r_34(D)
# ntt.c:143:   r[0] += fqmul(a[0], b[0]);
	lw	a5,-24(s0)		# tmp113, a
	lh	a4,0(a5)		# _8, *a_30(D)
	lw	a5,-28(s0)		# tmp114, b
	lh	a5,0(a5)		# _9, *b_32(D)
	mv	a1,a5	#, _9
	mv	a0,a4	#, _8
	call	fqmul		#
	mv	a5,a0	# tmp115,
	mv	a3,a5	# _40, tmp115
# ntt.c:143:   r[0] += fqmul(a[0], b[0]);
	lw	a5,-20(s0)		# tmp116, r
	lh	a5,0(a5)		# _10, *r_34(D)
	slli	a4,a5,16	#, _11, _10
	srli	a4,a4,16	#, _11, _11
# ntt.c:143:   r[0] += fqmul(a[0], b[0]);
	slli	a5,a3,16	#, _12, _40
	srli	a5,a5,16	#, _12, _12
# ntt.c:143:   r[0] += fqmul(a[0], b[0]);
	add	a5,a4,a5	# _12, tmp117, _11
	slli	a5,a5,16	#, _13, tmp117
	srli	a5,a5,16	#, _13, _13
	slli	a4,a5,16	#, _14, _13
	srai	a4,a4,16	#, _14, _14
	lw	a5,-20(s0)		# tmp118, r
	sh	a4,0(a5)	# _14, *r_34(D)
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	lw	a5,-24(s0)		# tmp119, a
	lh	a4,0(a5)		# _15, *a_30(D)
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	lw	a5,-28(s0)		# tmp120, b
	addi	a5,a5,2	#, _16, tmp120
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	lh	a3,0(a5)		# _17, *_16
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	lw	a5,-20(s0)		# tmp121, r
	addi	s1,a5,2	#, _18, tmp121
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	mv	a1,a3	#, _17
	mv	a0,a4	#, _15
	call	fqmul		#
	mv	a5,a0	# tmp122,
# ntt.c:144:   r[1]  = fqmul(a[0], b[1]);
	sh	a5,0(s1)	# _19, *_18
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	lw	a5,-24(s0)		# tmp123, a
	addi	a5,a5,2	#, _20, tmp123
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	lh	a4,0(a5)		# _21, *_20
	lw	a5,-28(s0)		# tmp124, b
	lh	a5,0(a5)		# _22, *b_32(D)
	mv	a1,a5	#, _22
	mv	a0,a4	#, _21
	call	fqmul		#
	mv	a5,a0	# tmp125,
	mv	a3,a5	# _45, tmp125
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	lw	a5,-20(s0)		# tmp126, r
	addi	a5,a5,2	#, _23, tmp126
	lh	a5,0(a5)		# _24, *_23
	slli	a4,a5,16	#, _25, _24
	srli	a4,a4,16	#, _25, _25
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	slli	a5,a3,16	#, _26, _45
	srli	a5,a5,16	#, _26, _26
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	add	a5,a4,a5	# _26, tmp127, _25
	slli	a4,a5,16	#, _27, tmp127
	srli	a4,a4,16	#, _27, _27
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	lw	a5,-20(s0)		# tmp128, r
	addi	a5,a5,2	#, _28, tmp128
# ntt.c:145:   r[1] += fqmul(a[1], b[0]);
	slli	a4,a4,16	#, _29, _27
	srai	a4,a4,16	#, _29, _29
	sh	a4,0(a5)	# _29, *_28
# ntt.c:146: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	lw	s1,20(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber512_ref_basemul, .-pqcrystals_kyber512_ref_basemul
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
