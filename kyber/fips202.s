	.file	"fips202.c"
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
	.type	load64, @function
load64:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# x, x
# fips202.c:24:   uint64_t r = 0;
	li	a0,0		# tmp102,
	li	a1,0		#,
	sw	a0,-32(s0)	# tmp102, r
	sw	a1,-28(s0)	#, r
# fips202.c:26:   for(i=0;i<8;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:26:   for(i=0;i<8;i++)
	j	.L2		#
.L5:
# fips202.c:27:     r |= (uint64_t)x[i] << 8*i;
	lw	a0,-36(s0)		# tmp79, x
	lw	a1,-20(s0)		# tmp80, i
	add	a1,a0,a1	# tmp80, _1, tmp79
	lbu	a1,0(a1)	# _2, *_1
# fips202.c:27:     r |= (uint64_t)x[i] << 8*i;
	mv	a2,a1	# _3, _2
	li	a3,0		# _3,
# fips202.c:27:     r |= (uint64_t)x[i] << 8*i;
	lw	a1,-20(s0)		# tmp81, i
	slli	a1,a1,3	#, _4, tmp81
# fips202.c:27:     r |= (uint64_t)x[i] << 8*i;
	addi	a0,a1,-32	#, tmp82, _4
	blt	a0,zero,.L3	#, tmp82,,
	sll	a5,a2,a0	# tmp82, _5, _3
	li	a4,0		# _5,
	j	.L4		#
.L3:
	srli	t1,a2,1	#, tmp89, _3
	li	a0,31		# tmp91,
	sub	a0,a0,a1	# tmp90, tmp91, _4
	srl	a0,t1,a0	# tmp90, tmp92, tmp89
	sll	a5,a3,a1	# _4, _5, _3
	or	a5,a0,a5	# _5, _5, tmp92
	sll	a4,a2,a1	# _4, _5, _3
.L4:
# fips202.c:27:     r |= (uint64_t)x[i] << 8*i;
	lw	a1,-32(s0)		# tmp94, r
	or	a6,a1,a4	# _5, tmp93, tmp94
	lw	a1,-28(s0)		# tmp95, r
	or	a7,a1,a5	# _5,, tmp95
	sw	a6,-32(s0)	# tmp93, r
	sw	a7,-28(s0)	#, r
# fips202.c:26:   for(i=0;i<8;i++)
	lw	a1,-20(s0)		# tmp97, i
	addi	a1,a1,1	#, tmp96, tmp97
	sw	a1,-20(s0)	# tmp96, i
.L2:
# fips202.c:26:   for(i=0;i<8;i++)
	lw	a0,-20(s0)		# tmp98, i
	li	a1,7		# tmp99,
	bleu	a0,a1,.L5	#, tmp98, tmp99,
# fips202.c:29:   return r;
	lw	a4,-32(s0)		# _10, r
	lw	a5,-28(s0)		# _10, r
# fips202.c:30: }
	mv	a0,a4	#, <retval>
	mv	a1,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	load64, .-load64
	.align	2
	.type	store64, @function
store64:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# x, x
	sw	a1,-48(s0)	# u, u
	sw	a2,-44(s0)	# u, u
# fips202.c:43:   for(i=0;i<8;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:43:   for(i=0;i<8;i++)
	j	.L8		#
.L11:
# fips202.c:44:     x[i] = u >> 8*i;
	lw	a3,-20(s0)		# tmp76, i
	slli	a3,a3,3	#, _1, tmp76
# fips202.c:44:     x[i] = u >> 8*i;
	addi	a2,a3,-32	#, tmp77, _1
	blt	a2,zero,.L9	#, tmp77,,
	lw	a3,-44(s0)		# tmp88, u
	srl	a4,a3,a2	# tmp77, _2, tmp88
	li	a5,0		# _2,
	j	.L10		#
.L9:
	lw	a2,-44(s0)		# tmp90, u
	slli	a1,a2,1	#, tmp89, tmp90
	li	a2,31		# tmp92,
	sub	a2,a2,a3	# tmp91, tmp92, _1
	sll	a2,a1,a2	# tmp91, tmp93, tmp89
	lw	a1,-48(s0)		# tmp94, u
	srl	a4,a1,a3	# _1, _2, tmp94
	or	a4,a2,a4	# _2, _2, tmp93
	lw	a2,-44(s0)		# tmp95, u
	srl	a5,a2,a3	# _1, _2, tmp95
.L10:
# fips202.c:44:     x[i] = u >> 8*i;
	lw	a2,-36(s0)		# tmp96, x
	lw	a3,-20(s0)		# tmp97, i
	add	a3,a2,a3	# tmp97, _3, tmp96
# fips202.c:44:     x[i] = u >> 8*i;
	andi	a2,a4,0xff	# _4, _2
	sb	a2,0(a3)	# _4, *_3
# fips202.c:43:   for(i=0;i<8;i++)
	lw	a3,-20(s0)		# tmp99, i
	addi	a3,a3,1	#, tmp98, tmp99
	sw	a3,-20(s0)	# tmp98, i
.L8:
# fips202.c:43:   for(i=0;i<8;i++)
	lw	a2,-20(s0)		# tmp100, i
	li	a3,7		# tmp101,
	bleu	a2,a3,.L11	#, tmp100, tmp101,
# fips202.c:45: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	store64, .-store64
	.section	.rodata
	.align	3
	.type	KeccakF_RoundConstants, @object
	.size	KeccakF_RoundConstants, 192
KeccakF_RoundConstants:
	.word	1
	.word	0
	.word	32898
	.word	0
	.word	32906
	.word	-2147483648
	.word	-2147450880
	.word	-2147483648
	.word	32907
	.word	0
	.word	-2147483647
	.word	0
	.word	-2147450751
	.word	-2147483648
	.word	32777
	.word	-2147483648
	.word	138
	.word	0
	.word	136
	.word	0
	.word	-2147450871
	.word	0
	.word	-2147483638
	.word	0
	.word	-2147450741
	.word	0
	.word	139
	.word	-2147483648
	.word	32905
	.word	-2147483648
	.word	32771
	.word	-2147483648
	.word	32770
	.word	-2147483648
	.word	128
	.word	-2147483648
	.word	32778
	.word	0
	.word	-2147483638
	.word	-2147483648
	.word	-2147450751
	.word	-2147483648
	.word	32896
	.word	-2147483648
	.word	-2147483647
	.word	0
	.word	-2147450872
	.word	-2147483648
	.text
	.align	2
	.type	KeccakF1600_StatePermute, @function
KeccakF1600_StatePermute:
	addi	sp,sp,-2032	#,,
	sw	s0,2028(sp)	#,
	sw	s2,2024(sp)	#,
	sw	s3,2020(sp)	#,
	sw	s4,2016(sp)	#,
	sw	s5,2012(sp)	#,
	sw	s6,2008(sp)	#,
	sw	s7,2004(sp)	#,
	sw	s8,2000(sp)	#,
	sw	s9,1996(sp)	#,
	sw	s10,1992(sp)	#,
	sw	s11,1988(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-928	#,,
	sw	a0,-548(s0)	# state, state
# fips202.c:100:         Aba = state[ 0];
	lw	a5,-548(s0)		# tmp239, state
	lw	a4,0(a5)		# tmp240, *state_195(D)
	lw	a5,4(a5)		#, *state_195(D)
	sw	a4,-64(s0)	# tmp240, Aba
	sw	a5,-60(s0)	#, Aba
# fips202.c:101:         Abe = state[ 1];
	lw	a5,-548(s0)		# tmp241, state
	lw	a4,8(a5)		# tmp242, MEM[(uint64_t *)state_195(D) + 8B]
	lw	a5,12(a5)		#, MEM[(uint64_t *)state_195(D) + 8B]
	sw	a4,-72(s0)	# tmp242, Abe
	sw	a5,-68(s0)	#, Abe
# fips202.c:102:         Abi = state[ 2];
	lw	a5,-548(s0)		# tmp243, state
	lw	a4,16(a5)		# tmp244, MEM[(uint64_t *)state_195(D) + 16B]
	lw	a5,20(a5)		#, MEM[(uint64_t *)state_195(D) + 16B]
	sw	a4,-80(s0)	# tmp244, Abi
	sw	a5,-76(s0)	#, Abi
# fips202.c:103:         Abo = state[ 3];
	lw	a5,-548(s0)		# tmp245, state
	lw	a4,24(a5)		# tmp246, MEM[(uint64_t *)state_195(D) + 24B]
	lw	a5,28(a5)		#, MEM[(uint64_t *)state_195(D) + 24B]
	sw	a4,-88(s0)	# tmp246, Abo
	sw	a5,-84(s0)	#, Abo
# fips202.c:104:         Abu = state[ 4];
	lw	a5,-548(s0)		# tmp247, state
	lw	a4,32(a5)		# tmp248, MEM[(uint64_t *)state_195(D) + 32B]
	lw	a5,36(a5)		#, MEM[(uint64_t *)state_195(D) + 32B]
	sw	a4,-96(s0)	# tmp248, Abu
	sw	a5,-92(s0)	#, Abu
# fips202.c:105:         Aga = state[ 5];
	lw	a5,-548(s0)		# tmp249, state
	lw	a4,40(a5)		# tmp250, MEM[(uint64_t *)state_195(D) + 40B]
	lw	a5,44(a5)		#, MEM[(uint64_t *)state_195(D) + 40B]
	sw	a4,-104(s0)	# tmp250, Aga
	sw	a5,-100(s0)	#, Aga
# fips202.c:106:         Age = state[ 6];
	lw	a5,-548(s0)		# tmp251, state
	lw	a4,48(a5)		# tmp252, MEM[(uint64_t *)state_195(D) + 48B]
	lw	a5,52(a5)		#, MEM[(uint64_t *)state_195(D) + 48B]
	sw	a4,-112(s0)	# tmp252, Age
	sw	a5,-108(s0)	#, Age
# fips202.c:107:         Agi = state[ 7];
	lw	a5,-548(s0)		# tmp253, state
	lw	a4,56(a5)		# tmp254, MEM[(uint64_t *)state_195(D) + 56B]
	lw	a5,60(a5)		#, MEM[(uint64_t *)state_195(D) + 56B]
	sw	a4,-120(s0)	# tmp254, Agi
	sw	a5,-116(s0)	#, Agi
# fips202.c:108:         Ago = state[ 8];
	lw	a5,-548(s0)		# tmp255, state
	lw	a4,64(a5)		# tmp256, MEM[(uint64_t *)state_195(D) + 64B]
	lw	a5,68(a5)		#, MEM[(uint64_t *)state_195(D) + 64B]
	sw	a4,-128(s0)	# tmp256, Ago
	sw	a5,-124(s0)	#, Ago
# fips202.c:109:         Agu = state[ 9];
	lw	a5,-548(s0)		# tmp257, state
	lw	a4,72(a5)		# tmp258, MEM[(uint64_t *)state_195(D) + 72B]
	lw	a5,76(a5)		#, MEM[(uint64_t *)state_195(D) + 72B]
	sw	a4,-136(s0)	# tmp258, Agu
	sw	a5,-132(s0)	#, Agu
# fips202.c:110:         Aka = state[10];
	lw	a5,-548(s0)		# tmp259, state
	lw	a4,80(a5)		# tmp260, MEM[(uint64_t *)state_195(D) + 80B]
	lw	a5,84(a5)		#, MEM[(uint64_t *)state_195(D) + 80B]
	sw	a4,-144(s0)	# tmp260, Aka
	sw	a5,-140(s0)	#, Aka
# fips202.c:111:         Ake = state[11];
	lw	a5,-548(s0)		# tmp261, state
	lw	a4,88(a5)		# tmp262, MEM[(uint64_t *)state_195(D) + 88B]
	lw	a5,92(a5)		#, MEM[(uint64_t *)state_195(D) + 88B]
	sw	a4,-152(s0)	# tmp262, Ake
	sw	a5,-148(s0)	#, Ake
# fips202.c:112:         Aki = state[12];
	lw	a5,-548(s0)		# tmp263, state
	lw	a4,96(a5)		# tmp264, MEM[(uint64_t *)state_195(D) + 96B]
	lw	a5,100(a5)		#, MEM[(uint64_t *)state_195(D) + 96B]
	sw	a4,-160(s0)	# tmp264, Aki
	sw	a5,-156(s0)	#, Aki
# fips202.c:113:         Ako = state[13];
	lw	a5,-548(s0)		# tmp265, state
	lw	a4,104(a5)		# tmp266, MEM[(uint64_t *)state_195(D) + 104B]
	lw	a5,108(a5)		#, MEM[(uint64_t *)state_195(D) + 104B]
	sw	a4,-168(s0)	# tmp266, Ako
	sw	a5,-164(s0)	#, Ako
# fips202.c:114:         Aku = state[14];
	lw	a5,-548(s0)		# tmp267, state
	lw	a4,112(a5)		# tmp268, MEM[(uint64_t *)state_195(D) + 112B]
	lw	a5,116(a5)		#, MEM[(uint64_t *)state_195(D) + 112B]
	sw	a4,-176(s0)	# tmp268, Aku
	sw	a5,-172(s0)	#, Aku
# fips202.c:115:         Ama = state[15];
	lw	a5,-548(s0)		# tmp269, state
	lw	a4,120(a5)		# tmp270, MEM[(uint64_t *)state_195(D) + 120B]
	lw	a5,124(a5)		#, MEM[(uint64_t *)state_195(D) + 120B]
	sw	a4,-184(s0)	# tmp270, Ama
	sw	a5,-180(s0)	#, Ama
# fips202.c:116:         Ame = state[16];
	lw	a5,-548(s0)		# tmp271, state
	lw	a4,128(a5)		# tmp272, MEM[(uint64_t *)state_195(D) + 128B]
	lw	a5,132(a5)		#, MEM[(uint64_t *)state_195(D) + 128B]
	sw	a4,-192(s0)	# tmp272, Ame
	sw	a5,-188(s0)	#, Ame
# fips202.c:117:         Ami = state[17];
	lw	a5,-548(s0)		# tmp273, state
	lw	a4,136(a5)		# tmp274, MEM[(uint64_t *)state_195(D) + 136B]
	lw	a5,140(a5)		#, MEM[(uint64_t *)state_195(D) + 136B]
	sw	a4,-200(s0)	# tmp274, Ami
	sw	a5,-196(s0)	#, Ami
# fips202.c:118:         Amo = state[18];
	lw	a5,-548(s0)		# tmp275, state
	lw	a4,144(a5)		# tmp276, MEM[(uint64_t *)state_195(D) + 144B]
	lw	a5,148(a5)		#, MEM[(uint64_t *)state_195(D) + 144B]
	sw	a4,-208(s0)	# tmp276, Amo
	sw	a5,-204(s0)	#, Amo
# fips202.c:119:         Amu = state[19];
	lw	a5,-548(s0)		# tmp277, state
	lw	a4,152(a5)		# tmp278, MEM[(uint64_t *)state_195(D) + 152B]
	lw	a5,156(a5)		#, MEM[(uint64_t *)state_195(D) + 152B]
	sw	a4,-216(s0)	# tmp278, Amu
	sw	a5,-212(s0)	#, Amu
# fips202.c:120:         Asa = state[20];
	lw	a5,-548(s0)		# tmp279, state
	lw	a4,160(a5)		# tmp280, MEM[(uint64_t *)state_195(D) + 160B]
	lw	a5,164(a5)		#, MEM[(uint64_t *)state_195(D) + 160B]
	sw	a4,-224(s0)	# tmp280, Asa
	sw	a5,-220(s0)	#, Asa
# fips202.c:121:         Ase = state[21];
	lw	a5,-548(s0)		# tmp281, state
	lw	a4,168(a5)		# tmp282, MEM[(uint64_t *)state_195(D) + 168B]
	lw	a5,172(a5)		#, MEM[(uint64_t *)state_195(D) + 168B]
	sw	a4,-232(s0)	# tmp282, Ase
	sw	a5,-228(s0)	#, Ase
# fips202.c:122:         Asi = state[22];
	lw	a5,-548(s0)		# tmp283, state
	lw	a4,176(a5)		# tmp284, MEM[(uint64_t *)state_195(D) + 176B]
	lw	a5,180(a5)		#, MEM[(uint64_t *)state_195(D) + 176B]
	sw	a4,-240(s0)	# tmp284, Asi
	sw	a5,-236(s0)	#, Asi
# fips202.c:123:         Aso = state[23];
	lw	a5,-548(s0)		# tmp285, state
	lw	a4,184(a5)		# tmp286, MEM[(uint64_t *)state_195(D) + 184B]
	lw	a5,188(a5)		#, MEM[(uint64_t *)state_195(D) + 184B]
	sw	a4,-248(s0)	# tmp286, Aso
	sw	a5,-244(s0)	#, Aso
# fips202.c:124:         Asu = state[24];
	lw	a5,-548(s0)		# tmp287, state
	lw	a4,192(a5)		# tmp288, MEM[(uint64_t *)state_195(D) + 192B]
	lw	a5,196(a5)		#, MEM[(uint64_t *)state_195(D) + 192B]
	sw	a4,-256(s0)	# tmp288, Asu
	sw	a5,-252(s0)	#, Asu
# fips202.c:126:         for(round = 0; round < NROUNDS; round += 2) {
	sw	zero,-52(s0)	#, round
# fips202.c:126:         for(round = 0; round < NROUNDS; round += 2) {
	j	.L13		#
.L14:
# fips202.c:128:             BCa = Aba^Aga^Aka^Ama^Asa;
	lw	a4,-64(s0)		# tmp289, Aba
	lw	a5,-104(s0)		# tmp290, Aga
	xor	a5,a4,a5	# tmp290, tmp1614, tmp289
	sw	a5,-560(s0)	# tmp1614, %sfp
	lw	a4,-60(s0)		# tmp291, Aba
	lw	a5,-100(s0)		# tmp292, Aga
	xor	a5,a4,a5	# tmp292, tmp1615, tmp291
	sw	a5,-556(s0)	# tmp1615, %sfp
# fips202.c:128:             BCa = Aba^Aga^Aka^Ama^Asa;
	lw	a5,-144(s0)		# tmp293, Aka
	lw	a4,-560(s0)		# tmp1617, %sfp
	xor	a5,a5,a4	# tmp1617, tmp1616, tmp293
	sw	a5,-568(s0)	# tmp1616, %sfp
	lw	a5,-140(s0)		# tmp294, Aka
	lw	a4,-556(s0)		# tmp1619, %sfp
	xor	a5,a5,a4	# tmp1619, tmp1618, tmp294
	sw	a5,-564(s0)	# tmp1618, %sfp
# fips202.c:128:             BCa = Aba^Aga^Aka^Ama^Asa;
	lw	a5,-184(s0)		# tmp295, Ama
	lw	a4,-568(s0)		# tmp1621, %sfp
	xor	a5,a5,a4	# tmp1621, tmp1620, tmp295
	sw	a5,-576(s0)	# tmp1620, %sfp
	lw	a5,-180(s0)		# tmp296, Ama
	lw	a4,-564(s0)		# tmp1623, %sfp
	xor	a5,a5,a4	# tmp1623, tmp1622, tmp296
	sw	a5,-572(s0)	# tmp1622, %sfp
# fips202.c:128:             BCa = Aba^Aga^Aka^Ama^Asa;
	lw	a5,-224(s0)		# tmp298, Asa
	lw	a4,-576(s0)		# tmp1625, %sfp
	xor	a5,a5,a4	# tmp1625, tmp1624, tmp298
	sw	a5,-1600(s0)	# tmp1624, %sfp
	lw	a5,-220(s0)		# tmp299, Asa
	lw	a4,-572(s0)		# tmp1627, %sfp
	xor	a5,a5,a4	# tmp1627, tmp1626, tmp299
	sw	a5,-1596(s0)	# tmp1626, %sfp
	lw	a4,-1600(s0)		# tmp297, %sfp
	lw	a5,-1596(s0)		#, %sfp
	sw	a4,-264(s0)	# tmp297, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:129:             BCe = Abe^Age^Ake^Ame^Ase;
	lw	a4,-72(s0)		# tmp300, Abe
	lw	a5,-112(s0)		# tmp301, Age
	xor	a5,a4,a5	# tmp301, tmp1629, tmp300
	sw	a5,-584(s0)	# tmp1629, %sfp
	lw	a4,-68(s0)		# tmp302, Abe
	lw	a5,-108(s0)		# tmp303, Age
	xor	a5,a4,a5	# tmp303, tmp1630, tmp302
	sw	a5,-580(s0)	# tmp1630, %sfp
# fips202.c:129:             BCe = Abe^Age^Ake^Ame^Ase;
	lw	a5,-152(s0)		# tmp304, Ake
	lw	a4,-584(s0)		# tmp1632, %sfp
	xor	a5,a5,a4	# tmp1632, tmp1631, tmp304
	sw	a5,-592(s0)	# tmp1631, %sfp
	lw	a5,-148(s0)		# tmp305, Ake
	lw	a4,-580(s0)		# tmp1634, %sfp
	xor	a5,a5,a4	# tmp1634, tmp1633, tmp305
	sw	a5,-588(s0)	# tmp1633, %sfp
# fips202.c:129:             BCe = Abe^Age^Ake^Ame^Ase;
	lw	a5,-192(s0)		# tmp306, Ame
	lw	a4,-592(s0)		# tmp1636, %sfp
	xor	a5,a5,a4	# tmp1636, tmp1635, tmp306
	sw	a5,-600(s0)	# tmp1635, %sfp
	lw	a5,-188(s0)		# tmp307, Ame
	lw	a4,-588(s0)		# tmp1638, %sfp
	xor	a5,a5,a4	# tmp1638, tmp1637, tmp307
	sw	a5,-596(s0)	# tmp1637, %sfp
# fips202.c:129:             BCe = Abe^Age^Ake^Ame^Ase;
	lw	a5,-232(s0)		# tmp309, Ase
	lw	a4,-600(s0)		# tmp1640, %sfp
	xor	a5,a5,a4	# tmp1640, tmp1639, tmp309
	sw	a5,-1608(s0)	# tmp1639, %sfp
	lw	a5,-228(s0)		# tmp310, Ase
	lw	a4,-596(s0)		# tmp1642, %sfp
	xor	a5,a5,a4	# tmp1642, tmp1641, tmp310
	sw	a5,-1604(s0)	# tmp1641, %sfp
	lw	a4,-1608(s0)		# tmp308, %sfp
	lw	a5,-1604(s0)		#, %sfp
	sw	a4,-272(s0)	# tmp308, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:130:             BCi = Abi^Agi^Aki^Ami^Asi;
	lw	a4,-80(s0)		# tmp311, Abi
	lw	a5,-120(s0)		# tmp312, Agi
	xor	a5,a4,a5	# tmp312, tmp1644, tmp311
	sw	a5,-608(s0)	# tmp1644, %sfp
	lw	a4,-76(s0)		# tmp313, Abi
	lw	a5,-116(s0)		# tmp314, Agi
	xor	a5,a4,a5	# tmp314, tmp1645, tmp313
	sw	a5,-604(s0)	# tmp1645, %sfp
# fips202.c:130:             BCi = Abi^Agi^Aki^Ami^Asi;
	lw	a5,-160(s0)		# tmp315, Aki
	lw	a4,-608(s0)		# tmp1647, %sfp
	xor	a5,a5,a4	# tmp1647, tmp1646, tmp315
	sw	a5,-616(s0)	# tmp1646, %sfp
	lw	a5,-156(s0)		# tmp316, Aki
	lw	a4,-604(s0)		# tmp1649, %sfp
	xor	a5,a5,a4	# tmp1649, tmp1648, tmp316
	sw	a5,-612(s0)	# tmp1648, %sfp
# fips202.c:130:             BCi = Abi^Agi^Aki^Ami^Asi;
	lw	a5,-200(s0)		# tmp317, Ami
	lw	a4,-616(s0)		# tmp1651, %sfp
	xor	a5,a5,a4	# tmp1651, tmp1650, tmp317
	sw	a5,-624(s0)	# tmp1650, %sfp
	lw	a5,-196(s0)		# tmp318, Ami
	lw	a4,-612(s0)		# tmp1653, %sfp
	xor	a5,a5,a4	# tmp1653, tmp1652, tmp318
	sw	a5,-620(s0)	# tmp1652, %sfp
# fips202.c:130:             BCi = Abi^Agi^Aki^Ami^Asi;
	lw	a5,-240(s0)		# tmp320, Asi
	lw	a4,-624(s0)		# tmp1655, %sfp
	xor	a5,a5,a4	# tmp1655, tmp1654, tmp320
	sw	a5,-1616(s0)	# tmp1654, %sfp
	lw	a5,-236(s0)		# tmp321, Asi
	lw	a4,-620(s0)		# tmp1657, %sfp
	xor	a5,a5,a4	# tmp1657, tmp1656, tmp321
	sw	a5,-1612(s0)	# tmp1656, %sfp
	lw	a4,-1616(s0)		# tmp319, %sfp
	lw	a5,-1612(s0)		#, %sfp
	sw	a4,-280(s0)	# tmp319, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:131:             BCo = Abo^Ago^Ako^Amo^Aso;
	lw	a4,-88(s0)		# tmp322, Abo
	lw	a5,-128(s0)		# tmp323, Ago
	xor	a5,a4,a5	# tmp323, tmp1659, tmp322
	sw	a5,-632(s0)	# tmp1659, %sfp
	lw	a4,-84(s0)		# tmp324, Abo
	lw	a5,-124(s0)		# tmp325, Ago
	xor	a5,a4,a5	# tmp325, tmp1660, tmp324
	sw	a5,-628(s0)	# tmp1660, %sfp
# fips202.c:131:             BCo = Abo^Ago^Ako^Amo^Aso;
	lw	a5,-168(s0)		# tmp326, Ako
	lw	a4,-632(s0)		# tmp1662, %sfp
	xor	a5,a5,a4	# tmp1662, tmp1661, tmp326
	sw	a5,-640(s0)	# tmp1661, %sfp
	lw	a5,-164(s0)		# tmp327, Ako
	lw	a4,-628(s0)		# tmp1664, %sfp
	xor	a5,a5,a4	# tmp1664, tmp1663, tmp327
	sw	a5,-636(s0)	# tmp1663, %sfp
# fips202.c:131:             BCo = Abo^Ago^Ako^Amo^Aso;
	lw	a5,-208(s0)		# tmp328, Amo
	lw	a4,-640(s0)		# tmp1666, %sfp
	xor	a5,a5,a4	# tmp1666, tmp1665, tmp328
	sw	a5,-648(s0)	# tmp1665, %sfp
	lw	a5,-204(s0)		# tmp329, Amo
	lw	a4,-636(s0)		# tmp1668, %sfp
	xor	a5,a5,a4	# tmp1668, tmp1667, tmp329
	sw	a5,-644(s0)	# tmp1667, %sfp
# fips202.c:131:             BCo = Abo^Ago^Ako^Amo^Aso;
	lw	a5,-248(s0)		# tmp331, Aso
	lw	a4,-648(s0)		# tmp1670, %sfp
	xor	a5,a5,a4	# tmp1670, tmp1669, tmp331
	sw	a5,-1624(s0)	# tmp1669, %sfp
	lw	a5,-244(s0)		# tmp332, Aso
	lw	a4,-644(s0)		# tmp1672, %sfp
	xor	a5,a5,a4	# tmp1672, tmp1671, tmp332
	sw	a5,-1620(s0)	# tmp1671, %sfp
	lw	a4,-1624(s0)		# tmp330, %sfp
	lw	a5,-1620(s0)		#, %sfp
	sw	a4,-288(s0)	# tmp330, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:132:             BCu = Abu^Agu^Aku^Amu^Asu;
	lw	a4,-96(s0)		# tmp333, Abu
	lw	a5,-136(s0)		# tmp334, Agu
	xor	a5,a4,a5	# tmp334, tmp1674, tmp333
	sw	a5,-656(s0)	# tmp1674, %sfp
	lw	a4,-92(s0)		# tmp335, Abu
	lw	a5,-132(s0)		# tmp336, Agu
	xor	a5,a4,a5	# tmp336, tmp1675, tmp335
	sw	a5,-652(s0)	# tmp1675, %sfp
# fips202.c:132:             BCu = Abu^Agu^Aku^Amu^Asu;
	lw	a5,-176(s0)		# tmp337, Aku
	lw	a4,-656(s0)		# tmp1677, %sfp
	xor	a5,a5,a4	# tmp1677, tmp1676, tmp337
	sw	a5,-664(s0)	# tmp1676, %sfp
	lw	a5,-172(s0)		# tmp338, Aku
	lw	a4,-652(s0)		# tmp1679, %sfp
	xor	a5,a5,a4	# tmp1679, tmp1678, tmp338
	sw	a5,-660(s0)	# tmp1678, %sfp
# fips202.c:132:             BCu = Abu^Agu^Aku^Amu^Asu;
	lw	a5,-216(s0)		# tmp339, Amu
	lw	a4,-664(s0)		# tmp1681, %sfp
	xor	a5,a5,a4	# tmp1681, tmp1680, tmp339
	sw	a5,-672(s0)	# tmp1680, %sfp
	lw	a5,-212(s0)		# tmp340, Amu
	lw	a4,-660(s0)		# tmp1683, %sfp
	xor	a5,a5,a4	# tmp1683, tmp1682, tmp340
	sw	a5,-668(s0)	# tmp1682, %sfp
# fips202.c:132:             BCu = Abu^Agu^Aku^Amu^Asu;
	lw	a5,-256(s0)		# tmp342, Asu
	lw	a4,-672(s0)		# tmp1685, %sfp
	xor	a5,a5,a4	# tmp1685, tmp1684, tmp342
	sw	a5,-1632(s0)	# tmp1684, %sfp
	lw	a5,-252(s0)		# tmp343, Asu
	lw	a4,-668(s0)		# tmp1687, %sfp
	xor	a5,a5,a4	# tmp1687, tmp1686, tmp343
	sw	a5,-1628(s0)	# tmp1686, %sfp
	lw	a4,-1632(s0)		# tmp341, %sfp
	lw	a5,-1628(s0)		#, %sfp
	sw	a4,-296(s0)	# tmp341, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:135:             Da = BCu^ROL(BCe, 1);
	lw	a5,-272(s0)		# tmp345, BCe
	srli	a4,a5,31	#, tmp344, tmp345
	lw	a5,-268(s0)		# tmp347, BCe
	slli	a5,a5,1	#, tmp346, tmp347
	or	a5,a4,a5	# tmp346, tmp1689, tmp344
	sw	a5,-676(s0)	# tmp1689, %sfp
	lw	a5,-268(s0)		# tmp349, BCe
	srli	a4,a5,31	#, tmp348, tmp349
	lw	a5,-272(s0)		# tmp351, BCe
	slli	a5,a5,1	#, tmp350, tmp351
	or	a5,a4,a5	# tmp350, tmp1690, tmp348
	sw	a5,-680(s0)	# tmp1690, %sfp
# fips202.c:135:             Da = BCu^ROL(BCe, 1);
	lw	a5,-296(s0)		# tmp353, BCu
	lw	a4,-680(s0)		# tmp1692, %sfp
	xor	a5,a5,a4	# tmp1692, tmp1691, tmp353
	sw	a5,-1640(s0)	# tmp1691, %sfp
	lw	a5,-292(s0)		# tmp354, BCu
	lw	a4,-676(s0)		# tmp1694, %sfp
	xor	a5,a5,a4	# tmp1694, tmp1693, tmp354
	sw	a5,-1636(s0)	# tmp1693, %sfp
	lw	a4,-1640(s0)		# tmp352, %sfp
	lw	a5,-1636(s0)		#, %sfp
	sw	a4,-304(s0)	# tmp352, Da
	sw	a5,-300(s0)	#, Da
# fips202.c:136:             De = BCa^ROL(BCi, 1);
	lw	a5,-280(s0)		# tmp356, BCi
	srli	a4,a5,31	#, tmp355, tmp356
	lw	a5,-276(s0)		# tmp358, BCi
	slli	a5,a5,1	#, tmp357, tmp358
	or	a5,a4,a5	# tmp357, tmp1696, tmp355
	sw	a5,-684(s0)	# tmp1696, %sfp
	lw	a5,-276(s0)		# tmp360, BCi
	srli	a4,a5,31	#, tmp359, tmp360
	lw	a5,-280(s0)		# tmp362, BCi
	slli	a5,a5,1	#, tmp361, tmp362
	or	a5,a4,a5	# tmp361, tmp1697, tmp359
	sw	a5,-688(s0)	# tmp1697, %sfp
# fips202.c:136:             De = BCa^ROL(BCi, 1);
	lw	a5,-264(s0)		# tmp364, BCa
	lw	a4,-688(s0)		# tmp1699, %sfp
	xor	a5,a5,a4	# tmp1699, tmp1698, tmp364
	sw	a5,-1648(s0)	# tmp1698, %sfp
	lw	a5,-260(s0)		# tmp365, BCa
	lw	a4,-684(s0)		# tmp1701, %sfp
	xor	a5,a5,a4	# tmp1701, tmp1700, tmp365
	sw	a5,-1644(s0)	# tmp1700, %sfp
	lw	a4,-1648(s0)		# tmp363, %sfp
	lw	a5,-1644(s0)		#, %sfp
	sw	a4,-312(s0)	# tmp363, De
	sw	a5,-308(s0)	#, De
# fips202.c:137:             Di = BCe^ROL(BCo, 1);
	lw	a5,-288(s0)		# tmp367, BCo
	srli	a4,a5,31	#, tmp366, tmp367
	lw	a5,-284(s0)		# tmp369, BCo
	slli	a5,a5,1	#, tmp368, tmp369
	or	a5,a4,a5	# tmp368, tmp1703, tmp366
	sw	a5,-692(s0)	# tmp1703, %sfp
	lw	a5,-284(s0)		# tmp371, BCo
	srli	a4,a5,31	#, tmp370, tmp371
	lw	a5,-288(s0)		# tmp373, BCo
	slli	a5,a5,1	#, tmp372, tmp373
	or	a5,a4,a5	# tmp372, tmp1704, tmp370
	sw	a5,-696(s0)	# tmp1704, %sfp
# fips202.c:137:             Di = BCe^ROL(BCo, 1);
	lw	a5,-272(s0)		# tmp375, BCe
	lw	a4,-696(s0)		# tmp1706, %sfp
	xor	a5,a5,a4	# tmp1706, tmp1705, tmp375
	sw	a5,-1656(s0)	# tmp1705, %sfp
	lw	a5,-268(s0)		# tmp376, BCe
	lw	a4,-692(s0)		# tmp1708, %sfp
	xor	a5,a5,a4	# tmp1708, tmp1707, tmp376
	sw	a5,-1652(s0)	# tmp1707, %sfp
	lw	a4,-1656(s0)		# tmp374, %sfp
	lw	a5,-1652(s0)		#, %sfp
	sw	a4,-320(s0)	# tmp374, Di
	sw	a5,-316(s0)	#, Di
# fips202.c:138:             Do = BCi^ROL(BCu, 1);
	lw	a5,-296(s0)		# tmp378, BCu
	srli	a4,a5,31	#, tmp377, tmp378
	lw	a5,-292(s0)		# tmp380, BCu
	slli	a5,a5,1	#, tmp379, tmp380
	or	a5,a4,a5	# tmp379, tmp1710, tmp377
	sw	a5,-700(s0)	# tmp1710, %sfp
	lw	a5,-292(s0)		# tmp382, BCu
	srli	a4,a5,31	#, tmp381, tmp382
	lw	a5,-296(s0)		# tmp384, BCu
	slli	a5,a5,1	#, tmp383, tmp384
	or	a5,a4,a5	# tmp383, tmp1711, tmp381
	sw	a5,-704(s0)	# tmp1711, %sfp
# fips202.c:138:             Do = BCi^ROL(BCu, 1);
	lw	a5,-280(s0)		# tmp386, BCi
	lw	a4,-704(s0)		# tmp1713, %sfp
	xor	a5,a5,a4	# tmp1713, tmp1712, tmp386
	sw	a5,-1664(s0)	# tmp1712, %sfp
	lw	a5,-276(s0)		# tmp387, BCi
	lw	a4,-700(s0)		# tmp1715, %sfp
	xor	a5,a5,a4	# tmp1715, tmp1714, tmp387
	sw	a5,-1660(s0)	# tmp1714, %sfp
	lw	a4,-1664(s0)		# tmp385, %sfp
	lw	a5,-1660(s0)		#, %sfp
	sw	a4,-328(s0)	# tmp385, Do
	sw	a5,-324(s0)	#, Do
# fips202.c:139:             Du = BCo^ROL(BCa, 1);
	lw	a5,-264(s0)		# tmp389, BCa
	srli	a4,a5,31	#, tmp388, tmp389
	lw	a5,-260(s0)		# tmp391, BCa
	slli	a5,a5,1	#, tmp390, tmp391
	or	a5,a4,a5	# tmp390, tmp1717, tmp388
	sw	a5,-708(s0)	# tmp1717, %sfp
	lw	a5,-260(s0)		# tmp393, BCa
	srli	a4,a5,31	#, tmp392, tmp393
	lw	a5,-264(s0)		# tmp395, BCa
	slli	a5,a5,1	#, tmp394, tmp395
	or	a5,a4,a5	# tmp394, tmp1718, tmp392
	sw	a5,-712(s0)	# tmp1718, %sfp
# fips202.c:139:             Du = BCo^ROL(BCa, 1);
	lw	a5,-288(s0)		# tmp397, BCo
	lw	a4,-712(s0)		# tmp1720, %sfp
	xor	a5,a5,a4	# tmp1720, tmp1719, tmp397
	sw	a5,-1672(s0)	# tmp1719, %sfp
	lw	a5,-284(s0)		# tmp398, BCo
	lw	a4,-708(s0)		# tmp1722, %sfp
	xor	a5,a5,a4	# tmp1722, tmp1721, tmp398
	sw	a5,-1668(s0)	# tmp1721, %sfp
	lw	a4,-1672(s0)		# tmp396, %sfp
	lw	a5,-1668(s0)		#, %sfp
	sw	a4,-336(s0)	# tmp396, Du
	sw	a5,-332(s0)	#, Du
# fips202.c:141:             Aba ^= Da;
	lw	a4,-64(s0)		# tmp400, Aba
	lw	a5,-304(s0)		# tmp401, Da
	xor	a5,a4,a5	# tmp401, tmp1724, tmp400
	sw	a5,-1680(s0)	# tmp1724, %sfp
	lw	a4,-60(s0)		# tmp402, Aba
	lw	a5,-300(s0)		# tmp403, Da
	xor	a5,a4,a5	# tmp403, tmp1725, tmp402
	sw	a5,-1676(s0)	# tmp1725, %sfp
	lw	a4,-1680(s0)		# tmp399, %sfp
	lw	a5,-1676(s0)		#, %sfp
	sw	a4,-64(s0)	# tmp399, Aba
	sw	a5,-60(s0)	#, Aba
# fips202.c:142:             BCa = Aba;
	lw	a4,-64(s0)		# tmp404, Aba
	lw	a5,-60(s0)		#, Aba
	sw	a4,-264(s0)	# tmp404, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:143:             Age ^= De;
	lw	a4,-112(s0)		# tmp406, Age
	lw	a5,-312(s0)		# tmp407, De
	xor	a5,a4,a5	# tmp407, tmp1727, tmp406
	sw	a5,-1688(s0)	# tmp1727, %sfp
	lw	a4,-108(s0)		# tmp408, Age
	lw	a5,-308(s0)		# tmp409, De
	xor	a5,a4,a5	# tmp409, tmp1728, tmp408
	sw	a5,-1684(s0)	# tmp1728, %sfp
	lw	a4,-1688(s0)		# tmp405, %sfp
	lw	a5,-1684(s0)		#, %sfp
	sw	a4,-112(s0)	# tmp405, Age
	sw	a5,-108(s0)	#, Age
# fips202.c:144:             BCe = ROL(Age, 44);
	lw	a5,-108(s0)		# tmp412, Age
	slli	a4,a5,12	#, tmp411, tmp412
	lw	a5,-112(s0)		# tmp414, Age
	srli	a5,a5,20	#, tmp413, tmp414
	or	a5,a4,a5	# tmp413, tmp1730, tmp411
	sw	a5,-1696(s0)	# tmp1730, %sfp
	lw	a5,-112(s0)		# tmp416, Age
	slli	a4,a5,12	#, tmp415, tmp416
	lw	a5,-108(s0)		# tmp418, Age
	srli	a5,a5,20	#, tmp417, tmp418
	or	a5,a4,a5	# tmp417, tmp1731, tmp415
	sw	a5,-1692(s0)	# tmp1731, %sfp
	lw	a4,-1696(s0)		# tmp410, %sfp
	lw	a5,-1692(s0)		#, %sfp
	sw	a4,-272(s0)	# tmp410, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:145:             Aki ^= Di;
	lw	a4,-160(s0)		# tmp420, Aki
	lw	a5,-320(s0)		# tmp421, Di
	xor	a5,a4,a5	# tmp421, tmp1733, tmp420
	sw	a5,-1704(s0)	# tmp1733, %sfp
	lw	a4,-156(s0)		# tmp422, Aki
	lw	a5,-316(s0)		# tmp423, Di
	xor	a5,a4,a5	# tmp423, tmp1734, tmp422
	sw	a5,-1700(s0)	# tmp1734, %sfp
	lw	a4,-1704(s0)		# tmp419, %sfp
	lw	a5,-1700(s0)		#, %sfp
	sw	a4,-160(s0)	# tmp419, Aki
	sw	a5,-156(s0)	#, Aki
# fips202.c:146:             BCi = ROL(Aki, 43);
	lw	a5,-156(s0)		# tmp426, Aki
	slli	a4,a5,11	#, tmp425, tmp426
	lw	a5,-160(s0)		# tmp428, Aki
	srli	a5,a5,21	#, tmp427, tmp428
	or	a5,a4,a5	# tmp427, tmp1736, tmp425
	sw	a5,-1712(s0)	# tmp1736, %sfp
	lw	a5,-160(s0)		# tmp430, Aki
	slli	a4,a5,11	#, tmp429, tmp430
	lw	a5,-156(s0)		# tmp432, Aki
	srli	a5,a5,21	#, tmp431, tmp432
	or	a5,a4,a5	# tmp431, tmp1737, tmp429
	sw	a5,-1708(s0)	# tmp1737, %sfp
	lw	a4,-1712(s0)		# tmp424, %sfp
	lw	a5,-1708(s0)		#, %sfp
	sw	a4,-280(s0)	# tmp424, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:147:             Amo ^= Do;
	lw	a4,-208(s0)		# tmp434, Amo
	lw	a5,-328(s0)		# tmp435, Do
	xor	a5,a4,a5	# tmp435, tmp1739, tmp434
	sw	a5,-1720(s0)	# tmp1739, %sfp
	lw	a4,-204(s0)		# tmp436, Amo
	lw	a5,-324(s0)		# tmp437, Do
	xor	a5,a4,a5	# tmp437, tmp1740, tmp436
	sw	a5,-1716(s0)	# tmp1740, %sfp
	lw	a4,-1720(s0)		# tmp433, %sfp
	lw	a5,-1716(s0)		#, %sfp
	sw	a4,-208(s0)	# tmp433, Amo
	sw	a5,-204(s0)	#, Amo
# fips202.c:148:             BCo = ROL(Amo, 21);
	lw	a5,-208(s0)		# tmp440, Amo
	srli	a4,a5,11	#, tmp439, tmp440
	lw	a5,-204(s0)		# tmp442, Amo
	slli	a5,a5,21	#, tmp441, tmp442
	or	a5,a4,a5	# tmp441, tmp1742, tmp439
	sw	a5,-1724(s0)	# tmp1742, %sfp
	lw	a5,-204(s0)		# tmp444, Amo
	srli	a4,a5,11	#, tmp443, tmp444
	lw	a5,-208(s0)		# tmp446, Amo
	slli	a5,a5,21	#, tmp445, tmp446
	or	a5,a4,a5	# tmp445, tmp1743, tmp443
	sw	a5,-1728(s0)	# tmp1743, %sfp
	lw	a4,-1728(s0)		# tmp438, %sfp
	lw	a5,-1724(s0)		#, %sfp
	sw	a4,-288(s0)	# tmp438, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:149:             Asu ^= Du;
	lw	a4,-256(s0)		# tmp448, Asu
	lw	a5,-336(s0)		# tmp449, Du
	xor	a5,a4,a5	# tmp449, tmp1745, tmp448
	sw	a5,-1736(s0)	# tmp1745, %sfp
	lw	a4,-252(s0)		# tmp450, Asu
	lw	a5,-332(s0)		# tmp451, Du
	xor	a5,a4,a5	# tmp451, tmp1746, tmp450
	sw	a5,-1732(s0)	# tmp1746, %sfp
	lw	a4,-1736(s0)		# tmp447, %sfp
	lw	a5,-1732(s0)		#, %sfp
	sw	a4,-256(s0)	# tmp447, Asu
	sw	a5,-252(s0)	#, Asu
# fips202.c:150:             BCu = ROL(Asu, 14);
	lw	a5,-256(s0)		# tmp454, Asu
	srli	a4,a5,18	#, tmp453, tmp454
	lw	a5,-252(s0)		# tmp456, Asu
	slli	a5,a5,14	#, tmp455, tmp456
	or	a5,a4,a5	# tmp455, tmp1748, tmp453
	sw	a5,-1740(s0)	# tmp1748, %sfp
	lw	a5,-252(s0)		# tmp458, Asu
	srli	a4,a5,18	#, tmp457, tmp458
	lw	a5,-256(s0)		# tmp460, Asu
	slli	a5,a5,14	#, tmp459, tmp460
	or	a5,a4,a5	# tmp459, tmp1749, tmp457
	sw	a5,-1744(s0)	# tmp1749, %sfp
	lw	a4,-1744(s0)		# tmp452, %sfp
	lw	a5,-1740(s0)		#, %sfp
	sw	a4,-296(s0)	# tmp452, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:151:             Eba =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp461, BCe
	not	a5,a5	# tmp1751, tmp461
	sw	a5,-720(s0)	# tmp1751, %sfp
	lw	a5,-268(s0)		# tmp462, BCe
	not	a5,a5	# tmp1752, tmp462
	sw	a5,-716(s0)	# tmp1752, %sfp
# fips202.c:151:             Eba =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp463, BCi
	lw	a4,-720(s0)		# tmp1754, %sfp
	and	a5,a5,a4	# tmp1754, tmp1753, tmp463
	sw	a5,-728(s0)	# tmp1753, %sfp
	lw	a5,-276(s0)		# tmp464, BCi
	lw	a4,-716(s0)		# tmp1756, %sfp
	and	a5,a5,a4	# tmp1756, tmp1755, tmp464
	sw	a5,-724(s0)	# tmp1755, %sfp
# fips202.c:151:             Eba =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp466, BCa
	lw	a4,-728(s0)		# tmp1758, %sfp
	xor	a5,a5,a4	# tmp1758, tmp1757, tmp466
	sw	a5,-1752(s0)	# tmp1757, %sfp
	lw	a5,-260(s0)		# tmp467, BCa
	lw	a4,-724(s0)		# tmp1760, %sfp
	xor	a5,a5,a4	# tmp1760, tmp1759, tmp467
	sw	a5,-1748(s0)	# tmp1759, %sfp
	lw	a4,-1752(s0)		# tmp465, %sfp
	lw	a5,-1748(s0)		#, %sfp
	sw	a4,-344(s0)	# tmp465, Eba
	sw	a5,-340(s0)	#, Eba
# fips202.c:152:             Eba ^= (uint64_t)KeccakF_RoundConstants[round];
	lui	a5,%hi(KeccakF_RoundConstants)	# tmp468,
	addi	a4,a5,%lo(KeccakF_RoundConstants)	# tmp469, tmp468,
	lw	a5,-52(s0)		# tmp470, round
	slli	a5,a5,3	#, tmp471, tmp470
	add	a5,a4,a5	# tmp471, tmp472, tmp469
	lw	a4,0(a5)		# _23, KeccakF_RoundConstants[round_168]
	lw	a5,4(a5)		# _23, KeccakF_RoundConstants[round_168]
# fips202.c:152:             Eba ^= (uint64_t)KeccakF_RoundConstants[round];
	lw	a3,-344(s0)		# tmp474, Eba
	xor	a3,a3,a4	# _23, tmp1762, tmp474
	sw	a3,-1760(s0)	# tmp1762, %sfp
	lw	a3,-340(s0)		# tmp475, Eba
	xor	a5,a3,a5	# _23, tmp1763, tmp475
	sw	a5,-1756(s0)	# tmp1763, %sfp
	lw	a4,-1760(s0)		# tmp473, %sfp
	lw	a5,-1756(s0)		#, %sfp
	sw	a4,-344(s0)	# tmp473, Eba
	sw	a5,-340(s0)	#, Eba
# fips202.c:153:             Ebe =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp476, BCi
	not	a5,a5	# tmp1765, tmp476
	sw	a5,-736(s0)	# tmp1765, %sfp
	lw	a5,-276(s0)		# tmp477, BCi
	not	a5,a5	# tmp1766, tmp477
	sw	a5,-732(s0)	# tmp1766, %sfp
# fips202.c:153:             Ebe =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp478, BCo
	lw	a4,-736(s0)		# tmp1768, %sfp
	and	a5,a5,a4	# tmp1768, tmp1767, tmp478
	sw	a5,-744(s0)	# tmp1767, %sfp
	lw	a5,-284(s0)		# tmp479, BCo
	lw	a4,-732(s0)		# tmp1770, %sfp
	and	a5,a5,a4	# tmp1770, tmp1769, tmp479
	sw	a5,-740(s0)	# tmp1769, %sfp
# fips202.c:153:             Ebe =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp481, BCe
	lw	a4,-744(s0)		# tmp1772, %sfp
	xor	a5,a5,a4	# tmp1772, tmp1771, tmp481
	sw	a5,-1768(s0)	# tmp1771, %sfp
	lw	a5,-268(s0)		# tmp482, BCe
	lw	a4,-740(s0)		# tmp1774, %sfp
	xor	a5,a5,a4	# tmp1774, tmp1773, tmp482
	sw	a5,-1764(s0)	# tmp1773, %sfp
	lw	a4,-1768(s0)		# tmp480, %sfp
	lw	a5,-1764(s0)		#, %sfp
	sw	a4,-352(s0)	# tmp480, Ebe
	sw	a5,-348(s0)	#, Ebe
# fips202.c:154:             Ebi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp483, BCo
	not	a5,a5	# tmp1776, tmp483
	sw	a5,-752(s0)	# tmp1776, %sfp
	lw	a5,-284(s0)		# tmp484, BCo
	not	a5,a5	# tmp1777, tmp484
	sw	a5,-748(s0)	# tmp1777, %sfp
# fips202.c:154:             Ebi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp485, BCu
	lw	a4,-752(s0)		# tmp1779, %sfp
	and	a5,a5,a4	# tmp1779, tmp1778, tmp485
	sw	a5,-760(s0)	# tmp1778, %sfp
	lw	a5,-292(s0)		# tmp486, BCu
	lw	a4,-748(s0)		# tmp1781, %sfp
	and	a5,a5,a4	# tmp1781, tmp1780, tmp486
	sw	a5,-756(s0)	# tmp1780, %sfp
# fips202.c:154:             Ebi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp488, BCi
	lw	a4,-760(s0)		# tmp1783, %sfp
	xor	a5,a5,a4	# tmp1783, tmp1782, tmp488
	sw	a5,-1776(s0)	# tmp1782, %sfp
	lw	a5,-276(s0)		# tmp489, BCi
	lw	a4,-756(s0)		# tmp1785, %sfp
	xor	a5,a5,a4	# tmp1785, tmp1784, tmp489
	sw	a5,-1772(s0)	# tmp1784, %sfp
	lw	a4,-1776(s0)		# tmp487, %sfp
	lw	a5,-1772(s0)		#, %sfp
	sw	a4,-360(s0)	# tmp487, Ebi
	sw	a5,-356(s0)	#, Ebi
# fips202.c:155:             Ebo =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp490, BCu
	not	a5,a5	# tmp1787, tmp490
	sw	a5,-768(s0)	# tmp1787, %sfp
	lw	a5,-292(s0)		# tmp491, BCu
	not	a5,a5	# tmp1788, tmp491
	sw	a5,-764(s0)	# tmp1788, %sfp
# fips202.c:155:             Ebo =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp492, BCa
	lw	a4,-768(s0)		# tmp1790, %sfp
	and	a5,a5,a4	# tmp1790, tmp1789, tmp492
	sw	a5,-776(s0)	# tmp1789, %sfp
	lw	a5,-260(s0)		# tmp493, BCa
	lw	a4,-764(s0)		# tmp1792, %sfp
	and	a5,a5,a4	# tmp1792, tmp1791, tmp493
	sw	a5,-772(s0)	# tmp1791, %sfp
# fips202.c:155:             Ebo =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp495, BCo
	lw	a4,-776(s0)		# tmp1794, %sfp
	xor	a5,a5,a4	# tmp1794, tmp1793, tmp495
	sw	a5,-1784(s0)	# tmp1793, %sfp
	lw	a5,-284(s0)		# tmp496, BCo
	lw	a4,-772(s0)		# tmp1796, %sfp
	xor	a5,a5,a4	# tmp1796, tmp1795, tmp496
	sw	a5,-1780(s0)	# tmp1795, %sfp
	lw	a4,-1784(s0)		# tmp494, %sfp
	lw	a5,-1780(s0)		#, %sfp
	sw	a4,-368(s0)	# tmp494, Ebo
	sw	a5,-364(s0)	#, Ebo
# fips202.c:156:             Ebu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp497, BCa
	not	a5,a5	# tmp1798, tmp497
	sw	a5,-784(s0)	# tmp1798, %sfp
	lw	a5,-260(s0)		# tmp498, BCa
	not	a5,a5	# tmp1799, tmp498
	sw	a5,-780(s0)	# tmp1799, %sfp
# fips202.c:156:             Ebu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp499, BCe
	lw	a4,-784(s0)		# tmp1801, %sfp
	and	a5,a5,a4	# tmp1801, tmp1800, tmp499
	sw	a5,-792(s0)	# tmp1800, %sfp
	lw	a5,-268(s0)		# tmp500, BCe
	lw	a4,-780(s0)		# tmp1803, %sfp
	and	a5,a5,a4	# tmp1803, tmp1802, tmp500
	sw	a5,-788(s0)	# tmp1802, %sfp
# fips202.c:156:             Ebu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp502, BCu
	lw	a4,-792(s0)		# tmp1805, %sfp
	xor	a5,a5,a4	# tmp1805, tmp1804, tmp502
	sw	a5,-1792(s0)	# tmp1804, %sfp
	lw	a5,-292(s0)		# tmp503, BCu
	lw	a4,-788(s0)		# tmp1807, %sfp
	xor	a5,a5,a4	# tmp1807, tmp1806, tmp503
	sw	a5,-1788(s0)	# tmp1806, %sfp
	lw	a4,-1792(s0)		# tmp501, %sfp
	lw	a5,-1788(s0)		#, %sfp
	sw	a4,-376(s0)	# tmp501, Ebu
	sw	a5,-372(s0)	#, Ebu
# fips202.c:158:             Abo ^= Do;
	lw	a4,-88(s0)		# tmp505, Abo
	lw	a5,-328(s0)		# tmp506, Do
	xor	a5,a4,a5	# tmp506, tmp1809, tmp505
	sw	a5,-1800(s0)	# tmp1809, %sfp
	lw	a4,-84(s0)		# tmp507, Abo
	lw	a5,-324(s0)		# tmp508, Do
	xor	a5,a4,a5	# tmp508, tmp1810, tmp507
	sw	a5,-1796(s0)	# tmp1810, %sfp
	lw	a4,-1800(s0)		# tmp504, %sfp
	lw	a5,-1796(s0)		#, %sfp
	sw	a4,-88(s0)	# tmp504, Abo
	sw	a5,-84(s0)	#, Abo
# fips202.c:159:             BCa = ROL(Abo, 28);
	lw	a5,-88(s0)		# tmp511, Abo
	srli	a4,a5,4	#, tmp510, tmp511
	lw	a5,-84(s0)		# tmp513, Abo
	slli	a5,a5,28	#, tmp512, tmp513
	or	a5,a4,a5	# tmp512, tmp1812, tmp510
	sw	a5,-1804(s0)	# tmp1812, %sfp
	lw	a5,-84(s0)		# tmp515, Abo
	srli	a4,a5,4	#, tmp514, tmp515
	lw	a5,-88(s0)		# tmp517, Abo
	slli	a5,a5,28	#, tmp516, tmp517
	or	a5,a4,a5	# tmp516, tmp1813, tmp514
	sw	a5,-1808(s0)	# tmp1813, %sfp
	lw	a4,-1808(s0)		# tmp509, %sfp
	lw	a5,-1804(s0)		#, %sfp
	sw	a4,-264(s0)	# tmp509, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:160:             Agu ^= Du;
	lw	a4,-136(s0)		# tmp519, Agu
	lw	a5,-336(s0)		# tmp520, Du
	xor	a5,a4,a5	# tmp520, tmp1815, tmp519
	sw	a5,-1816(s0)	# tmp1815, %sfp
	lw	a4,-132(s0)		# tmp521, Agu
	lw	a5,-332(s0)		# tmp522, Du
	xor	a5,a4,a5	# tmp522, tmp1816, tmp521
	sw	a5,-1812(s0)	# tmp1816, %sfp
	lw	a4,-1816(s0)		# tmp518, %sfp
	lw	a5,-1812(s0)		#, %sfp
	sw	a4,-136(s0)	# tmp518, Agu
	sw	a5,-132(s0)	#, Agu
# fips202.c:161:             BCe = ROL(Agu, 20);
	lw	a5,-136(s0)		# tmp525, Agu
	srli	a4,a5,12	#, tmp524, tmp525
	lw	a5,-132(s0)		# tmp527, Agu
	slli	a5,a5,20	#, tmp526, tmp527
	or	a5,a4,a5	# tmp526, tmp1818, tmp524
	sw	a5,-1820(s0)	# tmp1818, %sfp
	lw	a5,-132(s0)		# tmp529, Agu
	srli	a4,a5,12	#, tmp528, tmp529
	lw	a5,-136(s0)		# tmp531, Agu
	slli	a5,a5,20	#, tmp530, tmp531
	or	a5,a4,a5	# tmp530, tmp1819, tmp528
	sw	a5,-1824(s0)	# tmp1819, %sfp
	lw	a4,-1824(s0)		# tmp523, %sfp
	lw	a5,-1820(s0)		#, %sfp
	sw	a4,-272(s0)	# tmp523, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:162:             Aka ^= Da;
	lw	a4,-144(s0)		# tmp533, Aka
	lw	a5,-304(s0)		# tmp534, Da
	xor	a5,a4,a5	# tmp534, tmp1821, tmp533
	sw	a5,-1832(s0)	# tmp1821, %sfp
	lw	a4,-140(s0)		# tmp535, Aka
	lw	a5,-300(s0)		# tmp536, Da
	xor	a5,a4,a5	# tmp536, tmp1822, tmp535
	sw	a5,-1828(s0)	# tmp1822, %sfp
	lw	a4,-1832(s0)		# tmp532, %sfp
	lw	a5,-1828(s0)		#, %sfp
	sw	a4,-144(s0)	# tmp532, Aka
	sw	a5,-140(s0)	#, Aka
# fips202.c:163:             BCi = ROL(Aka,  3);
	lw	a5,-144(s0)		# tmp539, Aka
	srli	a4,a5,29	#, tmp538, tmp539
	lw	a5,-140(s0)		# tmp541, Aka
	slli	a5,a5,3	#, tmp540, tmp541
	or	a5,a4,a5	# tmp540, tmp1824, tmp538
	sw	a5,-1836(s0)	# tmp1824, %sfp
	lw	a5,-140(s0)		# tmp543, Aka
	srli	a4,a5,29	#, tmp542, tmp543
	lw	a5,-144(s0)		# tmp545, Aka
	slli	a5,a5,3	#, tmp544, tmp545
	or	a5,a4,a5	# tmp544, tmp1825, tmp542
	sw	a5,-1840(s0)	# tmp1825, %sfp
	lw	a4,-1840(s0)		# tmp537, %sfp
	lw	a5,-1836(s0)		#, %sfp
	sw	a4,-280(s0)	# tmp537, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:164:             Ame ^= De;
	lw	a4,-192(s0)		# tmp547, Ame
	lw	a5,-312(s0)		# tmp548, De
	xor	a5,a4,a5	# tmp548, tmp1827, tmp547
	sw	a5,-1848(s0)	# tmp1827, %sfp
	lw	a4,-188(s0)		# tmp549, Ame
	lw	a5,-308(s0)		# tmp550, De
	xor	a5,a4,a5	# tmp550, tmp1828, tmp549
	sw	a5,-1844(s0)	# tmp1828, %sfp
	lw	a4,-1848(s0)		# tmp546, %sfp
	lw	a5,-1844(s0)		#, %sfp
	sw	a4,-192(s0)	# tmp546, Ame
	sw	a5,-188(s0)	#, Ame
# fips202.c:165:             BCo = ROL(Ame, 45);
	lw	a5,-188(s0)		# tmp553, Ame
	slli	a4,a5,13	#, tmp552, tmp553
	lw	a5,-192(s0)		# tmp555, Ame
	srli	a5,a5,19	#, tmp554, tmp555
	or	a5,a4,a5	# tmp554, tmp1830, tmp552
	sw	a5,-1856(s0)	# tmp1830, %sfp
	lw	a5,-192(s0)		# tmp557, Ame
	slli	a4,a5,13	#, tmp556, tmp557
	lw	a5,-188(s0)		# tmp559, Ame
	srli	a5,a5,19	#, tmp558, tmp559
	or	a5,a4,a5	# tmp558, tmp1831, tmp556
	sw	a5,-1852(s0)	# tmp1831, %sfp
	lw	a4,-1856(s0)		# tmp551, %sfp
	lw	a5,-1852(s0)		#, %sfp
	sw	a4,-288(s0)	# tmp551, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:166:             Asi ^= Di;
	lw	a4,-240(s0)		# tmp561, Asi
	lw	a5,-320(s0)		# tmp562, Di
	xor	a5,a4,a5	# tmp562, tmp1833, tmp561
	sw	a5,-1864(s0)	# tmp1833, %sfp
	lw	a4,-236(s0)		# tmp563, Asi
	lw	a5,-316(s0)		# tmp564, Di
	xor	a5,a4,a5	# tmp564, tmp1834, tmp563
	sw	a5,-1860(s0)	# tmp1834, %sfp
	lw	a4,-1864(s0)		# tmp560, %sfp
	lw	a5,-1860(s0)		#, %sfp
	sw	a4,-240(s0)	# tmp560, Asi
	sw	a5,-236(s0)	#, Asi
# fips202.c:167:             BCu = ROL(Asi, 61);
	lw	a5,-236(s0)		# tmp567, Asi
	slli	a4,a5,29	#, tmp566, tmp567
	lw	a5,-240(s0)		# tmp569, Asi
	srli	a5,a5,3	#, tmp568, tmp569
	or	a5,a4,a5	# tmp568, tmp1836, tmp566
	sw	a5,-1872(s0)	# tmp1836, %sfp
	lw	a5,-240(s0)		# tmp571, Asi
	slli	a4,a5,29	#, tmp570, tmp571
	lw	a5,-236(s0)		# tmp573, Asi
	srli	a5,a5,3	#, tmp572, tmp573
	or	a5,a4,a5	# tmp572, tmp1837, tmp570
	sw	a5,-1868(s0)	# tmp1837, %sfp
	lw	a4,-1872(s0)		# tmp565, %sfp
	lw	a5,-1868(s0)		#, %sfp
	sw	a4,-296(s0)	# tmp565, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:168:             Ega =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp574, BCe
	not	a5,a5	# tmp1839, tmp574
	sw	a5,-800(s0)	# tmp1839, %sfp
	lw	a5,-268(s0)		# tmp575, BCe
	not	a5,a5	# tmp1840, tmp575
	sw	a5,-796(s0)	# tmp1840, %sfp
# fips202.c:168:             Ega =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp576, BCi
	lw	a4,-800(s0)		# tmp1842, %sfp
	and	a5,a5,a4	# tmp1842, tmp1841, tmp576
	sw	a5,-808(s0)	# tmp1841, %sfp
	lw	a5,-276(s0)		# tmp577, BCi
	lw	a4,-796(s0)		# tmp1844, %sfp
	and	a5,a5,a4	# tmp1844, tmp1843, tmp577
	sw	a5,-804(s0)	# tmp1843, %sfp
# fips202.c:168:             Ega =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp579, BCa
	lw	a4,-808(s0)		# tmp1846, %sfp
	xor	a5,a5,a4	# tmp1846, tmp1845, tmp579
	sw	a5,-1880(s0)	# tmp1845, %sfp
	lw	a5,-260(s0)		# tmp580, BCa
	lw	a4,-804(s0)		# tmp1848, %sfp
	xor	a5,a5,a4	# tmp1848, tmp1847, tmp580
	sw	a5,-1876(s0)	# tmp1847, %sfp
	lw	a4,-1880(s0)		# tmp578, %sfp
	lw	a5,-1876(s0)		#, %sfp
	sw	a4,-384(s0)	# tmp578, Ega
	sw	a5,-380(s0)	#, Ega
# fips202.c:169:             Ege =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp581, BCi
	not	a5,a5	# tmp1850, tmp581
	sw	a5,-816(s0)	# tmp1850, %sfp
	lw	a5,-276(s0)		# tmp582, BCi
	not	a5,a5	# tmp1851, tmp582
	sw	a5,-812(s0)	# tmp1851, %sfp
# fips202.c:169:             Ege =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp583, BCo
	lw	a4,-816(s0)		# tmp1853, %sfp
	and	a5,a5,a4	# tmp1853, tmp1852, tmp583
	sw	a5,-824(s0)	# tmp1852, %sfp
	lw	a5,-284(s0)		# tmp584, BCo
	lw	a4,-812(s0)		# tmp1855, %sfp
	and	a5,a5,a4	# tmp1855, tmp1854, tmp584
	sw	a5,-820(s0)	# tmp1854, %sfp
# fips202.c:169:             Ege =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp586, BCe
	lw	a4,-824(s0)		# tmp1857, %sfp
	xor	a5,a5,a4	# tmp1857, tmp1856, tmp586
	sw	a5,-1888(s0)	# tmp1856, %sfp
	lw	a5,-268(s0)		# tmp587, BCe
	lw	a4,-820(s0)		# tmp1859, %sfp
	xor	a5,a5,a4	# tmp1859, tmp1858, tmp587
	sw	a5,-1884(s0)	# tmp1858, %sfp
	lw	a4,-1888(s0)		# tmp585, %sfp
	lw	a5,-1884(s0)		#, %sfp
	sw	a4,-392(s0)	# tmp585, Ege
	sw	a5,-388(s0)	#, Ege
# fips202.c:170:             Egi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp588, BCo
	not	a5,a5	# tmp1861, tmp588
	sw	a5,-832(s0)	# tmp1861, %sfp
	lw	a5,-284(s0)		# tmp589, BCo
	not	a5,a5	# tmp1862, tmp589
	sw	a5,-828(s0)	# tmp1862, %sfp
# fips202.c:170:             Egi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp590, BCu
	lw	a4,-832(s0)		# tmp1864, %sfp
	and	a5,a5,a4	# tmp1864, tmp1863, tmp590
	sw	a5,-840(s0)	# tmp1863, %sfp
	lw	a5,-292(s0)		# tmp591, BCu
	lw	a4,-828(s0)		# tmp1866, %sfp
	and	a5,a5,a4	# tmp1866, tmp1865, tmp591
	sw	a5,-836(s0)	# tmp1865, %sfp
# fips202.c:170:             Egi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp593, BCi
	lw	a4,-840(s0)		# tmp1868, %sfp
	xor	a5,a5,a4	# tmp1868, tmp1867, tmp593
	sw	a5,-1896(s0)	# tmp1867, %sfp
	lw	a5,-276(s0)		# tmp594, BCi
	lw	a4,-836(s0)		# tmp1870, %sfp
	xor	a5,a5,a4	# tmp1870, tmp1869, tmp594
	sw	a5,-1892(s0)	# tmp1869, %sfp
	lw	a4,-1896(s0)		# tmp592, %sfp
	lw	a5,-1892(s0)		#, %sfp
	sw	a4,-400(s0)	# tmp592, Egi
	sw	a5,-396(s0)	#, Egi
# fips202.c:171:             Ego =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp595, BCu
	not	a5,a5	# tmp1872, tmp595
	sw	a5,-848(s0)	# tmp1872, %sfp
	lw	a5,-292(s0)		# tmp596, BCu
	not	a5,a5	# tmp1873, tmp596
	sw	a5,-844(s0)	# tmp1873, %sfp
# fips202.c:171:             Ego =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp597, BCa
	lw	a4,-848(s0)		# tmp1875, %sfp
	and	a5,a5,a4	# tmp1875, tmp1874, tmp597
	sw	a5,-856(s0)	# tmp1874, %sfp
	lw	a5,-260(s0)		# tmp598, BCa
	lw	a4,-844(s0)		# tmp1877, %sfp
	and	a5,a5,a4	# tmp1877, tmp1876, tmp598
	sw	a5,-852(s0)	# tmp1876, %sfp
# fips202.c:171:             Ego =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp600, BCo
	lw	a4,-856(s0)		# tmp1879, %sfp
	xor	a5,a5,a4	# tmp1879, tmp1878, tmp600
	sw	a5,-1904(s0)	# tmp1878, %sfp
	lw	a5,-284(s0)		# tmp601, BCo
	lw	a4,-852(s0)		# tmp1881, %sfp
	xor	a5,a5,a4	# tmp1881, tmp1880, tmp601
	sw	a5,-1900(s0)	# tmp1880, %sfp
	lw	a4,-1904(s0)		# tmp599, %sfp
	lw	a5,-1900(s0)		#, %sfp
	sw	a4,-408(s0)	# tmp599, Ego
	sw	a5,-404(s0)	#, Ego
# fips202.c:172:             Egu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp602, BCa
	not	a5,a5	# tmp1883, tmp602
	sw	a5,-864(s0)	# tmp1883, %sfp
	lw	a5,-260(s0)		# tmp603, BCa
	not	a5,a5	# tmp1884, tmp603
	sw	a5,-860(s0)	# tmp1884, %sfp
# fips202.c:172:             Egu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp604, BCe
	lw	a4,-864(s0)		# tmp1886, %sfp
	and	a5,a5,a4	# tmp1886, tmp1885, tmp604
	sw	a5,-872(s0)	# tmp1885, %sfp
	lw	a5,-268(s0)		# tmp605, BCe
	lw	a4,-860(s0)		# tmp1888, %sfp
	and	a5,a5,a4	# tmp1888, tmp1887, tmp605
	sw	a5,-868(s0)	# tmp1887, %sfp
# fips202.c:172:             Egu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp607, BCu
	lw	a4,-872(s0)		# tmp1890, %sfp
	xor	a5,a5,a4	# tmp1890, tmp1889, tmp607
	sw	a5,-1912(s0)	# tmp1889, %sfp
	lw	a5,-292(s0)		# tmp608, BCu
	lw	a4,-868(s0)		# tmp1892, %sfp
	xor	a5,a5,a4	# tmp1892, tmp1891, tmp608
	sw	a5,-1908(s0)	# tmp1891, %sfp
	lw	a4,-1912(s0)		# tmp606, %sfp
	lw	a5,-1908(s0)		#, %sfp
	sw	a4,-416(s0)	# tmp606, Egu
	sw	a5,-412(s0)	#, Egu
# fips202.c:174:             Abe ^= De;
	lw	a4,-72(s0)		# tmp610, Abe
	lw	a5,-312(s0)		# tmp611, De
	xor	a5,a4,a5	# tmp611, tmp1894, tmp610
	sw	a5,-1920(s0)	# tmp1894, %sfp
	lw	a4,-68(s0)		# tmp612, Abe
	lw	a5,-308(s0)		# tmp613, De
	xor	a5,a4,a5	# tmp613, tmp1895, tmp612
	sw	a5,-1916(s0)	# tmp1895, %sfp
	lw	a4,-1920(s0)		# tmp609, %sfp
	lw	a5,-1916(s0)		#, %sfp
	sw	a4,-72(s0)	# tmp609, Abe
	sw	a5,-68(s0)	#, Abe
# fips202.c:175:             BCa = ROL(Abe,  1);
	lw	a5,-72(s0)		# tmp616, Abe
	srli	a4,a5,31	#, tmp615, tmp616
	lw	a5,-68(s0)		# tmp618, Abe
	slli	a5,a5,1	#, tmp617, tmp618
	or	a5,a4,a5	# tmp617, tmp1897, tmp615
	sw	a5,-1924(s0)	# tmp1897, %sfp
	lw	a5,-68(s0)		# tmp620, Abe
	srli	a4,a5,31	#, tmp619, tmp620
	lw	a5,-72(s0)		# tmp622, Abe
	slli	a5,a5,1	#, tmp621, tmp622
	or	a5,a4,a5	# tmp621, tmp1898, tmp619
	sw	a5,-1928(s0)	# tmp1898, %sfp
	lw	a4,-1928(s0)		# tmp614, %sfp
	lw	a5,-1924(s0)		#, %sfp
	sw	a4,-264(s0)	# tmp614, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:176:             Agi ^= Di;
	lw	a4,-120(s0)		# tmp624, Agi
	lw	a5,-320(s0)		# tmp625, Di
	xor	a5,a4,a5	# tmp625, tmp1900, tmp624
	sw	a5,-1936(s0)	# tmp1900, %sfp
	lw	a4,-116(s0)		# tmp626, Agi
	lw	a5,-316(s0)		# tmp627, Di
	xor	a5,a4,a5	# tmp627, tmp1901, tmp626
	sw	a5,-1932(s0)	# tmp1901, %sfp
	lw	a4,-1936(s0)		# tmp623, %sfp
	lw	a5,-1932(s0)		#, %sfp
	sw	a4,-120(s0)	# tmp623, Agi
	sw	a5,-116(s0)	#, Agi
# fips202.c:177:             BCe = ROL(Agi,  6);
	lw	a5,-120(s0)		# tmp630, Agi
	srli	a4,a5,26	#, tmp629, tmp630
	lw	a5,-116(s0)		# tmp632, Agi
	slli	a5,a5,6	#, tmp631, tmp632
	or	a5,a4,a5	# tmp631, tmp1903, tmp629
	sw	a5,-1940(s0)	# tmp1903, %sfp
	lw	a5,-116(s0)		# tmp634, Agi
	srli	a4,a5,26	#, tmp633, tmp634
	lw	a5,-120(s0)		# tmp636, Agi
	slli	a5,a5,6	#, tmp635, tmp636
	or	a5,a4,a5	# tmp635, tmp1904, tmp633
	sw	a5,-1944(s0)	# tmp1904, %sfp
	lw	a4,-1944(s0)		# tmp628, %sfp
	lw	a5,-1940(s0)		#, %sfp
	sw	a4,-272(s0)	# tmp628, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:178:             Ako ^= Do;
	lw	a4,-168(s0)		# tmp638, Ako
	lw	a5,-328(s0)		# tmp639, Do
	xor	a5,a4,a5	# tmp639, tmp1906, tmp638
	sw	a5,-1952(s0)	# tmp1906, %sfp
	lw	a4,-164(s0)		# tmp640, Ako
	lw	a5,-324(s0)		# tmp641, Do
	xor	a5,a4,a5	# tmp641, tmp1907, tmp640
	sw	a5,-1948(s0)	# tmp1907, %sfp
	lw	a4,-1952(s0)		# tmp637, %sfp
	lw	a5,-1948(s0)		#, %sfp
	sw	a4,-168(s0)	# tmp637, Ako
	sw	a5,-164(s0)	#, Ako
# fips202.c:179:             BCi = ROL(Ako, 25);
	lw	a5,-168(s0)		# tmp644, Ako
	srli	a4,a5,7	#, tmp643, tmp644
	lw	a5,-164(s0)		# tmp646, Ako
	slli	a5,a5,25	#, tmp645, tmp646
	or	a5,a4,a5	# tmp645, tmp1909, tmp643
	sw	a5,-1956(s0)	# tmp1909, %sfp
	lw	a5,-164(s0)		# tmp648, Ako
	srli	a4,a5,7	#, tmp647, tmp648
	lw	a5,-168(s0)		# tmp650, Ako
	slli	a5,a5,25	#, tmp649, tmp650
	or	a5,a4,a5	# tmp649, tmp1910, tmp647
	sw	a5,-1960(s0)	# tmp1910, %sfp
	lw	a4,-1960(s0)		# tmp642, %sfp
	lw	a5,-1956(s0)		#, %sfp
	sw	a4,-280(s0)	# tmp642, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:180:             Amu ^= Du;
	lw	a4,-216(s0)		# tmp652, Amu
	lw	a5,-336(s0)		# tmp653, Du
	xor	a5,a4,a5	# tmp653, tmp1912, tmp652
	sw	a5,-1968(s0)	# tmp1912, %sfp
	lw	a4,-212(s0)		# tmp654, Amu
	lw	a5,-332(s0)		# tmp655, Du
	xor	a5,a4,a5	# tmp655, tmp1913, tmp654
	sw	a5,-1964(s0)	# tmp1913, %sfp
	lw	a4,-1968(s0)		# tmp651, %sfp
	lw	a5,-1964(s0)		#, %sfp
	sw	a4,-216(s0)	# tmp651, Amu
	sw	a5,-212(s0)	#, Amu
# fips202.c:181:             BCo = ROL(Amu,  8);
	lw	a5,-216(s0)		# tmp658, Amu
	srli	a4,a5,24	#, tmp657, tmp658
	lw	a5,-212(s0)		# tmp660, Amu
	slli	a5,a5,8	#, tmp659, tmp660
	or	a5,a4,a5	# tmp659, tmp1915, tmp657
	sw	a5,-1972(s0)	# tmp1915, %sfp
	lw	a5,-212(s0)		# tmp662, Amu
	srli	a4,a5,24	#, tmp661, tmp662
	lw	a5,-216(s0)		# tmp664, Amu
	slli	a5,a5,8	#, tmp663, tmp664
	or	a5,a4,a5	# tmp663, tmp1916, tmp661
	sw	a5,-1976(s0)	# tmp1916, %sfp
	lw	a4,-1976(s0)		# tmp656, %sfp
	lw	a5,-1972(s0)		#, %sfp
	sw	a4,-288(s0)	# tmp656, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:182:             Asa ^= Da;
	lw	a4,-224(s0)		# tmp666, Asa
	lw	a5,-304(s0)		# tmp667, Da
	xor	a5,a4,a5	# tmp667, tmp1918, tmp666
	sw	a5,-1984(s0)	# tmp1918, %sfp
	lw	a4,-220(s0)		# tmp668, Asa
	lw	a5,-300(s0)		# tmp669, Da
	xor	a5,a4,a5	# tmp669, tmp1919, tmp668
	sw	a5,-1980(s0)	# tmp1919, %sfp
	lw	a4,-1984(s0)		# tmp665, %sfp
	lw	a5,-1980(s0)		#, %sfp
	sw	a4,-224(s0)	# tmp665, Asa
	sw	a5,-220(s0)	#, Asa
# fips202.c:183:             BCu = ROL(Asa, 18);
	lw	a5,-224(s0)		# tmp672, Asa
	srli	a4,a5,14	#, tmp671, tmp672
	lw	a5,-220(s0)		# tmp674, Asa
	slli	a5,a5,18	#, tmp673, tmp674
	or	a5,a4,a5	# tmp673, tmp1921, tmp671
	sw	a5,-1988(s0)	# tmp1921, %sfp
	lw	a5,-220(s0)		# tmp676, Asa
	srli	a4,a5,14	#, tmp675, tmp676
	lw	a5,-224(s0)		# tmp678, Asa
	slli	a5,a5,18	#, tmp677, tmp678
	or	a5,a4,a5	# tmp677, tmp1922, tmp675
	sw	a5,-1992(s0)	# tmp1922, %sfp
	lw	a4,-1992(s0)		# tmp670, %sfp
	lw	a5,-1988(s0)		#, %sfp
	sw	a4,-296(s0)	# tmp670, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:184:             Eka =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp679, BCe
	not	a5,a5	# tmp1924, tmp679
	sw	a5,-880(s0)	# tmp1924, %sfp
	lw	a5,-268(s0)		# tmp680, BCe
	not	a5,a5	# tmp1925, tmp680
	sw	a5,-876(s0)	# tmp1925, %sfp
# fips202.c:184:             Eka =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp681, BCi
	lw	a4,-880(s0)		# tmp1927, %sfp
	and	a5,a5,a4	# tmp1927, tmp1926, tmp681
	sw	a5,-888(s0)	# tmp1926, %sfp
	lw	a5,-276(s0)		# tmp682, BCi
	lw	a4,-876(s0)		# tmp1929, %sfp
	and	a5,a5,a4	# tmp1929, tmp1928, tmp682
	sw	a5,-884(s0)	# tmp1928, %sfp
# fips202.c:184:             Eka =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp684, BCa
	lw	a4,-888(s0)		# tmp1931, %sfp
	xor	a5,a5,a4	# tmp1931, tmp1930, tmp684
	sw	a5,-2000(s0)	# tmp1930, %sfp
	lw	a5,-260(s0)		# tmp685, BCa
	lw	a4,-884(s0)		# tmp1933, %sfp
	xor	a5,a5,a4	# tmp1933, tmp1932, tmp685
	sw	a5,-1996(s0)	# tmp1932, %sfp
	lw	a4,-2000(s0)		# tmp683, %sfp
	lw	a5,-1996(s0)		#, %sfp
	sw	a4,-424(s0)	# tmp683, Eka
	sw	a5,-420(s0)	#, Eka
# fips202.c:185:             Eke =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp686, BCi
	not	a5,a5	# tmp1935, tmp686
	sw	a5,-896(s0)	# tmp1935, %sfp
	lw	a5,-276(s0)		# tmp687, BCi
	not	a5,a5	# tmp1936, tmp687
	sw	a5,-892(s0)	# tmp1936, %sfp
# fips202.c:185:             Eke =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp688, BCo
	lw	a4,-896(s0)		# tmp1938, %sfp
	and	a5,a5,a4	# tmp1938, tmp1937, tmp688
	sw	a5,-904(s0)	# tmp1937, %sfp
	lw	a5,-284(s0)		# tmp689, BCo
	lw	a4,-892(s0)		# tmp1940, %sfp
	and	a5,a5,a4	# tmp1940, tmp1939, tmp689
	sw	a5,-900(s0)	# tmp1939, %sfp
# fips202.c:185:             Eke =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp691, BCe
	lw	a4,-904(s0)		# tmp1942, %sfp
	xor	a5,a5,a4	# tmp1942, tmp1941, tmp691
	sw	a5,-2008(s0)	# tmp1941, %sfp
	lw	a5,-268(s0)		# tmp692, BCe
	lw	a4,-900(s0)		# tmp1944, %sfp
	xor	a5,a5,a4	# tmp1944, tmp1943, tmp692
	sw	a5,-2004(s0)	# tmp1943, %sfp
	lw	a4,-2008(s0)		# tmp690, %sfp
	lw	a5,-2004(s0)		#, %sfp
	sw	a4,-432(s0)	# tmp690, Eke
	sw	a5,-428(s0)	#, Eke
# fips202.c:186:             Eki =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp693, BCo
	not	a5,a5	# tmp1946, tmp693
	sw	a5,-912(s0)	# tmp1946, %sfp
	lw	a5,-284(s0)		# tmp694, BCo
	not	a5,a5	# tmp1947, tmp694
	sw	a5,-908(s0)	# tmp1947, %sfp
# fips202.c:186:             Eki =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp695, BCu
	lw	a4,-912(s0)		# tmp1949, %sfp
	and	a5,a5,a4	# tmp1949, tmp1948, tmp695
	sw	a5,-920(s0)	# tmp1948, %sfp
	lw	a5,-292(s0)		# tmp696, BCu
	lw	a4,-908(s0)		# tmp1951, %sfp
	and	a5,a5,a4	# tmp1951, tmp1950, tmp696
	sw	a5,-916(s0)	# tmp1950, %sfp
# fips202.c:186:             Eki =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp698, BCi
	lw	a4,-920(s0)		# tmp1953, %sfp
	xor	a5,a5,a4	# tmp1953, tmp1952, tmp698
	sw	a5,-2016(s0)	# tmp1952, %sfp
	lw	a5,-276(s0)		# tmp699, BCi
	lw	a4,-916(s0)		# tmp1955, %sfp
	xor	a5,a5,a4	# tmp1955, tmp1954, tmp699
	sw	a5,-2012(s0)	# tmp1954, %sfp
	lw	a4,-2016(s0)		# tmp697, %sfp
	lw	a5,-2012(s0)		#, %sfp
	sw	a4,-440(s0)	# tmp697, Eki
	sw	a5,-436(s0)	#, Eki
# fips202.c:187:             Eko =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp700, BCu
	not	a5,a5	# tmp1957, tmp700
	sw	a5,-928(s0)	# tmp1957, %sfp
	lw	a5,-292(s0)		# tmp701, BCu
	not	a5,a5	# tmp1958, tmp701
	sw	a5,-924(s0)	# tmp1958, %sfp
# fips202.c:187:             Eko =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp702, BCa
	lw	a4,-928(s0)		# tmp1960, %sfp
	and	a5,a5,a4	# tmp1960, tmp1959, tmp702
	sw	a5,-936(s0)	# tmp1959, %sfp
	lw	a5,-260(s0)		# tmp703, BCa
	lw	a4,-924(s0)		# tmp1962, %sfp
	and	a5,a5,a4	# tmp1962, tmp1961, tmp703
	sw	a5,-932(s0)	# tmp1961, %sfp
# fips202.c:187:             Eko =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp705, BCo
	lw	a4,-936(s0)		# tmp1964, %sfp
	xor	a5,a5,a4	# tmp1964, tmp1963, tmp705
	sw	a5,-2024(s0)	# tmp1963, %sfp
	lw	a5,-284(s0)		# tmp706, BCo
	lw	a4,-932(s0)		# tmp1966, %sfp
	xor	a5,a5,a4	# tmp1966, tmp1965, tmp706
	sw	a5,-2020(s0)	# tmp1965, %sfp
	lw	a4,-2024(s0)		# tmp704, %sfp
	lw	a5,-2020(s0)		#, %sfp
	sw	a4,-448(s0)	# tmp704, Eko
	sw	a5,-444(s0)	#, Eko
# fips202.c:188:             Eku =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp707, BCa
	not	a5,a5	# tmp1968, tmp707
	sw	a5,-944(s0)	# tmp1968, %sfp
	lw	a5,-260(s0)		# tmp708, BCa
	not	a5,a5	# tmp1969, tmp708
	sw	a5,-940(s0)	# tmp1969, %sfp
# fips202.c:188:             Eku =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp709, BCe
	lw	a4,-944(s0)		# tmp1971, %sfp
	and	a5,a5,a4	# tmp1971, tmp1970, tmp709
	sw	a5,-952(s0)	# tmp1970, %sfp
	lw	a5,-268(s0)		# tmp710, BCe
	lw	a4,-940(s0)		# tmp1973, %sfp
	and	a5,a5,a4	# tmp1973, tmp1972, tmp710
	sw	a5,-948(s0)	# tmp1972, %sfp
# fips202.c:188:             Eku =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp712, BCu
	lw	a4,-952(s0)		# tmp1975, %sfp
	xor	a5,a5,a4	# tmp1975, tmp1974, tmp712
	sw	a5,-2032(s0)	# tmp1974, %sfp
	lw	a5,-292(s0)		# tmp713, BCu
	lw	a4,-948(s0)		# tmp1977, %sfp
	xor	a5,a5,a4	# tmp1977, tmp1976, tmp713
	sw	a5,-2028(s0)	# tmp1976, %sfp
	lw	a4,-2032(s0)		# tmp711, %sfp
	lw	a5,-2028(s0)		#, %sfp
	sw	a4,-456(s0)	# tmp711, Eku
	sw	a5,-452(s0)	#, Eku
# fips202.c:190:             Abu ^= Du;
	lw	a4,-96(s0)		# tmp715, Abu
	lw	a5,-336(s0)		# tmp716, Du
	xor	a5,a4,a5	# tmp716, tmp1979, tmp715
	sw	a5,-2040(s0)	# tmp1979, %sfp
	lw	a4,-92(s0)		# tmp717, Abu
	lw	a5,-332(s0)		# tmp718, Du
	xor	a5,a4,a5	# tmp718, tmp1980, tmp717
	sw	a5,-2036(s0)	# tmp1980, %sfp
	lw	a4,-2040(s0)		# tmp714, %sfp
	lw	a5,-2036(s0)		#, %sfp
	sw	a4,-96(s0)	# tmp714, Abu
	sw	a5,-92(s0)	#, Abu
# fips202.c:191:             BCa = ROL(Abu, 27);
	lw	a5,-96(s0)		# tmp721, Abu
	srli	a4,a5,5	#, tmp720, tmp721
	lw	a5,-92(s0)		# tmp723, Abu
	slli	a5,a5,27	#, tmp722, tmp723
	or	a5,a4,a5	# tmp722, tmp1982, tmp720
	sw	a5,-2044(s0)	# tmp1982, %sfp
	lw	a5,-92(s0)		# tmp725, Abu
	srli	a4,a5,5	#, tmp724, tmp725
	lw	a5,-96(s0)		# tmp727, Abu
	slli	a5,a5,27	#, tmp726, tmp727
	or	a5,a4,a5	# tmp726, tmp1983, tmp724
	sw	a5,-2048(s0)	# tmp1983, %sfp
	lw	a4,-2048(s0)		# tmp719, %sfp
	lw	a5,-2044(s0)		#, %sfp
	sw	a4,-264(s0)	# tmp719, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:192:             Aga ^= Da;
	lw	a4,-104(s0)		# tmp729, Aga
	lw	a5,-304(s0)		# tmp730, Da
	xor	a5,a4,a5	# tmp730, tmp1985, tmp729
	li	a3,-4096		# tmp3790,
	addi	a4,a3,2040	#, tmp3789, tmp3790
	add	a4,a4,s0	#, tmp3789, tmp3789
	sw	a5,0(a4)	# tmp1985, %sfp
	lw	a4,-100(s0)		# tmp731, Aga
	lw	a5,-300(s0)		# tmp732, Da
	xor	a5,a4,a5	# tmp732, tmp1986, tmp731
	addi	a4,a3,2044	#, tmp3786, tmp3787
	add	a4,a4,s0	#, tmp3786, tmp3786
	sw	a5,0(a4)	# tmp1986, %sfp
	addi	a5,a3,2040	#, tmp3783, tmp3784
	add	a5,a5,s0	#, tmp3783, tmp3783
	lw	a4,0(a5)		# tmp728, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-104(s0)	# tmp728, Aga
	sw	a5,-100(s0)	#, Aga
# fips202.c:193:             BCe = ROL(Aga, 36);
	lw	a5,-100(s0)		# tmp735, Aga
	slli	a4,a5,4	#, tmp734, tmp735
	lw	a5,-104(s0)		# tmp737, Aga
	srli	a5,a5,28	#, tmp736, tmp737
	or	a5,a4,a5	# tmp736, tmp1988, tmp734
	addi	a4,a3,2032	#, tmp3780, tmp3781
	add	a4,a4,s0	#, tmp3780, tmp3780
	sw	a5,0(a4)	# tmp1988, %sfp
	lw	a5,-104(s0)		# tmp739, Aga
	slli	a4,a5,4	#, tmp738, tmp739
	lw	a5,-100(s0)		# tmp741, Aga
	srli	a5,a5,28	#, tmp740, tmp741
	or	a5,a4,a5	# tmp740, tmp1989, tmp738
	addi	a4,a3,2036	#, tmp3777, tmp3778
	add	a4,a4,s0	#, tmp3777, tmp3777
	sw	a5,0(a4)	# tmp1989, %sfp
	addi	a5,a3,2032	#, tmp3774, tmp3775
	add	a5,a5,s0	#, tmp3774, tmp3774
	lw	a4,0(a5)		# tmp733, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp733, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:194:             Ake ^= De;
	lw	a4,-152(s0)		# tmp743, Ake
	lw	a5,-312(s0)		# tmp744, De
	xor	a5,a4,a5	# tmp744, tmp1991, tmp743
	addi	a4,a3,2024	#, tmp3771, tmp3772
	add	a4,a4,s0	#, tmp3771, tmp3771
	sw	a5,0(a4)	# tmp1991, %sfp
	lw	a4,-148(s0)		# tmp745, Ake
	lw	a5,-308(s0)		# tmp746, De
	xor	a5,a4,a5	# tmp746, tmp1992, tmp745
	addi	a4,a3,2028	#, tmp3768, tmp3769
	add	a4,a4,s0	#, tmp3768, tmp3768
	sw	a5,0(a4)	# tmp1992, %sfp
	addi	a5,a3,2024	#, tmp3765, tmp3766
	add	a5,a5,s0	#, tmp3765, tmp3765
	lw	a4,0(a5)		# tmp742, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-152(s0)	# tmp742, Ake
	sw	a5,-148(s0)	#, Ake
# fips202.c:195:             BCi = ROL(Ake, 10);
	lw	a5,-152(s0)		# tmp749, Ake
	srli	a4,a5,22	#, tmp748, tmp749
	lw	a5,-148(s0)		# tmp751, Ake
	slli	a5,a5,10	#, tmp750, tmp751
	or	a5,a4,a5	# tmp750, tmp1994, tmp748
	addi	a4,a3,2020	#, tmp3762, tmp3763
	add	a4,a4,s0	#, tmp3762, tmp3762
	sw	a5,0(a4)	# tmp1994, %sfp
	lw	a5,-148(s0)		# tmp753, Ake
	srli	a4,a5,22	#, tmp752, tmp753
	lw	a5,-152(s0)		# tmp755, Ake
	slli	a5,a5,10	#, tmp754, tmp755
	or	a5,a4,a5	# tmp754, tmp1995, tmp752
	addi	a4,a3,2016	#, tmp3759, tmp3760
	add	a4,a4,s0	#, tmp3759, tmp3759
	sw	a5,0(a4)	# tmp1995, %sfp
	addi	a5,a3,2016	#, tmp3756, tmp3757
	add	a5,a5,s0	#, tmp3756, tmp3756
	lw	a4,0(a5)		# tmp747, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp747, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:196:             Ami ^= Di;
	lw	a4,-200(s0)		# tmp757, Ami
	lw	a5,-320(s0)		# tmp758, Di
	xor	a5,a4,a5	# tmp758, tmp1997, tmp757
	addi	a4,a3,2008	#, tmp3753, tmp3754
	add	a4,a4,s0	#, tmp3753, tmp3753
	sw	a5,0(a4)	# tmp1997, %sfp
	lw	a4,-196(s0)		# tmp759, Ami
	lw	a5,-316(s0)		# tmp760, Di
	xor	a5,a4,a5	# tmp760, tmp1998, tmp759
	addi	a4,a3,2012	#, tmp3750, tmp3751
	add	a4,a4,s0	#, tmp3750, tmp3750
	sw	a5,0(a4)	# tmp1998, %sfp
	addi	a5,a3,2008	#, tmp3747, tmp3748
	add	a5,a5,s0	#, tmp3747, tmp3747
	lw	a4,0(a5)		# tmp756, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-200(s0)	# tmp756, Ami
	sw	a5,-196(s0)	#, Ami
# fips202.c:197:             BCo = ROL(Ami, 15);
	lw	a5,-200(s0)		# tmp763, Ami
	srli	a4,a5,17	#, tmp762, tmp763
	lw	a5,-196(s0)		# tmp765, Ami
	slli	a5,a5,15	#, tmp764, tmp765
	or	a5,a4,a5	# tmp764, tmp2000, tmp762
	addi	a4,a3,2004	#, tmp3744, tmp3745
	add	a4,a4,s0	#, tmp3744, tmp3744
	sw	a5,0(a4)	# tmp2000, %sfp
	lw	a5,-196(s0)		# tmp767, Ami
	srli	a4,a5,17	#, tmp766, tmp767
	lw	a5,-200(s0)		# tmp769, Ami
	slli	a5,a5,15	#, tmp768, tmp769
	or	a5,a4,a5	# tmp768, tmp2001, tmp766
	addi	a4,a3,2000	#, tmp3741, tmp3742
	add	a4,a4,s0	#, tmp3741, tmp3741
	sw	a5,0(a4)	# tmp2001, %sfp
	addi	a5,a3,2000	#, tmp3738, tmp3739
	add	a5,a5,s0	#, tmp3738, tmp3738
	lw	a4,0(a5)		# tmp761, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp761, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:198:             Aso ^= Do;
	lw	a4,-248(s0)		# tmp771, Aso
	lw	a5,-328(s0)		# tmp772, Do
	xor	a5,a4,a5	# tmp772, tmp2003, tmp771
	addi	a4,a3,1992	#, tmp3735, tmp3736
	add	a4,a4,s0	#, tmp3735, tmp3735
	sw	a5,0(a4)	# tmp2003, %sfp
	lw	a4,-244(s0)		# tmp773, Aso
	lw	a5,-324(s0)		# tmp774, Do
	xor	a5,a4,a5	# tmp774, tmp2004, tmp773
	addi	a4,a3,1996	#, tmp3732, tmp3733
	add	a4,a4,s0	#, tmp3732, tmp3732
	sw	a5,0(a4)	# tmp2004, %sfp
	addi	a5,a3,1992	#, tmp3729, tmp3730
	add	a5,a5,s0	#, tmp3729, tmp3729
	lw	a4,0(a5)		# tmp770, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-248(s0)	# tmp770, Aso
	sw	a5,-244(s0)	#, Aso
# fips202.c:199:             BCu = ROL(Aso, 56);
	lw	a5,-244(s0)		# tmp777, Aso
	slli	a4,a5,24	#, tmp776, tmp777
	lw	a5,-248(s0)		# tmp779, Aso
	srli	a5,a5,8	#, tmp778, tmp779
	or	a5,a4,a5	# tmp778, tmp2006, tmp776
	addi	a4,a3,1984	#, tmp3726, tmp3727
	add	a4,a4,s0	#, tmp3726, tmp3726
	sw	a5,0(a4)	# tmp2006, %sfp
	lw	a5,-248(s0)		# tmp781, Aso
	slli	a4,a5,24	#, tmp780, tmp781
	lw	a5,-244(s0)		# tmp783, Aso
	srli	a5,a5,8	#, tmp782, tmp783
	or	a5,a4,a5	# tmp782, tmp2007, tmp780
	addi	a4,a3,1988	#, tmp3723, tmp3724
	add	a4,a4,s0	#, tmp3723, tmp3723
	sw	a5,0(a4)	# tmp2007, %sfp
	addi	a5,a3,1984	#, tmp3720, tmp3721
	add	a5,a5,s0	#, tmp3720, tmp3720
	lw	a4,0(a5)		# tmp775, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp775, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:200:             Ema =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp784, BCe
	not	a5,a5	# tmp2009, tmp784
	sw	a5,-960(s0)	# tmp2009, %sfp
	lw	a5,-268(s0)		# tmp785, BCe
	not	a5,a5	# tmp2010, tmp785
	sw	a5,-956(s0)	# tmp2010, %sfp
# fips202.c:200:             Ema =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp786, BCi
	lw	a4,-960(s0)		# tmp2012, %sfp
	and	a5,a5,a4	# tmp2012, tmp2011, tmp786
	sw	a5,-968(s0)	# tmp2011, %sfp
	lw	a5,-276(s0)		# tmp787, BCi
	lw	a4,-956(s0)		# tmp2014, %sfp
	and	a5,a5,a4	# tmp2014, tmp2013, tmp787
	sw	a5,-964(s0)	# tmp2013, %sfp
# fips202.c:200:             Ema =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp789, BCa
	lw	a4,-968(s0)		# tmp2016, %sfp
	xor	a5,a5,a4	# tmp2016, tmp2015, tmp789
	addi	a4,a3,1976	#, tmp3717, tmp3718
	add	a4,a4,s0	#, tmp3717, tmp3717
	sw	a5,0(a4)	# tmp2015, %sfp
	lw	a5,-260(s0)		# tmp790, BCa
	lw	a4,-964(s0)		# tmp2018, %sfp
	xor	a5,a5,a4	# tmp2018, tmp2017, tmp790
	addi	a4,a3,1980	#, tmp3714, tmp3715
	add	a4,a4,s0	#, tmp3714, tmp3714
	sw	a5,0(a4)	# tmp2017, %sfp
	addi	a5,a3,1976	#, tmp3711, tmp3712
	add	a5,a5,s0	#, tmp3711, tmp3711
	lw	a4,0(a5)		# tmp788, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-464(s0)	# tmp788, Ema
	sw	a5,-460(s0)	#, Ema
# fips202.c:201:             Eme =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp791, BCi
	not	a5,a5	# tmp2020, tmp791
	sw	a5,-976(s0)	# tmp2020, %sfp
	lw	a5,-276(s0)		# tmp792, BCi
	not	a5,a5	# tmp2021, tmp792
	sw	a5,-972(s0)	# tmp2021, %sfp
# fips202.c:201:             Eme =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp793, BCo
	lw	a4,-976(s0)		# tmp2023, %sfp
	and	a5,a5,a4	# tmp2023, tmp2022, tmp793
	sw	a5,-984(s0)	# tmp2022, %sfp
	lw	a5,-284(s0)		# tmp794, BCo
	lw	a4,-972(s0)		# tmp2025, %sfp
	and	a5,a5,a4	# tmp2025, tmp2024, tmp794
	sw	a5,-980(s0)	# tmp2024, %sfp
# fips202.c:201:             Eme =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp796, BCe
	lw	a4,-984(s0)		# tmp2027, %sfp
	xor	a5,a5,a4	# tmp2027, tmp2026, tmp796
	addi	a4,a3,1968	#, tmp3708, tmp3709
	add	a4,a4,s0	#, tmp3708, tmp3708
	sw	a5,0(a4)	# tmp2026, %sfp
	lw	a5,-268(s0)		# tmp797, BCe
	lw	a4,-980(s0)		# tmp2029, %sfp
	xor	a5,a5,a4	# tmp2029, tmp2028, tmp797
	addi	a4,a3,1972	#, tmp3705, tmp3706
	add	a4,a4,s0	#, tmp3705, tmp3705
	sw	a5,0(a4)	# tmp2028, %sfp
	addi	a5,a3,1968	#, tmp3702, tmp3703
	add	a5,a5,s0	#, tmp3702, tmp3702
	lw	a4,0(a5)		# tmp795, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-472(s0)	# tmp795, Eme
	sw	a5,-468(s0)	#, Eme
# fips202.c:202:             Emi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp798, BCo
	not	a5,a5	# tmp2031, tmp798
	sw	a5,-992(s0)	# tmp2031, %sfp
	lw	a5,-284(s0)		# tmp799, BCo
	not	a5,a5	# tmp2032, tmp799
	sw	a5,-988(s0)	# tmp2032, %sfp
# fips202.c:202:             Emi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp800, BCu
	lw	a4,-992(s0)		# tmp2034, %sfp
	and	a5,a5,a4	# tmp2034, tmp2033, tmp800
	sw	a5,-1000(s0)	# tmp2033, %sfp
	lw	a5,-292(s0)		# tmp801, BCu
	lw	a4,-988(s0)		# tmp2036, %sfp
	and	a5,a5,a4	# tmp2036, tmp2035, tmp801
	sw	a5,-996(s0)	# tmp2035, %sfp
# fips202.c:202:             Emi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp803, BCi
	lw	a4,-1000(s0)		# tmp2038, %sfp
	xor	a5,a5,a4	# tmp2038, tmp2037, tmp803
	addi	a4,a3,1960	#, tmp3699, tmp3700
	add	a4,a4,s0	#, tmp3699, tmp3699
	sw	a5,0(a4)	# tmp2037, %sfp
	lw	a5,-276(s0)		# tmp804, BCi
	lw	a4,-996(s0)		# tmp2040, %sfp
	xor	a5,a5,a4	# tmp2040, tmp2039, tmp804
	addi	a4,a3,1964	#, tmp3696, tmp3697
	add	a4,a4,s0	#, tmp3696, tmp3696
	sw	a5,0(a4)	# tmp2039, %sfp
	addi	a5,a3,1960	#, tmp3693, tmp3694
	add	a5,a5,s0	#, tmp3693, tmp3693
	lw	a4,0(a5)		# tmp802, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-480(s0)	# tmp802, Emi
	sw	a5,-476(s0)	#, Emi
# fips202.c:203:             Emo =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp805, BCu
	not	a5,a5	# tmp2042, tmp805
	sw	a5,-1008(s0)	# tmp2042, %sfp
	lw	a5,-292(s0)		# tmp806, BCu
	not	a5,a5	# tmp2043, tmp806
	sw	a5,-1004(s0)	# tmp2043, %sfp
# fips202.c:203:             Emo =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp807, BCa
	lw	a4,-1008(s0)		# tmp2045, %sfp
	and	a5,a5,a4	# tmp2045, tmp2044, tmp807
	sw	a5,-1016(s0)	# tmp2044, %sfp
	lw	a5,-260(s0)		# tmp808, BCa
	lw	a4,-1004(s0)		# tmp2047, %sfp
	and	a5,a5,a4	# tmp2047, tmp2046, tmp808
	sw	a5,-1012(s0)	# tmp2046, %sfp
# fips202.c:203:             Emo =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp810, BCo
	lw	a4,-1016(s0)		# tmp2049, %sfp
	xor	a5,a5,a4	# tmp2049, tmp2048, tmp810
	addi	a4,a3,1952	#, tmp3690, tmp3691
	add	a4,a4,s0	#, tmp3690, tmp3690
	sw	a5,0(a4)	# tmp2048, %sfp
	lw	a5,-284(s0)		# tmp811, BCo
	lw	a4,-1012(s0)		# tmp2051, %sfp
	xor	a5,a5,a4	# tmp2051, tmp2050, tmp811
	addi	a4,a3,1956	#, tmp3687, tmp3688
	add	a4,a4,s0	#, tmp3687, tmp3687
	sw	a5,0(a4)	# tmp2050, %sfp
	addi	a5,a3,1952	#, tmp3684, tmp3685
	add	a5,a5,s0	#, tmp3684, tmp3684
	lw	a4,0(a5)		# tmp809, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-488(s0)	# tmp809, Emo
	sw	a5,-484(s0)	#, Emo
# fips202.c:204:             Emu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp812, BCa
	not	a5,a5	# tmp2053, tmp812
	sw	a5,-1024(s0)	# tmp2053, %sfp
	lw	a5,-260(s0)		# tmp813, BCa
	not	a5,a5	# tmp2054, tmp813
	sw	a5,-1020(s0)	# tmp2054, %sfp
# fips202.c:204:             Emu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp814, BCe
	lw	a4,-1024(s0)		# tmp2056, %sfp
	and	a5,a5,a4	# tmp2056, tmp2055, tmp814
	sw	a5,-1032(s0)	# tmp2055, %sfp
	lw	a5,-268(s0)		# tmp815, BCe
	lw	a4,-1020(s0)		# tmp2058, %sfp
	and	a5,a5,a4	# tmp2058, tmp2057, tmp815
	sw	a5,-1028(s0)	# tmp2057, %sfp
# fips202.c:204:             Emu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp817, BCu
	lw	a4,-1032(s0)		# tmp2060, %sfp
	xor	a5,a5,a4	# tmp2060, tmp2059, tmp817
	addi	a4,a3,1944	#, tmp3681, tmp3682
	add	a4,a4,s0	#, tmp3681, tmp3681
	sw	a5,0(a4)	# tmp2059, %sfp
	lw	a5,-292(s0)		# tmp818, BCu
	lw	a4,-1028(s0)		# tmp2062, %sfp
	xor	a5,a5,a4	# tmp2062, tmp2061, tmp818
	addi	a4,a3,1948	#, tmp3678, tmp3679
	add	a4,a4,s0	#, tmp3678, tmp3678
	sw	a5,0(a4)	# tmp2061, %sfp
	addi	a5,a3,1944	#, tmp3675, tmp3676
	add	a5,a5,s0	#, tmp3675, tmp3675
	lw	a4,0(a5)		# tmp816, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-496(s0)	# tmp816, Emu
	sw	a5,-492(s0)	#, Emu
# fips202.c:206:             Abi ^= Di;
	lw	a4,-80(s0)		# tmp820, Abi
	lw	a5,-320(s0)		# tmp821, Di
	xor	a5,a4,a5	# tmp821, tmp2064, tmp820
	addi	a4,a3,1936	#, tmp3672, tmp3673
	add	a4,a4,s0	#, tmp3672, tmp3672
	sw	a5,0(a4)	# tmp2064, %sfp
	lw	a4,-76(s0)		# tmp822, Abi
	lw	a5,-316(s0)		# tmp823, Di
	xor	a5,a4,a5	# tmp823, tmp2065, tmp822
	addi	a4,a3,1940	#, tmp3669, tmp3670
	add	a4,a4,s0	#, tmp3669, tmp3669
	sw	a5,0(a4)	# tmp2065, %sfp
	addi	a5,a3,1936	#, tmp3666, tmp3667
	add	a5,a5,s0	#, tmp3666, tmp3666
	lw	a4,0(a5)		# tmp819, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-80(s0)	# tmp819, Abi
	sw	a5,-76(s0)	#, Abi
# fips202.c:207:             BCa = ROL(Abi, 62);
	lw	a5,-76(s0)		# tmp826, Abi
	slli	a4,a5,30	#, tmp825, tmp826
	lw	a5,-80(s0)		# tmp828, Abi
	srli	a5,a5,2	#, tmp827, tmp828
	or	a5,a4,a5	# tmp827, tmp2067, tmp825
	addi	a4,a3,1928	#, tmp3663, tmp3664
	add	a4,a4,s0	#, tmp3663, tmp3663
	sw	a5,0(a4)	# tmp2067, %sfp
	lw	a5,-80(s0)		# tmp830, Abi
	slli	a4,a5,30	#, tmp829, tmp830
	lw	a5,-76(s0)		# tmp832, Abi
	srli	a5,a5,2	#, tmp831, tmp832
	or	a5,a4,a5	# tmp831, tmp2068, tmp829
	addi	a4,a3,1932	#, tmp3660, tmp3661
	add	a4,a4,s0	#, tmp3660, tmp3660
	sw	a5,0(a4)	# tmp2068, %sfp
	addi	a5,a3,1928	#, tmp3657, tmp3658
	add	a5,a5,s0	#, tmp3657, tmp3657
	lw	a4,0(a5)		# tmp824, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp824, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:208:             Ago ^= Do;
	lw	a4,-128(s0)		# tmp834, Ago
	lw	a5,-328(s0)		# tmp835, Do
	xor	a5,a4,a5	# tmp835, tmp2070, tmp834
	addi	a4,a3,1920	#, tmp3654, tmp3655
	add	a4,a4,s0	#, tmp3654, tmp3654
	sw	a5,0(a4)	# tmp2070, %sfp
	lw	a4,-124(s0)		# tmp836, Ago
	lw	a5,-324(s0)		# tmp837, Do
	xor	a5,a4,a5	# tmp837, tmp2071, tmp836
	addi	a4,a3,1924	#, tmp3651, tmp3652
	add	a4,a4,s0	#, tmp3651, tmp3651
	sw	a5,0(a4)	# tmp2071, %sfp
	addi	a5,a3,1920	#, tmp3648, tmp3649
	add	a5,a5,s0	#, tmp3648, tmp3648
	lw	a4,0(a5)		# tmp833, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-128(s0)	# tmp833, Ago
	sw	a5,-124(s0)	#, Ago
# fips202.c:209:             BCe = ROL(Ago, 55);
	lw	a5,-124(s0)		# tmp840, Ago
	slli	a4,a5,23	#, tmp839, tmp840
	lw	a5,-128(s0)		# tmp842, Ago
	srli	a5,a5,9	#, tmp841, tmp842
	or	a5,a4,a5	# tmp841, tmp2073, tmp839
	addi	a4,a3,1912	#, tmp3645, tmp3646
	add	a4,a4,s0	#, tmp3645, tmp3645
	sw	a5,0(a4)	# tmp2073, %sfp
	lw	a5,-128(s0)		# tmp844, Ago
	slli	a4,a5,23	#, tmp843, tmp844
	lw	a5,-124(s0)		# tmp846, Ago
	srli	a5,a5,9	#, tmp845, tmp846
	or	a5,a4,a5	# tmp845, tmp2074, tmp843
	addi	a4,a3,1916	#, tmp3642, tmp3643
	add	a4,a4,s0	#, tmp3642, tmp3642
	sw	a5,0(a4)	# tmp2074, %sfp
	addi	a5,a3,1912	#, tmp3639, tmp3640
	add	a5,a5,s0	#, tmp3639, tmp3639
	lw	a4,0(a5)		# tmp838, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp838, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:210:             Aku ^= Du;
	lw	a4,-176(s0)		# tmp848, Aku
	lw	a5,-336(s0)		# tmp849, Du
	xor	a5,a4,a5	# tmp849, tmp2076, tmp848
	addi	a4,a3,1904	#, tmp3636, tmp3637
	add	a4,a4,s0	#, tmp3636, tmp3636
	sw	a5,0(a4)	# tmp2076, %sfp
	lw	a4,-172(s0)		# tmp850, Aku
	lw	a5,-332(s0)		# tmp851, Du
	xor	a5,a4,a5	# tmp851, tmp2077, tmp850
	addi	a4,a3,1908	#, tmp3633, tmp3634
	add	a4,a4,s0	#, tmp3633, tmp3633
	sw	a5,0(a4)	# tmp2077, %sfp
	addi	a5,a3,1904	#, tmp3630, tmp3631
	add	a5,a5,s0	#, tmp3630, tmp3630
	lw	a4,0(a5)		# tmp847, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-176(s0)	# tmp847, Aku
	sw	a5,-172(s0)	#, Aku
# fips202.c:211:             BCi = ROL(Aku, 39);
	lw	a5,-172(s0)		# tmp854, Aku
	slli	a4,a5,7	#, tmp853, tmp854
	lw	a5,-176(s0)		# tmp856, Aku
	srli	a5,a5,25	#, tmp855, tmp856
	or	a5,a4,a5	# tmp855, tmp2079, tmp853
	addi	a4,a3,1896	#, tmp3627, tmp3628
	add	a4,a4,s0	#, tmp3627, tmp3627
	sw	a5,0(a4)	# tmp2079, %sfp
	lw	a5,-176(s0)		# tmp858, Aku
	slli	a4,a5,7	#, tmp857, tmp858
	lw	a5,-172(s0)		# tmp860, Aku
	srli	a5,a5,25	#, tmp859, tmp860
	or	a5,a4,a5	# tmp859, tmp2080, tmp857
	addi	a4,a3,1900	#, tmp3624, tmp3625
	add	a4,a4,s0	#, tmp3624, tmp3624
	sw	a5,0(a4)	# tmp2080, %sfp
	addi	a5,a3,1896	#, tmp3621, tmp3622
	add	a5,a5,s0	#, tmp3621, tmp3621
	lw	a4,0(a5)		# tmp852, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp852, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:212:             Ama ^= Da;
	lw	a4,-184(s0)		# tmp862, Ama
	lw	a5,-304(s0)		# tmp863, Da
	xor	a5,a4,a5	# tmp863, tmp2082, tmp862
	addi	a4,a3,1888	#, tmp3618, tmp3619
	add	a4,a4,s0	#, tmp3618, tmp3618
	sw	a5,0(a4)	# tmp2082, %sfp
	lw	a4,-180(s0)		# tmp864, Ama
	lw	a5,-300(s0)		# tmp865, Da
	xor	a5,a4,a5	# tmp865, tmp2083, tmp864
	addi	a4,a3,1892	#, tmp3615, tmp3616
	add	a4,a4,s0	#, tmp3615, tmp3615
	sw	a5,0(a4)	# tmp2083, %sfp
	addi	a5,a3,1888	#, tmp3612, tmp3613
	add	a5,a5,s0	#, tmp3612, tmp3612
	lw	a4,0(a5)		# tmp861, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-184(s0)	# tmp861, Ama
	sw	a5,-180(s0)	#, Ama
# fips202.c:213:             BCo = ROL(Ama, 41);
	lw	a5,-180(s0)		# tmp868, Ama
	slli	a4,a5,9	#, tmp867, tmp868
	lw	a5,-184(s0)		# tmp870, Ama
	srli	a5,a5,23	#, tmp869, tmp870
	or	a5,a4,a5	# tmp869, tmp2085, tmp867
	addi	a4,a3,1880	#, tmp3609, tmp3610
	add	a4,a4,s0	#, tmp3609, tmp3609
	sw	a5,0(a4)	# tmp2085, %sfp
	lw	a5,-184(s0)		# tmp872, Ama
	slli	a4,a5,9	#, tmp871, tmp872
	lw	a5,-180(s0)		# tmp874, Ama
	srli	a5,a5,23	#, tmp873, tmp874
	or	a5,a4,a5	# tmp873, tmp2086, tmp871
	addi	a4,a3,1884	#, tmp3606, tmp3607
	add	a4,a4,s0	#, tmp3606, tmp3606
	sw	a5,0(a4)	# tmp2086, %sfp
	addi	a5,a3,1880	#, tmp3603, tmp3604
	add	a5,a5,s0	#, tmp3603, tmp3603
	lw	a4,0(a5)		# tmp866, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp866, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:214:             Ase ^= De;
	lw	a4,-232(s0)		# tmp876, Ase
	lw	a5,-312(s0)		# tmp877, De
	xor	a5,a4,a5	# tmp877, tmp2088, tmp876
	addi	a4,a3,1872	#, tmp3600, tmp3601
	add	a4,a4,s0	#, tmp3600, tmp3600
	sw	a5,0(a4)	# tmp2088, %sfp
	lw	a4,-228(s0)		# tmp878, Ase
	lw	a5,-308(s0)		# tmp879, De
	xor	a5,a4,a5	# tmp879, tmp2089, tmp878
	addi	a4,a3,1876	#, tmp3597, tmp3598
	add	a4,a4,s0	#, tmp3597, tmp3597
	sw	a5,0(a4)	# tmp2089, %sfp
	addi	a5,a3,1872	#, tmp3594, tmp3595
	add	a5,a5,s0	#, tmp3594, tmp3594
	lw	a4,0(a5)		# tmp875, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-232(s0)	# tmp875, Ase
	sw	a5,-228(s0)	#, Ase
# fips202.c:215:             BCu = ROL(Ase,  2);
	lw	a5,-232(s0)		# tmp882, Ase
	srli	a4,a5,30	#, tmp881, tmp882
	lw	a5,-228(s0)		# tmp884, Ase
	slli	a5,a5,2	#, tmp883, tmp884
	or	a5,a4,a5	# tmp883, tmp2091, tmp881
	addi	a4,a3,1868	#, tmp3591, tmp3592
	add	a4,a4,s0	#, tmp3591, tmp3591
	sw	a5,0(a4)	# tmp2091, %sfp
	lw	a5,-228(s0)		# tmp886, Ase
	srli	a4,a5,30	#, tmp885, tmp886
	lw	a5,-232(s0)		# tmp888, Ase
	slli	a5,a5,2	#, tmp887, tmp888
	or	a5,a4,a5	# tmp887, tmp2092, tmp885
	addi	a4,a3,1864	#, tmp3588, tmp3589
	add	a4,a4,s0	#, tmp3588, tmp3588
	sw	a5,0(a4)	# tmp2092, %sfp
	addi	a5,a3,1864	#, tmp3585, tmp3586
	add	a5,a5,s0	#, tmp3585, tmp3585
	lw	a4,0(a5)		# tmp880, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp880, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:216:             Esa =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp889, BCe
	not	a5,a5	# tmp2094, tmp889
	sw	a5,-1040(s0)	# tmp2094, %sfp
	lw	a5,-268(s0)		# tmp890, BCe
	not	a5,a5	# tmp2095, tmp890
	sw	a5,-1036(s0)	# tmp2095, %sfp
# fips202.c:216:             Esa =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp891, BCi
	lw	a4,-1040(s0)		# tmp2097, %sfp
	and	a5,a5,a4	# tmp2097, tmp2096, tmp891
	sw	a5,-1048(s0)	# tmp2096, %sfp
	lw	a5,-276(s0)		# tmp892, BCi
	lw	a4,-1036(s0)		# tmp2099, %sfp
	and	a5,a5,a4	# tmp2099, tmp2098, tmp892
	sw	a5,-1044(s0)	# tmp2098, %sfp
# fips202.c:216:             Esa =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp894, BCa
	lw	a4,-1048(s0)		# tmp2101, %sfp
	xor	a5,a5,a4	# tmp2101, tmp2100, tmp894
	addi	a4,a3,1856	#, tmp3582, tmp3583
	add	a4,a4,s0	#, tmp3582, tmp3582
	sw	a5,0(a4)	# tmp2100, %sfp
	lw	a5,-260(s0)		# tmp895, BCa
	lw	a4,-1044(s0)		# tmp2103, %sfp
	xor	a5,a5,a4	# tmp2103, tmp2102, tmp895
	addi	a4,a3,1860	#, tmp3579, tmp3580
	add	a4,a4,s0	#, tmp3579, tmp3579
	sw	a5,0(a4)	# tmp2102, %sfp
	addi	a5,a3,1856	#, tmp3576, tmp3577
	add	a5,a5,s0	#, tmp3576, tmp3576
	lw	a4,0(a5)		# tmp893, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-504(s0)	# tmp893, Esa
	sw	a5,-500(s0)	#, Esa
# fips202.c:217:             Ese =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp896, BCi
	not	a5,a5	# tmp2105, tmp896
	sw	a5,-1056(s0)	# tmp2105, %sfp
	lw	a5,-276(s0)		# tmp897, BCi
	not	a5,a5	# tmp2106, tmp897
	sw	a5,-1052(s0)	# tmp2106, %sfp
# fips202.c:217:             Ese =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp898, BCo
	lw	a4,-1056(s0)		# tmp2108, %sfp
	and	a5,a5,a4	# tmp2108, tmp2107, tmp898
	sw	a5,-1064(s0)	# tmp2107, %sfp
	lw	a5,-284(s0)		# tmp899, BCo
	lw	a4,-1052(s0)		# tmp2110, %sfp
	and	a5,a5,a4	# tmp2110, tmp2109, tmp899
	sw	a5,-1060(s0)	# tmp2109, %sfp
# fips202.c:217:             Ese =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp901, BCe
	lw	a4,-1064(s0)		# tmp2112, %sfp
	xor	a5,a5,a4	# tmp2112, tmp2111, tmp901
	addi	a4,a3,1848	#, tmp3573, tmp3574
	add	a4,a4,s0	#, tmp3573, tmp3573
	sw	a5,0(a4)	# tmp2111, %sfp
	lw	a5,-268(s0)		# tmp902, BCe
	lw	a4,-1060(s0)		# tmp2114, %sfp
	xor	a5,a5,a4	# tmp2114, tmp2113, tmp902
	addi	a4,a3,1852	#, tmp3570, tmp3571
	add	a4,a4,s0	#, tmp3570, tmp3570
	sw	a5,0(a4)	# tmp2113, %sfp
	addi	a5,a3,1848	#, tmp3567, tmp3568
	add	a5,a5,s0	#, tmp3567, tmp3567
	lw	a4,0(a5)		# tmp900, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-512(s0)	# tmp900, Ese
	sw	a5,-508(s0)	#, Ese
# fips202.c:218:             Esi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp903, BCo
	not	a5,a5	# tmp2116, tmp903
	sw	a5,-1072(s0)	# tmp2116, %sfp
	lw	a5,-284(s0)		# tmp904, BCo
	not	a5,a5	# tmp2117, tmp904
	sw	a5,-1068(s0)	# tmp2117, %sfp
# fips202.c:218:             Esi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp905, BCu
	lw	a4,-1072(s0)		# tmp2119, %sfp
	and	a5,a5,a4	# tmp2119, tmp2118, tmp905
	sw	a5,-1080(s0)	# tmp2118, %sfp
	lw	a5,-292(s0)		# tmp906, BCu
	lw	a4,-1068(s0)		# tmp2121, %sfp
	and	a5,a5,a4	# tmp2121, tmp2120, tmp906
	sw	a5,-1076(s0)	# tmp2120, %sfp
# fips202.c:218:             Esi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp908, BCi
	lw	a4,-1080(s0)		# tmp2123, %sfp
	xor	a5,a5,a4	# tmp2123, tmp2122, tmp908
	addi	a4,a3,1840	#, tmp3564, tmp3565
	add	a4,a4,s0	#, tmp3564, tmp3564
	sw	a5,0(a4)	# tmp2122, %sfp
	lw	a5,-276(s0)		# tmp909, BCi
	lw	a4,-1076(s0)		# tmp2125, %sfp
	xor	a5,a5,a4	# tmp2125, tmp2124, tmp909
	addi	a4,a3,1844	#, tmp3561, tmp3562
	add	a4,a4,s0	#, tmp3561, tmp3561
	sw	a5,0(a4)	# tmp2124, %sfp
	addi	a5,a3,1840	#, tmp3558, tmp3559
	add	a5,a5,s0	#, tmp3558, tmp3558
	lw	a4,0(a5)		# tmp907, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-520(s0)	# tmp907, Esi
	sw	a5,-516(s0)	#, Esi
# fips202.c:219:             Eso =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp910, BCu
	not	a5,a5	# tmp2127, tmp910
	sw	a5,-1088(s0)	# tmp2127, %sfp
	lw	a5,-292(s0)		# tmp911, BCu
	not	a5,a5	# tmp2128, tmp911
	sw	a5,-1084(s0)	# tmp2128, %sfp
# fips202.c:219:             Eso =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp912, BCa
	lw	a4,-1088(s0)		# tmp2130, %sfp
	and	a5,a5,a4	# tmp2130, tmp2129, tmp912
	sw	a5,-1096(s0)	# tmp2129, %sfp
	lw	a5,-260(s0)		# tmp913, BCa
	lw	a4,-1084(s0)		# tmp2132, %sfp
	and	a5,a5,a4	# tmp2132, tmp2131, tmp913
	sw	a5,-1092(s0)	# tmp2131, %sfp
# fips202.c:219:             Eso =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp915, BCo
	lw	a4,-1096(s0)		# tmp2134, %sfp
	xor	a5,a5,a4	# tmp2134, tmp2133, tmp915
	addi	a4,a3,1832	#, tmp3555, tmp3556
	add	a4,a4,s0	#, tmp3555, tmp3555
	sw	a5,0(a4)	# tmp2133, %sfp
	lw	a5,-284(s0)		# tmp916, BCo
	lw	a4,-1092(s0)		# tmp2136, %sfp
	xor	a5,a5,a4	# tmp2136, tmp2135, tmp916
	addi	a4,a3,1836	#, tmp3552, tmp3553
	add	a4,a4,s0	#, tmp3552, tmp3552
	sw	a5,0(a4)	# tmp2135, %sfp
	addi	a5,a3,1832	#, tmp3549, tmp3550
	add	a5,a5,s0	#, tmp3549, tmp3549
	lw	a4,0(a5)		# tmp914, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-528(s0)	# tmp914, Eso
	sw	a5,-524(s0)	#, Eso
# fips202.c:220:             Esu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp917, BCa
	not	a5,a5	# tmp2138, tmp917
	sw	a5,-1104(s0)	# tmp2138, %sfp
	lw	a5,-260(s0)		# tmp918, BCa
	not	a5,a5	# tmp2139, tmp918
	sw	a5,-1100(s0)	# tmp2139, %sfp
# fips202.c:220:             Esu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp919, BCe
	lw	a4,-1104(s0)		# tmp2141, %sfp
	and	a5,a5,a4	# tmp2141, tmp2140, tmp919
	sw	a5,-1112(s0)	# tmp2140, %sfp
	lw	a5,-268(s0)		# tmp920, BCe
	lw	a4,-1100(s0)		# tmp2143, %sfp
	and	a5,a5,a4	# tmp2143, tmp2142, tmp920
	sw	a5,-1108(s0)	# tmp2142, %sfp
# fips202.c:220:             Esu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp922, BCu
	lw	a4,-1112(s0)		# tmp2145, %sfp
	xor	a5,a5,a4	# tmp2145, tmp2144, tmp922
	addi	a4,a3,1824	#, tmp3546, tmp3547
	add	a4,a4,s0	#, tmp3546, tmp3546
	sw	a5,0(a4)	# tmp2144, %sfp
	lw	a5,-292(s0)		# tmp923, BCu
	lw	a4,-1108(s0)		# tmp2147, %sfp
	xor	a5,a5,a4	# tmp2147, tmp2146, tmp923
	addi	a4,a3,1828	#, tmp3543, tmp3544
	add	a4,a4,s0	#, tmp3543, tmp3543
	sw	a5,0(a4)	# tmp2146, %sfp
	addi	a5,a3,1824	#, tmp3540, tmp3541
	add	a5,a5,s0	#, tmp3540, tmp3540
	lw	a4,0(a5)		# tmp921, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-536(s0)	# tmp921, Esu
	sw	a5,-532(s0)	#, Esu
# fips202.c:223:             BCa = Eba^Ega^Eka^Ema^Esa;
	lw	a4,-344(s0)		# tmp924, Eba
	lw	a5,-384(s0)		# tmp925, Ega
	xor	a5,a4,a5	# tmp925, tmp2149, tmp924
	sw	a5,-1120(s0)	# tmp2149, %sfp
	lw	a4,-340(s0)		# tmp926, Eba
	lw	a5,-380(s0)		# tmp927, Ega
	xor	a5,a4,a5	# tmp927, tmp2150, tmp926
	sw	a5,-1116(s0)	# tmp2150, %sfp
# fips202.c:223:             BCa = Eba^Ega^Eka^Ema^Esa;
	lw	a5,-424(s0)		# tmp928, Eka
	lw	a4,-1120(s0)		# tmp2152, %sfp
	xor	a5,a5,a4	# tmp2152, tmp2151, tmp928
	sw	a5,-1128(s0)	# tmp2151, %sfp
	lw	a5,-420(s0)		# tmp929, Eka
	lw	a4,-1116(s0)		# tmp2154, %sfp
	xor	a5,a5,a4	# tmp2154, tmp2153, tmp929
	sw	a5,-1124(s0)	# tmp2153, %sfp
# fips202.c:223:             BCa = Eba^Ega^Eka^Ema^Esa;
	lw	a5,-464(s0)		# tmp930, Ema
	lw	a4,-1128(s0)		# tmp2156, %sfp
	xor	a5,a5,a4	# tmp2156, tmp2155, tmp930
	sw	a5,-1136(s0)	# tmp2155, %sfp
	lw	a5,-460(s0)		# tmp931, Ema
	lw	a4,-1124(s0)		# tmp2158, %sfp
	xor	a5,a5,a4	# tmp2158, tmp2157, tmp931
	sw	a5,-1132(s0)	# tmp2157, %sfp
# fips202.c:223:             BCa = Eba^Ega^Eka^Ema^Esa;
	lw	a5,-504(s0)		# tmp933, Esa
	lw	a4,-1136(s0)		# tmp2160, %sfp
	xor	a5,a5,a4	# tmp2160, tmp2159, tmp933
	addi	a4,a3,1816	#, tmp3537, tmp3538
	add	a4,a4,s0	#, tmp3537, tmp3537
	sw	a5,0(a4)	# tmp2159, %sfp
	lw	a5,-500(s0)		# tmp934, Esa
	lw	a4,-1132(s0)		# tmp2162, %sfp
	xor	a5,a5,a4	# tmp2162, tmp2161, tmp934
	addi	a4,a3,1820	#, tmp3534, tmp3535
	add	a4,a4,s0	#, tmp3534, tmp3534
	sw	a5,0(a4)	# tmp2161, %sfp
	addi	a5,a3,1816	#, tmp3531, tmp3532
	add	a5,a5,s0	#, tmp3531, tmp3531
	lw	a4,0(a5)		# tmp932, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp932, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:224:             BCe = Ebe^Ege^Eke^Eme^Ese;
	lw	a4,-352(s0)		# tmp935, Ebe
	lw	a5,-392(s0)		# tmp936, Ege
	xor	a5,a4,a5	# tmp936, tmp2164, tmp935
	sw	a5,-1144(s0)	# tmp2164, %sfp
	lw	a4,-348(s0)		# tmp937, Ebe
	lw	a5,-388(s0)		# tmp938, Ege
	xor	a5,a4,a5	# tmp938, tmp2165, tmp937
	sw	a5,-1140(s0)	# tmp2165, %sfp
# fips202.c:224:             BCe = Ebe^Ege^Eke^Eme^Ese;
	lw	a5,-432(s0)		# tmp939, Eke
	lw	a4,-1144(s0)		# tmp2167, %sfp
	xor	a5,a5,a4	# tmp2167, tmp2166, tmp939
	sw	a5,-1152(s0)	# tmp2166, %sfp
	lw	a5,-428(s0)		# tmp940, Eke
	lw	a4,-1140(s0)		# tmp2169, %sfp
	xor	a5,a5,a4	# tmp2169, tmp2168, tmp940
	sw	a5,-1148(s0)	# tmp2168, %sfp
# fips202.c:224:             BCe = Ebe^Ege^Eke^Eme^Ese;
	lw	a5,-472(s0)		# tmp941, Eme
	lw	a4,-1152(s0)		# tmp2171, %sfp
	xor	a5,a5,a4	# tmp2171, tmp2170, tmp941
	sw	a5,-1160(s0)	# tmp2170, %sfp
	lw	a5,-468(s0)		# tmp942, Eme
	lw	a4,-1148(s0)		# tmp2173, %sfp
	xor	a5,a5,a4	# tmp2173, tmp2172, tmp942
	sw	a5,-1156(s0)	# tmp2172, %sfp
# fips202.c:224:             BCe = Ebe^Ege^Eke^Eme^Ese;
	lw	a5,-512(s0)		# tmp944, Ese
	lw	a4,-1160(s0)		# tmp2175, %sfp
	xor	a5,a5,a4	# tmp2175, tmp2174, tmp944
	addi	a4,a3,1808	#, tmp3528, tmp3529
	add	a4,a4,s0	#, tmp3528, tmp3528
	sw	a5,0(a4)	# tmp2174, %sfp
	lw	a5,-508(s0)		# tmp945, Ese
	lw	a4,-1156(s0)		# tmp2177, %sfp
	xor	a5,a5,a4	# tmp2177, tmp2176, tmp945
	addi	a4,a3,1812	#, tmp3525, tmp3526
	add	a4,a4,s0	#, tmp3525, tmp3525
	sw	a5,0(a4)	# tmp2176, %sfp
	addi	a5,a3,1808	#, tmp3522, tmp3523
	add	a5,a5,s0	#, tmp3522, tmp3522
	lw	a4,0(a5)		# tmp943, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp943, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:225:             BCi = Ebi^Egi^Eki^Emi^Esi;
	lw	a4,-360(s0)		# tmp946, Ebi
	lw	a5,-400(s0)		# tmp947, Egi
	xor	a5,a4,a5	# tmp947, tmp2179, tmp946
	sw	a5,-1168(s0)	# tmp2179, %sfp
	lw	a4,-356(s0)		# tmp948, Ebi
	lw	a5,-396(s0)		# tmp949, Egi
	xor	a5,a4,a5	# tmp949, tmp2180, tmp948
	sw	a5,-1164(s0)	# tmp2180, %sfp
# fips202.c:225:             BCi = Ebi^Egi^Eki^Emi^Esi;
	lw	a5,-440(s0)		# tmp950, Eki
	lw	a4,-1168(s0)		# tmp2182, %sfp
	xor	a5,a5,a4	# tmp2182, tmp2181, tmp950
	sw	a5,-1176(s0)	# tmp2181, %sfp
	lw	a5,-436(s0)		# tmp951, Eki
	lw	a4,-1164(s0)		# tmp2184, %sfp
	xor	a5,a5,a4	# tmp2184, tmp2183, tmp951
	sw	a5,-1172(s0)	# tmp2183, %sfp
# fips202.c:225:             BCi = Ebi^Egi^Eki^Emi^Esi;
	lw	a5,-480(s0)		# tmp952, Emi
	lw	a4,-1176(s0)		# tmp2186, %sfp
	xor	a5,a5,a4	# tmp2186, tmp2185, tmp952
	sw	a5,-1184(s0)	# tmp2185, %sfp
	lw	a5,-476(s0)		# tmp953, Emi
	lw	a4,-1172(s0)		# tmp2188, %sfp
	xor	a5,a5,a4	# tmp2188, tmp2187, tmp953
	sw	a5,-1180(s0)	# tmp2187, %sfp
# fips202.c:225:             BCi = Ebi^Egi^Eki^Emi^Esi;
	lw	a5,-520(s0)		# tmp955, Esi
	lw	a4,-1184(s0)		# tmp2190, %sfp
	xor	a5,a5,a4	# tmp2190, tmp2189, tmp955
	addi	a4,a3,1800	#, tmp3519, tmp3520
	add	a4,a4,s0	#, tmp3519, tmp3519
	sw	a5,0(a4)	# tmp2189, %sfp
	lw	a5,-516(s0)		# tmp956, Esi
	lw	a4,-1180(s0)		# tmp2192, %sfp
	xor	a5,a5,a4	# tmp2192, tmp2191, tmp956
	addi	a4,a3,1804	#, tmp3516, tmp3517
	add	a4,a4,s0	#, tmp3516, tmp3516
	sw	a5,0(a4)	# tmp2191, %sfp
	addi	a5,a3,1800	#, tmp3513, tmp3514
	add	a5,a5,s0	#, tmp3513, tmp3513
	lw	a4,0(a5)		# tmp954, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp954, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:226:             BCo = Ebo^Ego^Eko^Emo^Eso;
	lw	a4,-368(s0)		# tmp957, Ebo
	lw	a5,-408(s0)		# tmp958, Ego
	xor	a5,a4,a5	# tmp958, tmp2194, tmp957
	sw	a5,-1192(s0)	# tmp2194, %sfp
	lw	a4,-364(s0)		# tmp959, Ebo
	lw	a5,-404(s0)		# tmp960, Ego
	xor	a5,a4,a5	# tmp960, tmp2195, tmp959
	sw	a5,-1188(s0)	# tmp2195, %sfp
# fips202.c:226:             BCo = Ebo^Ego^Eko^Emo^Eso;
	lw	a5,-448(s0)		# tmp961, Eko
	lw	a4,-1192(s0)		# tmp2197, %sfp
	xor	a5,a5,a4	# tmp2197, tmp2196, tmp961
	sw	a5,-1200(s0)	# tmp2196, %sfp
	lw	a5,-444(s0)		# tmp962, Eko
	lw	a4,-1188(s0)		# tmp2199, %sfp
	xor	a5,a5,a4	# tmp2199, tmp2198, tmp962
	sw	a5,-1196(s0)	# tmp2198, %sfp
# fips202.c:226:             BCo = Ebo^Ego^Eko^Emo^Eso;
	lw	a5,-488(s0)		# tmp963, Emo
	lw	a4,-1200(s0)		# tmp2201, %sfp
	xor	a5,a5,a4	# tmp2201, tmp2200, tmp963
	sw	a5,-1208(s0)	# tmp2200, %sfp
	lw	a5,-484(s0)		# tmp964, Emo
	lw	a4,-1196(s0)		# tmp2203, %sfp
	xor	a5,a5,a4	# tmp2203, tmp2202, tmp964
	sw	a5,-1204(s0)	# tmp2202, %sfp
# fips202.c:226:             BCo = Ebo^Ego^Eko^Emo^Eso;
	lw	a5,-528(s0)		# tmp966, Eso
	lw	a4,-1208(s0)		# tmp2205, %sfp
	xor	a5,a5,a4	# tmp2205, tmp2204, tmp966
	addi	a4,a3,1792	#, tmp3510, tmp3511
	add	a4,a4,s0	#, tmp3510, tmp3510
	sw	a5,0(a4)	# tmp2204, %sfp
	lw	a5,-524(s0)		# tmp967, Eso
	lw	a4,-1204(s0)		# tmp2207, %sfp
	xor	a5,a5,a4	# tmp2207, tmp2206, tmp967
	addi	a4,a3,1796	#, tmp3507, tmp3508
	add	a4,a4,s0	#, tmp3507, tmp3507
	sw	a5,0(a4)	# tmp2206, %sfp
	addi	a5,a3,1792	#, tmp3504, tmp3505
	add	a5,a5,s0	#, tmp3504, tmp3504
	lw	a4,0(a5)		# tmp965, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp965, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:227:             BCu = Ebu^Egu^Eku^Emu^Esu;
	lw	a4,-376(s0)		# tmp968, Ebu
	lw	a5,-416(s0)		# tmp969, Egu
	xor	a5,a4,a5	# tmp969, tmp2209, tmp968
	sw	a5,-1216(s0)	# tmp2209, %sfp
	lw	a4,-372(s0)		# tmp970, Ebu
	lw	a5,-412(s0)		# tmp971, Egu
	xor	a5,a4,a5	# tmp971, tmp2210, tmp970
	sw	a5,-1212(s0)	# tmp2210, %sfp
# fips202.c:227:             BCu = Ebu^Egu^Eku^Emu^Esu;
	lw	a5,-456(s0)		# tmp972, Eku
	lw	a4,-1216(s0)		# tmp2212, %sfp
	xor	a5,a5,a4	# tmp2212, tmp2211, tmp972
	sw	a5,-1224(s0)	# tmp2211, %sfp
	lw	a5,-452(s0)		# tmp973, Eku
	lw	a4,-1212(s0)		# tmp2214, %sfp
	xor	a5,a5,a4	# tmp2214, tmp2213, tmp973
	sw	a5,-1220(s0)	# tmp2213, %sfp
# fips202.c:227:             BCu = Ebu^Egu^Eku^Emu^Esu;
	lw	a5,-496(s0)		# tmp974, Emu
	lw	a4,-1224(s0)		# tmp2216, %sfp
	xor	a5,a5,a4	# tmp2216, tmp2215, tmp974
	sw	a5,-1232(s0)	# tmp2215, %sfp
	lw	a5,-492(s0)		# tmp975, Emu
	lw	a4,-1220(s0)		# tmp2218, %sfp
	xor	a5,a5,a4	# tmp2218, tmp2217, tmp975
	sw	a5,-1228(s0)	# tmp2217, %sfp
# fips202.c:227:             BCu = Ebu^Egu^Eku^Emu^Esu;
	lw	a5,-536(s0)		# tmp977, Esu
	lw	a4,-1232(s0)		# tmp2220, %sfp
	xor	a5,a5,a4	# tmp2220, tmp2219, tmp977
	addi	a4,a3,1784	#, tmp3501, tmp3502
	add	a4,a4,s0	#, tmp3501, tmp3501
	sw	a5,0(a4)	# tmp2219, %sfp
	lw	a5,-532(s0)		# tmp978, Esu
	lw	a4,-1228(s0)		# tmp2222, %sfp
	xor	a5,a5,a4	# tmp2222, tmp2221, tmp978
	addi	a4,a3,1788	#, tmp3498, tmp3499
	add	a4,a4,s0	#, tmp3498, tmp3498
	sw	a5,0(a4)	# tmp2221, %sfp
	addi	a5,a3,1784	#, tmp3495, tmp3496
	add	a5,a5,s0	#, tmp3495, tmp3495
	lw	a4,0(a5)		# tmp976, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp976, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:230:             Da = BCu^ROL(BCe, 1);
	lw	a5,-272(s0)		# tmp980, BCe
	srli	a4,a5,31	#, tmp979, tmp980
	lw	a5,-268(s0)		# tmp982, BCe
	slli	a5,a5,1	#, tmp981, tmp982
	or	a5,a4,a5	# tmp981, tmp2224, tmp979
	sw	a5,-1236(s0)	# tmp2224, %sfp
	lw	a5,-268(s0)		# tmp984, BCe
	srli	a4,a5,31	#, tmp983, tmp984
	lw	a5,-272(s0)		# tmp986, BCe
	slli	a5,a5,1	#, tmp985, tmp986
	or	a5,a4,a5	# tmp985, tmp2225, tmp983
	sw	a5,-1240(s0)	# tmp2225, %sfp
# fips202.c:230:             Da = BCu^ROL(BCe, 1);
	lw	a5,-296(s0)		# tmp988, BCu
	lw	a4,-1240(s0)		# tmp2227, %sfp
	xor	a5,a5,a4	# tmp2227, tmp2226, tmp988
	addi	a4,a3,1776	#, tmp3492, tmp3493
	add	a4,a4,s0	#, tmp3492, tmp3492
	sw	a5,0(a4)	# tmp2226, %sfp
	lw	a5,-292(s0)		# tmp989, BCu
	lw	a4,-1236(s0)		# tmp2229, %sfp
	xor	a5,a5,a4	# tmp2229, tmp2228, tmp989
	addi	a4,a3,1780	#, tmp3489, tmp3490
	add	a4,a4,s0	#, tmp3489, tmp3489
	sw	a5,0(a4)	# tmp2228, %sfp
	addi	a5,a3,1776	#, tmp3486, tmp3487
	add	a5,a5,s0	#, tmp3486, tmp3486
	lw	a4,0(a5)		# tmp987, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-304(s0)	# tmp987, Da
	sw	a5,-300(s0)	#, Da
# fips202.c:231:             De = BCa^ROL(BCi, 1);
	lw	a5,-280(s0)		# tmp991, BCi
	srli	a4,a5,31	#, tmp990, tmp991
	lw	a5,-276(s0)		# tmp993, BCi
	slli	a5,a5,1	#, tmp992, tmp993
	or	a5,a4,a5	# tmp992, tmp2231, tmp990
	sw	a5,-1244(s0)	# tmp2231, %sfp
	lw	a5,-276(s0)		# tmp995, BCi
	srli	a4,a5,31	#, tmp994, tmp995
	lw	a5,-280(s0)		# tmp997, BCi
	slli	a5,a5,1	#, tmp996, tmp997
	or	a5,a4,a5	# tmp996, tmp2232, tmp994
	sw	a5,-1248(s0)	# tmp2232, %sfp
# fips202.c:231:             De = BCa^ROL(BCi, 1);
	lw	a5,-264(s0)		# tmp999, BCa
	lw	a4,-1248(s0)		# tmp2234, %sfp
	xor	a5,a5,a4	# tmp2234, tmp2233, tmp999
	addi	a4,a3,1768	#, tmp3483, tmp3484
	add	a4,a4,s0	#, tmp3483, tmp3483
	sw	a5,0(a4)	# tmp2233, %sfp
	lw	a5,-260(s0)		# tmp1000, BCa
	lw	a4,-1244(s0)		# tmp2236, %sfp
	xor	a5,a5,a4	# tmp2236, tmp2235, tmp1000
	addi	a4,a3,1772	#, tmp3480, tmp3481
	add	a4,a4,s0	#, tmp3480, tmp3480
	sw	a5,0(a4)	# tmp2235, %sfp
	addi	a5,a3,1768	#, tmp3477, tmp3478
	add	a5,a5,s0	#, tmp3477, tmp3477
	lw	a4,0(a5)		# tmp998, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-312(s0)	# tmp998, De
	sw	a5,-308(s0)	#, De
# fips202.c:232:             Di = BCe^ROL(BCo, 1);
	lw	a5,-288(s0)		# tmp1002, BCo
	srli	a4,a5,31	#, tmp1001, tmp1002
	lw	a5,-284(s0)		# tmp1004, BCo
	slli	a5,a5,1	#, tmp1003, tmp1004
	or	a5,a4,a5	# tmp1003, tmp2238, tmp1001
	sw	a5,-1252(s0)	# tmp2238, %sfp
	lw	a5,-284(s0)		# tmp1006, BCo
	srli	a4,a5,31	#, tmp1005, tmp1006
	lw	a5,-288(s0)		# tmp1008, BCo
	slli	a5,a5,1	#, tmp1007, tmp1008
	or	a5,a4,a5	# tmp1007, tmp2239, tmp1005
	sw	a5,-1256(s0)	# tmp2239, %sfp
# fips202.c:232:             Di = BCe^ROL(BCo, 1);
	lw	a5,-272(s0)		# tmp1010, BCe
	lw	a4,-1256(s0)		# tmp2241, %sfp
	xor	a5,a5,a4	# tmp2241, tmp2240, tmp1010
	addi	a4,a3,1760	#, tmp3474, tmp3475
	add	a4,a4,s0	#, tmp3474, tmp3474
	sw	a5,0(a4)	# tmp2240, %sfp
	lw	a5,-268(s0)		# tmp1011, BCe
	lw	a4,-1252(s0)		# tmp2243, %sfp
	xor	a5,a5,a4	# tmp2243, tmp2242, tmp1011
	addi	a4,a3,1764	#, tmp3471, tmp3472
	add	a4,a4,s0	#, tmp3471, tmp3471
	sw	a5,0(a4)	# tmp2242, %sfp
	addi	a5,a3,1760	#, tmp3468, tmp3469
	add	a5,a5,s0	#, tmp3468, tmp3468
	lw	a4,0(a5)		# tmp1009, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-320(s0)	# tmp1009, Di
	sw	a5,-316(s0)	#, Di
# fips202.c:233:             Do = BCi^ROL(BCu, 1);
	lw	a5,-296(s0)		# tmp1013, BCu
	srli	a4,a5,31	#, tmp1012, tmp1013
	lw	a5,-292(s0)		# tmp1015, BCu
	slli	a5,a5,1	#, tmp1014, tmp1015
	or	a5,a4,a5	# tmp1014, tmp2245, tmp1012
	sw	a5,-1260(s0)	# tmp2245, %sfp
	lw	a5,-292(s0)		# tmp1017, BCu
	srli	a4,a5,31	#, tmp1016, tmp1017
	lw	a5,-296(s0)		# tmp1019, BCu
	slli	a5,a5,1	#, tmp1018, tmp1019
	or	a5,a4,a5	# tmp1018, tmp2246, tmp1016
	sw	a5,-1264(s0)	# tmp2246, %sfp
# fips202.c:233:             Do = BCi^ROL(BCu, 1);
	lw	a5,-280(s0)		# tmp1021, BCi
	lw	a4,-1264(s0)		# tmp2248, %sfp
	xor	a5,a5,a4	# tmp2248, tmp2247, tmp1021
	addi	a4,a3,1752	#, tmp3465, tmp3466
	add	a4,a4,s0	#, tmp3465, tmp3465
	sw	a5,0(a4)	# tmp2247, %sfp
	lw	a5,-276(s0)		# tmp1022, BCi
	lw	a4,-1260(s0)		# tmp2250, %sfp
	xor	a5,a5,a4	# tmp2250, tmp2249, tmp1022
	addi	a4,a3,1756	#, tmp3462, tmp3463
	add	a4,a4,s0	#, tmp3462, tmp3462
	sw	a5,0(a4)	# tmp2249, %sfp
	addi	a5,a3,1752	#, tmp3459, tmp3460
	add	a5,a5,s0	#, tmp3459, tmp3459
	lw	a4,0(a5)		# tmp1020, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-328(s0)	# tmp1020, Do
	sw	a5,-324(s0)	#, Do
# fips202.c:234:             Du = BCo^ROL(BCa, 1);
	lw	a5,-264(s0)		# tmp1024, BCa
	srli	a4,a5,31	#, tmp1023, tmp1024
	lw	a5,-260(s0)		# tmp1026, BCa
	slli	a5,a5,1	#, tmp1025, tmp1026
	or	a5,a4,a5	# tmp1025, tmp2252, tmp1023
	sw	a5,-1268(s0)	# tmp2252, %sfp
	lw	a5,-260(s0)		# tmp1028, BCa
	srli	a4,a5,31	#, tmp1027, tmp1028
	lw	a5,-264(s0)		# tmp1030, BCa
	slli	a5,a5,1	#, tmp1029, tmp1030
	or	a5,a4,a5	# tmp1029, tmp2253, tmp1027
	sw	a5,-1272(s0)	# tmp2253, %sfp
# fips202.c:234:             Du = BCo^ROL(BCa, 1);
	lw	a5,-288(s0)		# tmp1032, BCo
	lw	a4,-1272(s0)		# tmp2255, %sfp
	xor	a5,a5,a4	# tmp2255, tmp2254, tmp1032
	addi	a4,a3,1744	#, tmp3456, tmp3457
	add	a4,a4,s0	#, tmp3456, tmp3456
	sw	a5,0(a4)	# tmp2254, %sfp
	lw	a5,-284(s0)		# tmp1033, BCo
	lw	a4,-1268(s0)		# tmp2257, %sfp
	xor	a5,a5,a4	# tmp2257, tmp2256, tmp1033
	addi	a4,a3,1748	#, tmp3453, tmp3454
	add	a4,a4,s0	#, tmp3453, tmp3453
	sw	a5,0(a4)	# tmp2256, %sfp
	addi	a5,a3,1744	#, tmp3450, tmp3451
	add	a5,a5,s0	#, tmp3450, tmp3450
	lw	a4,0(a5)		# tmp1031, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-336(s0)	# tmp1031, Du
	sw	a5,-332(s0)	#, Du
# fips202.c:236:             Eba ^= Da;
	lw	a4,-344(s0)		# tmp1035, Eba
	lw	a5,-304(s0)		# tmp1036, Da
	xor	a5,a4,a5	# tmp1036, tmp2259, tmp1035
	addi	a4,a3,1736	#, tmp3447, tmp3448
	add	a4,a4,s0	#, tmp3447, tmp3447
	sw	a5,0(a4)	# tmp2259, %sfp
	lw	a4,-340(s0)		# tmp1037, Eba
	lw	a5,-300(s0)		# tmp1038, Da
	xor	a5,a4,a5	# tmp1038, tmp2260, tmp1037
	addi	a4,a3,1740	#, tmp3444, tmp3445
	add	a4,a4,s0	#, tmp3444, tmp3444
	sw	a5,0(a4)	# tmp2260, %sfp
	addi	a5,a3,1736	#, tmp3441, tmp3442
	add	a5,a5,s0	#, tmp3441, tmp3441
	lw	a4,0(a5)		# tmp1034, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-344(s0)	# tmp1034, Eba
	sw	a5,-340(s0)	#, Eba
# fips202.c:237:             BCa = Eba;
	lw	a4,-344(s0)		# tmp1039, Eba
	lw	a5,-340(s0)		#, Eba
	sw	a4,-264(s0)	# tmp1039, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:238:             Ege ^= De;
	lw	a4,-392(s0)		# tmp1041, Ege
	lw	a5,-312(s0)		# tmp1042, De
	xor	a5,a4,a5	# tmp1042, tmp2262, tmp1041
	addi	a4,a3,1728	#, tmp3438, tmp3439
	add	a4,a4,s0	#, tmp3438, tmp3438
	sw	a5,0(a4)	# tmp2262, %sfp
	lw	a4,-388(s0)		# tmp1043, Ege
	lw	a5,-308(s0)		# tmp1044, De
	xor	a5,a4,a5	# tmp1044, tmp2263, tmp1043
	addi	a4,a3,1732	#, tmp3435, tmp3436
	add	a4,a4,s0	#, tmp3435, tmp3435
	sw	a5,0(a4)	# tmp2263, %sfp
	addi	a5,a3,1728	#, tmp3432, tmp3433
	add	a5,a5,s0	#, tmp3432, tmp3432
	lw	a4,0(a5)		# tmp1040, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-392(s0)	# tmp1040, Ege
	sw	a5,-388(s0)	#, Ege
# fips202.c:239:             BCe = ROL(Ege, 44);
	lw	a5,-388(s0)		# tmp1047, Ege
	slli	a4,a5,12	#, tmp1046, tmp1047
	lw	a5,-392(s0)		# tmp1049, Ege
	srli	a5,a5,20	#, tmp1048, tmp1049
	or	a5,a4,a5	# tmp1048, tmp2265, tmp1046
	addi	a4,a3,1720	#, tmp3429, tmp3430
	add	a4,a4,s0	#, tmp3429, tmp3429
	sw	a5,0(a4)	# tmp2265, %sfp
	lw	a5,-392(s0)		# tmp1051, Ege
	slli	a4,a5,12	#, tmp1050, tmp1051
	lw	a5,-388(s0)		# tmp1053, Ege
	srli	a5,a5,20	#, tmp1052, tmp1053
	or	a5,a4,a5	# tmp1052, tmp2266, tmp1050
	addi	a4,a3,1724	#, tmp3426, tmp3427
	add	a4,a4,s0	#, tmp3426, tmp3426
	sw	a5,0(a4)	# tmp2266, %sfp
	addi	a5,a3,1720	#, tmp3423, tmp3424
	add	a5,a5,s0	#, tmp3423, tmp3423
	lw	a4,0(a5)		# tmp1045, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp1045, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:240:             Eki ^= Di;
	lw	a4,-440(s0)		# tmp1055, Eki
	lw	a5,-320(s0)		# tmp1056, Di
	xor	a5,a4,a5	# tmp1056, tmp2268, tmp1055
	addi	a4,a3,1712	#, tmp3420, tmp3421
	add	a4,a4,s0	#, tmp3420, tmp3420
	sw	a5,0(a4)	# tmp2268, %sfp
	lw	a4,-436(s0)		# tmp1057, Eki
	lw	a5,-316(s0)		# tmp1058, Di
	xor	a5,a4,a5	# tmp1058, tmp2269, tmp1057
	addi	a4,a3,1716	#, tmp3417, tmp3418
	add	a4,a4,s0	#, tmp3417, tmp3417
	sw	a5,0(a4)	# tmp2269, %sfp
	addi	a5,a3,1712	#, tmp3414, tmp3415
	add	a5,a5,s0	#, tmp3414, tmp3414
	lw	a4,0(a5)		# tmp1054, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-440(s0)	# tmp1054, Eki
	sw	a5,-436(s0)	#, Eki
# fips202.c:241:             BCi = ROL(Eki, 43);
	lw	a5,-436(s0)		# tmp1061, Eki
	slli	a4,a5,11	#, tmp1060, tmp1061
	lw	a5,-440(s0)		# tmp1063, Eki
	srli	a5,a5,21	#, tmp1062, tmp1063
	or	a5,a4,a5	# tmp1062, tmp2271, tmp1060
	addi	a4,a3,1704	#, tmp3411, tmp3412
	add	a4,a4,s0	#, tmp3411, tmp3411
	sw	a5,0(a4)	# tmp2271, %sfp
	lw	a5,-440(s0)		# tmp1065, Eki
	slli	a4,a5,11	#, tmp1064, tmp1065
	lw	a5,-436(s0)		# tmp1067, Eki
	srli	a5,a5,21	#, tmp1066, tmp1067
	or	a5,a4,a5	# tmp1066, tmp2272, tmp1064
	addi	a4,a3,1708	#, tmp3408, tmp3409
	add	a4,a4,s0	#, tmp3408, tmp3408
	sw	a5,0(a4)	# tmp2272, %sfp
	addi	a5,a3,1704	#, tmp3405, tmp3406
	add	a5,a5,s0	#, tmp3405, tmp3405
	lw	a4,0(a5)		# tmp1059, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp1059, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:242:             Emo ^= Do;
	lw	a4,-488(s0)		# tmp1069, Emo
	lw	a5,-328(s0)		# tmp1070, Do
	xor	a5,a4,a5	# tmp1070, tmp2274, tmp1069
	addi	a4,a3,1696	#, tmp3402, tmp3403
	add	a4,a4,s0	#, tmp3402, tmp3402
	sw	a5,0(a4)	# tmp2274, %sfp
	lw	a4,-484(s0)		# tmp1071, Emo
	lw	a5,-324(s0)		# tmp1072, Do
	xor	a5,a4,a5	# tmp1072, tmp2275, tmp1071
	addi	a4,a3,1700	#, tmp3399, tmp3400
	add	a4,a4,s0	#, tmp3399, tmp3399
	sw	a5,0(a4)	# tmp2275, %sfp
	addi	a5,a3,1696	#, tmp3396, tmp3397
	add	a5,a5,s0	#, tmp3396, tmp3396
	lw	a4,0(a5)		# tmp1068, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-488(s0)	# tmp1068, Emo
	sw	a5,-484(s0)	#, Emo
# fips202.c:243:             BCo = ROL(Emo, 21);
	lw	a5,-488(s0)		# tmp1075, Emo
	srli	a4,a5,11	#, tmp1074, tmp1075
	lw	a5,-484(s0)		# tmp1077, Emo
	slli	a5,a5,21	#, tmp1076, tmp1077
	or	a5,a4,a5	# tmp1076, tmp2277, tmp1074
	addi	a4,a3,1692	#, tmp3393, tmp3394
	add	a4,a4,s0	#, tmp3393, tmp3393
	sw	a5,0(a4)	# tmp2277, %sfp
	lw	a5,-484(s0)		# tmp1079, Emo
	srli	a4,a5,11	#, tmp1078, tmp1079
	lw	a5,-488(s0)		# tmp1081, Emo
	slli	a5,a5,21	#, tmp1080, tmp1081
	or	a5,a4,a5	# tmp1080, tmp2278, tmp1078
	addi	a4,a3,1688	#, tmp3390, tmp3391
	add	a4,a4,s0	#, tmp3390, tmp3390
	sw	a5,0(a4)	# tmp2278, %sfp
	addi	a5,a3,1688	#, tmp3387, tmp3388
	add	a5,a5,s0	#, tmp3387, tmp3387
	lw	a4,0(a5)		# tmp1073, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp1073, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:244:             Esu ^= Du;
	lw	a4,-536(s0)		# tmp1083, Esu
	lw	a5,-336(s0)		# tmp1084, Du
	xor	a5,a4,a5	# tmp1084, tmp2280, tmp1083
	addi	a4,a3,1680	#, tmp3384, tmp3385
	add	a4,a4,s0	#, tmp3384, tmp3384
	sw	a5,0(a4)	# tmp2280, %sfp
	lw	a4,-532(s0)		# tmp1085, Esu
	lw	a5,-332(s0)		# tmp1086, Du
	xor	a5,a4,a5	# tmp1086, tmp2281, tmp1085
	addi	a4,a3,1684	#, tmp3381, tmp3382
	add	a4,a4,s0	#, tmp3381, tmp3381
	sw	a5,0(a4)	# tmp2281, %sfp
	addi	a5,a3,1680	#, tmp3378, tmp3379
	add	a5,a5,s0	#, tmp3378, tmp3378
	lw	a4,0(a5)		# tmp1082, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-536(s0)	# tmp1082, Esu
	sw	a5,-532(s0)	#, Esu
# fips202.c:245:             BCu = ROL(Esu, 14);
	lw	a5,-536(s0)		# tmp1089, Esu
	srli	a4,a5,18	#, tmp1088, tmp1089
	lw	a5,-532(s0)		# tmp1091, Esu
	slli	a5,a5,14	#, tmp1090, tmp1091
	or	a5,a4,a5	# tmp1090, tmp2283, tmp1088
	addi	a4,a3,1676	#, tmp3375, tmp3376
	add	a4,a4,s0	#, tmp3375, tmp3375
	sw	a5,0(a4)	# tmp2283, %sfp
	lw	a5,-532(s0)		# tmp1093, Esu
	srli	a4,a5,18	#, tmp1092, tmp1093
	lw	a5,-536(s0)		# tmp1095, Esu
	slli	a5,a5,14	#, tmp1094, tmp1095
	or	a5,a4,a5	# tmp1094, tmp2284, tmp1092
	addi	a4,a3,1672	#, tmp3372, tmp3373
	add	a4,a4,s0	#, tmp3372, tmp3372
	sw	a5,0(a4)	# tmp2284, %sfp
	addi	a5,a3,1672	#, tmp3369, tmp3370
	add	a5,a5,s0	#, tmp3369, tmp3369
	lw	a4,0(a5)		# tmp1087, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp1087, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:246:             Aba =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp1096, BCe
	not	a5,a5	# tmp2286, tmp1096
	sw	a5,-1280(s0)	# tmp2286, %sfp
	lw	a5,-268(s0)		# tmp1097, BCe
	not	a5,a5	# tmp2287, tmp1097
	sw	a5,-1276(s0)	# tmp2287, %sfp
# fips202.c:246:             Aba =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp1098, BCi
	lw	a4,-1280(s0)		# tmp2289, %sfp
	and	a5,a5,a4	# tmp2289, tmp2288, tmp1098
	sw	a5,-1288(s0)	# tmp2288, %sfp
	lw	a5,-276(s0)		# tmp1099, BCi
	lw	a4,-1276(s0)		# tmp2291, %sfp
	and	a5,a5,a4	# tmp2291, tmp2290, tmp1099
	sw	a5,-1284(s0)	# tmp2290, %sfp
# fips202.c:246:             Aba =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp1101, BCa
	lw	a4,-1288(s0)		# tmp2293, %sfp
	xor	a5,a5,a4	# tmp2293, tmp2292, tmp1101
	addi	a4,a3,1664	#, tmp3366, tmp3367
	add	a4,a4,s0	#, tmp3366, tmp3366
	sw	a5,0(a4)	# tmp2292, %sfp
	lw	a5,-260(s0)		# tmp1102, BCa
	lw	a4,-1284(s0)		# tmp2295, %sfp
	xor	a5,a5,a4	# tmp2295, tmp2294, tmp1102
	addi	a4,a3,1668	#, tmp3363, tmp3364
	add	a4,a4,s0	#, tmp3363, tmp3363
	sw	a5,0(a4)	# tmp2294, %sfp
	mv	a0,a3	# tmp3361, tmp3361
	addi	a5,a3,1664	#, tmp3360, tmp3361
	add	a5,a5,s0	#, tmp3360, tmp3360
	lw	a4,0(a5)		# tmp1100, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-64(s0)	# tmp1100, Aba
	sw	a5,-60(s0)	#, Aba
# fips202.c:247:             Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
	lw	a5,-52(s0)		# tmp1103, round
	addi	a3,a5,1	#, _94, tmp1103
# fips202.c:247:             Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
	lui	a5,%hi(KeccakF_RoundConstants)	# tmp1104,
	addi	a4,a5,%lo(KeccakF_RoundConstants)	# tmp1105, tmp1104,
	slli	a5,a3,3	#, tmp1106, _94
	add	a5,a4,a5	# tmp1106, tmp1107, tmp1105
	lw	a4,0(a5)		# _95, KeccakF_RoundConstants[_94]
	lw	a5,4(a5)		# _95, KeccakF_RoundConstants[_94]
# fips202.c:247:             Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
	lw	a3,-64(s0)		# tmp1109, Aba
	xor	a3,a3,a4	# _95, tmp2297, tmp1109
	addi	t0,a0,1656	#, tmp3357, tmp3358
	add	t0,t0,s0	#, tmp3357, tmp3357
	sw	a3,0(t0)	# tmp2297, %sfp
	lw	a3,-60(s0)		# tmp1110, Aba
	xor	a5,a3,a5	# _95, tmp2298, tmp1110
	addi	a4,a0,1660	#, tmp3354, tmp3355
	add	a4,a4,s0	#, tmp3354, tmp3354
	sw	a5,0(a4)	# tmp2298, %sfp
	mv	a3,a0	# tmp3352, tmp3352
	addi	a5,a0,1656	#, tmp3351, tmp3352
	add	a5,a5,s0	#, tmp3351, tmp3351
	lw	a4,0(a5)		# tmp1108, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-64(s0)	# tmp1108, Aba
	sw	a5,-60(s0)	#, Aba
# fips202.c:248:             Abe =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp1111, BCi
	not	a5,a5	# tmp2300, tmp1111
	sw	a5,-1296(s0)	# tmp2300, %sfp
	lw	a5,-276(s0)		# tmp1112, BCi
	not	a5,a5	# tmp2301, tmp1112
	sw	a5,-1292(s0)	# tmp2301, %sfp
# fips202.c:248:             Abe =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp1113, BCo
	lw	a4,-1296(s0)		# tmp2303, %sfp
	and	a5,a5,a4	# tmp2303, tmp2302, tmp1113
	sw	a5,-1304(s0)	# tmp2302, %sfp
	lw	a5,-284(s0)		# tmp1114, BCo
	lw	a4,-1292(s0)		# tmp2305, %sfp
	and	a5,a5,a4	# tmp2305, tmp2304, tmp1114
	sw	a5,-1300(s0)	# tmp2304, %sfp
# fips202.c:248:             Abe =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp1116, BCe
	lw	a4,-1304(s0)		# tmp2307, %sfp
	xor	a5,a5,a4	# tmp2307, tmp2306, tmp1116
	addi	a4,a3,1648	#, tmp3348, tmp3349
	add	a4,a4,s0	#, tmp3348, tmp3348
	sw	a5,0(a4)	# tmp2306, %sfp
	lw	a5,-268(s0)		# tmp1117, BCe
	lw	a4,-1300(s0)		# tmp2309, %sfp
	xor	a5,a5,a4	# tmp2309, tmp2308, tmp1117
	addi	a4,a3,1652	#, tmp3345, tmp3346
	add	a4,a4,s0	#, tmp3345, tmp3345
	sw	a5,0(a4)	# tmp2308, %sfp
	addi	a5,a3,1648	#, tmp3342, tmp3343
	add	a5,a5,s0	#, tmp3342, tmp3342
	lw	a4,0(a5)		# tmp1115, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-72(s0)	# tmp1115, Abe
	sw	a5,-68(s0)	#, Abe
# fips202.c:249:             Abi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp1118, BCo
	not	a5,a5	# tmp2311, tmp1118
	sw	a5,-1312(s0)	# tmp2311, %sfp
	lw	a5,-284(s0)		# tmp1119, BCo
	not	a5,a5	# tmp2312, tmp1119
	sw	a5,-1308(s0)	# tmp2312, %sfp
# fips202.c:249:             Abi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp1120, BCu
	lw	a4,-1312(s0)		# tmp2314, %sfp
	and	a5,a5,a4	# tmp2314, tmp2313, tmp1120
	sw	a5,-1320(s0)	# tmp2313, %sfp
	lw	a5,-292(s0)		# tmp1121, BCu
	lw	a4,-1308(s0)		# tmp2316, %sfp
	and	a5,a5,a4	# tmp2316, tmp2315, tmp1121
	sw	a5,-1316(s0)	# tmp2315, %sfp
# fips202.c:249:             Abi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp1123, BCi
	lw	a4,-1320(s0)		# tmp2318, %sfp
	xor	a5,a5,a4	# tmp2318, tmp2317, tmp1123
	addi	a4,a3,1640	#, tmp3339, tmp3340
	add	a4,a4,s0	#, tmp3339, tmp3339
	sw	a5,0(a4)	# tmp2317, %sfp
	lw	a5,-276(s0)		# tmp1124, BCi
	lw	a4,-1316(s0)		# tmp2320, %sfp
	xor	a5,a5,a4	# tmp2320, tmp2319, tmp1124
	addi	a4,a3,1644	#, tmp3336, tmp3337
	add	a4,a4,s0	#, tmp3336, tmp3336
	sw	a5,0(a4)	# tmp2319, %sfp
	addi	a5,a3,1640	#, tmp3333, tmp3334
	add	a5,a5,s0	#, tmp3333, tmp3333
	lw	a4,0(a5)		# tmp1122, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-80(s0)	# tmp1122, Abi
	sw	a5,-76(s0)	#, Abi
# fips202.c:250:             Abo =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp1125, BCu
	not	a5,a5	# tmp2322, tmp1125
	sw	a5,-1328(s0)	# tmp2322, %sfp
	lw	a5,-292(s0)		# tmp1126, BCu
	not	a5,a5	# tmp2323, tmp1126
	sw	a5,-1324(s0)	# tmp2323, %sfp
# fips202.c:250:             Abo =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp1127, BCa
	lw	a4,-1328(s0)		# tmp2325, %sfp
	and	a5,a5,a4	# tmp2325, tmp2324, tmp1127
	sw	a5,-1336(s0)	# tmp2324, %sfp
	lw	a5,-260(s0)		# tmp1128, BCa
	lw	a4,-1324(s0)		# tmp2327, %sfp
	and	a5,a5,a4	# tmp2327, tmp2326, tmp1128
	sw	a5,-1332(s0)	# tmp2326, %sfp
# fips202.c:250:             Abo =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp1130, BCo
	lw	a4,-1336(s0)		# tmp2329, %sfp
	xor	a5,a5,a4	# tmp2329, tmp2328, tmp1130
	addi	a4,a3,1632	#, tmp3330, tmp3331
	add	a4,a4,s0	#, tmp3330, tmp3330
	sw	a5,0(a4)	# tmp2328, %sfp
	lw	a5,-284(s0)		# tmp1131, BCo
	lw	a4,-1332(s0)		# tmp2331, %sfp
	xor	a5,a5,a4	# tmp2331, tmp2330, tmp1131
	addi	a4,a3,1636	#, tmp3327, tmp3328
	add	a4,a4,s0	#, tmp3327, tmp3327
	sw	a5,0(a4)	# tmp2330, %sfp
	addi	a5,a3,1632	#, tmp3324, tmp3325
	add	a5,a5,s0	#, tmp3324, tmp3324
	lw	a4,0(a5)		# tmp1129, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-88(s0)	# tmp1129, Abo
	sw	a5,-84(s0)	#, Abo
# fips202.c:251:             Abu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp1132, BCa
	not	a5,a5	# tmp2333, tmp1132
	sw	a5,-1344(s0)	# tmp2333, %sfp
	lw	a5,-260(s0)		# tmp1133, BCa
	not	a5,a5	# tmp2334, tmp1133
	sw	a5,-1340(s0)	# tmp2334, %sfp
# fips202.c:251:             Abu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp1134, BCe
	lw	a4,-1344(s0)		# tmp2336, %sfp
	and	a5,a5,a4	# tmp2336, tmp2335, tmp1134
	sw	a5,-1352(s0)	# tmp2335, %sfp
	lw	a5,-268(s0)		# tmp1135, BCe
	lw	a4,-1340(s0)		# tmp2338, %sfp
	and	a5,a5,a4	# tmp2338, tmp2337, tmp1135
	sw	a5,-1348(s0)	# tmp2337, %sfp
# fips202.c:251:             Abu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp1137, BCu
	lw	a4,-1352(s0)		# tmp2340, %sfp
	xor	a5,a5,a4	# tmp2340, tmp2339, tmp1137
	addi	a4,a3,1624	#, tmp3321, tmp3322
	add	a4,a4,s0	#, tmp3321, tmp3321
	sw	a5,0(a4)	# tmp2339, %sfp
	lw	a5,-292(s0)		# tmp1138, BCu
	lw	a4,-1348(s0)		# tmp2342, %sfp
	xor	a5,a5,a4	# tmp2342, tmp2341, tmp1138
	addi	a4,a3,1628	#, tmp3318, tmp3319
	add	a4,a4,s0	#, tmp3318, tmp3318
	sw	a5,0(a4)	# tmp2341, %sfp
	addi	a5,a3,1624	#, tmp3315, tmp3316
	add	a5,a5,s0	#, tmp3315, tmp3315
	lw	a4,0(a5)		# tmp1136, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-96(s0)	# tmp1136, Abu
	sw	a5,-92(s0)	#, Abu
# fips202.c:253:             Ebo ^= Do;
	lw	a4,-368(s0)		# tmp1140, Ebo
	lw	a5,-328(s0)		# tmp1141, Do
	xor	a5,a4,a5	# tmp1141, tmp2344, tmp1140
	addi	a4,a3,1616	#, tmp3312, tmp3313
	add	a4,a4,s0	#, tmp3312, tmp3312
	sw	a5,0(a4)	# tmp2344, %sfp
	lw	a4,-364(s0)		# tmp1142, Ebo
	lw	a5,-324(s0)		# tmp1143, Do
	xor	a5,a4,a5	# tmp1143, tmp2345, tmp1142
	addi	a4,a3,1620	#, tmp3309, tmp3310
	add	a4,a4,s0	#, tmp3309, tmp3309
	sw	a5,0(a4)	# tmp2345, %sfp
	addi	a5,a3,1616	#, tmp3306, tmp3307
	add	a5,a5,s0	#, tmp3306, tmp3306
	lw	a4,0(a5)		# tmp1139, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-368(s0)	# tmp1139, Ebo
	sw	a5,-364(s0)	#, Ebo
# fips202.c:254:             BCa = ROL(Ebo, 28);
	lw	a5,-368(s0)		# tmp1146, Ebo
	srli	a4,a5,4	#, tmp1145, tmp1146
	lw	a5,-364(s0)		# tmp1148, Ebo
	slli	a5,a5,28	#, tmp1147, tmp1148
	or	a5,a4,a5	# tmp1147, tmp2347, tmp1145
	addi	a4,a3,1612	#, tmp3303, tmp3304
	add	a4,a4,s0	#, tmp3303, tmp3303
	sw	a5,0(a4)	# tmp2347, %sfp
	lw	a5,-364(s0)		# tmp1150, Ebo
	srli	a4,a5,4	#, tmp1149, tmp1150
	lw	a5,-368(s0)		# tmp1152, Ebo
	slli	a5,a5,28	#, tmp1151, tmp1152
	or	a5,a4,a5	# tmp1151, tmp2348, tmp1149
	addi	a4,a3,1608	#, tmp3300, tmp3301
	add	a4,a4,s0	#, tmp3300, tmp3300
	sw	a5,0(a4)	# tmp2348, %sfp
	addi	a5,a3,1608	#, tmp3297, tmp3298
	add	a5,a5,s0	#, tmp3297, tmp3297
	lw	a4,0(a5)		# tmp1144, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp1144, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:255:             Egu ^= Du;
	lw	a4,-416(s0)		# tmp1154, Egu
	lw	a5,-336(s0)		# tmp1155, Du
	xor	a5,a4,a5	# tmp1155, tmp2350, tmp1154
	addi	a4,a3,1600	#, tmp3294, tmp3295
	add	a4,a4,s0	#, tmp3294, tmp3294
	sw	a5,0(a4)	# tmp2350, %sfp
	lw	a4,-412(s0)		# tmp1156, Egu
	lw	a5,-332(s0)		# tmp1157, Du
	xor	a5,a4,a5	# tmp1157, tmp2351, tmp1156
	addi	a4,a3,1604	#, tmp3291, tmp3292
	add	a4,a4,s0	#, tmp3291, tmp3291
	sw	a5,0(a4)	# tmp2351, %sfp
	addi	a5,a3,1600	#, tmp3288, tmp3289
	add	a5,a5,s0	#, tmp3288, tmp3288
	lw	a4,0(a5)		# tmp1153, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-416(s0)	# tmp1153, Egu
	sw	a5,-412(s0)	#, Egu
# fips202.c:256:             BCe = ROL(Egu, 20);
	lw	a5,-416(s0)		# tmp1160, Egu
	srli	a4,a5,12	#, tmp1159, tmp1160
	lw	a5,-412(s0)		# tmp1162, Egu
	slli	a5,a5,20	#, tmp1161, tmp1162
	or	a5,a4,a5	# tmp1161, tmp2353, tmp1159
	addi	a4,a3,1596	#, tmp3285, tmp3286
	add	a4,a4,s0	#, tmp3285, tmp3285
	sw	a5,0(a4)	# tmp2353, %sfp
	lw	a5,-412(s0)		# tmp1164, Egu
	srli	a4,a5,12	#, tmp1163, tmp1164
	lw	a5,-416(s0)		# tmp1166, Egu
	slli	a5,a5,20	#, tmp1165, tmp1166
	or	a5,a4,a5	# tmp1165, tmp2354, tmp1163
	addi	a4,a3,1592	#, tmp3282, tmp3283
	add	a4,a4,s0	#, tmp3282, tmp3282
	sw	a5,0(a4)	# tmp2354, %sfp
	addi	a5,a3,1592	#, tmp3279, tmp3280
	add	a5,a5,s0	#, tmp3279, tmp3279
	lw	a4,0(a5)		# tmp1158, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp1158, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:257:             Eka ^= Da;
	lw	a4,-424(s0)		# tmp1168, Eka
	lw	a5,-304(s0)		# tmp1169, Da
	xor	a5,a4,a5	# tmp1169, tmp2356, tmp1168
	addi	a4,a3,1584	#, tmp3276, tmp3277
	add	a4,a4,s0	#, tmp3276, tmp3276
	sw	a5,0(a4)	# tmp2356, %sfp
	lw	a4,-420(s0)		# tmp1170, Eka
	lw	a5,-300(s0)		# tmp1171, Da
	xor	a5,a4,a5	# tmp1171, tmp2357, tmp1170
	addi	a4,a3,1588	#, tmp3273, tmp3274
	add	a4,a4,s0	#, tmp3273, tmp3273
	sw	a5,0(a4)	# tmp2357, %sfp
	addi	a5,a3,1584	#, tmp3270, tmp3271
	add	a5,a5,s0	#, tmp3270, tmp3270
	lw	a4,0(a5)		# tmp1167, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-424(s0)	# tmp1167, Eka
	sw	a5,-420(s0)	#, Eka
# fips202.c:258:             BCi = ROL(Eka, 3);
	lw	a5,-424(s0)		# tmp1174, Eka
	srli	a4,a5,29	#, tmp1173, tmp1174
	lw	a5,-420(s0)		# tmp1176, Eka
	slli	a5,a5,3	#, tmp1175, tmp1176
	or	a5,a4,a5	# tmp1175, tmp2359, tmp1173
	addi	a4,a3,1580	#, tmp3267, tmp3268
	add	a4,a4,s0	#, tmp3267, tmp3267
	sw	a5,0(a4)	# tmp2359, %sfp
	lw	a5,-420(s0)		# tmp1178, Eka
	srli	a4,a5,29	#, tmp1177, tmp1178
	lw	a5,-424(s0)		# tmp1180, Eka
	slli	a5,a5,3	#, tmp1179, tmp1180
	or	a5,a4,a5	# tmp1179, tmp2360, tmp1177
	addi	a4,a3,1576	#, tmp3264, tmp3265
	add	a4,a4,s0	#, tmp3264, tmp3264
	sw	a5,0(a4)	# tmp2360, %sfp
	addi	a5,a3,1576	#, tmp3261, tmp3262
	add	a5,a5,s0	#, tmp3261, tmp3261
	lw	a4,0(a5)		# tmp1172, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp1172, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:259:             Eme ^= De;
	lw	a4,-472(s0)		# tmp1182, Eme
	lw	a5,-312(s0)		# tmp1183, De
	xor	a5,a4,a5	# tmp1183, tmp2362, tmp1182
	addi	a4,a3,1568	#, tmp3258, tmp3259
	add	a4,a4,s0	#, tmp3258, tmp3258
	sw	a5,0(a4)	# tmp2362, %sfp
	lw	a4,-468(s0)		# tmp1184, Eme
	lw	a5,-308(s0)		# tmp1185, De
	xor	a5,a4,a5	# tmp1185, tmp2363, tmp1184
	addi	a4,a3,1572	#, tmp3255, tmp3256
	add	a4,a4,s0	#, tmp3255, tmp3255
	sw	a5,0(a4)	# tmp2363, %sfp
	addi	a5,a3,1568	#, tmp3252, tmp3253
	add	a5,a5,s0	#, tmp3252, tmp3252
	lw	a4,0(a5)		# tmp1181, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-472(s0)	# tmp1181, Eme
	sw	a5,-468(s0)	#, Eme
# fips202.c:260:             BCo = ROL(Eme, 45);
	lw	a5,-468(s0)		# tmp1188, Eme
	slli	a4,a5,13	#, tmp1187, tmp1188
	lw	a5,-472(s0)		# tmp1190, Eme
	srli	a5,a5,19	#, tmp1189, tmp1190
	or	a5,a4,a5	# tmp1189, tmp2365, tmp1187
	addi	a4,a3,1560	#, tmp3249, tmp3250
	add	a4,a4,s0	#, tmp3249, tmp3249
	sw	a5,0(a4)	# tmp2365, %sfp
	lw	a5,-472(s0)		# tmp1192, Eme
	slli	a4,a5,13	#, tmp1191, tmp1192
	lw	a5,-468(s0)		# tmp1194, Eme
	srli	a5,a5,19	#, tmp1193, tmp1194
	or	a5,a4,a5	# tmp1193, tmp2366, tmp1191
	addi	a4,a3,1564	#, tmp3246, tmp3247
	add	a4,a4,s0	#, tmp3246, tmp3246
	sw	a5,0(a4)	# tmp2366, %sfp
	addi	a5,a3,1560	#, tmp3243, tmp3244
	add	a5,a5,s0	#, tmp3243, tmp3243
	lw	a4,0(a5)		# tmp1186, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp1186, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:261:             Esi ^= Di;
	lw	a4,-520(s0)		# tmp1196, Esi
	lw	a5,-320(s0)		# tmp1197, Di
	xor	a5,a4,a5	# tmp1197, tmp2368, tmp1196
	addi	a4,a3,1552	#, tmp3240, tmp3241
	add	a4,a4,s0	#, tmp3240, tmp3240
	sw	a5,0(a4)	# tmp2368, %sfp
	lw	a4,-516(s0)		# tmp1198, Esi
	lw	a5,-316(s0)		# tmp1199, Di
	xor	a5,a4,a5	# tmp1199, tmp2369, tmp1198
	addi	a4,a3,1556	#, tmp3237, tmp3238
	add	a4,a4,s0	#, tmp3237, tmp3237
	sw	a5,0(a4)	# tmp2369, %sfp
	addi	a5,a3,1552	#, tmp3234, tmp3235
	add	a5,a5,s0	#, tmp3234, tmp3234
	lw	a4,0(a5)		# tmp1195, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-520(s0)	# tmp1195, Esi
	sw	a5,-516(s0)	#, Esi
# fips202.c:262:             BCu = ROL(Esi, 61);
	lw	a5,-516(s0)		# tmp1202, Esi
	slli	a4,a5,29	#, tmp1201, tmp1202
	lw	a5,-520(s0)		# tmp1204, Esi
	srli	a5,a5,3	#, tmp1203, tmp1204
	or	a5,a4,a5	# tmp1203, tmp2371, tmp1201
	addi	a4,a3,1544	#, tmp3231, tmp3232
	add	a4,a4,s0	#, tmp3231, tmp3231
	sw	a5,0(a4)	# tmp2371, %sfp
	lw	a5,-520(s0)		# tmp1206, Esi
	slli	a4,a5,29	#, tmp1205, tmp1206
	lw	a5,-516(s0)		# tmp1208, Esi
	srli	a5,a5,3	#, tmp1207, tmp1208
	or	a5,a4,a5	# tmp1207, tmp2372, tmp1205
	addi	a4,a3,1548	#, tmp3228, tmp3229
	add	a4,a4,s0	#, tmp3228, tmp3228
	sw	a5,0(a4)	# tmp2372, %sfp
	addi	a5,a3,1544	#, tmp3225, tmp3226
	add	a5,a5,s0	#, tmp3225, tmp3225
	lw	a4,0(a5)		# tmp1200, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp1200, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:263:             Aga =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp1209, BCe
	not	a5,a5	# tmp2374, tmp1209
	sw	a5,-1360(s0)	# tmp2374, %sfp
	lw	a5,-268(s0)		# tmp1210, BCe
	not	a5,a5	# tmp2375, tmp1210
	sw	a5,-1356(s0)	# tmp2375, %sfp
# fips202.c:263:             Aga =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp1211, BCi
	lw	a4,-1360(s0)		# tmp2377, %sfp
	and	a5,a5,a4	# tmp2377, tmp2376, tmp1211
	sw	a5,-1368(s0)	# tmp2376, %sfp
	lw	a5,-276(s0)		# tmp1212, BCi
	lw	a4,-1356(s0)		# tmp2379, %sfp
	and	a5,a5,a4	# tmp2379, tmp2378, tmp1212
	sw	a5,-1364(s0)	# tmp2378, %sfp
# fips202.c:263:             Aga =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp1214, BCa
	lw	a4,-1368(s0)		# tmp2381, %sfp
	xor	a5,a5,a4	# tmp2381, tmp2380, tmp1214
	addi	a4,a3,1536	#, tmp3222, tmp3223
	add	a4,a4,s0	#, tmp3222, tmp3222
	sw	a5,0(a4)	# tmp2380, %sfp
	lw	a5,-260(s0)		# tmp1215, BCa
	lw	a4,-1364(s0)		# tmp2383, %sfp
	xor	a5,a5,a4	# tmp2383, tmp2382, tmp1215
	addi	a4,a3,1540	#, tmp3219, tmp3220
	add	a4,a4,s0	#, tmp3219, tmp3219
	sw	a5,0(a4)	# tmp2382, %sfp
	addi	a5,a3,1536	#, tmp3216, tmp3217
	add	a5,a5,s0	#, tmp3216, tmp3216
	lw	a4,0(a5)		# tmp1213, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-104(s0)	# tmp1213, Aga
	sw	a5,-100(s0)	#, Aga
# fips202.c:264:             Age =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp1216, BCi
	not	a5,a5	# tmp2385, tmp1216
	sw	a5,-1376(s0)	# tmp2385, %sfp
	lw	a5,-276(s0)		# tmp1217, BCi
	not	a5,a5	# tmp2386, tmp1217
	sw	a5,-1372(s0)	# tmp2386, %sfp
# fips202.c:264:             Age =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp1218, BCo
	lw	a4,-1376(s0)		# tmp2388, %sfp
	and	a5,a5,a4	# tmp2388, tmp2387, tmp1218
	sw	a5,-1384(s0)	# tmp2387, %sfp
	lw	a5,-284(s0)		# tmp1219, BCo
	lw	a4,-1372(s0)		# tmp2390, %sfp
	and	a5,a5,a4	# tmp2390, tmp2389, tmp1219
	sw	a5,-1380(s0)	# tmp2389, %sfp
# fips202.c:264:             Age =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp1221, BCe
	lw	a4,-1384(s0)		# tmp2392, %sfp
	xor	a5,a5,a4	# tmp2392, tmp2391, tmp1221
	addi	a4,a3,1528	#, tmp3213, tmp3214
	add	a4,a4,s0	#, tmp3213, tmp3213
	sw	a5,0(a4)	# tmp2391, %sfp
	lw	a5,-268(s0)		# tmp1222, BCe
	lw	a4,-1380(s0)		# tmp2394, %sfp
	xor	a5,a5,a4	# tmp2394, tmp2393, tmp1222
	addi	a4,a3,1532	#, tmp3210, tmp3211
	add	a4,a4,s0	#, tmp3210, tmp3210
	sw	a5,0(a4)	# tmp2393, %sfp
	addi	a5,a3,1528	#, tmp3207, tmp3208
	add	a5,a5,s0	#, tmp3207, tmp3207
	lw	a4,0(a5)		# tmp1220, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-112(s0)	# tmp1220, Age
	sw	a5,-108(s0)	#, Age
# fips202.c:265:             Agi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp1223, BCo
	not	a5,a5	# tmp2396, tmp1223
	sw	a5,-1392(s0)	# tmp2396, %sfp
	lw	a5,-284(s0)		# tmp1224, BCo
	not	a5,a5	# tmp2397, tmp1224
	sw	a5,-1388(s0)	# tmp2397, %sfp
# fips202.c:265:             Agi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp1225, BCu
	lw	a4,-1392(s0)		# tmp2399, %sfp
	and	a5,a5,a4	# tmp2399, tmp2398, tmp1225
	sw	a5,-1400(s0)	# tmp2398, %sfp
	lw	a5,-292(s0)		# tmp1226, BCu
	lw	a4,-1388(s0)		# tmp2401, %sfp
	and	a5,a5,a4	# tmp2401, tmp2400, tmp1226
	sw	a5,-1396(s0)	# tmp2400, %sfp
# fips202.c:265:             Agi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp1228, BCi
	lw	a4,-1400(s0)		# tmp2403, %sfp
	xor	a5,a5,a4	# tmp2403, tmp2402, tmp1228
	addi	a4,a3,1520	#, tmp3204, tmp3205
	add	a4,a4,s0	#, tmp3204, tmp3204
	sw	a5,0(a4)	# tmp2402, %sfp
	lw	a5,-276(s0)		# tmp1229, BCi
	lw	a4,-1396(s0)		# tmp2405, %sfp
	xor	a5,a5,a4	# tmp2405, tmp2404, tmp1229
	addi	a4,a3,1524	#, tmp3201, tmp3202
	add	a4,a4,s0	#, tmp3201, tmp3201
	sw	a5,0(a4)	# tmp2404, %sfp
	addi	a5,a3,1520	#, tmp3198, tmp3199
	add	a5,a5,s0	#, tmp3198, tmp3198
	lw	a4,0(a5)		# tmp1227, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-120(s0)	# tmp1227, Agi
	sw	a5,-116(s0)	#, Agi
# fips202.c:266:             Ago =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp1230, BCu
	not	a5,a5	# tmp2407, tmp1230
	sw	a5,-1408(s0)	# tmp2407, %sfp
	lw	a5,-292(s0)		# tmp1231, BCu
	not	a5,a5	# tmp2408, tmp1231
	sw	a5,-1404(s0)	# tmp2408, %sfp
# fips202.c:266:             Ago =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp1232, BCa
	lw	a4,-1408(s0)		# tmp2410, %sfp
	and	a5,a5,a4	# tmp2410, tmp2409, tmp1232
	sw	a5,-1416(s0)	# tmp2409, %sfp
	lw	a5,-260(s0)		# tmp1233, BCa
	lw	a4,-1404(s0)		# tmp2412, %sfp
	and	a5,a5,a4	# tmp2412, tmp2411, tmp1233
	sw	a5,-1412(s0)	# tmp2411, %sfp
# fips202.c:266:             Ago =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp1235, BCo
	lw	a4,-1416(s0)		# tmp2414, %sfp
	xor	a5,a5,a4	# tmp2414, tmp2413, tmp1235
	addi	a4,a3,1512	#, tmp3195, tmp3196
	add	a4,a4,s0	#, tmp3195, tmp3195
	sw	a5,0(a4)	# tmp2413, %sfp
	lw	a5,-284(s0)		# tmp1236, BCo
	lw	a4,-1412(s0)		# tmp2416, %sfp
	xor	a5,a5,a4	# tmp2416, tmp2415, tmp1236
	addi	a4,a3,1516	#, tmp3192, tmp3193
	add	a4,a4,s0	#, tmp3192, tmp3192
	sw	a5,0(a4)	# tmp2415, %sfp
	addi	a5,a3,1512	#, tmp3189, tmp3190
	add	a5,a5,s0	#, tmp3189, tmp3189
	lw	a4,0(a5)		# tmp1234, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-128(s0)	# tmp1234, Ago
	sw	a5,-124(s0)	#, Ago
# fips202.c:267:             Agu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp1237, BCa
	not	a5,a5	# tmp2418, tmp1237
	sw	a5,-1424(s0)	# tmp2418, %sfp
	lw	a5,-260(s0)		# tmp1238, BCa
	not	a5,a5	# tmp2419, tmp1238
	sw	a5,-1420(s0)	# tmp2419, %sfp
# fips202.c:267:             Agu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp1239, BCe
	lw	a4,-1424(s0)		# tmp2421, %sfp
	and	a5,a5,a4	# tmp2421, tmp2420, tmp1239
	sw	a5,-1432(s0)	# tmp2420, %sfp
	lw	a5,-268(s0)		# tmp1240, BCe
	lw	a4,-1420(s0)		# tmp2423, %sfp
	and	a5,a5,a4	# tmp2423, tmp2422, tmp1240
	sw	a5,-1428(s0)	# tmp2422, %sfp
# fips202.c:267:             Agu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp1242, BCu
	lw	a4,-1432(s0)		# tmp2425, %sfp
	xor	a5,a5,a4	# tmp2425, tmp2424, tmp1242
	addi	a4,a3,1504	#, tmp3186, tmp3187
	add	a4,a4,s0	#, tmp3186, tmp3186
	sw	a5,0(a4)	# tmp2424, %sfp
	lw	a5,-292(s0)		# tmp1243, BCu
	lw	a4,-1428(s0)		# tmp2427, %sfp
	xor	a5,a5,a4	# tmp2427, tmp2426, tmp1243
	addi	a4,a3,1508	#, tmp3183, tmp3184
	add	a4,a4,s0	#, tmp3183, tmp3183
	sw	a5,0(a4)	# tmp2426, %sfp
	addi	a5,a3,1504	#, tmp3180, tmp3181
	add	a5,a5,s0	#, tmp3180, tmp3180
	lw	a4,0(a5)		# tmp1241, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-136(s0)	# tmp1241, Agu
	sw	a5,-132(s0)	#, Agu
# fips202.c:269:             Ebe ^= De;
	lw	a4,-352(s0)		# tmp1245, Ebe
	lw	a5,-312(s0)		# tmp1246, De
	xor	a5,a4,a5	# tmp1246, tmp2429, tmp1245
	addi	a4,a3,1496	#, tmp3177, tmp3178
	add	a4,a4,s0	#, tmp3177, tmp3177
	sw	a5,0(a4)	# tmp2429, %sfp
	lw	a4,-348(s0)		# tmp1247, Ebe
	lw	a5,-308(s0)		# tmp1248, De
	xor	a5,a4,a5	# tmp1248, tmp2430, tmp1247
	addi	a4,a3,1500	#, tmp3174, tmp3175
	add	a4,a4,s0	#, tmp3174, tmp3174
	sw	a5,0(a4)	# tmp2430, %sfp
	addi	a5,a3,1496	#, tmp3171, tmp3172
	add	a5,a5,s0	#, tmp3171, tmp3171
	lw	a4,0(a5)		# tmp1244, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-352(s0)	# tmp1244, Ebe
	sw	a5,-348(s0)	#, Ebe
# fips202.c:270:             BCa = ROL(Ebe, 1);
	lw	a5,-352(s0)		# tmp1251, Ebe
	srli	a4,a5,31	#, tmp1250, tmp1251
	lw	a5,-348(s0)		# tmp1253, Ebe
	slli	a5,a5,1	#, tmp1252, tmp1253
	or	a5,a4,a5	# tmp1252, tmp2432, tmp1250
	addi	a4,a3,1492	#, tmp3168, tmp3169
	add	a4,a4,s0	#, tmp3168, tmp3168
	sw	a5,0(a4)	# tmp2432, %sfp
	lw	a5,-348(s0)		# tmp1255, Ebe
	srli	a4,a5,31	#, tmp1254, tmp1255
	lw	a5,-352(s0)		# tmp1257, Ebe
	slli	a5,a5,1	#, tmp1256, tmp1257
	or	a5,a4,a5	# tmp1256, tmp2433, tmp1254
	addi	a4,a3,1488	#, tmp3165, tmp3166
	add	a4,a4,s0	#, tmp3165, tmp3165
	sw	a5,0(a4)	# tmp2433, %sfp
	addi	a5,a3,1488	#, tmp3162, tmp3163
	add	a5,a5,s0	#, tmp3162, tmp3162
	lw	a4,0(a5)		# tmp1249, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp1249, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:271:             Egi ^= Di;
	lw	a4,-400(s0)		# tmp1259, Egi
	lw	a5,-320(s0)		# tmp1260, Di
	xor	a5,a4,a5	# tmp1260, tmp2435, tmp1259
	addi	a4,a3,1480	#, tmp3159, tmp3160
	add	a4,a4,s0	#, tmp3159, tmp3159
	sw	a5,0(a4)	# tmp2435, %sfp
	lw	a4,-396(s0)		# tmp1261, Egi
	lw	a5,-316(s0)		# tmp1262, Di
	xor	a5,a4,a5	# tmp1262, tmp2436, tmp1261
	addi	a4,a3,1484	#, tmp3156, tmp3157
	add	a4,a4,s0	#, tmp3156, tmp3156
	sw	a5,0(a4)	# tmp2436, %sfp
	addi	a5,a3,1480	#, tmp3153, tmp3154
	add	a5,a5,s0	#, tmp3153, tmp3153
	lw	a4,0(a5)		# tmp1258, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-400(s0)	# tmp1258, Egi
	sw	a5,-396(s0)	#, Egi
# fips202.c:272:             BCe = ROL(Egi, 6);
	lw	a5,-400(s0)		# tmp1265, Egi
	srli	a4,a5,26	#, tmp1264, tmp1265
	lw	a5,-396(s0)		# tmp1267, Egi
	slli	a5,a5,6	#, tmp1266, tmp1267
	or	a5,a4,a5	# tmp1266, tmp2438, tmp1264
	addi	a4,a3,1476	#, tmp3150, tmp3151
	add	a4,a4,s0	#, tmp3150, tmp3150
	sw	a5,0(a4)	# tmp2438, %sfp
	lw	a5,-396(s0)		# tmp1269, Egi
	srli	a4,a5,26	#, tmp1268, tmp1269
	lw	a5,-400(s0)		# tmp1271, Egi
	slli	a5,a5,6	#, tmp1270, tmp1271
	or	a5,a4,a5	# tmp1270, tmp2439, tmp1268
	addi	a4,a3,1472	#, tmp3147, tmp3148
	add	a4,a4,s0	#, tmp3147, tmp3147
	sw	a5,0(a4)	# tmp2439, %sfp
	addi	a5,a3,1472	#, tmp3144, tmp3145
	add	a5,a5,s0	#, tmp3144, tmp3144
	lw	a4,0(a5)		# tmp1263, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp1263, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:273:             Eko ^= Do;
	lw	a4,-448(s0)		# tmp1273, Eko
	lw	a5,-328(s0)		# tmp1274, Do
	xor	a5,a4,a5	# tmp1274, tmp2441, tmp1273
	addi	a4,a3,1464	#, tmp3141, tmp3142
	add	a4,a4,s0	#, tmp3141, tmp3141
	sw	a5,0(a4)	# tmp2441, %sfp
	lw	a4,-444(s0)		# tmp1275, Eko
	lw	a5,-324(s0)		# tmp1276, Do
	xor	a5,a4,a5	# tmp1276, tmp2442, tmp1275
	addi	a4,a3,1468	#, tmp3138, tmp3139
	add	a4,a4,s0	#, tmp3138, tmp3138
	sw	a5,0(a4)	# tmp2442, %sfp
	addi	a5,a3,1464	#, tmp3135, tmp3136
	add	a5,a5,s0	#, tmp3135, tmp3135
	lw	a4,0(a5)		# tmp1272, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-448(s0)	# tmp1272, Eko
	sw	a5,-444(s0)	#, Eko
# fips202.c:274:             BCi = ROL(Eko, 25);
	lw	a5,-448(s0)		# tmp1279, Eko
	srli	a4,a5,7	#, tmp1278, tmp1279
	lw	a5,-444(s0)		# tmp1281, Eko
	slli	a5,a5,25	#, tmp1280, tmp1281
	or	a5,a4,a5	# tmp1280, tmp2444, tmp1278
	addi	a4,a3,1460	#, tmp3132, tmp3133
	add	a4,a4,s0	#, tmp3132, tmp3132
	sw	a5,0(a4)	# tmp2444, %sfp
	lw	a5,-444(s0)		# tmp1283, Eko
	srli	a4,a5,7	#, tmp1282, tmp1283
	lw	a5,-448(s0)		# tmp1285, Eko
	slli	a5,a5,25	#, tmp1284, tmp1285
	or	a5,a4,a5	# tmp1284, tmp2445, tmp1282
	addi	a4,a3,1456	#, tmp3129, tmp3130
	add	a4,a4,s0	#, tmp3129, tmp3129
	sw	a5,0(a4)	# tmp2445, %sfp
	addi	a5,a3,1456	#, tmp3126, tmp3127
	add	a5,a5,s0	#, tmp3126, tmp3126
	lw	a4,0(a5)		# tmp1277, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp1277, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:275:             Emu ^= Du;
	lw	a4,-496(s0)		# tmp1287, Emu
	lw	a5,-336(s0)		# tmp1288, Du
	xor	a5,a4,a5	# tmp1288, tmp2447, tmp1287
	addi	a4,a3,1448	#, tmp3123, tmp3124
	add	a4,a4,s0	#, tmp3123, tmp3123
	sw	a5,0(a4)	# tmp2447, %sfp
	lw	a4,-492(s0)		# tmp1289, Emu
	lw	a5,-332(s0)		# tmp1290, Du
	xor	a5,a4,a5	# tmp1290, tmp2448, tmp1289
	addi	a4,a3,1452	#, tmp3120, tmp3121
	add	a4,a4,s0	#, tmp3120, tmp3120
	sw	a5,0(a4)	# tmp2448, %sfp
	addi	a5,a3,1448	#, tmp3117, tmp3118
	add	a5,a5,s0	#, tmp3117, tmp3117
	lw	a4,0(a5)		# tmp1286, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-496(s0)	# tmp1286, Emu
	sw	a5,-492(s0)	#, Emu
# fips202.c:276:             BCo = ROL(Emu, 8);
	lw	a5,-496(s0)		# tmp1293, Emu
	srli	a4,a5,24	#, tmp1292, tmp1293
	lw	a5,-492(s0)		# tmp1295, Emu
	slli	a5,a5,8	#, tmp1294, tmp1295
	or	a5,a4,a5	# tmp1294, tmp2450, tmp1292
	addi	a4,a3,1444	#, tmp3114, tmp3115
	add	a4,a4,s0	#, tmp3114, tmp3114
	sw	a5,0(a4)	# tmp2450, %sfp
	lw	a5,-492(s0)		# tmp1297, Emu
	srli	a4,a5,24	#, tmp1296, tmp1297
	lw	a5,-496(s0)		# tmp1299, Emu
	slli	a5,a5,8	#, tmp1298, tmp1299
	or	a5,a4,a5	# tmp1298, tmp2451, tmp1296
	addi	a4,a3,1440	#, tmp3111, tmp3112
	add	a4,a4,s0	#, tmp3111, tmp3111
	sw	a5,0(a4)	# tmp2451, %sfp
	addi	a5,a3,1440	#, tmp3108, tmp3109
	add	a5,a5,s0	#, tmp3108, tmp3108
	lw	a4,0(a5)		# tmp1291, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp1291, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:277:             Esa ^= Da;
	lw	a4,-504(s0)		# tmp1301, Esa
	lw	a5,-304(s0)		# tmp1302, Da
	xor	a5,a4,a5	# tmp1302, tmp2453, tmp1301
	addi	a4,a3,1432	#, tmp3105, tmp3106
	add	a4,a4,s0	#, tmp3105, tmp3105
	sw	a5,0(a4)	# tmp2453, %sfp
	lw	a4,-500(s0)		# tmp1303, Esa
	lw	a5,-300(s0)		# tmp1304, Da
	xor	a5,a4,a5	# tmp1304, tmp2454, tmp1303
	addi	a4,a3,1436	#, tmp3102, tmp3103
	add	a4,a4,s0	#, tmp3102, tmp3102
	sw	a5,0(a4)	# tmp2454, %sfp
	addi	a5,a3,1432	#, tmp3099, tmp3100
	add	a5,a5,s0	#, tmp3099, tmp3099
	lw	a4,0(a5)		# tmp1300, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-504(s0)	# tmp1300, Esa
	sw	a5,-500(s0)	#, Esa
# fips202.c:278:             BCu = ROL(Esa, 18);
	lw	a5,-504(s0)		# tmp1307, Esa
	srli	a4,a5,14	#, tmp1306, tmp1307
	lw	a5,-500(s0)		# tmp1309, Esa
	slli	a5,a5,18	#, tmp1308, tmp1309
	or	a5,a4,a5	# tmp1308, tmp2456, tmp1306
	addi	a4,a3,1428	#, tmp3096, tmp3097
	add	a4,a4,s0	#, tmp3096, tmp3096
	sw	a5,0(a4)	# tmp2456, %sfp
	lw	a5,-500(s0)		# tmp1311, Esa
	srli	a4,a5,14	#, tmp1310, tmp1311
	lw	a5,-504(s0)		# tmp1313, Esa
	slli	a5,a5,18	#, tmp1312, tmp1313
	or	a5,a4,a5	# tmp1312, tmp2457, tmp1310
	addi	a4,a3,1424	#, tmp3093, tmp3094
	add	a4,a4,s0	#, tmp3093, tmp3093
	sw	a5,0(a4)	# tmp2457, %sfp
	addi	a5,a3,1424	#, tmp3090, tmp3091
	add	a5,a5,s0	#, tmp3090, tmp3090
	lw	a4,0(a5)		# tmp1305, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp1305, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:279:             Aka =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp1314, BCe
	not	a5,a5	# tmp2459, tmp1314
	sw	a5,-1440(s0)	# tmp2459, %sfp
	lw	a5,-268(s0)		# tmp1315, BCe
	not	a5,a5	# tmp2460, tmp1315
	sw	a5,-1436(s0)	# tmp2460, %sfp
# fips202.c:279:             Aka =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp1316, BCi
	lw	a4,-1440(s0)		# tmp2462, %sfp
	and	a5,a5,a4	# tmp2462, tmp2461, tmp1316
	sw	a5,-1448(s0)	# tmp2461, %sfp
	lw	a5,-276(s0)		# tmp1317, BCi
	lw	a4,-1436(s0)		# tmp2464, %sfp
	and	a5,a5,a4	# tmp2464, tmp2463, tmp1317
	sw	a5,-1444(s0)	# tmp2463, %sfp
# fips202.c:279:             Aka =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp1319, BCa
	lw	a4,-1448(s0)		# tmp2466, %sfp
	xor	a5,a5,a4	# tmp2466, tmp2465, tmp1319
	addi	a4,a3,1416	#, tmp3087, tmp3088
	add	a4,a4,s0	#, tmp3087, tmp3087
	sw	a5,0(a4)	# tmp2465, %sfp
	lw	a5,-260(s0)		# tmp1320, BCa
	lw	a4,-1444(s0)		# tmp2468, %sfp
	xor	a5,a5,a4	# tmp2468, tmp2467, tmp1320
	addi	a4,a3,1420	#, tmp3084, tmp3085
	add	a4,a4,s0	#, tmp3084, tmp3084
	sw	a5,0(a4)	# tmp2467, %sfp
	addi	a5,a3,1416	#, tmp3081, tmp3082
	add	a5,a5,s0	#, tmp3081, tmp3081
	lw	a4,0(a5)		# tmp1318, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-144(s0)	# tmp1318, Aka
	sw	a5,-140(s0)	#, Aka
# fips202.c:280:             Ake =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp1321, BCi
	not	a5,a5	# tmp2470, tmp1321
	sw	a5,-1456(s0)	# tmp2470, %sfp
	lw	a5,-276(s0)		# tmp1322, BCi
	not	a5,a5	# tmp2471, tmp1322
	sw	a5,-1452(s0)	# tmp2471, %sfp
# fips202.c:280:             Ake =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp1323, BCo
	lw	a4,-1456(s0)		# tmp2473, %sfp
	and	a5,a5,a4	# tmp2473, tmp2472, tmp1323
	sw	a5,-1464(s0)	# tmp2472, %sfp
	lw	a5,-284(s0)		# tmp1324, BCo
	lw	a4,-1452(s0)		# tmp2475, %sfp
	and	a5,a5,a4	# tmp2475, tmp2474, tmp1324
	sw	a5,-1460(s0)	# tmp2474, %sfp
# fips202.c:280:             Ake =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp1326, BCe
	lw	a4,-1464(s0)		# tmp2477, %sfp
	xor	a5,a5,a4	# tmp2477, tmp2476, tmp1326
	addi	a4,a3,1408	#, tmp3078, tmp3079
	add	a4,a4,s0	#, tmp3078, tmp3078
	sw	a5,0(a4)	# tmp2476, %sfp
	lw	a5,-268(s0)		# tmp1327, BCe
	lw	a4,-1460(s0)		# tmp2479, %sfp
	xor	a5,a5,a4	# tmp2479, tmp2478, tmp1327
	addi	a4,a3,1412	#, tmp3075, tmp3076
	add	a4,a4,s0	#, tmp3075, tmp3075
	sw	a5,0(a4)	# tmp2478, %sfp
	addi	a5,a3,1408	#, tmp3072, tmp3073
	add	a5,a5,s0	#, tmp3072, tmp3072
	lw	a4,0(a5)		# tmp1325, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-152(s0)	# tmp1325, Ake
	sw	a5,-148(s0)	#, Ake
# fips202.c:281:             Aki =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp1328, BCo
	not	a5,a5	# tmp2481, tmp1328
	sw	a5,-1472(s0)	# tmp2481, %sfp
	lw	a5,-284(s0)		# tmp1329, BCo
	not	a5,a5	# tmp2482, tmp1329
	sw	a5,-1468(s0)	# tmp2482, %sfp
# fips202.c:281:             Aki =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp1330, BCu
	lw	a4,-1472(s0)		# tmp2484, %sfp
	and	a5,a5,a4	# tmp2484, tmp2483, tmp1330
	sw	a5,-1480(s0)	# tmp2483, %sfp
	lw	a5,-292(s0)		# tmp1331, BCu
	lw	a4,-1468(s0)		# tmp2486, %sfp
	and	a5,a5,a4	# tmp2486, tmp2485, tmp1331
	sw	a5,-1476(s0)	# tmp2485, %sfp
# fips202.c:281:             Aki =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp1333, BCi
	lw	a4,-1480(s0)		# tmp2488, %sfp
	xor	a5,a5,a4	# tmp2488, tmp2487, tmp1333
	addi	a4,a3,1400	#, tmp3069, tmp3070
	add	a4,a4,s0	#, tmp3069, tmp3069
	sw	a5,0(a4)	# tmp2487, %sfp
	lw	a5,-276(s0)		# tmp1334, BCi
	lw	a4,-1476(s0)		# tmp2490, %sfp
	xor	a5,a5,a4	# tmp2490, tmp2489, tmp1334
	addi	a4,a3,1404	#, tmp3066, tmp3067
	add	a4,a4,s0	#, tmp3066, tmp3066
	sw	a5,0(a4)	# tmp2489, %sfp
	addi	a5,a3,1400	#, tmp3063, tmp3064
	add	a5,a5,s0	#, tmp3063, tmp3063
	lw	a4,0(a5)		# tmp1332, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-160(s0)	# tmp1332, Aki
	sw	a5,-156(s0)	#, Aki
# fips202.c:282:             Ako =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp1335, BCu
	not	a5,a5	# tmp2492, tmp1335
	sw	a5,-1488(s0)	# tmp2492, %sfp
	lw	a5,-292(s0)		# tmp1336, BCu
	not	a5,a5	# tmp2493, tmp1336
	sw	a5,-1484(s0)	# tmp2493, %sfp
# fips202.c:282:             Ako =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp1337, BCa
	lw	a4,-1488(s0)		# tmp2495, %sfp
	and	a5,a5,a4	# tmp2495, tmp2494, tmp1337
	sw	a5,-1496(s0)	# tmp2494, %sfp
	lw	a5,-260(s0)		# tmp1338, BCa
	lw	a4,-1484(s0)		# tmp2497, %sfp
	and	a5,a5,a4	# tmp2497, tmp2496, tmp1338
	sw	a5,-1492(s0)	# tmp2496, %sfp
# fips202.c:282:             Ako =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp1340, BCo
	lw	a4,-1496(s0)		# tmp2499, %sfp
	xor	a5,a5,a4	# tmp2499, tmp2498, tmp1340
	addi	a4,a3,1392	#, tmp3060, tmp3061
	add	a4,a4,s0	#, tmp3060, tmp3060
	sw	a5,0(a4)	# tmp2498, %sfp
	lw	a5,-284(s0)		# tmp1341, BCo
	lw	a4,-1492(s0)		# tmp2501, %sfp
	xor	a5,a5,a4	# tmp2501, tmp2500, tmp1341
	addi	a4,a3,1396	#, tmp3057, tmp3058
	add	a4,a4,s0	#, tmp3057, tmp3057
	sw	a5,0(a4)	# tmp2500, %sfp
	addi	a5,a3,1392	#, tmp3054, tmp3055
	add	a5,a5,s0	#, tmp3054, tmp3054
	lw	a4,0(a5)		# tmp1339, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-168(s0)	# tmp1339, Ako
	sw	a5,-164(s0)	#, Ako
# fips202.c:283:             Aku =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp1342, BCa
	not	a5,a5	# tmp2503, tmp1342
	sw	a5,-1504(s0)	# tmp2503, %sfp
	lw	a5,-260(s0)		# tmp1343, BCa
	not	a5,a5	# tmp2504, tmp1343
	sw	a5,-1500(s0)	# tmp2504, %sfp
# fips202.c:283:             Aku =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp1344, BCe
	lw	a4,-1504(s0)		# tmp2506, %sfp
	and	a5,a5,a4	# tmp2506, tmp2505, tmp1344
	sw	a5,-1512(s0)	# tmp2505, %sfp
	lw	a5,-268(s0)		# tmp1345, BCe
	lw	a4,-1500(s0)		# tmp2508, %sfp
	and	a5,a5,a4	# tmp2508, tmp2507, tmp1345
	sw	a5,-1508(s0)	# tmp2507, %sfp
# fips202.c:283:             Aku =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp1347, BCu
	lw	a4,-1512(s0)		# tmp2510, %sfp
	xor	a5,a5,a4	# tmp2510, tmp2509, tmp1347
	addi	a4,a3,1384	#, tmp3051, tmp3052
	add	a4,a4,s0	#, tmp3051, tmp3051
	sw	a5,0(a4)	# tmp2509, %sfp
	lw	a5,-292(s0)		# tmp1348, BCu
	lw	a4,-1508(s0)		# tmp2512, %sfp
	xor	a5,a5,a4	# tmp2512, tmp2511, tmp1348
	addi	a4,a3,1388	#, tmp3048, tmp3049
	add	a4,a4,s0	#, tmp3048, tmp3048
	sw	a5,0(a4)	# tmp2511, %sfp
	addi	a5,a3,1384	#, tmp3045, tmp3046
	add	a5,a5,s0	#, tmp3045, tmp3045
	lw	a4,0(a5)		# tmp1346, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-176(s0)	# tmp1346, Aku
	sw	a5,-172(s0)	#, Aku
# fips202.c:285:             Ebu ^= Du;
	lw	a4,-376(s0)		# tmp1350, Ebu
	lw	a5,-336(s0)		# tmp1351, Du
	xor	a5,a4,a5	# tmp1351, tmp2514, tmp1350
	addi	a4,a3,1376	#, tmp3042, tmp3043
	add	a4,a4,s0	#, tmp3042, tmp3042
	sw	a5,0(a4)	# tmp2514, %sfp
	lw	a4,-372(s0)		# tmp1352, Ebu
	lw	a5,-332(s0)		# tmp1353, Du
	xor	a5,a4,a5	# tmp1353, tmp2515, tmp1352
	addi	a4,a3,1380	#, tmp3039, tmp3040
	add	a4,a4,s0	#, tmp3039, tmp3039
	sw	a5,0(a4)	# tmp2515, %sfp
	addi	a5,a3,1376	#, tmp3036, tmp3037
	add	a5,a5,s0	#, tmp3036, tmp3036
	lw	a4,0(a5)		# tmp1349, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-376(s0)	# tmp1349, Ebu
	sw	a5,-372(s0)	#, Ebu
# fips202.c:286:             BCa = ROL(Ebu, 27);
	lw	a5,-376(s0)		# tmp1356, Ebu
	srli	a4,a5,5	#, tmp1355, tmp1356
	lw	a5,-372(s0)		# tmp1358, Ebu
	slli	a5,a5,27	#, tmp1357, tmp1358
	or	a5,a4,a5	# tmp1357, tmp2517, tmp1355
	addi	a4,a3,1372	#, tmp3033, tmp3034
	add	a4,a4,s0	#, tmp3033, tmp3033
	sw	a5,0(a4)	# tmp2517, %sfp
	lw	a5,-372(s0)		# tmp1360, Ebu
	srli	a4,a5,5	#, tmp1359, tmp1360
	lw	a5,-376(s0)		# tmp1362, Ebu
	slli	a5,a5,27	#, tmp1361, tmp1362
	or	a5,a4,a5	# tmp1361, tmp2518, tmp1359
	addi	a4,a3,1368	#, tmp3030, tmp3031
	add	a4,a4,s0	#, tmp3030, tmp3030
	sw	a5,0(a4)	# tmp2518, %sfp
	addi	a5,a3,1368	#, tmp3027, tmp3028
	add	a5,a5,s0	#, tmp3027, tmp3027
	lw	a4,0(a5)		# tmp1354, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp1354, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:287:             Ega ^= Da;
	lw	a4,-384(s0)		# tmp1364, Ega
	lw	a5,-304(s0)		# tmp1365, Da
	xor	a5,a4,a5	# tmp1365, tmp2520, tmp1364
	addi	a4,a3,1360	#, tmp3024, tmp3025
	add	a4,a4,s0	#, tmp3024, tmp3024
	sw	a5,0(a4)	# tmp2520, %sfp
	lw	a4,-380(s0)		# tmp1366, Ega
	lw	a5,-300(s0)		# tmp1367, Da
	xor	a5,a4,a5	# tmp1367, tmp2521, tmp1366
	addi	a4,a3,1364	#, tmp3021, tmp3022
	add	a4,a4,s0	#, tmp3021, tmp3021
	sw	a5,0(a4)	# tmp2521, %sfp
	addi	a5,a3,1360	#, tmp3018, tmp3019
	add	a5,a5,s0	#, tmp3018, tmp3018
	lw	a4,0(a5)		# tmp1363, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-384(s0)	# tmp1363, Ega
	sw	a5,-380(s0)	#, Ega
# fips202.c:288:             BCe = ROL(Ega, 36);
	lw	a5,-380(s0)		# tmp1370, Ega
	slli	a4,a5,4	#, tmp1369, tmp1370
	lw	a5,-384(s0)		# tmp1372, Ega
	srli	a5,a5,28	#, tmp1371, tmp1372
	or	a5,a4,a5	# tmp1371, tmp2523, tmp1369
	addi	a4,a3,1352	#, tmp3015, tmp3016
	add	a4,a4,s0	#, tmp3015, tmp3015
	sw	a5,0(a4)	# tmp2523, %sfp
	lw	a5,-384(s0)		# tmp1374, Ega
	slli	a4,a5,4	#, tmp1373, tmp1374
	lw	a5,-380(s0)		# tmp1376, Ega
	srli	a5,a5,28	#, tmp1375, tmp1376
	or	a5,a4,a5	# tmp1375, tmp2524, tmp1373
	addi	a4,a3,1356	#, tmp3012, tmp3013
	add	a4,a4,s0	#, tmp3012, tmp3012
	sw	a5,0(a4)	# tmp2524, %sfp
	addi	a5,a3,1352	#, tmp3009, tmp3010
	add	a5,a5,s0	#, tmp3009, tmp3009
	lw	a4,0(a5)		# tmp1368, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp1368, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:289:             Eke ^= De;
	lw	a4,-432(s0)		# tmp1378, Eke
	lw	a5,-312(s0)		# tmp1379, De
	xor	a5,a4,a5	# tmp1379, tmp2526, tmp1378
	addi	a4,a3,1344	#, tmp3006, tmp3007
	add	a4,a4,s0	#, tmp3006, tmp3006
	sw	a5,0(a4)	# tmp2526, %sfp
	lw	a4,-428(s0)		# tmp1380, Eke
	lw	a5,-308(s0)		# tmp1381, De
	xor	a5,a4,a5	# tmp1381, tmp2527, tmp1380
	addi	a4,a3,1348	#, tmp3003, tmp3004
	add	a4,a4,s0	#, tmp3003, tmp3003
	sw	a5,0(a4)	# tmp2527, %sfp
	addi	a5,a3,1344	#, tmp3000, tmp3001
	add	a5,a5,s0	#, tmp3000, tmp3000
	lw	a4,0(a5)		# tmp1377, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-432(s0)	# tmp1377, Eke
	sw	a5,-428(s0)	#, Eke
# fips202.c:290:             BCi = ROL(Eke, 10);
	lw	a5,-432(s0)		# tmp1384, Eke
	srli	a4,a5,22	#, tmp1383, tmp1384
	lw	a5,-428(s0)		# tmp1386, Eke
	slli	a5,a5,10	#, tmp1385, tmp1386
	or	a5,a4,a5	# tmp1385, tmp2529, tmp1383
	addi	a4,a3,1340	#, tmp2997, tmp2998
	add	a4,a4,s0	#, tmp2997, tmp2997
	sw	a5,0(a4)	# tmp2529, %sfp
	lw	a5,-428(s0)		# tmp1388, Eke
	srli	a4,a5,22	#, tmp1387, tmp1388
	lw	a5,-432(s0)		# tmp1390, Eke
	slli	a5,a5,10	#, tmp1389, tmp1390
	or	a5,a4,a5	# tmp1389, tmp2530, tmp1387
	addi	a4,a3,1336	#, tmp2994, tmp2995
	add	a4,a4,s0	#, tmp2994, tmp2994
	sw	a5,0(a4)	# tmp2530, %sfp
	addi	a5,a3,1336	#, tmp2991, tmp2992
	add	a5,a5,s0	#, tmp2991, tmp2991
	lw	a4,0(a5)		# tmp1382, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp1382, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:291:             Emi ^= Di;
	lw	a4,-480(s0)		# tmp1392, Emi
	lw	a5,-320(s0)		# tmp1393, Di
	xor	a5,a4,a5	# tmp1393, tmp2532, tmp1392
	addi	a4,a3,1328	#, tmp2988, tmp2989
	add	a4,a4,s0	#, tmp2988, tmp2988
	sw	a5,0(a4)	# tmp2532, %sfp
	lw	a4,-476(s0)		# tmp1394, Emi
	lw	a5,-316(s0)		# tmp1395, Di
	xor	a5,a4,a5	# tmp1395, tmp2533, tmp1394
	addi	a4,a3,1332	#, tmp2985, tmp2986
	add	a4,a4,s0	#, tmp2985, tmp2985
	sw	a5,0(a4)	# tmp2533, %sfp
	addi	a5,a3,1328	#, tmp2982, tmp2983
	add	a5,a5,s0	#, tmp2982, tmp2982
	lw	a4,0(a5)		# tmp1391, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-480(s0)	# tmp1391, Emi
	sw	a5,-476(s0)	#, Emi
# fips202.c:292:             BCo = ROL(Emi, 15);
	lw	a5,-480(s0)		# tmp1398, Emi
	srli	a4,a5,17	#, tmp1397, tmp1398
	lw	a5,-476(s0)		# tmp1400, Emi
	slli	a5,a5,15	#, tmp1399, tmp1400
	or	a5,a4,a5	# tmp1399, tmp2535, tmp1397
	addi	a4,a3,1324	#, tmp2979, tmp2980
	add	a4,a4,s0	#, tmp2979, tmp2979
	sw	a5,0(a4)	# tmp2535, %sfp
	lw	a5,-476(s0)		# tmp1402, Emi
	srli	a4,a5,17	#, tmp1401, tmp1402
	lw	a5,-480(s0)		# tmp1404, Emi
	slli	a5,a5,15	#, tmp1403, tmp1404
	or	a5,a4,a5	# tmp1403, tmp2536, tmp1401
	addi	a4,a3,1320	#, tmp2976, tmp2977
	add	a4,a4,s0	#, tmp2976, tmp2976
	sw	a5,0(a4)	# tmp2536, %sfp
	addi	a5,a3,1320	#, tmp2973, tmp2974
	add	a5,a5,s0	#, tmp2973, tmp2973
	lw	a4,0(a5)		# tmp1396, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp1396, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:293:             Eso ^= Do;
	lw	a4,-528(s0)		# tmp1406, Eso
	lw	a5,-328(s0)		# tmp1407, Do
	xor	a5,a4,a5	# tmp1407, tmp2538, tmp1406
	addi	a4,a3,1312	#, tmp2970, tmp2971
	add	a4,a4,s0	#, tmp2970, tmp2970
	sw	a5,0(a4)	# tmp2538, %sfp
	lw	a4,-524(s0)		# tmp1408, Eso
	lw	a5,-324(s0)		# tmp1409, Do
	xor	a5,a4,a5	# tmp1409, tmp2539, tmp1408
	addi	a4,a3,1316	#, tmp2967, tmp2968
	add	a4,a4,s0	#, tmp2967, tmp2967
	sw	a5,0(a4)	# tmp2539, %sfp
	addi	a5,a3,1312	#, tmp2964, tmp2965
	add	a5,a5,s0	#, tmp2964, tmp2964
	lw	a4,0(a5)		# tmp1405, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-528(s0)	# tmp1405, Eso
	sw	a5,-524(s0)	#, Eso
# fips202.c:294:             BCu = ROL(Eso, 56);
	lw	a5,-524(s0)		# tmp1412, Eso
	slli	a4,a5,24	#, tmp1411, tmp1412
	lw	a5,-528(s0)		# tmp1414, Eso
	srli	a5,a5,8	#, tmp1413, tmp1414
	or	a5,a4,a5	# tmp1413, tmp2541, tmp1411
	addi	a4,a3,1304	#, tmp2961, tmp2962
	add	a4,a4,s0	#, tmp2961, tmp2961
	sw	a5,0(a4)	# tmp2541, %sfp
	lw	a5,-528(s0)		# tmp1416, Eso
	slli	a4,a5,24	#, tmp1415, tmp1416
	lw	a5,-524(s0)		# tmp1418, Eso
	srli	a5,a5,8	#, tmp1417, tmp1418
	or	a5,a4,a5	# tmp1417, tmp2542, tmp1415
	addi	a4,a3,1308	#, tmp2958, tmp2959
	add	a4,a4,s0	#, tmp2958, tmp2958
	sw	a5,0(a4)	# tmp2542, %sfp
	addi	a5,a3,1304	#, tmp2955, tmp2956
	add	a5,a5,s0	#, tmp2955, tmp2955
	lw	a4,0(a5)		# tmp1410, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp1410, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:295:             Ama =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp1419, BCe
	not	a5,a5	# tmp2544, tmp1419
	sw	a5,-1520(s0)	# tmp2544, %sfp
	lw	a5,-268(s0)		# tmp1420, BCe
	not	a5,a5	# tmp2545, tmp1420
	sw	a5,-1516(s0)	# tmp2545, %sfp
# fips202.c:295:             Ama =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp1421, BCi
	lw	a4,-1520(s0)		# tmp2547, %sfp
	and	a5,a5,a4	# tmp2547, tmp2546, tmp1421
	sw	a5,-1528(s0)	# tmp2546, %sfp
	lw	a5,-276(s0)		# tmp1422, BCi
	lw	a4,-1516(s0)		# tmp2549, %sfp
	and	a5,a5,a4	# tmp2549, tmp2548, tmp1422
	sw	a5,-1524(s0)	# tmp2548, %sfp
# fips202.c:295:             Ama =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp1424, BCa
	lw	a4,-1528(s0)		# tmp2551, %sfp
	xor	a5,a5,a4	# tmp2551, tmp2550, tmp1424
	addi	a4,a3,1296	#, tmp2952, tmp2953
	add	a4,a4,s0	#, tmp2952, tmp2952
	sw	a5,0(a4)	# tmp2550, %sfp
	lw	a5,-260(s0)		# tmp1425, BCa
	lw	a4,-1524(s0)		# tmp2553, %sfp
	xor	a5,a5,a4	# tmp2553, tmp2552, tmp1425
	addi	a4,a3,1300	#, tmp2949, tmp2950
	add	a4,a4,s0	#, tmp2949, tmp2949
	sw	a5,0(a4)	# tmp2552, %sfp
	addi	a5,a3,1296	#, tmp2946, tmp2947
	add	a5,a5,s0	#, tmp2946, tmp2946
	lw	a4,0(a5)		# tmp1423, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-184(s0)	# tmp1423, Ama
	sw	a5,-180(s0)	#, Ama
# fips202.c:296:             Ame =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp1426, BCi
	not	a5,a5	# tmp2555, tmp1426
	sw	a5,-1536(s0)	# tmp2555, %sfp
	lw	a5,-276(s0)		# tmp1427, BCi
	not	a5,a5	# tmp2556, tmp1427
	sw	a5,-1532(s0)	# tmp2556, %sfp
# fips202.c:296:             Ame =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp1428, BCo
	lw	a4,-1536(s0)		# tmp2558, %sfp
	and	a5,a5,a4	# tmp2558, tmp2557, tmp1428
	sw	a5,-1544(s0)	# tmp2557, %sfp
	lw	a5,-284(s0)		# tmp1429, BCo
	lw	a4,-1532(s0)		# tmp2560, %sfp
	and	a5,a5,a4	# tmp2560, tmp2559, tmp1429
	sw	a5,-1540(s0)	# tmp2559, %sfp
# fips202.c:296:             Ame =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp1431, BCe
	lw	a4,-1544(s0)		# tmp2562, %sfp
	xor	a5,a5,a4	# tmp2562, tmp2561, tmp1431
	addi	a4,a3,1288	#, tmp2943, tmp2944
	add	a4,a4,s0	#, tmp2943, tmp2943
	sw	a5,0(a4)	# tmp2561, %sfp
	lw	a5,-268(s0)		# tmp1432, BCe
	lw	a4,-1540(s0)		# tmp2564, %sfp
	xor	a5,a5,a4	# tmp2564, tmp2563, tmp1432
	addi	a4,a3,1292	#, tmp2940, tmp2941
	add	a4,a4,s0	#, tmp2940, tmp2940
	sw	a5,0(a4)	# tmp2563, %sfp
	addi	a5,a3,1288	#, tmp2937, tmp2938
	add	a5,a5,s0	#, tmp2937, tmp2937
	lw	a4,0(a5)		# tmp1430, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-192(s0)	# tmp1430, Ame
	sw	a5,-188(s0)	#, Ame
# fips202.c:297:             Ami =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp1433, BCo
	not	a5,a5	# tmp2566, tmp1433
	sw	a5,-1552(s0)	# tmp2566, %sfp
	lw	a5,-284(s0)		# tmp1434, BCo
	not	a5,a5	# tmp2567, tmp1434
	sw	a5,-1548(s0)	# tmp2567, %sfp
# fips202.c:297:             Ami =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp1435, BCu
	lw	a4,-1552(s0)		# tmp2569, %sfp
	and	a5,a5,a4	# tmp2569, tmp2568, tmp1435
	sw	a5,-1560(s0)	# tmp2568, %sfp
	lw	a5,-292(s0)		# tmp1436, BCu
	lw	a4,-1548(s0)		# tmp2571, %sfp
	and	a5,a5,a4	# tmp2571, tmp2570, tmp1436
	sw	a5,-1556(s0)	# tmp2570, %sfp
# fips202.c:297:             Ami =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp1438, BCi
	lw	a4,-1560(s0)		# tmp2573, %sfp
	xor	a5,a5,a4	# tmp2573, tmp2572, tmp1438
	addi	a4,a3,1280	#, tmp2934, tmp2935
	add	a4,a4,s0	#, tmp2934, tmp2934
	sw	a5,0(a4)	# tmp2572, %sfp
	lw	a5,-276(s0)		# tmp1439, BCi
	lw	a4,-1556(s0)		# tmp2575, %sfp
	xor	a5,a5,a4	# tmp2575, tmp2574, tmp1439
	addi	a4,a3,1284	#, tmp2931, tmp2932
	add	a4,a4,s0	#, tmp2931, tmp2931
	sw	a5,0(a4)	# tmp2574, %sfp
	addi	a5,a3,1280	#, tmp2928, tmp2929
	add	a5,a5,s0	#, tmp2928, tmp2928
	lw	a4,0(a5)		# tmp1437, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-200(s0)	# tmp1437, Ami
	sw	a5,-196(s0)	#, Ami
# fips202.c:298:             Amo =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp1440, BCu
	not	a5,a5	# tmp2577, tmp1440
	sw	a5,-1568(s0)	# tmp2577, %sfp
	lw	a5,-292(s0)		# tmp1441, BCu
	not	a5,a5	# tmp2578, tmp1441
	sw	a5,-1564(s0)	# tmp2578, %sfp
# fips202.c:298:             Amo =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp1442, BCa
	lw	a4,-1568(s0)		# tmp2580, %sfp
	and	a5,a5,a4	# tmp2580, tmp2579, tmp1442
	sw	a5,-1576(s0)	# tmp2579, %sfp
	lw	a5,-260(s0)		# tmp1443, BCa
	lw	a4,-1564(s0)		# tmp2582, %sfp
	and	a5,a5,a4	# tmp2582, tmp2581, tmp1443
	sw	a5,-1572(s0)	# tmp2581, %sfp
# fips202.c:298:             Amo =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp1445, BCo
	lw	a4,-1576(s0)		# tmp2584, %sfp
	xor	a5,a5,a4	# tmp2584, tmp2583, tmp1445
	addi	a4,a3,1272	#, tmp2925, tmp2926
	add	a4,a4,s0	#, tmp2925, tmp2925
	sw	a5,0(a4)	# tmp2583, %sfp
	lw	a5,-284(s0)		# tmp1446, BCo
	lw	a4,-1572(s0)		# tmp2586, %sfp
	xor	a5,a5,a4	# tmp2586, tmp2585, tmp1446
	addi	a4,a3,1276	#, tmp2922, tmp2923
	add	a4,a4,s0	#, tmp2922, tmp2922
	sw	a5,0(a4)	# tmp2585, %sfp
	addi	a5,a3,1272	#, tmp2919, tmp2920
	add	a5,a5,s0	#, tmp2919, tmp2919
	lw	a4,0(a5)		# tmp1444, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-208(s0)	# tmp1444, Amo
	sw	a5,-204(s0)	#, Amo
# fips202.c:299:             Amu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp1447, BCa
	not	a5,a5	# tmp2588, tmp1447
	sw	a5,-1584(s0)	# tmp2588, %sfp
	lw	a5,-260(s0)		# tmp1448, BCa
	not	a5,a5	# tmp2589, tmp1448
	sw	a5,-1580(s0)	# tmp2589, %sfp
# fips202.c:299:             Amu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp1449, BCe
	lw	a4,-1584(s0)		# tmp2591, %sfp
	and	a5,a5,a4	# tmp2591, tmp2590, tmp1449
	sw	a5,-1592(s0)	# tmp2590, %sfp
	lw	a5,-268(s0)		# tmp1450, BCe
	lw	a4,-1580(s0)		# tmp2593, %sfp
	and	a5,a5,a4	# tmp2593, tmp2592, tmp1450
	sw	a5,-1588(s0)	# tmp2592, %sfp
# fips202.c:299:             Amu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp1452, BCu
	lw	a4,-1592(s0)		# tmp2595, %sfp
	xor	a5,a5,a4	# tmp2595, tmp2594, tmp1452
	addi	a4,a3,1264	#, tmp2916, tmp2917
	add	a4,a4,s0	#, tmp2916, tmp2916
	sw	a5,0(a4)	# tmp2594, %sfp
	lw	a5,-292(s0)		# tmp1453, BCu
	lw	a4,-1588(s0)		# tmp2597, %sfp
	xor	a5,a5,a4	# tmp2597, tmp2596, tmp1453
	addi	a4,a3,1268	#, tmp2913, tmp2914
	add	a4,a4,s0	#, tmp2913, tmp2913
	sw	a5,0(a4)	# tmp2596, %sfp
	addi	a5,a3,1264	#, tmp2910, tmp2911
	add	a5,a5,s0	#, tmp2910, tmp2910
	lw	a4,0(a5)		# tmp1451, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-216(s0)	# tmp1451, Amu
	sw	a5,-212(s0)	#, Amu
# fips202.c:301:             Ebi ^= Di;
	lw	a4,-360(s0)		# tmp1455, Ebi
	lw	a5,-320(s0)		# tmp1456, Di
	xor	a5,a4,a5	# tmp1456, tmp2599, tmp1455
	addi	a4,a3,1256	#, tmp2907, tmp2908
	add	a4,a4,s0	#, tmp2907, tmp2907
	sw	a5,0(a4)	# tmp2599, %sfp
	lw	a4,-356(s0)		# tmp1457, Ebi
	lw	a5,-316(s0)		# tmp1458, Di
	xor	a5,a4,a5	# tmp1458, tmp2600, tmp1457
	addi	a4,a3,1260	#, tmp2904, tmp2905
	add	a4,a4,s0	#, tmp2904, tmp2904
	sw	a5,0(a4)	# tmp2600, %sfp
	addi	a5,a3,1256	#, tmp2901, tmp2902
	add	a5,a5,s0	#, tmp2901, tmp2901
	lw	a4,0(a5)		# tmp1454, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-360(s0)	# tmp1454, Ebi
	sw	a5,-356(s0)	#, Ebi
# fips202.c:302:             BCa = ROL(Ebi, 62);
	lw	a5,-356(s0)		# tmp1461, Ebi
	slli	a4,a5,30	#, tmp1460, tmp1461
	lw	a5,-360(s0)		# tmp1463, Ebi
	srli	a5,a5,2	#, tmp1462, tmp1463
	or	a5,a4,a5	# tmp1462, tmp2602, tmp1460
	addi	a4,a3,1248	#, tmp2898, tmp2899
	add	a4,a4,s0	#, tmp2898, tmp2898
	sw	a5,0(a4)	# tmp2602, %sfp
	lw	a5,-360(s0)		# tmp1465, Ebi
	slli	a4,a5,30	#, tmp1464, tmp1465
	lw	a5,-356(s0)		# tmp1467, Ebi
	srli	a5,a5,2	#, tmp1466, tmp1467
	or	a5,a4,a5	# tmp1466, tmp2603, tmp1464
	addi	a4,a3,1252	#, tmp2895, tmp2896
	add	a4,a4,s0	#, tmp2895, tmp2895
	sw	a5,0(a4)	# tmp2603, %sfp
	addi	a5,a3,1248	#, tmp2892, tmp2893
	add	a5,a5,s0	#, tmp2892, tmp2892
	lw	a4,0(a5)		# tmp1459, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-264(s0)	# tmp1459, BCa
	sw	a5,-260(s0)	#, BCa
# fips202.c:303:             Ego ^= Do;
	lw	a4,-408(s0)		# tmp1469, Ego
	lw	a5,-328(s0)		# tmp1470, Do
	xor	a5,a4,a5	# tmp1470, tmp2605, tmp1469
	addi	a4,a3,1240	#, tmp2889, tmp2890
	add	a4,a4,s0	#, tmp2889, tmp2889
	sw	a5,0(a4)	# tmp2605, %sfp
	lw	a4,-404(s0)		# tmp1471, Ego
	lw	a5,-324(s0)		# tmp1472, Do
	xor	a5,a4,a5	# tmp1472, tmp2606, tmp1471
	addi	a4,a3,1244	#, tmp2886, tmp2887
	add	a4,a4,s0	#, tmp2886, tmp2886
	sw	a5,0(a4)	# tmp2606, %sfp
	addi	a5,a3,1240	#, tmp2883, tmp2884
	add	a5,a5,s0	#, tmp2883, tmp2883
	lw	a4,0(a5)		# tmp1468, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-408(s0)	# tmp1468, Ego
	sw	a5,-404(s0)	#, Ego
# fips202.c:304:             BCe = ROL(Ego, 55);
	lw	a5,-404(s0)		# tmp1475, Ego
	slli	a4,a5,23	#, tmp1474, tmp1475
	lw	a5,-408(s0)		# tmp1477, Ego
	srli	a5,a5,9	#, tmp1476, tmp1477
	or	a5,a4,a5	# tmp1476, tmp2608, tmp1474
	addi	a4,a3,1232	#, tmp2880, tmp2881
	add	a4,a4,s0	#, tmp2880, tmp2880
	sw	a5,0(a4)	# tmp2608, %sfp
	lw	a5,-408(s0)		# tmp1479, Ego
	slli	a4,a5,23	#, tmp1478, tmp1479
	lw	a5,-404(s0)		# tmp1481, Ego
	srli	a5,a5,9	#, tmp1480, tmp1481
	or	a5,a4,a5	# tmp1480, tmp2609, tmp1478
	addi	a4,a3,1236	#, tmp2877, tmp2878
	add	a4,a4,s0	#, tmp2877, tmp2877
	sw	a5,0(a4)	# tmp2609, %sfp
	addi	a5,a3,1232	#, tmp2874, tmp2875
	add	a5,a5,s0	#, tmp2874, tmp2874
	lw	a4,0(a5)		# tmp1473, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-272(s0)	# tmp1473, BCe
	sw	a5,-268(s0)	#, BCe
# fips202.c:305:             Eku ^= Du;
	lw	a4,-456(s0)		# tmp1483, Eku
	lw	a5,-336(s0)		# tmp1484, Du
	xor	a5,a4,a5	# tmp1484, tmp2611, tmp1483
	addi	a4,a3,1224	#, tmp2871, tmp2872
	add	a4,a4,s0	#, tmp2871, tmp2871
	sw	a5,0(a4)	# tmp2611, %sfp
	lw	a4,-452(s0)		# tmp1485, Eku
	lw	a5,-332(s0)		# tmp1486, Du
	xor	a5,a4,a5	# tmp1486, tmp2612, tmp1485
	addi	a4,a3,1228	#, tmp2868, tmp2869
	add	a4,a4,s0	#, tmp2868, tmp2868
	sw	a5,0(a4)	# tmp2612, %sfp
	addi	a5,a3,1224	#, tmp2865, tmp2866
	add	a5,a5,s0	#, tmp2865, tmp2865
	lw	a4,0(a5)		# tmp1482, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-456(s0)	# tmp1482, Eku
	sw	a5,-452(s0)	#, Eku
# fips202.c:306:             BCi = ROL(Eku, 39);
	lw	a5,-452(s0)		# tmp1489, Eku
	slli	a4,a5,7	#, tmp1488, tmp1489
	lw	a5,-456(s0)		# tmp1491, Eku
	srli	a5,a5,25	#, tmp1490, tmp1491
	or	a5,a4,a5	# tmp1490, tmp2614, tmp1488
	addi	a4,a3,1216	#, tmp2862, tmp2863
	add	a4,a4,s0	#, tmp2862, tmp2862
	sw	a5,0(a4)	# tmp2614, %sfp
	lw	a5,-456(s0)		# tmp1493, Eku
	slli	a4,a5,7	#, tmp1492, tmp1493
	lw	a5,-452(s0)		# tmp1495, Eku
	srli	a5,a5,25	#, tmp1494, tmp1495
	or	a5,a4,a5	# tmp1494, tmp2615, tmp1492
	addi	a4,a3,1220	#, tmp2859, tmp2860
	add	a4,a4,s0	#, tmp2859, tmp2859
	sw	a5,0(a4)	# tmp2615, %sfp
	addi	a5,a3,1216	#, tmp2856, tmp2857
	add	a5,a5,s0	#, tmp2856, tmp2856
	lw	a4,0(a5)		# tmp1487, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-280(s0)	# tmp1487, BCi
	sw	a5,-276(s0)	#, BCi
# fips202.c:307:             Ema ^= Da;
	lw	a4,-464(s0)		# tmp1497, Ema
	lw	a5,-304(s0)		# tmp1498, Da
	xor	a5,a4,a5	# tmp1498, tmp2617, tmp1497
	addi	a4,a3,1208	#, tmp2853, tmp2854
	add	a4,a4,s0	#, tmp2853, tmp2853
	sw	a5,0(a4)	# tmp2617, %sfp
	lw	a4,-460(s0)		# tmp1499, Ema
	lw	a5,-300(s0)		# tmp1500, Da
	xor	a5,a4,a5	# tmp1500, tmp2618, tmp1499
	addi	a4,a3,1212	#, tmp2850, tmp2851
	add	a4,a4,s0	#, tmp2850, tmp2850
	sw	a5,0(a4)	# tmp2618, %sfp
	addi	a5,a3,1208	#, tmp2847, tmp2848
	add	a5,a5,s0	#, tmp2847, tmp2847
	lw	a4,0(a5)		# tmp1496, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-464(s0)	# tmp1496, Ema
	sw	a5,-460(s0)	#, Ema
# fips202.c:308:             BCo = ROL(Ema, 41);
	lw	a5,-460(s0)		# tmp1503, Ema
	slli	a4,a5,9	#, tmp1502, tmp1503
	lw	a5,-464(s0)		# tmp1505, Ema
	srli	a5,a5,23	#, tmp1504, tmp1505
	or	a5,a4,a5	# tmp1504, tmp2620, tmp1502
	addi	a4,a3,1200	#, tmp2844, tmp2845
	add	a4,a4,s0	#, tmp2844, tmp2844
	sw	a5,0(a4)	# tmp2620, %sfp
	lw	a5,-464(s0)		# tmp1507, Ema
	slli	a4,a5,9	#, tmp1506, tmp1507
	lw	a5,-460(s0)		# tmp1509, Ema
	srli	a5,a5,23	#, tmp1508, tmp1509
	or	a5,a4,a5	# tmp1508, tmp2621, tmp1506
	addi	a4,a3,1204	#, tmp2841, tmp2842
	add	a4,a4,s0	#, tmp2841, tmp2841
	sw	a5,0(a4)	# tmp2621, %sfp
	addi	a5,a3,1200	#, tmp2838, tmp2839
	add	a5,a5,s0	#, tmp2838, tmp2838
	lw	a4,0(a5)		# tmp1501, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-288(s0)	# tmp1501, BCo
	sw	a5,-284(s0)	#, BCo
# fips202.c:309:             Ese ^= De;
	lw	a4,-512(s0)		# tmp1511, Ese
	lw	a5,-312(s0)		# tmp1512, De
	xor	a5,a4,a5	# tmp1512, tmp2623, tmp1511
	addi	a4,a3,1192	#, tmp2835, tmp2836
	add	a4,a4,s0	#, tmp2835, tmp2835
	sw	a5,0(a4)	# tmp2623, %sfp
	lw	a4,-508(s0)		# tmp1513, Ese
	lw	a5,-308(s0)		# tmp1514, De
	xor	a5,a4,a5	# tmp1514, tmp2624, tmp1513
	addi	a4,a3,1196	#, tmp2832, tmp2833
	add	a4,a4,s0	#, tmp2832, tmp2832
	sw	a5,0(a4)	# tmp2624, %sfp
	addi	a5,a3,1192	#, tmp2829, tmp2830
	add	a5,a5,s0	#, tmp2829, tmp2829
	lw	a4,0(a5)		# tmp1510, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-512(s0)	# tmp1510, Ese
	sw	a5,-508(s0)	#, Ese
# fips202.c:310:             BCu = ROL(Ese, 2);
	lw	a5,-512(s0)		# tmp1517, Ese
	srli	a4,a5,30	#, tmp1516, tmp1517
	lw	a5,-508(s0)		# tmp1519, Ese
	slli	a5,a5,2	#, tmp1518, tmp1519
	or	a5,a4,a5	# tmp1518, tmp2626, tmp1516
	addi	a4,a3,1188	#, tmp2826, tmp2827
	add	a4,a4,s0	#, tmp2826, tmp2826
	sw	a5,0(a4)	# tmp2626, %sfp
	lw	a5,-508(s0)		# tmp1521, Ese
	srli	a4,a5,30	#, tmp1520, tmp1521
	lw	a5,-512(s0)		# tmp1523, Ese
	slli	a5,a5,2	#, tmp1522, tmp1523
	or	a5,a4,a5	# tmp1522, tmp2627, tmp1520
	addi	a4,a3,1184	#, tmp2823, tmp2824
	add	a4,a4,s0	#, tmp2823, tmp2823
	sw	a5,0(a4)	# tmp2627, %sfp
	addi	a5,a3,1184	#, tmp2820, tmp2821
	add	a5,a5,s0	#, tmp2820, tmp2820
	lw	a4,0(a5)		# tmp1515, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-296(s0)	# tmp1515, BCu
	sw	a5,-292(s0)	#, BCu
# fips202.c:311:             Asa =   BCa ^((~BCe)&  BCi );
	lw	a5,-272(s0)		# tmp1524, BCe
	not	a1,a5	# _134, tmp1524
	lw	a5,-268(s0)		# tmp1525, BCe
	not	a2,a5	# _134, tmp1525
# fips202.c:311:             Asa =   BCa ^((~BCe)&  BCi );
	lw	a5,-280(s0)		# tmp1526, BCi
	and	s10,a5,a1	# _134, _135, tmp1526
	lw	a5,-276(s0)		# tmp1527, BCi
	and	s11,a5,a2	# _134, _135, tmp1527
# fips202.c:311:             Asa =   BCa ^((~BCe)&  BCi );
	lw	a5,-264(s0)		# tmp1529, BCa
	xor	a5,a5,s10	# _135, tmp2629, tmp1529
	addi	a4,a3,1176	#, tmp2817, tmp2818
	add	a4,a4,s0	#, tmp2817, tmp2817
	sw	a5,0(a4)	# tmp2629, %sfp
	lw	a5,-260(s0)		# tmp1530, BCa
	xor	a5,a5,s11	# _135, tmp2630, tmp1530
	addi	a4,a3,1180	#, tmp2814, tmp2815
	add	a4,a4,s0	#, tmp2814, tmp2814
	sw	a5,0(a4)	# tmp2630, %sfp
	addi	a5,a3,1176	#, tmp2811, tmp2812
	add	a5,a5,s0	#, tmp2811, tmp2811
	lw	a4,0(a5)		# tmp1528, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-224(s0)	# tmp1528, Asa
	sw	a5,-220(s0)	#, Asa
# fips202.c:312:             Ase =   BCe ^((~BCi)&  BCo );
	lw	a5,-280(s0)		# tmp1531, BCi
	not	s8,a5	# _136, tmp1531
	lw	a5,-276(s0)		# tmp1532, BCi
	not	s9,a5	# _136, tmp1532
# fips202.c:312:             Ase =   BCe ^((~BCi)&  BCo );
	lw	a5,-288(s0)		# tmp1533, BCo
	and	s6,a5,s8	# _136, _137, tmp1533
	lw	a5,-284(s0)		# tmp1534, BCo
	and	s7,a5,s9	# _136, _137, tmp1534
# fips202.c:312:             Ase =   BCe ^((~BCi)&  BCo );
	lw	a5,-272(s0)		# tmp1536, BCe
	xor	a5,a5,s6	# _137, tmp2632, tmp1536
	addi	a4,a3,1168	#, tmp2808, tmp2809
	add	a4,a4,s0	#, tmp2808, tmp2808
	sw	a5,0(a4)	# tmp2632, %sfp
	lw	a5,-268(s0)		# tmp1537, BCe
	xor	a5,a5,s7	# _137, tmp2633, tmp1537
	addi	a4,a3,1172	#, tmp2805, tmp2806
	add	a4,a4,s0	#, tmp2805, tmp2805
	sw	a5,0(a4)	# tmp2633, %sfp
	addi	a5,a3,1168	#, tmp2802, tmp2803
	add	a5,a5,s0	#, tmp2802, tmp2802
	lw	a4,0(a5)		# tmp1535, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-232(s0)	# tmp1535, Ase
	sw	a5,-228(s0)	#, Ase
# fips202.c:313:             Asi =   BCi ^((~BCo)&  BCu );
	lw	a5,-288(s0)		# tmp1538, BCo
	not	s4,a5	# _138, tmp1538
	lw	a5,-284(s0)		# tmp1539, BCo
	not	s5,a5	# _138, tmp1539
# fips202.c:313:             Asi =   BCi ^((~BCo)&  BCu );
	lw	a5,-296(s0)		# tmp1540, BCu
	and	s2,a5,s4	# _138, _139, tmp1540
	lw	a5,-292(s0)		# tmp1541, BCu
	and	s3,a5,s5	# _138, _139, tmp1541
# fips202.c:313:             Asi =   BCi ^((~BCo)&  BCu );
	lw	a5,-280(s0)		# tmp1543, BCi
	xor	a5,a5,s2	# _139, tmp2635, tmp1543
	addi	a4,a3,1160	#, tmp2799, tmp2800
	add	a4,a4,s0	#, tmp2799, tmp2799
	sw	a5,0(a4)	# tmp2635, %sfp
	lw	a5,-276(s0)		# tmp1544, BCi
	xor	a5,a5,s3	# _139, tmp2636, tmp1544
	addi	a4,a3,1164	#, tmp2796, tmp2797
	add	a4,a4,s0	#, tmp2796, tmp2796
	sw	a5,0(a4)	# tmp2636, %sfp
	addi	a5,a3,1160	#, tmp2793, tmp2794
	add	a5,a5,s0	#, tmp2793, tmp2793
	lw	a4,0(a5)		# tmp1542, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-240(s0)	# tmp1542, Asi
	sw	a5,-236(s0)	#, Asi
# fips202.c:314:             Aso =   BCo ^((~BCu)&  BCa );
	lw	a5,-296(s0)		# tmp1545, BCu
	not	t5,a5	# _140, tmp1545
	lw	a5,-292(s0)		# tmp1546, BCu
	not	t6,a5	# _140, tmp1546
# fips202.c:314:             Aso =   BCo ^((~BCu)&  BCa );
	lw	a5,-264(s0)		# tmp1547, BCa
	and	t3,a5,t5	# _140, _141, tmp1547
	lw	a5,-260(s0)		# tmp1548, BCa
	and	t4,a5,t6	# _140, _141, tmp1548
# fips202.c:314:             Aso =   BCo ^((~BCu)&  BCa );
	lw	a5,-288(s0)		# tmp1550, BCo
	xor	a5,a5,t3	# _141, tmp2638, tmp1550
	addi	a4,a3,1152	#, tmp2790, tmp2791
	add	a4,a4,s0	#, tmp2790, tmp2790
	sw	a5,0(a4)	# tmp2638, %sfp
	lw	a5,-284(s0)		# tmp1551, BCo
	xor	a5,a5,t4	# _141, tmp2639, tmp1551
	addi	a4,a3,1156	#, tmp2787, tmp2788
	add	a4,a4,s0	#, tmp2787, tmp2787
	sw	a5,0(a4)	# tmp2639, %sfp
	addi	a5,a3,1152	#, tmp2784, tmp2785
	add	a5,a5,s0	#, tmp2784, tmp2784
	lw	a4,0(a5)		# tmp1549, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-248(s0)	# tmp1549, Aso
	sw	a5,-244(s0)	#, Aso
# fips202.c:315:             Asu =   BCu ^((~BCa)&  BCe );
	lw	a5,-264(s0)		# tmp1552, BCa
	not	t1,a5	# _142, tmp1552
	lw	a5,-260(s0)		# tmp1553, BCa
	not	t2,a5	# _142, tmp1553
# fips202.c:315:             Asu =   BCu ^((~BCa)&  BCe );
	lw	a5,-272(s0)		# tmp1554, BCe
	and	a6,a5,t1	# _142, _143, tmp1554
	lw	a5,-268(s0)		# tmp1555, BCe
	and	a7,a5,t2	# _142, _143, tmp1555
# fips202.c:315:             Asu =   BCu ^((~BCa)&  BCe );
	lw	a5,-296(s0)		# tmp1557, BCu
	xor	a5,a5,a6	# _143, tmp2641, tmp1557
	addi	a4,a3,1144	#, tmp2781, tmp2782
	add	a4,a4,s0	#, tmp2781, tmp2781
	sw	a5,0(a4)	# tmp2641, %sfp
	lw	a5,-292(s0)		# tmp1558, BCu
	xor	a5,a5,a7	# _143, tmp2642, tmp1558
	addi	a4,a3,1148	#, tmp2778, tmp2779
	add	a4,a4,s0	#, tmp2778, tmp2778
	sw	a5,0(a4)	# tmp2642, %sfp
	addi	a5,a3,1144	#, tmp2775, tmp2776
	add	a5,a5,s0	#, tmp2775, tmp2775
	lw	a4,0(a5)		# tmp1556, %sfp
	lw	a5,4(a5)		#, %sfp
	sw	a4,-256(s0)	# tmp1556, Asu
	sw	a5,-252(s0)	#, Asu
# fips202.c:126:         for(round = 0; round < NROUNDS; round += 2) {
	lw	a5,-52(s0)		# tmp1560, round
	addi	a5,a5,2	#, tmp1559, tmp1560
	sw	a5,-52(s0)	# tmp1559, round
.L13:
# fips202.c:126:         for(round = 0; round < NROUNDS; round += 2) {
	lw	a4,-52(s0)		# tmp1561, round
	li	a5,23		# tmp1562,
	ble	a4,a5,.L14	#, tmp1561, tmp1562,
# fips202.c:319:         state[ 0] = Aba;
	lw	a3,-548(s0)		# tmp1563, state
	lw	a4,-64(s0)		# tmp1564, Aba
	lw	a5,-60(s0)		#, Aba
	sw	a4,0(a3)	# tmp1564, *state_195(D)
	sw	a5,4(a3)	#, *state_195(D)
# fips202.c:320:         state[ 1] = Abe;
	lw	a5,-548(s0)		# tmp1565, state
	addi	a3,a5,8	#, _144, tmp1565
# fips202.c:320:         state[ 1] = Abe;
	lw	a4,-72(s0)		# tmp1566, Abe
	lw	a5,-68(s0)		#, Abe
	sw	a4,0(a3)	# tmp1566, *_144
	sw	a5,4(a3)	#, *_144
# fips202.c:321:         state[ 2] = Abi;
	lw	a5,-548(s0)		# tmp1567, state
	addi	a3,a5,16	#, _145, tmp1567
# fips202.c:321:         state[ 2] = Abi;
	lw	a4,-80(s0)		# tmp1568, Abi
	lw	a5,-76(s0)		#, Abi
	sw	a4,0(a3)	# tmp1568, *_145
	sw	a5,4(a3)	#, *_145
# fips202.c:322:         state[ 3] = Abo;
	lw	a5,-548(s0)		# tmp1569, state
	addi	a3,a5,24	#, _146, tmp1569
# fips202.c:322:         state[ 3] = Abo;
	lw	a4,-88(s0)		# tmp1570, Abo
	lw	a5,-84(s0)		#, Abo
	sw	a4,0(a3)	# tmp1570, *_146
	sw	a5,4(a3)	#, *_146
# fips202.c:323:         state[ 4] = Abu;
	lw	a5,-548(s0)		# tmp1571, state
	addi	a3,a5,32	#, _147, tmp1571
# fips202.c:323:         state[ 4] = Abu;
	lw	a4,-96(s0)		# tmp1572, Abu
	lw	a5,-92(s0)		#, Abu
	sw	a4,0(a3)	# tmp1572, *_147
	sw	a5,4(a3)	#, *_147
# fips202.c:324:         state[ 5] = Aga;
	lw	a5,-548(s0)		# tmp1573, state
	addi	a3,a5,40	#, _148, tmp1573
# fips202.c:324:         state[ 5] = Aga;
	lw	a4,-104(s0)		# tmp1574, Aga
	lw	a5,-100(s0)		#, Aga
	sw	a4,0(a3)	# tmp1574, *_148
	sw	a5,4(a3)	#, *_148
# fips202.c:325:         state[ 6] = Age;
	lw	a5,-548(s0)		# tmp1575, state
	addi	a3,a5,48	#, _149, tmp1575
# fips202.c:325:         state[ 6] = Age;
	lw	a4,-112(s0)		# tmp1576, Age
	lw	a5,-108(s0)		#, Age
	sw	a4,0(a3)	# tmp1576, *_149
	sw	a5,4(a3)	#, *_149
# fips202.c:326:         state[ 7] = Agi;
	lw	a5,-548(s0)		# tmp1577, state
	addi	a3,a5,56	#, _150, tmp1577
# fips202.c:326:         state[ 7] = Agi;
	lw	a4,-120(s0)		# tmp1578, Agi
	lw	a5,-116(s0)		#, Agi
	sw	a4,0(a3)	# tmp1578, *_150
	sw	a5,4(a3)	#, *_150
# fips202.c:327:         state[ 8] = Ago;
	lw	a5,-548(s0)		# tmp1579, state
	addi	a3,a5,64	#, _151, tmp1579
# fips202.c:327:         state[ 8] = Ago;
	lw	a4,-128(s0)		# tmp1580, Ago
	lw	a5,-124(s0)		#, Ago
	sw	a4,0(a3)	# tmp1580, *_151
	sw	a5,4(a3)	#, *_151
# fips202.c:328:         state[ 9] = Agu;
	lw	a5,-548(s0)		# tmp1581, state
	addi	a3,a5,72	#, _152, tmp1581
# fips202.c:328:         state[ 9] = Agu;
	lw	a4,-136(s0)		# tmp1582, Agu
	lw	a5,-132(s0)		#, Agu
	sw	a4,0(a3)	# tmp1582, *_152
	sw	a5,4(a3)	#, *_152
# fips202.c:329:         state[10] = Aka;
	lw	a5,-548(s0)		# tmp1583, state
	addi	a3,a5,80	#, _153, tmp1583
# fips202.c:329:         state[10] = Aka;
	lw	a4,-144(s0)		# tmp1584, Aka
	lw	a5,-140(s0)		#, Aka
	sw	a4,0(a3)	# tmp1584, *_153
	sw	a5,4(a3)	#, *_153
# fips202.c:330:         state[11] = Ake;
	lw	a5,-548(s0)		# tmp1585, state
	addi	a3,a5,88	#, _154, tmp1585
# fips202.c:330:         state[11] = Ake;
	lw	a4,-152(s0)		# tmp1586, Ake
	lw	a5,-148(s0)		#, Ake
	sw	a4,0(a3)	# tmp1586, *_154
	sw	a5,4(a3)	#, *_154
# fips202.c:331:         state[12] = Aki;
	lw	a5,-548(s0)		# tmp1587, state
	addi	a3,a5,96	#, _155, tmp1587
# fips202.c:331:         state[12] = Aki;
	lw	a4,-160(s0)		# tmp1588, Aki
	lw	a5,-156(s0)		#, Aki
	sw	a4,0(a3)	# tmp1588, *_155
	sw	a5,4(a3)	#, *_155
# fips202.c:332:         state[13] = Ako;
	lw	a5,-548(s0)		# tmp1589, state
	addi	a3,a5,104	#, _156, tmp1589
# fips202.c:332:         state[13] = Ako;
	lw	a4,-168(s0)		# tmp1590, Ako
	lw	a5,-164(s0)		#, Ako
	sw	a4,0(a3)	# tmp1590, *_156
	sw	a5,4(a3)	#, *_156
# fips202.c:333:         state[14] = Aku;
	lw	a5,-548(s0)		# tmp1591, state
	addi	a3,a5,112	#, _157, tmp1591
# fips202.c:333:         state[14] = Aku;
	lw	a4,-176(s0)		# tmp1592, Aku
	lw	a5,-172(s0)		#, Aku
	sw	a4,0(a3)	# tmp1592, *_157
	sw	a5,4(a3)	#, *_157
# fips202.c:334:         state[15] = Ama;
	lw	a5,-548(s0)		# tmp1593, state
	addi	a3,a5,120	#, _158, tmp1593
# fips202.c:334:         state[15] = Ama;
	lw	a4,-184(s0)		# tmp1594, Ama
	lw	a5,-180(s0)		#, Ama
	sw	a4,0(a3)	# tmp1594, *_158
	sw	a5,4(a3)	#, *_158
# fips202.c:335:         state[16] = Ame;
	lw	a5,-548(s0)		# tmp1595, state
	addi	a3,a5,128	#, _159, tmp1595
# fips202.c:335:         state[16] = Ame;
	lw	a4,-192(s0)		# tmp1596, Ame
	lw	a5,-188(s0)		#, Ame
	sw	a4,0(a3)	# tmp1596, *_159
	sw	a5,4(a3)	#, *_159
# fips202.c:336:         state[17] = Ami;
	lw	a5,-548(s0)		# tmp1597, state
	addi	a3,a5,136	#, _160, tmp1597
# fips202.c:336:         state[17] = Ami;
	lw	a4,-200(s0)		# tmp1598, Ami
	lw	a5,-196(s0)		#, Ami
	sw	a4,0(a3)	# tmp1598, *_160
	sw	a5,4(a3)	#, *_160
# fips202.c:337:         state[18] = Amo;
	lw	a5,-548(s0)		# tmp1599, state
	addi	a3,a5,144	#, _161, tmp1599
# fips202.c:337:         state[18] = Amo;
	lw	a4,-208(s0)		# tmp1600, Amo
	lw	a5,-204(s0)		#, Amo
	sw	a4,0(a3)	# tmp1600, *_161
	sw	a5,4(a3)	#, *_161
# fips202.c:338:         state[19] = Amu;
	lw	a5,-548(s0)		# tmp1601, state
	addi	a3,a5,152	#, _162, tmp1601
# fips202.c:338:         state[19] = Amu;
	lw	a4,-216(s0)		# tmp1602, Amu
	lw	a5,-212(s0)		#, Amu
	sw	a4,0(a3)	# tmp1602, *_162
	sw	a5,4(a3)	#, *_162
# fips202.c:339:         state[20] = Asa;
	lw	a5,-548(s0)		# tmp1603, state
	addi	a3,a5,160	#, _163, tmp1603
# fips202.c:339:         state[20] = Asa;
	lw	a4,-224(s0)		# tmp1604, Asa
	lw	a5,-220(s0)		#, Asa
	sw	a4,0(a3)	# tmp1604, *_163
	sw	a5,4(a3)	#, *_163
# fips202.c:340:         state[21] = Ase;
	lw	a5,-548(s0)		# tmp1605, state
	addi	a3,a5,168	#, _164, tmp1605
# fips202.c:340:         state[21] = Ase;
	lw	a4,-232(s0)		# tmp1606, Ase
	lw	a5,-228(s0)		#, Ase
	sw	a4,0(a3)	# tmp1606, *_164
	sw	a5,4(a3)	#, *_164
# fips202.c:341:         state[22] = Asi;
	lw	a5,-548(s0)		# tmp1607, state
	addi	a3,a5,176	#, _165, tmp1607
# fips202.c:341:         state[22] = Asi;
	lw	a4,-240(s0)		# tmp1608, Asi
	lw	a5,-236(s0)		#, Asi
	sw	a4,0(a3)	# tmp1608, *_165
	sw	a5,4(a3)	#, *_165
# fips202.c:342:         state[23] = Aso;
	lw	a5,-548(s0)		# tmp1609, state
	addi	a3,a5,184	#, _166, tmp1609
# fips202.c:342:         state[23] = Aso;
	lw	a4,-248(s0)		# tmp1610, Aso
	lw	a5,-244(s0)		#, Aso
	sw	a4,0(a3)	# tmp1610, *_166
	sw	a5,4(a3)	#, *_166
# fips202.c:343:         state[24] = Asu;
	lw	a5,-548(s0)		# tmp1611, state
	addi	a3,a5,192	#, _167, tmp1611
# fips202.c:343:         state[24] = Asu;
	lw	a4,-256(s0)		# tmp1612, Asu
	lw	a5,-252(s0)		#, Asu
	sw	a4,0(a3)	# tmp1612, *_167
	sw	a5,4(a3)	#, *_167
# fips202.c:344: }
	nop	
	addi	sp,sp,928	#,,
	lw	s0,2028(sp)		#,
	lw	s2,2024(sp)		#,
	lw	s3,2020(sp)		#,
	lw	s4,2016(sp)		#,
	lw	s5,2012(sp)		#,
	lw	s6,2008(sp)		#,
	lw	s7,2004(sp)		#,
	lw	s8,2000(sp)		#,
	lw	s9,1996(sp)		#,
	lw	s10,1992(sp)		#,
	lw	s11,1988(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	KeccakF1600_StatePermute, .-KeccakF1600_StatePermute
	.align	2
	.type	keccak_init, @function
keccak_init:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# s, s
# fips202.c:356:   for(i=0;i<25;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:356:   for(i=0;i<25;i++)
	j	.L16		#
.L17:
# fips202.c:357:     s[i] = 0;
	lw	a5,-20(s0)		# tmp74, i
	slli	a5,a5,3	#, _1, tmp74
	lw	a4,-36(s0)		# tmp75, s
	add	a5,a4,a5	# _1, _2, tmp75
# fips202.c:357:     s[i] = 0;
	li	a3,0		# tmp81,
	li	a4,0		#,
	sw	a3,0(a5)	# tmp81, *_2
	sw	a4,4(a5)	#, *_2
# fips202.c:356:   for(i=0;i<25;i++)
	lw	a5,-20(s0)		# tmp77, i
	addi	a5,a5,1	#, tmp76, tmp77
	sw	a5,-20(s0)	# tmp76, i
.L16:
# fips202.c:356:   for(i=0;i<25;i++)
	lw	a4,-20(s0)		# tmp78, i
	li	a5,24		# tmp79,
	bleu	a4,a5,.L17	#, tmp78, tmp79,
# fips202.c:358: }
	nop	
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	keccak_init, .-keccak_init
	.align	2
	.type	keccak_absorb, @function
keccak_absorb:
	addi	sp,sp,-96	#,,
	sw	ra,92(sp)	#,
	sw	s0,88(sp)	#,
	sw	s2,84(sp)	#,
	sw	s3,80(sp)	#,
	sw	s4,76(sp)	#,
	sw	s5,72(sp)	#,
	sw	s6,68(sp)	#,
	sw	s7,64(sp)	#,
	sw	s8,60(sp)	#,
	sw	s9,56(sp)	#,
	sw	s10,52(sp)	#,
	sw	s11,48(sp)	#,
	addi	s0,sp,96	#,,
	sw	a0,-68(s0)	# s, s
	sw	a1,-72(s0)	# pos, pos
	sw	a2,-76(s0)	# r, r
	sw	a3,-80(s0)	# in, in
	sw	a4,-84(s0)	# inlen, inlen
# fips202.c:381:   while(pos+inlen >= r) {
	j	.L19		#
.L24:
# fips202.c:382:     for(i=pos;i<r;i++)
	lw	a5,-72(s0)		# tmp101, pos
	sw	a5,-52(s0)	# tmp101, i
# fips202.c:382:     for(i=pos;i<r;i++)
	j	.L20		#
.L23:
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-80(s0)		# in.0_1, in
	addi	a4,a5,1	#, tmp102, in.0_1
	sw	a4,-80(s0)	# tmp102, in
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lbu	a5,0(a5)	# _2, *in.0_1
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	mv	s8,a5	# _3, _2
	li	s9,0		# _3,
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-52(s0)		# tmp103, i
	andi	a5,a5,7	#, _4, tmp103
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	slli	a5,a5,3	#, _5, _4
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	addi	a4,a5,-32	#, tmp104, _5
	blt	a4,zero,.L21	#, tmp104,,
	sll	s5,s8,a4	# tmp104, _53, _3
	li	s4,0		# _53,
	j	.L22		#
.L21:
	srli	a3,s8,1	#, tmp111, _3
	li	a4,31		# tmp113,
	sub	a4,a4,a5	# tmp112, tmp113, _5
	srl	a4,a3,a4	# tmp112, tmp114, tmp111
	sll	s5,s9,a5	# _5, _53, _3
	or	s5,a4,s5	# _53, _53, tmp114
	sll	s4,s8,a5	# _5, _53, _3
.L22:
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-52(s0)		# tmp115, i
	andi	a5,a5,-8	#, _6, tmp115
	lw	a4,-68(s0)		# tmp116, s
	add	a5,a4,a5	# _6, _7, tmp116
	lw	a4,0(a5)		# _8, *_7
	lw	a5,4(a5)		# _8, *_7
	lw	a3,-52(s0)		# tmp117, i
	andi	a3,a3,-8	#, _9, tmp117
	lw	a2,-68(s0)		# tmp118, s
	add	a3,a2,a3	# _9, _10, tmp118
# fips202.c:383:       s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	xor	a2,s4,a4	# _8, tmp155, _53
	sw	a2,-96(s0)	# tmp155, %sfp
	xor	a5,s5,a5	# _8, tmp156, _53
	sw	a5,-92(s0)	# tmp156, %sfp
	lw	a5,-96(s0)		# _11, %sfp
	lw	a6,-92(s0)		# _11, %sfp
	sw	a5,0(a3)	# _11, *_10
	sw	a6,4(a3)	# _11, *_10
# fips202.c:382:     for(i=pos;i<r;i++)
	lw	a5,-52(s0)		# tmp120, i
	addi	a5,a5,1	#, tmp119, tmp120
	sw	a5,-52(s0)	# tmp119, i
.L20:
# fips202.c:382:     for(i=pos;i<r;i++)
	lw	a4,-52(s0)		# tmp121, i
	lw	a5,-76(s0)		# tmp122, r
	bltu	a4,a5,.L23	#, tmp121, tmp122,
# fips202.c:384:     inlen -= r-pos;
	lw	a4,-72(s0)		# tmp123, pos
	lw	a5,-76(s0)		# tmp124, r
	sub	a5,a4,a5	# _12, tmp123, tmp124
# fips202.c:384:     inlen -= r-pos;
	lw	a4,-84(s0)		# tmp126, inlen
	add	a5,a4,a5	# _12, tmp125, tmp126
	sw	a5,-84(s0)	# tmp125, inlen
# fips202.c:385:     KeccakF1600_StatePermute(s);
	lw	a0,-68(s0)		#, s
	call	KeccakF1600_StatePermute		#
# fips202.c:386:     pos = 0;
	sw	zero,-72(s0)	#, pos
.L19:
# fips202.c:381:   while(pos+inlen >= r) {
	lw	a4,-72(s0)		# tmp127, pos
	lw	a5,-84(s0)		# tmp128, inlen
	add	a5,a4,a5	# tmp128, _13, tmp127
# fips202.c:381:   while(pos+inlen >= r) {
	lw	a4,-76(s0)		# tmp129, r
	bleu	a4,a5,.L24	#, tmp129, _13,
# fips202.c:389:   for(i=pos;i<pos+inlen;i++)
	lw	a5,-72(s0)		# tmp130, pos
	sw	a5,-52(s0)	# tmp130, i
# fips202.c:389:   for(i=pos;i<pos+inlen;i++)
	j	.L25		#
.L28:
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-80(s0)		# in.1_14, in
	addi	a4,a5,1	#, tmp131, in.1_14
	sw	a4,-80(s0)	# tmp131, in
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lbu	a5,0(a5)	# _15, *in.1_14
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	mv	s6,a5	# _16, _15
	li	s7,0		# _16,
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-52(s0)		# tmp132, i
	andi	a5,a5,7	#, _17, tmp132
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	slli	a5,a5,3	#, _18, _17
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	addi	a4,a5,-32	#, tmp133, _18
	blt	a4,zero,.L26	#, tmp133,,
	sll	s3,s6,a4	# tmp133, _44, _16
	li	s2,0		# _44,
	j	.L27		#
.L26:
	srli	a3,s6,1	#, tmp140, _16
	li	a4,31		# tmp142,
	sub	a4,a4,a5	# tmp141, tmp142, _18
	srl	a4,a3,a4	# tmp141, tmp143, tmp140
	sll	s3,s7,a5	# _18, _44, _16
	or	s3,a4,s3	# _44, _44, tmp143
	sll	s2,s6,a5	# _18, _44, _16
.L27:
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	lw	a5,-52(s0)		# tmp144, i
	andi	a5,a5,-8	#, _19, tmp144
	lw	a4,-68(s0)		# tmp145, s
	add	a5,a4,a5	# _19, _20, tmp145
	lw	a4,0(a5)		# _21, *_20
	lw	a5,4(a5)		# _21, *_20
	lw	a3,-52(s0)		# tmp146, i
	andi	a3,a3,-8	#, _22, tmp146
	lw	a2,-68(s0)		# tmp147, s
	add	a3,a2,a3	# _22, _23, tmp147
# fips202.c:390:     s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
	xor	s10,s2,a4	# _21, _24, _44
	xor	s11,s3,a5	# _21, _24, _44
	sw	s10,0(a3)	# _24, *_23
	sw	s11,4(a3)	# _24, *_23
# fips202.c:389:   for(i=pos;i<pos+inlen;i++)
	lw	a5,-52(s0)		# tmp149, i
	addi	a5,a5,1	#, tmp148, tmp149
	sw	a5,-52(s0)	# tmp148, i
.L25:
# fips202.c:389:   for(i=pos;i<pos+inlen;i++)
	lw	a4,-72(s0)		# tmp150, pos
	lw	a5,-84(s0)		# tmp151, inlen
	add	a5,a4,a5	# tmp151, _25, tmp150
# fips202.c:389:   for(i=pos;i<pos+inlen;i++)
	lw	a4,-52(s0)		# tmp152, i
	bltu	a4,a5,.L28	#, tmp152, _25,
# fips202.c:392:   return i;
	lw	a5,-52(s0)		# _42, i
# fips202.c:393: }
	mv	a0,a5	#, <retval>
	lw	ra,92(sp)		#,
	lw	s0,88(sp)		#,
	lw	s2,84(sp)		#,
	lw	s3,80(sp)		#,
	lw	s4,76(sp)		#,
	lw	s5,72(sp)		#,
	lw	s6,68(sp)		#,
	lw	s7,64(sp)		#,
	lw	s8,60(sp)		#,
	lw	s9,56(sp)		#,
	lw	s10,52(sp)		#,
	lw	s11,48(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	keccak_absorb, .-keccak_absorb
	.align	2
	.type	keccak_finalize, @function
keccak_finalize:
	addi	sp,sp,-32	#,,
	sw	s0,28(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# s, s
	sw	a1,-24(s0)	# pos, pos
	sw	a2,-28(s0)	# r, r
	sb	a3,-29(s0)	# tmp91, p
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	lw	a3,-24(s0)		# tmp92, pos
	andi	a3,a3,-8	#, _1, tmp92
	lw	a2,-20(s0)		# tmp93, s
	add	a3,a2,a3	# _1, _2, tmp93
	lw	a0,0(a3)		# _3, *_2
	lw	a1,4(a3)		# _3, *_2
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	lbu	a3,-29(s0)	# tmp95, p
	andi	a3,a3,0xff	# tmp96, tmp94
	mv	a6,a3	# _4, tmp96
	li	a7,0		# _4,
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	lw	a3,-24(s0)		# tmp97, pos
	andi	a3,a3,7	#, _5, tmp97
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	slli	a3,a3,3	#, _6, _5
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	addi	a2,a3,-32	#, tmp98, _6
	blt	a2,zero,.L31	#, tmp98,,
	sll	a5,a6,a2	# tmp98, _7, _4
	li	a4,0		# _7,
	j	.L32		#
.L31:
	srli	t5,a6,1	#, tmp105, _4
	li	a2,31		# tmp107,
	sub	a2,a2,a3	# tmp106, tmp107, _6
	srl	a2,t5,a2	# tmp106, tmp108, tmp105
	sll	a5,a7,a3	# _6, _7, _4
	or	a5,a2,a5	# _7, _7, tmp108
	sll	a4,a6,a3	# _6, _7, _4
.L32:
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	lw	a3,-24(s0)		# tmp109, pos
	andi	a3,a3,-8	#, _8, tmp109
	lw	a2,-20(s0)		# tmp110, s
	add	a3,a2,a3	# _8, _9, tmp110
# fips202.c:407:   s[pos/8] ^= (uint64_t)p << 8*(pos%8);
	xor	t3,a0,a4	# _7, _10, _3
	xor	t4,a1,a5	# _7, _10, _3
	sw	t3,0(a3)	# _10, *_9
	sw	t4,4(a3)	# _10, *_9
# fips202.c:408:   s[r/8-1] ^= 1ULL << 63;
	lw	a5,-28(s0)		# tmp111, r
	andi	a5,a5,-8	#, _11, tmp111
	addi	a5,a5,-8	#, _12, _11
	lw	a4,-20(s0)		# tmp112, s
	add	a5,a4,a5	# _12, _13, tmp112
	lw	a4,0(a5)		# _14, *_13
	lw	a5,4(a5)		# _14, *_13
	lw	a3,-28(s0)		# tmp113, r
	andi	a3,a3,-8	#, _15, tmp113
	addi	a3,a3,-8	#, _16, _15
	lw	a2,-20(s0)		# tmp114, s
	add	a3,a2,a3	# _16, _17, tmp114
# fips202.c:408:   s[r/8-1] ^= 1ULL << 63;
	xori	t1,a4,0	#, _18, _14
	li	a2,-2147483648		# tmp115,
	xor	t2,a5,a2	# tmp115, _18, _14
	sw	t1,0(a3)	# _18, *_17
	sw	t2,4(a3)	# _18, *_17
# fips202.c:409: }
	nop	
	lw	s0,28(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	keccak_finalize, .-keccak_finalize
	.align	2
	.type	keccak_squeeze, @function
keccak_squeeze:
	addi	sp,sp,-64	#,,
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
	sw	s2,52(sp)	#,
	sw	s3,48(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-36(s0)	# out, out
	sw	a1,-40(s0)	# outlen, outlen
	sw	a2,-44(s0)	# s, s
	sw	a3,-48(s0)	# pos, pos
	sw	a4,-52(s0)	# r, r
# fips202.c:434:   while(outlen) {
	j	.L34		#
.L41:
# fips202.c:435:     if(pos == r) {
	lw	a4,-48(s0)		# tmp84, pos
	lw	a5,-52(s0)		# tmp85, r
	bne	a4,a5,.L35	#, tmp84, tmp85,
# fips202.c:436:       KeccakF1600_StatePermute(s);
	lw	a0,-44(s0)		#, s
	call	KeccakF1600_StatePermute		#
# fips202.c:437:       pos = 0;
	sw	zero,-48(s0)	#, pos
.L35:
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	lw	a5,-48(s0)		# tmp86, pos
	sw	a5,-20(s0)	# tmp86, i
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	j	.L36		#
.L40:
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	lw	a5,-20(s0)		# tmp87, i
	andi	a5,a5,-8	#, _1, tmp87
	lw	a4,-44(s0)		# tmp88, s
	add	a5,a4,a5	# _1, _2, tmp88
	lw	a4,0(a5)		# _3, *_2
	lw	a5,4(a5)		# _3, *_2
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	lw	a3,-20(s0)		# tmp89, i
	andi	a3,a3,7	#, _4, tmp89
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	slli	a3,a3,3	#, _5, _4
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	addi	a2,a3,-32	#, tmp90, _5
	blt	a2,zero,.L37	#, tmp90,,
	srl	s2,a5,a2	# tmp90, _6, _3
	li	s3,0		# _6,
	j	.L38		#
.L37:
	slli	a1,a5,1	#, tmp97, _3
	li	a2,31		# tmp99,
	sub	a2,a2,a3	# tmp98, tmp99, _5
	sll	a2,a1,a2	# tmp98, tmp100, tmp97
	srl	s2,a4,a3	# _5, _6, _3
	or	s2,a2,s2	# _6, _6, tmp100
	srl	s3,a5,a3	# _5, _6, _3
.L38:
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	lw	a5,-36(s0)		# out.2_7, out
	addi	a4,a5,1	#, tmp101, out.2_7
	sw	a4,-36(s0)	# tmp101, out
# fips202.c:440:       *out++ = s[i/8] >> 8*(i%8);
	andi	a4,s2,0xff	# _8, _6
	sb	a4,0(a5)	# _8, *out.2_7
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	lw	a5,-20(s0)		# tmp103, i
	addi	a5,a5,1	#, tmp102, tmp103
	sw	a5,-20(s0)	# tmp102, i
.L36:
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	lw	a4,-20(s0)		# tmp104, i
	lw	a5,-52(s0)		# tmp105, r
	bgeu	a4,a5,.L39	#, tmp104, tmp105,
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	lw	a4,-48(s0)		# tmp106, pos
	lw	a5,-40(s0)		# tmp107, outlen
	add	a5,a4,a5	# tmp107, _9, tmp106
# fips202.c:439:     for(i=pos;i < r && i < pos+outlen; i++)
	lw	a4,-20(s0)		# tmp108, i
	bltu	a4,a5,.L40	#, tmp108, _9,
.L39:
# fips202.c:441:     outlen -= i-pos;
	lw	a4,-48(s0)		# tmp109, pos
	lw	a5,-20(s0)		# tmp110, i
	sub	a5,a4,a5	# _10, tmp109, tmp110
# fips202.c:441:     outlen -= i-pos;
	lw	a4,-40(s0)		# tmp112, outlen
	add	a5,a4,a5	# _10, tmp111, tmp112
	sw	a5,-40(s0)	# tmp111, outlen
# fips202.c:442:     pos = i;
	lw	a5,-20(s0)		# tmp113, i
	sw	a5,-48(s0)	# tmp113, pos
.L34:
# fips202.c:434:   while(outlen) {
	lw	a5,-40(s0)		# tmp114, outlen
	bne	a5,zero,.L41	#, tmp114,,
# fips202.c:445:   return pos;
	lw	a5,-48(s0)		# _24, pos
# fips202.c:446: }
	mv	a0,a5	#, <retval>
	lw	ra,60(sp)		#,
	lw	s0,56(sp)		#,
	lw	s2,52(sp)		#,
	lw	s3,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	keccak_squeeze, .-keccak_squeeze
	.align	2
	.type	keccak_absorb_once, @function
keccak_absorb_once:
	addi	sp,sp,-112	#,,
	sw	ra,108(sp)	#,
	sw	s0,104(sp)	#,
	sw	s2,100(sp)	#,
	sw	s3,96(sp)	#,
	sw	s4,92(sp)	#,
	sw	s5,88(sp)	#,
	sw	s6,84(sp)	#,
	sw	s7,80(sp)	#,
	sw	s8,76(sp)	#,
	sw	s9,72(sp)	#,
	sw	s10,68(sp)	#,
	sw	s11,64(sp)	#,
	addi	s0,sp,112	#,,
	sw	a0,-68(s0)	# s, s
	sw	a1,-72(s0)	# r, r
	sw	a2,-76(s0)	# in, in
	sw	a3,-80(s0)	# inlen, inlen
	mv	a5,a4	# tmp114, p
	sb	a5,-81(s0)	# tmp115, p
# fips202.c:469:   for(i=0;i<25;i++)
	sw	zero,-52(s0)	#, i
# fips202.c:469:   for(i=0;i<25;i++)
	j	.L44		#
.L45:
# fips202.c:470:     s[i] = 0;
	lw	a5,-52(s0)		# tmp116, i
	slli	a5,a5,3	#, _1, tmp116
	lw	a4,-68(s0)		# tmp117, s
	add	a5,a4,a5	# _1, _2, tmp117
# fips202.c:470:     s[i] = 0;
	li	a3,0		# tmp187,
	li	a4,0		#,
	sw	a3,0(a5)	# tmp187, *_2
	sw	a4,4(a5)	#, *_2
# fips202.c:469:   for(i=0;i<25;i++)
	lw	a5,-52(s0)		# tmp119, i
	addi	a5,a5,1	#, tmp118, tmp119
	sw	a5,-52(s0)	# tmp118, i
.L44:
# fips202.c:469:   for(i=0;i<25;i++)
	lw	a4,-52(s0)		# tmp120, i
	li	a5,24		# tmp121,
	bleu	a4,a5,.L45	#, tmp120, tmp121,
# fips202.c:472:   while(inlen >= r) {
	j	.L46		#
.L49:
# fips202.c:473:     for(i=0;i<r/8;i++)
	sw	zero,-52(s0)	#, i
# fips202.c:473:     for(i=0;i<r/8;i++)
	j	.L47		#
.L48:
# fips202.c:474:       s[i] ^= load64(in+8*i);
	lw	a5,-52(s0)		# tmp122, i
	slli	a5,a5,3	#, _3, tmp122
# fips202.c:474:       s[i] ^= load64(in+8*i);
	lw	a4,-76(s0)		# tmp123, in
	add	a5,a4,a5	# _3, _4, tmp123
	mv	a0,a5	#, _4
	call	load64		#
	mv	a2,a0	# _68,
	mv	a3,a1	# _68,
# fips202.c:474:       s[i] ^= load64(in+8*i);
	lw	a5,-52(s0)		# tmp124, i
	slli	a5,a5,3	#, _5, tmp124
	lw	a4,-68(s0)		# tmp125, s
	add	a5,a4,a5	# _5, _6, tmp125
	lw	a4,0(a5)		# _7, *_6
	lw	a5,4(a5)		# _7, *_6
	lw	a1,-52(s0)		# tmp126, i
	slli	a1,a1,3	#, _8, tmp126
	lw	a0,-68(s0)		# tmp127, s
	add	a1,a0,a1	# _8, _9, tmp127
# fips202.c:474:       s[i] ^= load64(in+8*i);
	xor	a0,a2,a4	# _7, tmp188, _68
	sw	a0,-96(s0)	# tmp188, %sfp
	xor	a5,a3,a5	# _7, tmp189, _68
	sw	a5,-92(s0)	# tmp189, %sfp
	lw	a5,-96(s0)		# _10, %sfp
	lw	a6,-92(s0)		# _10, %sfp
	sw	a5,0(a1)	# _10, *_9
	sw	a6,4(a1)	# _10, *_9
# fips202.c:473:     for(i=0;i<r/8;i++)
	lw	a5,-52(s0)		# tmp129, i
	addi	a5,a5,1	#, tmp128, tmp129
	sw	a5,-52(s0)	# tmp128, i
.L47:
# fips202.c:473:     for(i=0;i<r/8;i++)
	lw	a5,-72(s0)		# tmp130, r
	srli	a5,a5,3	#, _11, tmp130
# fips202.c:473:     for(i=0;i<r/8;i++)
	lw	a4,-52(s0)		# tmp131, i
	bltu	a4,a5,.L48	#, tmp131, _11,
# fips202.c:475:     in += r;
	lw	a4,-76(s0)		# tmp133, in
	lw	a5,-72(s0)		# tmp134, r
	add	a5,a4,a5	# tmp134, tmp132, tmp133
	sw	a5,-76(s0)	# tmp132, in
# fips202.c:476:     inlen -= r;
	lw	a4,-80(s0)		# tmp136, inlen
	lw	a5,-72(s0)		# tmp137, r
	sub	a5,a4,a5	# tmp135, tmp136, tmp137
	sw	a5,-80(s0)	# tmp135, inlen
# fips202.c:477:     KeccakF1600_StatePermute(s);
	lw	a0,-68(s0)		#, s
	call	KeccakF1600_StatePermute		#
.L46:
# fips202.c:472:   while(inlen >= r) {
	lw	a4,-80(s0)		# tmp138, inlen
	lw	a5,-72(s0)		# tmp139, r
	bgeu	a4,a5,.L49	#, tmp138, tmp139,
# fips202.c:480:   for(i=0;i<inlen;i++)
	sw	zero,-52(s0)	#, i
# fips202.c:480:   for(i=0;i<inlen;i++)
	j	.L50		#
.L53:
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	lw	a5,-52(s0)		# tmp140, i
	andi	a5,a5,-8	#, _12, tmp140
	lw	a4,-68(s0)		# tmp141, s
	add	a5,a4,a5	# _12, _13, tmp141
	lw	a2,0(a5)		# _14, *_13
	lw	a3,4(a5)		# _14, *_13
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	lw	a4,-76(s0)		# tmp142, in
	lw	a5,-52(s0)		# tmp143, i
	add	a5,a4,a5	# tmp143, _15, tmp142
	lbu	a5,0(a5)	# _16, *_15
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	mv	s8,a5	# _17, _16
	li	s9,0		# _17,
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	lw	a5,-52(s0)		# tmp144, i
	andi	a5,a5,7	#, _18, tmp144
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	slli	a5,a5,3	#, _19, _18
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	addi	a4,a5,-32	#, tmp145, _19
	blt	a4,zero,.L51	#, tmp145,,
	sll	s5,s8,a4	# tmp145, _20, _17
	li	s4,0		# _20,
	j	.L52		#
.L51:
	srli	a1,s8,1	#, tmp152, _17
	li	a4,31		# tmp154,
	sub	a4,a4,a5	# tmp153, tmp154, _19
	srl	a4,a1,a4	# tmp153, tmp155, tmp152
	sll	s5,s9,a5	# _19, _20, _17
	or	s5,a4,s5	# _20, _20, tmp155
	sll	s4,s8,a5	# _19, _20, _17
.L52:
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	lw	a5,-52(s0)		# tmp156, i
	andi	a5,a5,-8	#, _21, tmp156
	lw	a4,-68(s0)		# tmp157, s
	add	a5,a4,a5	# _21, _22, tmp157
# fips202.c:481:     s[i/8] ^= (uint64_t)in[i] << 8*(i%8);
	xor	a4,a2,s4	# _20, tmp191, _14
	sw	a4,-104(s0)	# tmp191, %sfp
	xor	a4,a3,s5	# _20, tmp192, _14
	sw	a4,-100(s0)	# tmp192, %sfp
	lw	a3,-104(s0)		# _23, %sfp
	lw	a4,-100(s0)		# _23, %sfp
	sw	a3,0(a5)	# _23, *_22
	sw	a4,4(a5)	# _23, *_22
# fips202.c:480:   for(i=0;i<inlen;i++)
	lw	a5,-52(s0)		# tmp159, i
	addi	a5,a5,1	#, tmp158, tmp159
	sw	a5,-52(s0)	# tmp158, i
.L50:
# fips202.c:480:   for(i=0;i<inlen;i++)
	lw	a4,-52(s0)		# tmp160, i
	lw	a5,-80(s0)		# tmp161, inlen
	bltu	a4,a5,.L53	#, tmp160, tmp161,
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	lw	a5,-52(s0)		# tmp162, i
	andi	a5,a5,-8	#, _24, tmp162
	lw	a4,-68(s0)		# tmp163, s
	add	a5,a4,a5	# _24, _25, tmp163
	lw	a2,0(a5)		# _26, *_25
	lw	a3,4(a5)		# _26, *_25
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	lbu	a5,-81(s0)	# tmp165, p
	andi	a5,a5,0xff	# tmp166, tmp164
	mv	s6,a5	# _27, tmp166
	li	s7,0		# _27,
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	lw	a5,-52(s0)		# tmp167, i
	andi	a5,a5,7	#, _28, tmp167
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	slli	a5,a5,3	#, _29, _28
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	addi	a4,a5,-32	#, tmp168, _29
	blt	a4,zero,.L54	#, tmp168,,
	sll	s3,s6,a4	# tmp168, _30, _27
	li	s2,0		# _30,
	j	.L55		#
.L54:
	srli	a1,s6,1	#, tmp175, _27
	li	a4,31		# tmp177,
	sub	a4,a4,a5	# tmp176, tmp177, _29
	srl	a4,a1,a4	# tmp176, tmp178, tmp175
	sll	s3,s7,a5	# _29, _30, _27
	or	s3,a4,s3	# _30, _30, tmp178
	sll	s2,s6,a5	# _29, _30, _27
.L55:
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	lw	a5,-52(s0)		# tmp179, i
	andi	a5,a5,-8	#, _31, tmp179
	lw	a4,-68(s0)		# tmp180, s
	add	a5,a4,a5	# _31, _32, tmp180
# fips202.c:483:   s[i/8] ^= (uint64_t)p << 8*(i%8);
	xor	a4,a2,s2	# _30, tmp194, _26
	sw	a4,-112(s0)	# tmp194, %sfp
	xor	a4,a3,s3	# _30, tmp195, _26
	sw	a4,-108(s0)	# tmp195, %sfp
	lw	a3,-112(s0)		# _33, %sfp
	lw	a4,-108(s0)		# _33, %sfp
	sw	a3,0(a5)	# _33, *_32
	sw	a4,4(a5)	# _33, *_32
# fips202.c:484:   s[(r-1)/8] ^= 1ULL << 63;
	lw	a5,-72(s0)		# tmp181, r
	addi	a5,a5,-1	#, _34, tmp181
	andi	a5,a5,-8	#, _35, _34
	lw	a4,-68(s0)		# tmp182, s
	add	a5,a4,a5	# _35, _36, tmp182
	lw	a4,0(a5)		# _37, *_36
	lw	a5,4(a5)		# _37, *_36
	lw	a3,-72(s0)		# tmp183, r
	addi	a3,a3,-1	#, _38, tmp183
	andi	a3,a3,-8	#, _39, _38
	lw	a2,-68(s0)		# tmp184, s
	add	a3,a2,a3	# _39, _40, tmp184
# fips202.c:484:   s[(r-1)/8] ^= 1ULL << 63;
	xori	s10,a4,0	#, _41, _37
	li	a2,-2147483648		# tmp185,
	xor	s11,a5,a2	# tmp185, _41, _37
	sw	s10,0(a3)	# _41, *_40
	sw	s11,4(a3)	# _41, *_40
# fips202.c:485: }
	nop	
	lw	ra,108(sp)		#,
	lw	s0,104(sp)		#,
	lw	s2,100(sp)		#,
	lw	s3,96(sp)		#,
	lw	s4,92(sp)		#,
	lw	s5,88(sp)		#,
	lw	s6,84(sp)		#,
	lw	s7,80(sp)		#,
	lw	s8,76(sp)		#,
	lw	s9,72(sp)		#,
	lw	s10,68(sp)		#,
	lw	s11,64(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	keccak_absorb_once, .-keccak_absorb_once
	.align	2
	.type	keccak_squeezeblocks, @function
keccak_squeezeblocks:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# out, out
	sw	a1,-40(s0)	# nblocks, nblocks
	sw	a2,-44(s0)	# s, s
	sw	a3,-48(s0)	# r, r
# fips202.c:507:   while(nblocks) {
	j	.L57		#
.L60:
# fips202.c:508:     KeccakF1600_StatePermute(s);
	lw	a0,-44(s0)		#, s
	call	KeccakF1600_StatePermute		#
# fips202.c:509:     for(i=0;i<r/8;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:509:     for(i=0;i<r/8;i++)
	j	.L58		#
.L59:
# fips202.c:510:       store64(out+8*i, s[i]);
	lw	a5,-20(s0)		# tmp78, i
	slli	a5,a5,3	#, _1, tmp78
# fips202.c:510:       store64(out+8*i, s[i]);
	lw	a4,-36(s0)		# tmp79, out
	add	a3,a4,a5	# _1, _2, tmp79
# fips202.c:510:       store64(out+8*i, s[i]);
	lw	a5,-20(s0)		# tmp80, i
	slli	a5,a5,3	#, _3, tmp80
	lw	a4,-44(s0)		# tmp81, s
	add	a5,a4,a5	# _3, _4, tmp81
# fips202.c:510:       store64(out+8*i, s[i]);
	lw	a4,0(a5)		# _5, *_4
	lw	a5,4(a5)		# _5, *_4
	mv	a1,a4	#, _5
	mv	a2,a5	#, _5
	mv	a0,a3	#, _2
	call	store64		#
# fips202.c:509:     for(i=0;i<r/8;i++)
	lw	a5,-20(s0)		# tmp83, i
	addi	a5,a5,1	#, tmp82, tmp83
	sw	a5,-20(s0)	# tmp82, i
.L58:
# fips202.c:509:     for(i=0;i<r/8;i++)
	lw	a5,-48(s0)		# tmp84, r
	srli	a5,a5,3	#, _6, tmp84
# fips202.c:509:     for(i=0;i<r/8;i++)
	lw	a4,-20(s0)		# tmp85, i
	bltu	a4,a5,.L59	#, tmp85, _6,
# fips202.c:511:     out += r;
	lw	a4,-36(s0)		# tmp87, out
	lw	a5,-48(s0)		# tmp88, r
	add	a5,a4,a5	# tmp88, tmp86, tmp87
	sw	a5,-36(s0)	# tmp86, out
# fips202.c:512:     nblocks -= 1;
	lw	a5,-40(s0)		# tmp90, nblocks
	addi	a5,a5,-1	#, tmp89, tmp90
	sw	a5,-40(s0)	# tmp89, nblocks
.L57:
# fips202.c:507:   while(nblocks) {
	lw	a5,-40(s0)		# tmp91, nblocks
	bne	a5,zero,.L60	#, tmp91,,
# fips202.c:514: }
	nop	
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	keccak_squeezeblocks, .-keccak_squeezeblocks
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_init
	.type	pqcrystals_kyber_fips202_ref_shake128_init, @function
pqcrystals_kyber_fips202_ref_shake128_init:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
# fips202.c:525:   keccak_init(state->s);
	lw	a5,-20(s0)		# _1, state
# fips202.c:525:   keccak_init(state->s);
	mv	a0,a5	#, _1
	call	keccak_init		#
# fips202.c:526:   state->pos = 0;
	lw	a5,-20(s0)		# tmp73, state
	sw	zero,200(a5)	#, state_2(D)->pos
# fips202.c:527: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_init, .-pqcrystals_kyber_fips202_ref_shake128_init
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_absorb
	.type	pqcrystals_kyber_fips202_ref_shake128_absorb, @function
pqcrystals_kyber_fips202_ref_shake128_absorb:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
	sw	a1,-24(s0)	# in, in
	sw	a2,-28(s0)	# inlen, inlen
# fips202.c:540:   state->pos = keccak_absorb(state->s, state->pos, SHAKE128_RATE, in, inlen);
	lw	a0,-20(s0)		# _1, state
# fips202.c:540:   state->pos = keccak_absorb(state->s, state->pos, SHAKE128_RATE, in, inlen);
	lw	a5,-20(s0)		# tmp75, state
	lw	a5,200(a5)		# _2, state_4(D)->pos
	lw	a4,-28(s0)		#, inlen
	lw	a3,-24(s0)		#, in
	li	a2,168		#,
	mv	a1,a5	#, _2
	call	keccak_absorb		#
	mv	a4,a0	# _3,
# fips202.c:540:   state->pos = keccak_absorb(state->s, state->pos, SHAKE128_RATE, in, inlen);
	lw	a5,-20(s0)		# tmp76, state
	sw	a4,200(a5)	# _3, state_4(D)->pos
# fips202.c:541: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_absorb, .-pqcrystals_kyber_fips202_ref_shake128_absorb
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_finalize
	.type	pqcrystals_kyber_fips202_ref_shake128_finalize, @function
pqcrystals_kyber_fips202_ref_shake128_finalize:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
# fips202.c:552:   keccak_finalize(state->s, state->pos, SHAKE128_RATE, 0x1F);
	lw	a4,-20(s0)		# _1, state
# fips202.c:552:   keccak_finalize(state->s, state->pos, SHAKE128_RATE, 0x1F);
	lw	a5,-20(s0)		# tmp74, state
	lw	a5,200(a5)		# _2, state_3(D)->pos
	li	a3,31		#,
	li	a2,168		#,
	mv	a1,a5	#, _2
	mv	a0,a4	#, _1
	call	keccak_finalize		#
# fips202.c:553:   state->pos = SHAKE128_RATE;
	lw	a5,-20(s0)		# tmp75, state
	li	a4,168		# tmp76,
	sw	a4,200(a5)	# tmp76, state_3(D)->pos
# fips202.c:554: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_finalize, .-pqcrystals_kyber_fips202_ref_shake128_finalize
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_squeeze
	.type	pqcrystals_kyber_fips202_ref_shake128_squeeze, @function
pqcrystals_kyber_fips202_ref_shake128_squeeze:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# out, out
	sw	a1,-24(s0)	# outlen, outlen
	sw	a2,-28(s0)	# state, state
# fips202.c:568:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE128_RATE);
	lw	a2,-28(s0)		# _1, state
# fips202.c:568:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE128_RATE);
	lw	a5,-28(s0)		# tmp75, state
	lw	a5,200(a5)		# _2, state_4(D)->pos
	li	a4,168		#,
	mv	a3,a5	#, _2
	lw	a1,-24(s0)		#, outlen
	lw	a0,-20(s0)		#, out
	call	keccak_squeeze		#
	mv	a4,a0	# _3,
# fips202.c:568:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE128_RATE);
	lw	a5,-28(s0)		# tmp76, state
	sw	a4,200(a5)	# _3, state_4(D)->pos
# fips202.c:569: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_squeeze, .-pqcrystals_kyber_fips202_ref_shake128_squeeze
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.type	pqcrystals_kyber_fips202_ref_shake128_absorb_once, @function
pqcrystals_kyber_fips202_ref_shake128_absorb_once:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
	sw	a1,-24(s0)	# in, in
	sw	a2,-28(s0)	# inlen, inlen
# fips202.c:582:   keccak_absorb_once(state->s, SHAKE128_RATE, in, inlen, 0x1F);
	lw	a5,-20(s0)		# _1, state
# fips202.c:582:   keccak_absorb_once(state->s, SHAKE128_RATE, in, inlen, 0x1F);
	li	a4,31		#,
	lw	a3,-28(s0)		#, inlen
	lw	a2,-24(s0)		#, in
	li	a1,168		#,
	mv	a0,a5	#, _1
	call	keccak_absorb_once		#
# fips202.c:583:   state->pos = SHAKE128_RATE;
	lw	a5,-20(s0)		# tmp73, state
	li	a4,168		# tmp74,
	sw	a4,200(a5)	# tmp74, state_2(D)->pos
# fips202.c:584: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_absorb_once, .-pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.type	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks, @function
pqcrystals_kyber_fips202_ref_shake128_squeezeblocks:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# out, out
	sw	a1,-24(s0)	# nblocks, nblocks
	sw	a2,-28(s0)	# state, state
# fips202.c:600:   keccak_squeezeblocks(out, nblocks, state->s, SHAKE128_RATE);
	lw	a5,-28(s0)		# _1, state
# fips202.c:600:   keccak_squeezeblocks(out, nblocks, state->s, SHAKE128_RATE);
	li	a3,168		#,
	mv	a2,a5	#, _1
	lw	a1,-24(s0)		#, nblocks
	lw	a0,-20(s0)		#, out
	call	keccak_squeezeblocks		#
# fips202.c:601: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks, .-pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_init
	.type	pqcrystals_kyber_fips202_ref_shake256_init, @function
pqcrystals_kyber_fips202_ref_shake256_init:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
# fips202.c:612:   keccak_init(state->s);
	lw	a5,-20(s0)		# _1, state
# fips202.c:612:   keccak_init(state->s);
	mv	a0,a5	#, _1
	call	keccak_init		#
# fips202.c:613:   state->pos = 0;
	lw	a5,-20(s0)		# tmp73, state
	sw	zero,200(a5)	#, state_2(D)->pos
# fips202.c:614: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_init, .-pqcrystals_kyber_fips202_ref_shake256_init
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_absorb
	.type	pqcrystals_kyber_fips202_ref_shake256_absorb, @function
pqcrystals_kyber_fips202_ref_shake256_absorb:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
	sw	a1,-24(s0)	# in, in
	sw	a2,-28(s0)	# inlen, inlen
# fips202.c:627:   state->pos = keccak_absorb(state->s, state->pos, SHAKE256_RATE, in, inlen);
	lw	a0,-20(s0)		# _1, state
# fips202.c:627:   state->pos = keccak_absorb(state->s, state->pos, SHAKE256_RATE, in, inlen);
	lw	a5,-20(s0)		# tmp75, state
	lw	a5,200(a5)		# _2, state_4(D)->pos
	lw	a4,-28(s0)		#, inlen
	lw	a3,-24(s0)		#, in
	li	a2,136		#,
	mv	a1,a5	#, _2
	call	keccak_absorb		#
	mv	a4,a0	# _3,
# fips202.c:627:   state->pos = keccak_absorb(state->s, state->pos, SHAKE256_RATE, in, inlen);
	lw	a5,-20(s0)		# tmp76, state
	sw	a4,200(a5)	# _3, state_4(D)->pos
# fips202.c:628: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_absorb, .-pqcrystals_kyber_fips202_ref_shake256_absorb
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_finalize
	.type	pqcrystals_kyber_fips202_ref_shake256_finalize, @function
pqcrystals_kyber_fips202_ref_shake256_finalize:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
# fips202.c:639:   keccak_finalize(state->s, state->pos, SHAKE256_RATE, 0x1F);
	lw	a4,-20(s0)		# _1, state
# fips202.c:639:   keccak_finalize(state->s, state->pos, SHAKE256_RATE, 0x1F);
	lw	a5,-20(s0)		# tmp74, state
	lw	a5,200(a5)		# _2, state_3(D)->pos
	li	a3,31		#,
	li	a2,136		#,
	mv	a1,a5	#, _2
	mv	a0,a4	#, _1
	call	keccak_finalize		#
# fips202.c:640:   state->pos = SHAKE256_RATE;
	lw	a5,-20(s0)		# tmp75, state
	li	a4,136		# tmp76,
	sw	a4,200(a5)	# tmp76, state_3(D)->pos
# fips202.c:641: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_finalize, .-pqcrystals_kyber_fips202_ref_shake256_finalize
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_squeeze
	.type	pqcrystals_kyber_fips202_ref_shake256_squeeze, @function
pqcrystals_kyber_fips202_ref_shake256_squeeze:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# out, out
	sw	a1,-24(s0)	# outlen, outlen
	sw	a2,-28(s0)	# state, state
# fips202.c:655:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE256_RATE);
	lw	a2,-28(s0)		# _1, state
# fips202.c:655:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE256_RATE);
	lw	a5,-28(s0)		# tmp75, state
	lw	a5,200(a5)		# _2, state_4(D)->pos
	li	a4,136		#,
	mv	a3,a5	#, _2
	lw	a1,-24(s0)		#, outlen
	lw	a0,-20(s0)		#, out
	call	keccak_squeeze		#
	mv	a4,a0	# _3,
# fips202.c:655:   state->pos = keccak_squeeze(out, outlen, state->s, state->pos, SHAKE256_RATE);
	lw	a5,-28(s0)		# tmp76, state
	sw	a4,200(a5)	# _3, state_4(D)->pos
# fips202.c:656: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_squeeze, .-pqcrystals_kyber_fips202_ref_shake256_squeeze
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_absorb_once
	.type	pqcrystals_kyber_fips202_ref_shake256_absorb_once, @function
pqcrystals_kyber_fips202_ref_shake256_absorb_once:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# state, state
	sw	a1,-24(s0)	# in, in
	sw	a2,-28(s0)	# inlen, inlen
# fips202.c:669:   keccak_absorb_once(state->s, SHAKE256_RATE, in, inlen, 0x1F);
	lw	a5,-20(s0)		# _1, state
# fips202.c:669:   keccak_absorb_once(state->s, SHAKE256_RATE, in, inlen, 0x1F);
	li	a4,31		#,
	lw	a3,-28(s0)		#, inlen
	lw	a2,-24(s0)		#, in
	li	a1,136		#,
	mv	a0,a5	#, _1
	call	keccak_absorb_once		#
# fips202.c:670:   state->pos = SHAKE256_RATE;
	lw	a5,-20(s0)		# tmp73, state
	li	a4,136		# tmp74,
	sw	a4,200(a5)	# tmp74, state_2(D)->pos
# fips202.c:671: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_absorb_once, .-pqcrystals_kyber_fips202_ref_shake256_absorb_once
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks
	.type	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks, @function
pqcrystals_kyber_fips202_ref_shake256_squeezeblocks:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# out, out
	sw	a1,-24(s0)	# nblocks, nblocks
	sw	a2,-28(s0)	# state, state
# fips202.c:687:   keccak_squeezeblocks(out, nblocks, state->s, SHAKE256_RATE);
	lw	a5,-28(s0)		# _1, state
# fips202.c:687:   keccak_squeezeblocks(out, nblocks, state->s, SHAKE256_RATE);
	li	a3,136		#,
	mv	a2,a5	#, _1
	lw	a1,-24(s0)		#, nblocks
	lw	a0,-20(s0)		#, out
	call	keccak_squeezeblocks		#
# fips202.c:688: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks, .-pqcrystals_kyber_fips202_ref_shake256_squeezeblocks
	.globl	__udivsi3
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake128
	.type	pqcrystals_kyber_fips202_ref_shake128, @function
pqcrystals_kyber_fips202_ref_shake128:
	addi	sp,sp,-256	#,,
	sw	ra,252(sp)	#,
	sw	s0,248(sp)	#,
	addi	s0,sp,256	#,,
	sw	a0,-244(s0)	# out, out
	sw	a1,-248(s0)	# outlen, outlen
	sw	a2,-252(s0)	# in, in
	sw	a3,-256(s0)	# inlen, inlen
# fips202.c:705:   shake128_absorb_once(&state, in, inlen);
	addi	a5,s0,-232	#, tmp74,
	lw	a2,-256(s0)		#, inlen
	lw	a1,-252(s0)		#, in
	mv	a0,a5	#, tmp74
	call	pqcrystals_kyber_fips202_ref_shake128_absorb_once		#
# fips202.c:706:   nblocks = outlen/SHAKE128_RATE;
	lw	a5,-248(s0)		# tmp76, outlen
	li	a1,168		#,
	mv	a0,a5	#, tmp76
	call	__udivsi3		#
	mv	a5,a0	# tmp80,
	sw	a5,-20(s0)	# tmp80, nblocks
# fips202.c:707:   shake128_squeezeblocks(out, nblocks, &state);
	addi	a5,s0,-232	#, tmp81,
	mv	a2,a5	#, tmp81
	lw	a1,-20(s0)		#, nblocks
	lw	a0,-244(s0)		#, out
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks		#
# fips202.c:708:   outlen -= nblocks*SHAKE128_RATE;
	lw	a4,-20(s0)		# tmp82, nblocks
	mv	a5,a4	# tmp83, tmp82
	slli	a5,a5,2	#, tmp84, tmp83
	add	a5,a5,a4	# tmp82, tmp83, tmp83
	slli	a5,a5,2	#, tmp85, tmp83
	add	a5,a5,a4	# tmp82, tmp83, tmp83
	slli	a5,a5,3	#, tmp86, tmp83
	mv	a4,a5	# _1, tmp83
# fips202.c:708:   outlen -= nblocks*SHAKE128_RATE;
	lw	a5,-248(s0)		# tmp88, outlen
	sub	a5,a5,a4	# tmp87, tmp88, _1
	sw	a5,-248(s0)	# tmp87, outlen
# fips202.c:709:   out += nblocks*SHAKE128_RATE;
	lw	a4,-20(s0)		# tmp89, nblocks
	mv	a5,a4	# tmp90, tmp89
	slli	a5,a5,2	#, tmp91, tmp90
	add	a5,a5,a4	# tmp89, tmp90, tmp90
	slli	a5,a5,2	#, tmp92, tmp90
	add	a5,a5,a4	# tmp89, tmp90, tmp90
	slli	a5,a5,3	#, tmp93, tmp90
	mv	a4,a5	# _2, tmp90
# fips202.c:709:   out += nblocks*SHAKE128_RATE;
	lw	a5,-244(s0)		# tmp95, out
	add	a5,a5,a4	# _2, tmp94, tmp95
	sw	a5,-244(s0)	# tmp94, out
# fips202.c:710:   shake128_squeeze(out, outlen, &state);
	addi	a5,s0,-232	#, tmp96,
	mv	a2,a5	#, tmp96
	lw	a1,-248(s0)		#, outlen
	lw	a0,-244(s0)		#, out
	call	pqcrystals_kyber_fips202_ref_shake128_squeeze		#
# fips202.c:711: }
	nop	
	lw	ra,252(sp)		#,
	lw	s0,248(sp)		#,
	addi	sp,sp,256	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake128, .-pqcrystals_kyber_fips202_ref_shake128
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_shake256
	.type	pqcrystals_kyber_fips202_ref_shake256, @function
pqcrystals_kyber_fips202_ref_shake256:
	addi	sp,sp,-256	#,,
	sw	ra,252(sp)	#,
	sw	s0,248(sp)	#,
	addi	s0,sp,256	#,,
	sw	a0,-244(s0)	# out, out
	sw	a1,-248(s0)	# outlen, outlen
	sw	a2,-252(s0)	# in, in
	sw	a3,-256(s0)	# inlen, inlen
# fips202.c:728:   shake256_absorb_once(&state, in, inlen);
	addi	a5,s0,-232	#, tmp74,
	lw	a2,-256(s0)		#, inlen
	lw	a1,-252(s0)		#, in
	mv	a0,a5	#, tmp74
	call	pqcrystals_kyber_fips202_ref_shake256_absorb_once		#
# fips202.c:729:   nblocks = outlen/SHAKE256_RATE;
	lw	a5,-248(s0)		# tmp76, outlen
	li	a1,136		#,
	mv	a0,a5	#, tmp76
	call	__udivsi3		#
	mv	a5,a0	# tmp79,
	sw	a5,-20(s0)	# tmp79, nblocks
# fips202.c:730:   shake256_squeezeblocks(out, nblocks, &state);
	addi	a5,s0,-232	#, tmp80,
	mv	a2,a5	#, tmp80
	lw	a1,-20(s0)		#, nblocks
	lw	a0,-244(s0)		#, out
	call	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks		#
# fips202.c:731:   outlen -= nblocks*SHAKE256_RATE;
	lw	a4,-20(s0)		# tmp81, nblocks
	mv	a5,a4	# tmp82, tmp81
	slli	a5,a5,4	#, tmp83, tmp82
	add	a5,a5,a4	# tmp81, tmp82, tmp82
	slli	a5,a5,3	#, tmp84, tmp82
	mv	a4,a5	# _1, tmp82
# fips202.c:731:   outlen -= nblocks*SHAKE256_RATE;
	lw	a5,-248(s0)		# tmp86, outlen
	sub	a5,a5,a4	# tmp85, tmp86, _1
	sw	a5,-248(s0)	# tmp85, outlen
# fips202.c:732:   out += nblocks*SHAKE256_RATE;
	lw	a4,-20(s0)		# tmp87, nblocks
	mv	a5,a4	# tmp88, tmp87
	slli	a5,a5,4	#, tmp89, tmp88
	add	a5,a5,a4	# tmp87, tmp88, tmp88
	slli	a5,a5,3	#, tmp90, tmp88
	mv	a4,a5	# _2, tmp88
# fips202.c:732:   out += nblocks*SHAKE256_RATE;
	lw	a5,-244(s0)		# tmp92, out
	add	a5,a5,a4	# _2, tmp91, tmp92
	sw	a5,-244(s0)	# tmp91, out
# fips202.c:733:   shake256_squeeze(out, outlen, &state);
	addi	a5,s0,-232	#, tmp93,
	mv	a2,a5	#, tmp93
	lw	a1,-248(s0)		#, outlen
	lw	a0,-244(s0)		#, out
	call	pqcrystals_kyber_fips202_ref_shake256_squeeze		#
# fips202.c:734: }
	nop	
	lw	ra,252(sp)		#,
	lw	s0,248(sp)		#,
	addi	sp,sp,256	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_shake256, .-pqcrystals_kyber_fips202_ref_shake256
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_sha3_256
	.type	pqcrystals_kyber_fips202_ref_sha3_256, @function
pqcrystals_kyber_fips202_ref_sha3_256:
	addi	sp,sp,-240	#,,
	sw	ra,236(sp)	#,
	sw	s0,232(sp)	#,
	addi	s0,sp,240	#,,
	sw	a0,-228(s0)	# h, h
	sw	a1,-232(s0)	# in, in
	sw	a2,-236(s0)	# inlen, inlen
# fips202.c:750:   keccak_absorb_once(s, SHA3_256_RATE, in, inlen, 0x06);
	addi	a5,s0,-224	#, tmp75,
	li	a4,6		#,
	lw	a3,-236(s0)		#, inlen
	lw	a2,-232(s0)		#, in
	li	a1,136		#,
	mv	a0,a5	#, tmp75
	call	keccak_absorb_once		#
# fips202.c:751:   KeccakF1600_StatePermute(s);
	addi	a5,s0,-224	#, tmp76,
	mv	a0,a5	#, tmp76
	call	KeccakF1600_StatePermute		#
# fips202.c:752:   for(i=0;i<4;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:752:   for(i=0;i<4;i++)
	j	.L76		#
.L77:
# fips202.c:753:     store64(h+8*i,s[i]);
	lw	a5,-20(s0)		# tmp77, i
	slli	a5,a5,3	#, _1, tmp77
# fips202.c:753:     store64(h+8*i,s[i]);
	lw	a4,-228(s0)		# tmp78, h
	add	a3,a4,a5	# _1, _2, tmp78
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,3	#, tmp80, tmp79
	addi	a5,a5,-16	#, tmp86, tmp80
	add	a5,a5,s0	#, tmp80, tmp86
	lw	a4,-208(a5)		# _3, s[i_4]
	lw	a5,-204(a5)		# _3, s[i_4]
	mv	a1,a4	#, _3
	mv	a2,a5	#, _3
	mv	a0,a3	#, _2
	call	store64		#
# fips202.c:752:   for(i=0;i<4;i++)
	lw	a5,-20(s0)		# tmp82, i
	addi	a5,a5,1	#, tmp81, tmp82
	sw	a5,-20(s0)	# tmp81, i
.L76:
# fips202.c:752:   for(i=0;i<4;i++)
	lw	a4,-20(s0)		# tmp83, i
	li	a5,3		# tmp84,
	bleu	a4,a5,.L77	#, tmp83, tmp84,
# fips202.c:754: }
	nop	
	nop	
	lw	ra,236(sp)		#,
	lw	s0,232(sp)		#,
	addi	sp,sp,240	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_sha3_256, .-pqcrystals_kyber_fips202_ref_sha3_256
	.align	2
	.globl	pqcrystals_kyber_fips202_ref_sha3_512
	.type	pqcrystals_kyber_fips202_ref_sha3_512, @function
pqcrystals_kyber_fips202_ref_sha3_512:
	addi	sp,sp,-240	#,,
	sw	ra,236(sp)	#,
	sw	s0,232(sp)	#,
	addi	s0,sp,240	#,,
	sw	a0,-228(s0)	# h, h
	sw	a1,-232(s0)	# in, in
	sw	a2,-236(s0)	# inlen, inlen
# fips202.c:770:   keccak_absorb_once(s, SHA3_512_RATE, in, inlen, 0x06);
	addi	a5,s0,-224	#, tmp75,
	li	a4,6		#,
	lw	a3,-236(s0)		#, inlen
	lw	a2,-232(s0)		#, in
	li	a1,72		#,
	mv	a0,a5	#, tmp75
	call	keccak_absorb_once		#
# fips202.c:771:   KeccakF1600_StatePermute(s);
	addi	a5,s0,-224	#, tmp76,
	mv	a0,a5	#, tmp76
	call	KeccakF1600_StatePermute		#
# fips202.c:772:   for(i=0;i<8;i++)
	sw	zero,-20(s0)	#, i
# fips202.c:772:   for(i=0;i<8;i++)
	j	.L79		#
.L80:
# fips202.c:773:     store64(h+8*i,s[i]);
	lw	a5,-20(s0)		# tmp77, i
	slli	a5,a5,3	#, _1, tmp77
# fips202.c:773:     store64(h+8*i,s[i]);
	lw	a4,-228(s0)		# tmp78, h
	add	a3,a4,a5	# _1, _2, tmp78
	lw	a5,-20(s0)		# tmp79, i
	slli	a5,a5,3	#, tmp80, tmp79
	addi	a5,a5,-16	#, tmp86, tmp80
	add	a5,a5,s0	#, tmp80, tmp86
	lw	a4,-208(a5)		# _3, s[i_4]
	lw	a5,-204(a5)		# _3, s[i_4]
	mv	a1,a4	#, _3
	mv	a2,a5	#, _3
	mv	a0,a3	#, _2
	call	store64		#
# fips202.c:772:   for(i=0;i<8;i++)
	lw	a5,-20(s0)		# tmp82, i
	addi	a5,a5,1	#, tmp81, tmp82
	sw	a5,-20(s0)	# tmp81, i
.L79:
# fips202.c:772:   for(i=0;i<8;i++)
	lw	a4,-20(s0)		# tmp83, i
	li	a5,7		# tmp84,
	bleu	a4,a5,.L80	#, tmp83, tmp84,
# fips202.c:774: }
	nop	
	nop	
	lw	ra,236(sp)		#,
	lw	s0,232(sp)		#,
	addi	sp,sp,240	#,,
	jr	ra		#
	.size	pqcrystals_kyber_fips202_ref_sha3_512, .-pqcrystals_kyber_fips202_ref_sha3_512
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
