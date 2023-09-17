	.file	"keygen.c"
	.text
	.type	FPR, @function
FPR:
.LFB4204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4204:
	.size	FPR, .-FPR
	.type	fpr_of, @function
fpr_of:
.LFB4205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-8(%rbp), %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	FPR
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4205:
	.size	fpr_of, .-fpr_of
	.section	.rodata
	.align 8
	.type	fpr_q, @object
	.size	fpr_q, 8
fpr_q:
	.long	0
	.long	1086849152
	.align 8
	.type	fpr_inverse_of_q, @object
	.size	fpr_inverse_of_q, 8
fpr_inverse_of_q:
	.long	-1869109374
	.long	1058362595
	.align 8
	.type	fpr_inv_2sqrsigma0, @object
	.size	fpr_inv_2sqrsigma0, 8
fpr_inv_2sqrsigma0:
	.long	-1048331326
	.long	1069764491
	.align 32
	.type	fpr_inv_sigma, @object
	.size	fpr_inv_sigma, 88
fpr_inv_sigma:
	.long	0
	.long	0
	.long	2116294298
	.long	1065109739
	.long	1418505945
	.long	1065084170
	.long	-526485972
	.long	1065059630
	.long	-741680586
	.long	1065024606
	.long	158774253
	.long	1064991547
	.long	-2100650856
	.long	1064960274
	.long	-832624842
	.long	1064930633
	.long	-982590994
	.long	1064902487
	.long	-563820598
	.long	1064875714
	.long	-164554013
	.long	1064850206
	.align 32
	.type	fpr_sigma_min, @object
	.size	fpr_sigma_min, 88
fpr_sigma_min:
	.long	0
	.long	0
	.long	105141899
	.long	1072815416
	.long	-592607706
	.long	1072831790
	.long	-508920710
	.long	1072847942
	.long	1464531749
	.long	1072871772
	.long	-939646282
	.long	1072895147
	.long	880138179
	.long	1072918094
	.long	1721877028
	.long	1072940634
	.long	898413472
	.long	1072962789
	.long	-1088456075
	.long	1072984577
	.long	-1718565020
	.long	1073006017
	.align 8
	.type	fpr_log2, @object
	.size	fpr_log2, 8
fpr_log2:
	.long	-17155601
	.long	1072049730
	.align 8
	.type	fpr_inv_log2, @object
	.size	fpr_inv_log2, 8
fpr_inv_log2:
	.long	1697350398
	.long	1073157447
	.align 8
	.type	fpr_bnorm_max, @object
	.size	fpr_bnorm_max, 8
fpr_bnorm_max:
	.long	1608035756
	.long	1087401370
	.align 8
	.type	fpr_zero, @object
	.size	fpr_zero, 8
fpr_zero:
	.zero	8
	.align 8
	.type	fpr_one, @object
	.size	fpr_one, 8
fpr_one:
	.long	0
	.long	1072693248
	.align 8
	.type	fpr_two, @object
	.size	fpr_two, 8
fpr_two:
	.long	0
	.long	1073741824
	.align 8
	.type	fpr_onehalf, @object
	.size	fpr_onehalf, 8
fpr_onehalf:
	.long	0
	.long	1071644672
	.align 8
	.type	fpr_invsqrt2, @object
	.size	fpr_invsqrt2, 8
fpr_invsqrt2:
	.long	1719614413
	.long	1072079006
	.align 8
	.type	fpr_invsqrt8, @object
	.size	fpr_invsqrt8, 8
fpr_invsqrt8:
	.long	1719614413
	.long	1071030430
	.align 8
	.type	fpr_ptwo31, @object
	.size	fpr_ptwo31, 8
fpr_ptwo31:
	.long	0
	.long	1105199104
	.align 8
	.type	fpr_ptwo31m1, @object
	.size	fpr_ptwo31m1, 8
fpr_ptwo31m1:
	.long	-4194304
	.long	1105199103
	.align 8
	.type	fpr_mtwo31m1, @object
	.size	fpr_mtwo31m1, 8
fpr_mtwo31m1:
	.long	-4194304
	.long	-1042284545
	.align 8
	.type	fpr_ptwo63m1, @object
	.size	fpr_ptwo63m1, 8
fpr_ptwo63m1:
	.long	0
	.long	1138753536
	.align 8
	.type	fpr_mtwo63m1, @object
	.size	fpr_mtwo63m1, 8
fpr_mtwo63m1:
	.long	0
	.long	-1008730112
	.align 8
	.type	fpr_ptwo63, @object
	.size	fpr_ptwo63, 8
fpr_ptwo63:
	.long	0
	.long	1138753536
	.text
	.type	fpr_rint, @function
fpr_rint:
.LFB4206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movsd	-56(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movsd	-56(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-4503599627370496, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$4503599627370496, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	andq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	$52, %rax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	andl	$4095, %eax
	subl	$2, %eax
	shrl	$31, %eax
	movl	%eax, %eax
	negq	%rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	andq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	andq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	orq	-16(%rbp), %rax
	orq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4206:
	.size	fpr_rint, .-fpr_rint
	.type	fpr_add, @function
fpr_add:
.LFB4209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	FPR
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4209:
	.size	fpr_add, .-fpr_add
	.type	fpr_mul, @function
fpr_mul:
.LFB4214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	FPR
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4214:
	.size	fpr_mul, .-fpr_mul
	.type	fpr_sqr, @function
fpr_sqr:
.LFB4215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	FPR
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4215:
	.size	fpr_sqr, .-fpr_sqr
	.type	fpr_lt, @function
fpr_lt:
.LFB4219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4219:
	.size	fpr_lt, .-fpr_lt
	.section	.rodata
	.align 32
	.type	PRIMES, @object
	.size	PRIMES, 6264
PRIMES:
	.long	2147473409
	.long	383167813
	.long	10239
	.long	2147389441
	.long	211808905
	.long	471403745
	.long	2147387393
	.long	37672282
	.long	1329335065
	.long	2147377153
	.long	1977035326
	.long	968223422
	.long	2147358721
	.long	1067163706
	.long	132460015
	.long	2147352577
	.long	1606082042
	.long	598693809
	.long	2147346433
	.long	2033915641
	.long	1056257184
	.long	2147338241
	.long	1653770625
	.long	421286710
	.long	2147309569
	.long	631200819
	.long	1111201074
	.long	2147297281
	.long	2038364663
	.long	1042003613
	.long	2147295233
	.long	1962540515
	.long	19440033
	.long	2147239937
	.long	2100082663
	.long	353296760
	.long	2147235841
	.long	1991153006
	.long	1703918027
	.long	2147217409
	.long	516405114
	.long	1258919613
	.long	2147205121
	.long	409347988
	.long	1089726929
	.long	2147196929
	.long	927788991
	.long	1946238668
	.long	2147178497
	.long	1136922411
	.long	1347028164
	.long	2147100673
	.long	868626236
	.long	701164723
	.long	2147082241
	.long	1897279176
	.long	617820870
	.long	2147074049
	.long	1888819123
	.long	158382189
	.long	2147051521
	.long	25006327
	.long	522758543
	.long	2147043329
	.long	327546255
	.long	37227845
	.long	2147039233
	.long	766324424
	.long	1133356428
	.long	2146988033
	.long	1862817362
	.long	73861329
	.long	2146963457
	.long	404622040
	.long	653019435
	.long	2146959361
	.long	1936581214
	.long	995143093
	.long	2146938881
	.long	1559770096
	.long	634921513
	.long	2146908161
	.long	422623708
	.long	1985060172
	.long	2146885633
	.long	1751189170
	.long	298238186
	.long	2146871297
	.long	578919515
	.long	291810829
	.long	2146846721
	.long	1114060353
	.long	915902322
	.long	2146834433
	.long	2069565474
	.long	47859524
	.long	2146818049
	.long	1552824584
	.long	646281055
	.long	2146775041
	.long	1906267847
	.long	1597832891
	.long	2146756609
	.long	1847414714
	.long	1228090888
	.long	2146744321
	.long	1818792070
	.long	1176377637
	.long	2146738177
	.long	1118066398
	.long	1054971214
	.long	2146736129
	.long	52057278
	.long	933422153
	.long	2146713601
	.long	592259376
	.long	1406621510
	.long	2146695169
	.long	263161877
	.long	1514178701
	.long	2146656257
	.long	685363115
	.long	384505091
	.long	2146650113
	.long	927727032
	.long	537575289
	.long	2146646017
	.long	52575506
	.long	1799464037
	.long	2146643969
	.long	1276803876
	.long	1348954416
	.long	2146603009
	.long	814028633
	.long	1521547704
	.long	2146572289
	.long	1846678872
	.long	1310832121
	.long	2146547713
	.long	919368090
	.long	1019041349
	.long	2146508801
	.long	671847612
	.long	38582496
	.long	2146492417
	.long	283911680
	.long	532424562
	.long	2146490369
	.long	1780044827
	.long	896447978
	.long	2146459649
	.long	327980850
	.long	1327906900
	.long	2146447361
	.long	1310561493
	.long	958645253
	.long	2146441217
	.long	412148926
	.long	287271128
	.long	2146437121
	.long	293186449
	.long	2009822534
	.long	2146430977
	.long	179034356
	.long	1359155584
	.long	2146418689
	.long	1517345488
	.long	1790248672
	.long	2146406401
	.long	1615820390
	.long	1584833571
	.long	2146404353
	.long	826651445
	.long	607120498
	.long	2146379777
	.long	3816988
	.long	1897049071
	.long	2146363393
	.long	1221409784
	.long	1986921567
	.long	2146355201
	.long	1388081168
	.long	849968120
	.long	2146336769
	.long	1803473237
	.long	1655544036
	.long	2146312193
	.long	1023484977
	.long	273671831
	.long	2146293761
	.long	1074591448
	.long	467406983
	.long	2146283521
	.long	831604668
	.long	1523950494
	.long	2146203649
	.long	712865423
	.long	1170834574
	.long	2146154497
	.long	1764991362
	.long	1064856763
	.long	2146142209
	.long	627386213
	.long	1406840151
	.long	2146127873
	.long	1638674429
	.long	2088393537
	.long	2146099201
	.long	1516001018
	.long	690673370
	.long	2146093057
	.long	1294931393
	.long	315136610
	.long	2146091009
	.long	1942399533
	.long	973539425
	.long	2146078721
	.long	1843461814
	.long	2132275436
	.long	2146060289
	.long	1098740778
	.long	360423481
	.long	2146048001
	.long	1617213232
	.long	1951981294
	.long	2146041857
	.long	1805783169
	.long	2075683489
	.long	2146019329
	.long	272027909
	.long	1753219918
	.long	2145986561
	.long	1206530344
	.long	2034028118
	.long	2145976321
	.long	1243769360
	.long	1173377644
	.long	2145964033
	.long	887200839
	.long	1281344586
	.long	2145906689
	.long	1651026455
	.long	906178216
	.long	2145875969
	.long	1673238256
	.long	1043521212
	.long	2145871873
	.long	1226591210
	.long	1399796492
	.long	2145841153
	.long	1465353397
	.long	1324527802
	.long	2145832961
	.long	1150638905
	.long	554084759
	.long	2145816577
	.long	221601706
	.long	427340863
	.long	2145785857
	.long	608896761
	.long	316590738
	.long	2145755137
	.long	1712054942
	.long	1684294304
	.long	2145742849
	.long	1302302867
	.long	724873116
	.long	2145728513
	.long	516717693
	.long	431671476
	.long	2145699841
	.long	524575579
	.long	1619722537
	.long	2145691649
	.long	1925625239
	.long	982974435
	.long	2145687553
	.long	463795662
	.long	1293154300
	.long	2145673217
	.long	771716636
	.long	881778029
	.long	2145630209
	.long	1509556977
	.long	837364988
	.long	2145595393
	.long	229091856
	.long	851648427
	.long	2145587201
	.long	1796903241
	.long	635342424
	.long	2145525761
	.long	715310882
	.long	1677228081
	.long	2145495041
	.long	1040930522
	.long	200685896
	.long	2145466369
	.long	949804237
	.long	1809146322
	.long	2145445889
	.long	1673903706
	.long	95316881
	.long	2145390593
	.long	806941852
	.long	1428671135
	.long	2145372161
	.long	1402525292
	.long	159350694
	.long	2145361921
	.long	2124760298
	.long	1589134749
	.long	2145359873
	.long	1217503067
	.long	1561543010
	.long	2145355777
	.long	338341402
	.long	83865711
	.long	2145343489
	.long	1381532164
	.long	641430002
	.long	2145325057
	.long	1883895478
	.long	1528469895
	.long	2145318913
	.long	1335370424
	.long	65809740
	.long	2145312769
	.long	2000008042
	.long	1919775760
	.long	2145300481
	.long	961450962
	.long	1229540578
	.long	2145282049
	.long	910466767
	.long	1964062701
	.long	2145232897
	.long	816527501
	.long	450152063
	.long	2145218561
	.long	1435128058
	.long	1794509700
	.long	2145187841
	.long	33505311
	.long	1272467582
	.long	2145181697
	.long	269767433
	.long	1380363849
	.long	2145175553
	.long	56386299
	.long	1316870546
	.long	2145079297
	.long	2106880293
	.long	1391797340
	.long	2145021953
	.long	1347906152
	.long	720510798
	.long	2145015809
	.long	206769262
	.long	1651459955
	.long	2145003521
	.long	1885513236
	.long	1393381284
	.long	2144960513
	.long	1810381315
	.long	31937275
	.long	2144944129
	.long	1306487838
	.long	2019419520
	.long	2144935937
	.long	37304730
	.long	1841489054
	.long	2144894977
	.long	1601434616
	.long	157985831
	.long	2144888833
	.long	98749330
	.long	2128592228
	.long	2144880641
	.long	1772327002
	.long	2076128344
	.long	2144864257
	.long	1404514762
	.long	2029969964
	.long	2144827393
	.long	801236594
	.long	406627220
	.long	2144806913
	.long	349217443
	.long	1501080290
	.long	2144796673
	.long	1542656776
	.long	2084736519
	.long	2144778241
	.long	1210734884
	.long	1746416203
	.long	2144759809
	.long	1146598851
	.long	716464489
	.long	2144757761
	.long	286328400
	.long	1823728177
	.long	2144729089
	.long	1347555695
	.long	1836644881
	.long	2144727041
	.long	1795703790
	.long	520296412
	.long	2144696321
	.long	1302475157
	.long	852964281
	.long	2144667649
	.long	1075877614
	.long	504992927
	.long	2144573441
	.long	198765808
	.long	1617144982
	.long	2144555009
	.long	321528767
	.long	155821259
	.long	2144550913
	.long	814139516
	.long	1819937644
	.long	2144536577
	.long	571143206
	.long	962942255
	.long	2144524289
	.long	1746733766
	.long	2471321
	.long	2144512001
	.long	1821415077
	.long	124190939
	.long	2144468993
	.long	917871546
	.long	1260072806
	.long	2144458753
	.long	378417981
	.long	1569240563
	.long	2144421889
	.long	175229668
	.long	1825620763
	.long	2144409601
	.long	1699216963
	.long	351648117
	.long	2144370689
	.long	1071885991
	.long	958186029
	.long	2144348161
	.long	1763151227
	.long	540353574
	.long	2144335873
	.long	1060214804
	.long	919598847
	.long	2144329729
	.long	663515846
	.long	1448552668
	.long	2144327681
	.long	1057776305
	.long	590222840
	.long	2144309249
	.long	1705149168
	.long	1459294624
	.long	2144296961
	.long	325823721
	.long	1649016934
	.long	2144290817
	.long	738775789
	.long	447427206
	.long	2144243713
	.long	962347618
	.long	893050215
	.long	2144237569
	.long	1655257077
	.long	900860862
	.long	2144161793
	.long	242206694
	.long	1567868672
	.long	2144155649
	.long	769415308
	.long	1247993134
	.long	2144137217
	.long	320492023
	.long	515841070
	.long	2144120833
	.long	1639388522
	.long	770877302
	.long	2144071681
	.long	1761785233
	.long	964296120
	.long	2144065537
	.long	419817825
	.long	204564472
	.long	2144028673
	.long	666050597
	.long	2091019760
	.long	2144010241
	.long	1413657615
	.long	1518702610
	.long	2143952897
	.long	1238327946
	.long	475672271
	.long	2143940609
	.long	307063413
	.long	1176750846
	.long	2143918081
	.long	2062905559
	.long	786785803
	.long	2143899649
	.long	1338112849
	.long	1562292083
	.long	2143891457
	.long	68149545
	.long	87166451
	.long	2143885313
	.long	921750778
	.long	394460854
	.long	2143854593
	.long	719766593
	.long	133877196
	.long	2143836161
	.long	1149399850
	.long	1861591875
	.long	2143762433
	.long	1848739366
	.long	1335934145
	.long	2143756289
	.long	1326674710
	.long	102999236
	.long	2143713281
	.long	808061791
	.long	1156900308
	.long	2143690753
	.long	388399459
	.long	1926468019
	.long	2143670273
	.long	1427891374
	.long	1756689401
	.long	2143666177
	.long	1912173949
	.long	986629565
	.long	2143645697
	.long	2041160111
	.long	371842865
	.long	2143641601
	.long	1279906897
	.long	2023974350
	.long	2143635457
	.long	720473174
	.long	1389027526
	.long	2143621121
	.long	1298309455
	.long	1732632006
	.long	2143598593
	.long	1548762216
	.long	1825417506
	.long	2143567873
	.long	620475784
	.long	1073787233
	.long	2143561729
	.long	1932954575
	.long	949167309
	.long	2143553537
	.long	354315656
	.long	1652037534
	.long	2143541249
	.long	577424288
	.long	1097027618
	.long	2143531009
	.long	357862822
	.long	478640055
	.long	2143522817
	.long	2017706025
	.long	1550531668
	.long	2143506433
	.long	2078127419
	.long	1824320165
	.long	2143488001
	.long	613475285
	.long	1604011510
	.long	2143469569
	.long	1466594987
	.long	502095196
	.long	2143426561
	.long	1115430331
	.long	1044637111
	.long	2143383553
	.long	9778045
	.long	1902463734
	.long	2143377409
	.long	1557401276
	.long	2056861771
	.long	2143363073
	.long	652036455
	.long	1965915971
	.long	2143260673
	.long	1464581171
	.long	1523257541
	.long	2143246337
	.long	1876119649
	.long	764541916
	.long	2143209473
	.long	1614992673
	.long	1920672844
	.long	2143203329
	.long	981052047
	.long	2049774209
	.long	2143160321
	.long	1847355533
	.long	728535665
	.long	2143129601
	.long	965558457
	.long	603052992
	.long	2143123457
	.long	2140817191
	.long	8348679
	.long	2143100929
	.long	1547263683
	.long	694209023
	.long	2143092737
	.long	643459066
	.long	1979934533
	.long	2143082497
	.long	188603778
	.long	2026175670
	.long	2143062017
	.long	1657329695
	.long	377451099
	.long	2143051777
	.long	114967950
	.long	979255473
	.long	2143025153
	.long	1698431342
	.long	1449196896
	.long	2143006721
	.long	1862741675
	.long	1739650365
	.long	2142996481
	.long	756660457
	.long	996160050
	.long	2142976001
	.long	927864010
	.long	1166847574
	.long	2142965761
	.long	905070557
	.long	661974566
	.long	2142916609
	.long	40932754
	.long	1787161127
	.long	2142892033
	.long	1987985648
	.long	675335382
	.long	2142885889
	.long	797497211
	.long	1323096997
	.long	2142871553
	.long	2068025830
	.long	1411877159
	.long	2142861313
	.long	1217177090
	.long	1438410687
	.long	2142830593
	.long	409906375
	.long	1767860634
	.long	2142803969
	.long	1197788993
	.long	359782919
	.long	2142785537
	.long	643817365
	.long	513932862
	.long	2142779393
	.long	1717046338
	.long	218943121
	.long	2142724097
	.long	89336830
	.long	416687049
	.long	2142707713
	.long	5944581
	.long	1356813523
	.long	2142658561
	.long	887942135
	.long	2074011722
	.long	2142638081
	.long	151851972
	.long	1647339939
	.long	2142564353
	.long	1691505537
	.long	1483107336
	.long	2142533633
	.long	1989920200
	.long	1135938817
	.long	2142529537
	.long	959263126
	.long	1531961857
	.long	2142527489
	.long	453251129
	.long	1725566162
	.long	2142502913
	.long	1536028102
	.long	182053257
	.long	2142498817
	.long	570138730
	.long	701443447
	.long	2142416897
	.long	326965800
	.long	411931819
	.long	2142363649
	.long	1675665410
	.long	1517191733
	.long	2142351361
	.long	968529566
	.long	1575712703
	.long	2142330881
	.long	1384953238
	.long	1769087884
	.long	2142314497
	.long	1977173242
	.long	1833745524
	.long	2142289921
	.long	95082313
	.long	1714775493
	.long	2142283777
	.long	109377615
	.long	1070584533
	.long	2142277633
	.long	16960510
	.long	702157145
	.long	2142263297
	.long	553850819
	.long	431364395
	.long	2142208001
	.long	241466367
	.long	2053967982
	.long	2142164993
	.long	1795661326
	.long	1031836848
	.long	2142097409
	.long	1212530046
	.long	712772031
	.long	2142087169
	.long	1763869720
	.long	822276067
	.long	2142078977
	.long	644065713
	.long	1765268066
	.long	2142074881
	.long	112671944
	.long	643204925
	.long	2142044161
	.long	1387785471
	.long	1297890174
	.long	2142025729
	.long	783885537
	.long	1000425730
	.long	2142011393
	.long	905662232
	.long	1679401033
	.long	2141974529
	.long	799788433
	.long	468119557
	.long	2141943809
	.long	1932544124
	.long	449305555
	.long	2141933569
	.long	1527403256
	.long	841867925
	.long	2141931521
	.long	1247076451
	.long	743823916
	.long	2141902849
	.long	1199660531
	.long	401687910
	.long	2141890561
	.long	150132350
	.long	1720336972
	.long	2141857793
	.long	1287438162
	.long	663880489
	.long	2141833217
	.long	618017731
	.long	1819208266
	.long	2141820929
	.long	999578638
	.long	1403090096
	.long	2141786113
	.long	81834325
	.long	1523542501
	.long	2141771777
	.long	120001928
	.long	463556492
	.long	2141759489
	.long	122455485
	.long	2124928282
	.long	2141749249
	.long	141986041
	.long	940339153
	.long	2141685761
	.long	889088734
	.long	477141499
	.long	2141673473
	.long	324212681
	.long	1122558298
	.long	2141669377
	.long	1175806187
	.long	1373818177
	.long	2141655041
	.long	1113654822
	.long	296887082
	.long	2141587457
	.long	991103258
	.long	1585913875
	.long	2141583361
	.long	1401451409
	.long	1802457360
	.long	2141575169
	.long	1571977166
	.long	712760980
	.long	2141546497
	.long	1107849376
	.long	1250270109
	.long	2141515777
	.long	196544219
	.long	356001130
	.long	2141495297
	.long	1733571506
	.long	1060744866
	.long	2141483009
	.long	321552363
	.long	1168297026
	.long	2141458433
	.long	505818251
	.long	733225819
	.long	2141360129
	.long	1026840098
	.long	948342276
	.long	2141325313
	.long	945133744
	.long	2129965998
	.long	2141317121
	.long	1871100260
	.long	1843844634
	.long	2141286401
	.long	1790639498
	.long	1750465696
	.long	2141267969
	.long	1376858592
	.long	186160720
	.long	2141255681
	.long	2129698296
	.long	1876677959
	.long	2141243393
	.long	2138900688
	.long	1340009628
	.long	2141214721
	.long	1933049835
	.long	1087819477
	.long	2141212673
	.long	1898664939
	.long	1786328049
	.long	2141202433
	.long	990234828
	.long	940682169
	.long	2141175809
	.long	1406392421
	.long	993089586
	.long	2141165569
	.long	1263518371
	.long	289019479
	.long	2141073409
	.long	1485624211
	.long	507864514
	.long	2141052929
	.long	1885134788
	.long	311252465
	.long	2141040641
	.long	1285021247
	.long	280941862
	.long	2141028353
	.long	1527610374
	.long	375035110
	.long	2141011969
	.long	1400626168
	.long	164696620
	.long	2140999681
	.long	632959608
	.long	966175067
	.long	2140997633
	.long	2045628978
	.long	1290889438
	.long	2140993537
	.long	1412755491
	.long	375366253
	.long	2140942337
	.long	719477232
	.long	785367828
	.long	2140925953
	.long	45224252
	.long	836552317
	.long	2140917761
	.long	1157376588
	.long	1001839569
	.long	2140887041
	.long	278480752
	.long	2098732796
	.long	2140837889
	.long	1663139953
	.long	924094810
	.long	2140788737
	.long	802501511
	.long	2045368990
	.long	2140766209
	.long	1820083885
	.long	1800295504
	.long	2140764161
	.long	1169561905
	.long	2106792035
	.long	2140696577
	.long	127781498
	.long	1885987531
	.long	2140684289
	.long	16014477
	.long	1098116827
	.long	2140653569
	.long	665960598
	.long	1796728247
	.long	2140594177
	.long	1043085491
	.long	377310938
	.long	2140579841
	.long	1732838211
	.long	1504505945
	.long	2140569601
	.long	302071939
	.long	358291016
	.long	2140567553
	.long	192393733
	.long	1909137143
	.long	2140557313
	.long	406595731
	.long	1175330270
	.long	2140549121
	.long	1748850918
	.long	525007007
	.long	2140477441
	.long	499436566
	.long	1031159814
	.long	2140469249
	.long	1886004401
	.long	1029951320
	.long	2140426241
	.long	1483168100
	.long	1676273461
	.long	2140420097
	.long	1779917297
	.long	846024476
	.long	2140413953
	.long	522948893
	.long	1816354149
	.long	2140383233
	.long	1931364473
	.long	1296921241
	.long	2140366849
	.long	1917356555
	.long	147196204
	.long	2140354561
	.long	16466177
	.long	1349052107
	.long	2140348417
	.long	1875366972
	.long	1860485634
	.long	2140323841
	.long	456498717
	.long	1790256483
	.long	2140321793
	.long	1629493973
	.long	150031888
	.long	2140315649
	.long	1904063898
	.long	395510935
	.long	2140280833
	.long	1784104328
	.long	831417909
	.long	2140250113
	.long	256087139
	.long	697349101
	.long	2140229633
	.long	388553070
	.long	243875754
	.long	2140223489
	.long	747459608
	.long	1396270850
	.long	2140200961
	.long	507423743
	.long	1895572209
	.long	2140162049
	.long	580106016
	.long	2045297469
	.long	2140149761
	.long	712426444
	.long	785217995
	.long	2140137473
	.long	1441607584
	.long	536866543
	.long	2140119041
	.long	346538902
	.long	1740434653
	.long	2140090369
	.long	282642885
	.long	21051094
	.long	2140076033
	.long	1407456228
	.long	319910029
	.long	2140047361
	.long	1619330500
	.long	1488632070
	.long	2140041217
	.long	2089408064
	.long	2012026134
	.long	2140008449
	.long	1705524800
	.long	1613440760
	.long	2139924481
	.long	1846208233
	.long	1280649481
	.long	2139906049
	.long	989438755
	.long	1185646076
	.long	2139867137
	.long	1522314850
	.long	372783595
	.long	2139842561
	.long	1681587377
	.long	216848235
	.long	2139826177
	.long	2066284988
	.long	1784999464
	.long	2139824129
	.long	480888214
	.long	1513323027
	.long	2139789313
	.long	847937200
	.long	858192859
	.long	2139783169
	.long	1642000434
	.long	1583261448
	.long	2139770881
	.long	940699589
	.long	179702100
	.long	2139768833
	.long	315623242
	.long	964612676
	.long	2139666433
	.long	331649203
	.long	764666914
	.long	2139641857
	.long	2118730799
	.long	1313764644
	.long	2139635713
	.long	519149027
	.long	519212449
	.long	2139598849
	.long	1526413634
	.long	1769667104
	.long	2139574273
	.long	551148610
	.long	820739925
	.long	2139568129
	.long	1386800242
	.long	472447405
	.long	2139549697
	.long	813760130
	.long	1412328531
	.long	2139537409
	.long	1615286260
	.long	1609362979
	.long	2139475969
	.long	1352559299
	.long	1696720421
	.long	2139455489
	.long	1048691649
	.long	1584935400
	.long	2139432961
	.long	836025845
	.long	950121150
	.long	2139424769
	.long	1558281165
	.long	1635486858
	.long	2139406337
	.long	1728402143
	.long	1674423301
	.long	2139396097
	.long	1727715782
	.long	1483470544
	.long	2139383809
	.long	1092853491
	.long	1741699084
	.long	2139369473
	.long	690776899
	.long	1242798709
	.long	2139351041
	.long	1768782380
	.long	2120712049
	.long	2139334657
	.long	1739968247
	.long	1427249225
	.long	2139332609
	.long	1547189119
	.long	623011170
	.long	2139310081
	.long	1346827917
	.long	1605466350
	.long	2139303937
	.long	369317948
	.long	828392831
	.long	2139301889
	.long	1560417239
	.long	1788073219
	.long	2139283457
	.long	1303121623
	.long	595079358
	.long	2139248641
	.long	1354555286
	.long	573424177
	.long	2139240449
	.long	60974056
	.long	885781403
	.long	2139222017
	.long	355573421
	.long	1221054839
	.long	2139215873
	.long	566477826
	.long	1724006500
	.long	2139150337
	.long	871437673
	.long	1609133294
	.long	2139144193
	.long	1478130914
	.long	1137491905
	.long	2139117569
	.long	1854880922
	.long	964728507
	.long	2139076609
	.long	202405335
	.long	756508944
	.long	2139062273
	.long	1399715741
	.long	884826059
	.long	2139045889
	.long	1051045798
	.long	1202295476
	.long	2139033601
	.long	1707715206
	.long	632234634
	.long	2139006977
	.long	2035853139
	.long	231626690
	.long	2138951681
	.long	183867876
	.long	838350879
	.long	2138945537
	.long	1403254661
	.long	404460202
	.long	2138920961
	.long	310865011
	.long	1282911681
	.long	2138910721
	.long	1328496553
	.long	103472415
	.long	2138904577
	.long	78831681
	.long	993513549
	.long	2138902529
	.long	1319697451
	.long	1055904361
	.long	2138816513
	.long	384338872
	.long	1706202469
	.long	2138810369
	.long	1084868275
	.long	405677177
	.long	2138787841
	.long	401181788
	.long	1964773901
	.long	2138775553
	.long	1850532988
	.long	1247087473
	.long	2138767361
	.long	874261901
	.long	1576073565
	.long	2138757121
	.long	1187474742
	.long	993541415
	.long	2138748929
	.long	1782458888
	.long	1043206483
	.long	2138744833
	.long	1221500487
	.long	800141243
	.long	2138738689
	.long	413465368
	.long	1450660558
	.long	2138695681
	.long	739045140
	.long	342611472
	.long	2138658817
	.long	1355845756
	.long	672674190
	.long	2138644481
	.long	608379162
	.long	1538874380
	.long	2138632193
	.long	1444914034
	.long	686911254
	.long	2138607617
	.long	484707818
	.long	1435142134
	.long	2138591233
	.long	539460669
	.long	1290458549
	.long	2138572801
	.long	2093538990
	.long	2011138646
	.long	2138552321
	.long	1149786988
	.long	1076414907
	.long	2138546177
	.long	840688206
	.long	2108985273
	.long	2138533889
	.long	209669619
	.long	198172413
	.long	2138523649
	.long	1975879426
	.long	1277003968
	.long	2138490881
	.long	1351891144
	.long	1976858109
	.long	2138460161
	.long	1817321013
	.long	1979278293
	.long	2138429441
	.long	1950077177
	.long	203441928
	.long	2138400769
	.long	908970113
	.long	628395069
	.long	2138398721
	.long	219890864
	.long	758486760
	.long	2138376193
	.long	1306654379
	.long	977554090
	.long	2138351617
	.long	298822498
	.long	2004708503
	.long	2138337281
	.long	441457816
	.long	1049002108
	.long	2138320897
	.long	1517731724
	.long	1442269609
	.long	2138290177
	.long	1355911197
	.long	1647139103
	.long	2138234881
	.long	531313247
	.long	1746591962
	.long	2138214401
	.long	1899410930
	.long	781416444
	.long	2138202113
	.long	1813477173
	.long	1622508515
	.long	2138191873
	.long	1086458299
	.long	1025408615
	.long	2138183681
	.long	1998800427
	.long	827063290
	.long	2138173441
	.long	1921308898
	.long	749670117
	.long	2138103809
	.long	1620902804
	.long	2126787647
	.long	2138099713
	.long	828647069
	.long	1892961817
	.long	2138085377
	.long	179405355
	.long	1525506535
	.long	2138060801
	.long	615683235
	.long	1259580138
	.long	2138044417
	.long	2030277840
	.long	1731266562
	.long	2138042369
	.long	2087222316
	.long	1627902259
	.long	2138032129
	.long	126388712
	.long	1108640984
	.long	2138011649
	.long	715026550
	.long	1017980050
	.long	2137993217
	.long	1693714349
	.long	1351778704
	.long	2137888769
	.long	1289762259
	.long	1053090405
	.long	2137853953
	.long	199991890
	.long	1254192789
	.long	2137833473
	.long	941421685
	.long	896995556
	.long	2137817089
	.long	750416446
	.long	1251031181
	.long	2137792513
	.long	798075119
	.long	368077456
	.long	2137786369
	.long	878543495
	.long	1035375025
	.long	2137767937
	.long	9351178
	.long	1156563902
	.long	2137755649
	.long	1382297614
	.long	1686559583
	.long	2137724929
	.long	1345472850
	.long	1681096331
	.long	2137704449
	.long	834666929
	.long	630551727
	.long	2137673729
	.long	1646165729
	.long	1892091571
	.long	2137620481
	.long	778943821
	.long	48456461
	.long	2137618433
	.long	1730837875
	.long	1713336725
	.long	2137581569
	.long	805610339
	.long	1378891359
	.long	2137538561
	.long	204342388
	.long	1950165220
	.long	2137526273
	.long	1947629754
	.long	1500789441
	.long	2137516033
	.long	719902645
	.long	1499525372
	.long	2137491457
	.long	230451261
	.long	556382829
	.long	2137440257
	.long	979573541
	.long	412760291
	.long	2137374721
	.long	927841248
	.long	1954137185
	.long	2137362433
	.long	1243778559
	.long	861024672
	.long	2137313281
	.long	1341338501
	.long	980638386
	.long	2137311233
	.long	937415182
	.long	1793212117
	.long	2137255937
	.long	795331324
	.long	1410253405
	.long	2137243649
	.long	150756339
	.long	1966999887
	.long	2137182209
	.long	163346914
	.long	1939301431
	.long	2137171969
	.long	1952552395
	.long	758913141
	.long	2137159681
	.long	570788721
	.long	218668666
	.long	2137147393
	.long	1896656810
	.long	2045670345
	.long	2137141249
	.long	358493842
	.long	518199643
	.long	2137139201
	.long	1505023029
	.long	674695848
	.long	2137133057
	.long	27911103
	.long	830956306
	.long	2137122817
	.long	439771337
	.long	1555268614
	.long	2137116673
	.long	790988579
	.long	1871449599
	.long	2137110529
	.long	432109234
	.long	811805080
	.long	2137102337
	.long	1357900653
	.long	1184997641
	.long	2137098241
	.long	515119035
	.long	1715693095
	.long	2137090049
	.long	408575203
	.long	2085660657
	.long	2137085953
	.long	2097793407
	.long	1349626963
	.long	2137055233
	.long	1556739954
	.long	1449960883
	.long	2137030657
	.long	1545758650
	.long	1369303716
	.long	2136987649
	.long	332602570
	.long	103875114
	.long	2136969217
	.long	1499989506
	.long	1662964115
	.long	2136924161
	.long	857040753
	.long	4738842
	.long	2136895489
	.long	1948872712
	.long	570436091
	.long	2136893441
	.long	58969960
	.long	1568349634
	.long	2136887297
	.long	2127193379
	.long	273612548
	.long	2136850433
	.long	111208983
	.long	1181257116
	.long	2136809473
	.long	1627275942
	.long	1680317971
	.long	2136764417
	.long	1574888217
	.long	14011331
	.long	2136741889
	.long	14011055
	.long	1129154251
	.long	2136727553
	.long	35862563
	.long	1838555253
	.long	2136721409
	.long	310235666
	.long	1363928244
	.long	2136698881
	.long	1612429202
	.long	1560383828
	.long	2136649729
	.long	1138540131
	.long	800014364
	.long	2136606721
	.long	602323503
	.long	1433096652
	.long	2136563713
	.long	182209265
	.long	1919611038
	.long	2136555521
	.long	324156477
	.long	165591039
	.long	2136549377
	.long	195513113
	.long	217165345
	.long	2136526849
	.long	1050768046
	.long	939647887
	.long	2136508417
	.long	1886286237
	.long	1619926572
	.long	2136477697
	.long	609647664
	.long	35065157
	.long	2136471553
	.long	679352216
	.long	1452259468
	.long	2136457217
	.long	128630031
	.long	824816521
	.long	2136422401
	.long	19787464
	.long	1526049830
	.long	2136420353
	.long	698316836
	.long	1530623527
	.long	2136371201
	.long	1651862373
	.long	1804812805
	.long	2136334337
	.long	326596005
	.long	336977082
	.long	2136322049
	.long	63253370
	.long	1904972151
	.long	2136297473
	.long	312176076
	.long	172182411
	.long	2136248321
	.long	381261841
	.long	369032670
	.long	2136242177
	.long	358688773
	.long	1640007994
	.long	2136229889
	.long	512677188
	.long	75585225
	.long	2136219649
	.long	2095003250
	.long	1970086149
	.long	2136207361
	.long	1909650722
	.long	537760675
	.long	2136176641
	.long	1334616195
	.long	1533487619
	.long	2136158209
	.long	2096285632
	.long	1793285210
	.long	2136143873
	.long	1897347517
	.long	293843959
	.long	2136133633
	.long	923586222
	.long	1022655978
	.long	2136096769
	.long	1464868191
	.long	1515074410
	.long	2136094721
	.long	2020679520
	.long	2061636104
	.long	2136076289
	.long	290798503
	.long	1814726809
	.long	2136041473
	.long	156415894
	.long	1250757633
	.long	2135996417
	.long	297459940
	.long	1132158924
	.long	2135955457
	.long	538755304
	.long	1688831340
	.long	0
	.long	0
	.long	0
	.text
	.type	modp_set, @function
modp_set:
.LFB4223:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	andl	-24(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4223:
	.size	modp_set, .-modp_set
	.type	modp_norm, @function
modp_norm:
.LFB4224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	shrl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%edx, %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4224:
	.size	modp_norm, .-modp_norm
	.type	modp_ninv31, @function
modp_ninv31:
.LFB4225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$2, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	$2, %edx
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	$2, %edx
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	$2, %edx
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	$2, %edx
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	negl	%eax
	andl	$2147483647, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4225:
	.size	modp_ninv31, .-modp_ninv31
	.type	modp_R, @function
modp_R:
.LFB4226:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$-2147483648, %eax
	subl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4226:
	.size	modp_R, .-modp_R
	.type	modp_add, @function
modp_add:
.LFB4227:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	andl	-28(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4227:
	.size	modp_add, .-modp_add
	.type	modp_sub, @function
modp_sub:
.LFB4228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	andl	-28(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4228:
	.size	modp_sub, .-modp_sub
	.type	modp_montymul, @function
modp_montymul:
.LFB4229:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-48(%rbp), %eax
	imulq	-16(%rbp), %rax
	andl	$2147483647, %eax
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	shrq	$31, %rax
	subl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	andl	-44(%rbp), %eax
	addl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4229:
	.size	modp_montymul, .-modp_montymul
	.type	modp_R2, @function
modp_R2:
.LFB4230:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	modp_R
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	negl	%eax
	andl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4230:
	.size	modp_R2, .-modp_R2
	.type	modp_Rx, @function
modp_Rx:
.LFB4231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	modp_R
	movl	%eax, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L32
.L34:
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
.L33:
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -8(%rbp)
	addl	$1, -12(%rbp)
.L32:
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L34
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4231:
	.size	modp_Rx, .-modp_Rx
	.type	modp_div, @function
modp_div:
.LFB4232:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$30, -12(%rbp)
	jmp	.L37
.L38:
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%esi, %eax
	xorl	%eax, -16(%rbp)
	subl	$1, -12(%rbp)
.L37:
	cmpl	$0, -12(%rbp)
	jns	.L38
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4232:
	.size	modp_div, .-modp_div
	.section	.rodata
	.align 32
	.type	REV10, @object
	.size	REV10, 2048
REV10:
	.value	0
	.value	512
	.value	256
	.value	768
	.value	128
	.value	640
	.value	384
	.value	896
	.value	64
	.value	576
	.value	320
	.value	832
	.value	192
	.value	704
	.value	448
	.value	960
	.value	32
	.value	544
	.value	288
	.value	800
	.value	160
	.value	672
	.value	416
	.value	928
	.value	96
	.value	608
	.value	352
	.value	864
	.value	224
	.value	736
	.value	480
	.value	992
	.value	16
	.value	528
	.value	272
	.value	784
	.value	144
	.value	656
	.value	400
	.value	912
	.value	80
	.value	592
	.value	336
	.value	848
	.value	208
	.value	720
	.value	464
	.value	976
	.value	48
	.value	560
	.value	304
	.value	816
	.value	176
	.value	688
	.value	432
	.value	944
	.value	112
	.value	624
	.value	368
	.value	880
	.value	240
	.value	752
	.value	496
	.value	1008
	.value	8
	.value	520
	.value	264
	.value	776
	.value	136
	.value	648
	.value	392
	.value	904
	.value	72
	.value	584
	.value	328
	.value	840
	.value	200
	.value	712
	.value	456
	.value	968
	.value	40
	.value	552
	.value	296
	.value	808
	.value	168
	.value	680
	.value	424
	.value	936
	.value	104
	.value	616
	.value	360
	.value	872
	.value	232
	.value	744
	.value	488
	.value	1000
	.value	24
	.value	536
	.value	280
	.value	792
	.value	152
	.value	664
	.value	408
	.value	920
	.value	88
	.value	600
	.value	344
	.value	856
	.value	216
	.value	728
	.value	472
	.value	984
	.value	56
	.value	568
	.value	312
	.value	824
	.value	184
	.value	696
	.value	440
	.value	952
	.value	120
	.value	632
	.value	376
	.value	888
	.value	248
	.value	760
	.value	504
	.value	1016
	.value	4
	.value	516
	.value	260
	.value	772
	.value	132
	.value	644
	.value	388
	.value	900
	.value	68
	.value	580
	.value	324
	.value	836
	.value	196
	.value	708
	.value	452
	.value	964
	.value	36
	.value	548
	.value	292
	.value	804
	.value	164
	.value	676
	.value	420
	.value	932
	.value	100
	.value	612
	.value	356
	.value	868
	.value	228
	.value	740
	.value	484
	.value	996
	.value	20
	.value	532
	.value	276
	.value	788
	.value	148
	.value	660
	.value	404
	.value	916
	.value	84
	.value	596
	.value	340
	.value	852
	.value	212
	.value	724
	.value	468
	.value	980
	.value	52
	.value	564
	.value	308
	.value	820
	.value	180
	.value	692
	.value	436
	.value	948
	.value	116
	.value	628
	.value	372
	.value	884
	.value	244
	.value	756
	.value	500
	.value	1012
	.value	12
	.value	524
	.value	268
	.value	780
	.value	140
	.value	652
	.value	396
	.value	908
	.value	76
	.value	588
	.value	332
	.value	844
	.value	204
	.value	716
	.value	460
	.value	972
	.value	44
	.value	556
	.value	300
	.value	812
	.value	172
	.value	684
	.value	428
	.value	940
	.value	108
	.value	620
	.value	364
	.value	876
	.value	236
	.value	748
	.value	492
	.value	1004
	.value	28
	.value	540
	.value	284
	.value	796
	.value	156
	.value	668
	.value	412
	.value	924
	.value	92
	.value	604
	.value	348
	.value	860
	.value	220
	.value	732
	.value	476
	.value	988
	.value	60
	.value	572
	.value	316
	.value	828
	.value	188
	.value	700
	.value	444
	.value	956
	.value	124
	.value	636
	.value	380
	.value	892
	.value	252
	.value	764
	.value	508
	.value	1020
	.value	2
	.value	514
	.value	258
	.value	770
	.value	130
	.value	642
	.value	386
	.value	898
	.value	66
	.value	578
	.value	322
	.value	834
	.value	194
	.value	706
	.value	450
	.value	962
	.value	34
	.value	546
	.value	290
	.value	802
	.value	162
	.value	674
	.value	418
	.value	930
	.value	98
	.value	610
	.value	354
	.value	866
	.value	226
	.value	738
	.value	482
	.value	994
	.value	18
	.value	530
	.value	274
	.value	786
	.value	146
	.value	658
	.value	402
	.value	914
	.value	82
	.value	594
	.value	338
	.value	850
	.value	210
	.value	722
	.value	466
	.value	978
	.value	50
	.value	562
	.value	306
	.value	818
	.value	178
	.value	690
	.value	434
	.value	946
	.value	114
	.value	626
	.value	370
	.value	882
	.value	242
	.value	754
	.value	498
	.value	1010
	.value	10
	.value	522
	.value	266
	.value	778
	.value	138
	.value	650
	.value	394
	.value	906
	.value	74
	.value	586
	.value	330
	.value	842
	.value	202
	.value	714
	.value	458
	.value	970
	.value	42
	.value	554
	.value	298
	.value	810
	.value	170
	.value	682
	.value	426
	.value	938
	.value	106
	.value	618
	.value	362
	.value	874
	.value	234
	.value	746
	.value	490
	.value	1002
	.value	26
	.value	538
	.value	282
	.value	794
	.value	154
	.value	666
	.value	410
	.value	922
	.value	90
	.value	602
	.value	346
	.value	858
	.value	218
	.value	730
	.value	474
	.value	986
	.value	58
	.value	570
	.value	314
	.value	826
	.value	186
	.value	698
	.value	442
	.value	954
	.value	122
	.value	634
	.value	378
	.value	890
	.value	250
	.value	762
	.value	506
	.value	1018
	.value	6
	.value	518
	.value	262
	.value	774
	.value	134
	.value	646
	.value	390
	.value	902
	.value	70
	.value	582
	.value	326
	.value	838
	.value	198
	.value	710
	.value	454
	.value	966
	.value	38
	.value	550
	.value	294
	.value	806
	.value	166
	.value	678
	.value	422
	.value	934
	.value	102
	.value	614
	.value	358
	.value	870
	.value	230
	.value	742
	.value	486
	.value	998
	.value	22
	.value	534
	.value	278
	.value	790
	.value	150
	.value	662
	.value	406
	.value	918
	.value	86
	.value	598
	.value	342
	.value	854
	.value	214
	.value	726
	.value	470
	.value	982
	.value	54
	.value	566
	.value	310
	.value	822
	.value	182
	.value	694
	.value	438
	.value	950
	.value	118
	.value	630
	.value	374
	.value	886
	.value	246
	.value	758
	.value	502
	.value	1014
	.value	14
	.value	526
	.value	270
	.value	782
	.value	142
	.value	654
	.value	398
	.value	910
	.value	78
	.value	590
	.value	334
	.value	846
	.value	206
	.value	718
	.value	462
	.value	974
	.value	46
	.value	558
	.value	302
	.value	814
	.value	174
	.value	686
	.value	430
	.value	942
	.value	110
	.value	622
	.value	366
	.value	878
	.value	238
	.value	750
	.value	494
	.value	1006
	.value	30
	.value	542
	.value	286
	.value	798
	.value	158
	.value	670
	.value	414
	.value	926
	.value	94
	.value	606
	.value	350
	.value	862
	.value	222
	.value	734
	.value	478
	.value	990
	.value	62
	.value	574
	.value	318
	.value	830
	.value	190
	.value	702
	.value	446
	.value	958
	.value	126
	.value	638
	.value	382
	.value	894
	.value	254
	.value	766
	.value	510
	.value	1022
	.value	1
	.value	513
	.value	257
	.value	769
	.value	129
	.value	641
	.value	385
	.value	897
	.value	65
	.value	577
	.value	321
	.value	833
	.value	193
	.value	705
	.value	449
	.value	961
	.value	33
	.value	545
	.value	289
	.value	801
	.value	161
	.value	673
	.value	417
	.value	929
	.value	97
	.value	609
	.value	353
	.value	865
	.value	225
	.value	737
	.value	481
	.value	993
	.value	17
	.value	529
	.value	273
	.value	785
	.value	145
	.value	657
	.value	401
	.value	913
	.value	81
	.value	593
	.value	337
	.value	849
	.value	209
	.value	721
	.value	465
	.value	977
	.value	49
	.value	561
	.value	305
	.value	817
	.value	177
	.value	689
	.value	433
	.value	945
	.value	113
	.value	625
	.value	369
	.value	881
	.value	241
	.value	753
	.value	497
	.value	1009
	.value	9
	.value	521
	.value	265
	.value	777
	.value	137
	.value	649
	.value	393
	.value	905
	.value	73
	.value	585
	.value	329
	.value	841
	.value	201
	.value	713
	.value	457
	.value	969
	.value	41
	.value	553
	.value	297
	.value	809
	.value	169
	.value	681
	.value	425
	.value	937
	.value	105
	.value	617
	.value	361
	.value	873
	.value	233
	.value	745
	.value	489
	.value	1001
	.value	25
	.value	537
	.value	281
	.value	793
	.value	153
	.value	665
	.value	409
	.value	921
	.value	89
	.value	601
	.value	345
	.value	857
	.value	217
	.value	729
	.value	473
	.value	985
	.value	57
	.value	569
	.value	313
	.value	825
	.value	185
	.value	697
	.value	441
	.value	953
	.value	121
	.value	633
	.value	377
	.value	889
	.value	249
	.value	761
	.value	505
	.value	1017
	.value	5
	.value	517
	.value	261
	.value	773
	.value	133
	.value	645
	.value	389
	.value	901
	.value	69
	.value	581
	.value	325
	.value	837
	.value	197
	.value	709
	.value	453
	.value	965
	.value	37
	.value	549
	.value	293
	.value	805
	.value	165
	.value	677
	.value	421
	.value	933
	.value	101
	.value	613
	.value	357
	.value	869
	.value	229
	.value	741
	.value	485
	.value	997
	.value	21
	.value	533
	.value	277
	.value	789
	.value	149
	.value	661
	.value	405
	.value	917
	.value	85
	.value	597
	.value	341
	.value	853
	.value	213
	.value	725
	.value	469
	.value	981
	.value	53
	.value	565
	.value	309
	.value	821
	.value	181
	.value	693
	.value	437
	.value	949
	.value	117
	.value	629
	.value	373
	.value	885
	.value	245
	.value	757
	.value	501
	.value	1013
	.value	13
	.value	525
	.value	269
	.value	781
	.value	141
	.value	653
	.value	397
	.value	909
	.value	77
	.value	589
	.value	333
	.value	845
	.value	205
	.value	717
	.value	461
	.value	973
	.value	45
	.value	557
	.value	301
	.value	813
	.value	173
	.value	685
	.value	429
	.value	941
	.value	109
	.value	621
	.value	365
	.value	877
	.value	237
	.value	749
	.value	493
	.value	1005
	.value	29
	.value	541
	.value	285
	.value	797
	.value	157
	.value	669
	.value	413
	.value	925
	.value	93
	.value	605
	.value	349
	.value	861
	.value	221
	.value	733
	.value	477
	.value	989
	.value	61
	.value	573
	.value	317
	.value	829
	.value	189
	.value	701
	.value	445
	.value	957
	.value	125
	.value	637
	.value	381
	.value	893
	.value	253
	.value	765
	.value	509
	.value	1021
	.value	3
	.value	515
	.value	259
	.value	771
	.value	131
	.value	643
	.value	387
	.value	899
	.value	67
	.value	579
	.value	323
	.value	835
	.value	195
	.value	707
	.value	451
	.value	963
	.value	35
	.value	547
	.value	291
	.value	803
	.value	163
	.value	675
	.value	419
	.value	931
	.value	99
	.value	611
	.value	355
	.value	867
	.value	227
	.value	739
	.value	483
	.value	995
	.value	19
	.value	531
	.value	275
	.value	787
	.value	147
	.value	659
	.value	403
	.value	915
	.value	83
	.value	595
	.value	339
	.value	851
	.value	211
	.value	723
	.value	467
	.value	979
	.value	51
	.value	563
	.value	307
	.value	819
	.value	179
	.value	691
	.value	435
	.value	947
	.value	115
	.value	627
	.value	371
	.value	883
	.value	243
	.value	755
	.value	499
	.value	1011
	.value	11
	.value	523
	.value	267
	.value	779
	.value	139
	.value	651
	.value	395
	.value	907
	.value	75
	.value	587
	.value	331
	.value	843
	.value	203
	.value	715
	.value	459
	.value	971
	.value	43
	.value	555
	.value	299
	.value	811
	.value	171
	.value	683
	.value	427
	.value	939
	.value	107
	.value	619
	.value	363
	.value	875
	.value	235
	.value	747
	.value	491
	.value	1003
	.value	27
	.value	539
	.value	283
	.value	795
	.value	155
	.value	667
	.value	411
	.value	923
	.value	91
	.value	603
	.value	347
	.value	859
	.value	219
	.value	731
	.value	475
	.value	987
	.value	59
	.value	571
	.value	315
	.value	827
	.value	187
	.value	699
	.value	443
	.value	955
	.value	123
	.value	635
	.value	379
	.value	891
	.value	251
	.value	763
	.value	507
	.value	1019
	.value	7
	.value	519
	.value	263
	.value	775
	.value	135
	.value	647
	.value	391
	.value	903
	.value	71
	.value	583
	.value	327
	.value	839
	.value	199
	.value	711
	.value	455
	.value	967
	.value	39
	.value	551
	.value	295
	.value	807
	.value	167
	.value	679
	.value	423
	.value	935
	.value	103
	.value	615
	.value	359
	.value	871
	.value	231
	.value	743
	.value	487
	.value	999
	.value	23
	.value	535
	.value	279
	.value	791
	.value	151
	.value	663
	.value	407
	.value	919
	.value	87
	.value	599
	.value	343
	.value	855
	.value	215
	.value	727
	.value	471
	.value	983
	.value	55
	.value	567
	.value	311
	.value	823
	.value	183
	.value	695
	.value	439
	.value	951
	.value	119
	.value	631
	.value	375
	.value	887
	.value	247
	.value	759
	.value	503
	.value	1015
	.value	15
	.value	527
	.value	271
	.value	783
	.value	143
	.value	655
	.value	399
	.value	911
	.value	79
	.value	591
	.value	335
	.value	847
	.value	207
	.value	719
	.value	463
	.value	975
	.value	47
	.value	559
	.value	303
	.value	815
	.value	175
	.value	687
	.value	431
	.value	943
	.value	111
	.value	623
	.value	367
	.value	879
	.value	239
	.value	751
	.value	495
	.value	1007
	.value	31
	.value	543
	.value	287
	.value	799
	.value	159
	.value	671
	.value	415
	.value	927
	.value	95
	.value	607
	.value	351
	.value	863
	.value	223
	.value	735
	.value	479
	.value	991
	.value	63
	.value	575
	.value	319
	.value	831
	.value	191
	.value	703
	.value	447
	.value	959
	.value	127
	.value	639
	.value	383
	.value	895
	.value	255
	.value	767
	.value	511
	.value	1023
	.text
	.type	modp_mkgm2, @function
modp_mkgm2:
.LFB4233:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movl	-68(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -32(%rbp)
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L41
.L42:
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -72(%rbp)
	addl	$1, -44(%rbp)
.L41:
	cmpl	$9, -44(%rbp)
	jbe	.L42
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	modp_R
	movl	%eax, %edi
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-32(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	modp_div
	movl	%eax, -28(%rbp)
	movl	$10, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	modp_R
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L43
.L44:
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	leaq	(%rax,%rax), %rdx
	leaq	REV10(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -40(%rbp)
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -36(%rbp)
	addq	$1, -24(%rbp)
.L43:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L44
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4233:
	.size	modp_mkgm2, .-modp_mkgm2
	.type	modp_NTT2_ext, @function
modp_NTT2_ext:
.LFB4234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$136, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movl	%r9d, -132(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L54
	movl	-124(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$1, -64(%rbp)
	jmp	.L48
.L53:
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L49
.L52:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	imulq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	imulq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L50
.L51:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	-132(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-84(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -76(%rbp)
	movl	-128(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-128(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -40(%rbp)
	movq	-112(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -24(%rbp)
.L50:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L51
	addq	$1, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	%rax, -48(%rbp)
.L49:
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L52
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	salq	-64(%rbp)
.L48:
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L53
	jmp	.L45
.L54:
	nop
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4234:
	.size	modp_NTT2_ext, .-modp_NTT2_ext
	.type	modp_iNTT2_ext, @function
modp_iNTT2_ext:
.LFB4235:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$152, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movl	%r9d, -148(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L66
	movl	-140(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$1, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L58
.L63:
	movq	-88(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L59
.L62:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)
	movq	-56(%rbp), %rax
	imulq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	imulq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L60
.L61:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	-144(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-144(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movl	%eax, %edi
	movl	-148(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -48(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -32(%rbp)
.L60:
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L61
	addq	$1, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -56(%rbp)
.L59:
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L62
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	shrq	-88(%rbp)
.L58:
	cmpq	$1, -88(%rbp)
	ja	.L63
	movl	-140(%rbp), %eax
	movl	$-2147483648, %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -112(%rbp)
	movq	$0, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L64
.L65:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	-148(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-112(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movq	-72(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -80(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -72(%rbp)
.L64:
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L65
	jmp	.L55
.L66:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4235:
	.size	modp_iNTT2_ext, .-modp_iNTT2_ext
	.type	modp_poly_rec_res, @function
modp_poly_rec_res:
.LFB4236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L68
.L69:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movl	%eax, (%rbx)
	addq	$1, -24(%rbp)
.L68:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L69
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4236:
	.size	modp_poly_rec_res, .-modp_poly_rec_res
	.type	zint_sub, @function
zint_sub:
.LFB4237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -24(%rbp)
	movl	-60(%rbp), %eax
	negl	%eax
	movl	%eax, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L71
.L72:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	subl	%edx, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	andl	$2147483647, %eax
	xorl	-16(%rbp), %eax
	andl	-20(%rbp), %eax
	xorl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	addq	$1, -8(%rbp)
.L71:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L72
	movl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4237:
	.size	zint_sub, .-zint_sub
	.type	zint_mul_small, @function
zint_mul_small:
.LFB4238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L75
.L76:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	imulq	%rax, %rdx
	movl	-20(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$31, %rax
	movl	%eax, -20(%rbp)
	addq	$1, -16(%rbp)
.L75:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L76
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4238:
	.size	zint_mul_small, .-zint_mul_small
	.type	zint_mod_small_unsigned, @function
zint_mod_small_unsigned:
.LFB4239:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L79
.L80:
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$31, %eax
	andl	-36(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-36(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movl	%eax, -16(%rbp)
.L79:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	testq	%rax, %rax
	jne	.L80
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4239:
	.size	zint_mod_small_unsigned, .-zint_mod_small_unsigned
	.type	zint_mod_small_signed, @function
zint_mod_small_signed:
.LFB4240:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_unsigned
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4240:
	.size	zint_mod_small_signed, .-zint_mod_small_signed
	.type	zint_add_mul_small, @function
zint_add_mul_small:
.LFB4241:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L86
.L87:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-60(%rbp), %eax
	imulq	%rax, %rdx
	movl	-24(%rbp), %eax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$31, %rax
	movl	%eax, -28(%rbp)
	addq	$1, -16(%rbp)
.L86:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L87
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4241:
	.size	zint_add_mul_small, .-zint_add_mul_small
	.type	zint_norm_zero, @function
zint_norm_zero:
.LFB4242:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L89
.L90:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	%eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$30, %eax
	orl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	negl	%eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	sarl	$31, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	subl	$1, %eax
	andl	-12(%rbp), %eax
	orl	%eax, -28(%rbp)
.L89:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	testq	%rax, %rax
	jne	.L90
	movl	-28(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	zint_sub
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4242:
	.size	zint_norm_zero, .-zint_norm_zero
	.type	zint_rebuild_CRT, @function
zint_rebuild_CRT:
.LFB4243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	$1, -32(%rbp)
	jmp	.L92
.L95:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L93
.L94:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %ecx
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_unsigned
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movl	%eax, %esi
	movl	-52(%rbp), %ecx
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	zint_add_mul_small
	addq	$1, -16(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -24(%rbp)
.L93:
	movq	-16(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L94
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	zint_mul_small
	movl	%eax, (%rbx)
	addq	$1, -32(%rbp)
.L92:
	movq	-32(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L95
	cmpl	$0, -116(%rbp)
	je	.L99
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L97
.L98:
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	zint_norm_zero
	addq	$1, -32(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -24(%rbp)
.L97:
	movq	-32(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L98
.L99:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4243:
	.size	zint_rebuild_CRT, .-zint_rebuild_CRT
	.type	zint_negate, @function
zint_negate:
.LFB4244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L101
.L102:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -20(%rbp)
	addq	$1, -8(%rbp)
.L101:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L102
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4244:
	.size	zint_negate, .-zint_negate
	.type	zint_co_reduce, @function
zint_co_reduce:
.LFB4245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L104
.L106:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %edx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	imulq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	-104(%rbp), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %edx
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	imulq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	16(%rbp), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L105
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
.L105:
	leaq	-48(%rbp), %rax
	movq	(%rax), %rax
	sarq	$31, %rax
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rax
	movq	(%rax), %rax
	sarq	$31, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -32(%rbp)
.L104:
	movq	-32(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L106
	movq	-88(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	zint_negate
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	zint_negate
	movl	-60(%rbp), %eax
	addl	%eax, %eax
	orl	-64(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4245:
	.size	zint_co_reduce, .-zint_co_reduce
	.type	zint_finish_mod, @function
zint_finish_mod:
.LFB4246:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L110
.L111:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	subl	%edx, %eax
	subl	-28(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -28(%rbp)
	addq	$1, -8(%rbp)
.L110:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L111
	movl	-60(%rbp), %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -24(%rbp)
	movl	$1, %eax
	subl	-28(%rbp), %eax
	orl	-60(%rbp), %eax
	negl	%eax
	movl	%eax, -20(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L112
.L113:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	xorl	-24(%rbp), %eax
	andl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movl	-16(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -28(%rbp)
	addq	$1, -8(%rbp)
.L112:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L113
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4246:
	.size	zint_finish_mod, .-zint_finish_mod
	.type	zint_co_reduce_mod, @function
zint_co_reduce_mod:
.LFB4247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%r9, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movq	-112(%rbp), %rdx
	imull	%edx, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movq	16(%rbp), %rdx
	imull	%edx, %eax
	addl	%ecx, %eax
	imull	-100(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movq	24(%rbp), %rdx
	imull	%edx, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movq	32(%rbp), %rdx
	imull	%edx, %eax
	addl	%ecx, %eax
	imull	-100(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -60(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L115
.L117:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %edx
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	imulq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	16(%rbp), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	-64(%rbp), %eax
	imulq	%rcx, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %edx
	movq	24(%rbp), %rax
	movq	%rdx, %rcx
	imulq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	32(%rbp), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	imulq	%rcx, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L116
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
.L116:
	leaq	-48(%rbp), %rax
	movq	(%rax), %rax
	sarq	$31, %rax
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rax
	movq	(%rax), %rax
	sarq	$31, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -32(%rbp)
.L115:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L117
	movq	-96(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	zint_finish_mod
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	zint_finish_mod
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4247:
	.size	zint_co_reduce_mod, .-zint_co_reduce_mod
	.type	zint_bezout, @function
zint_bezout:
.LFB4248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	%r9, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-216(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -156(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -152(%rbp)
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-248(%rbp), %rax
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-248(%rbp), %rax
	imull	$62, %eax, %eax
	addl	$30, %eax
	movl	%eax, -200(%rbp)
	jmp	.L122
.L127:
	movl	$-1, -192(%rbp)
	movl	$-1, -188(%rbp)
	movl	$0, -184(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L123
.L124:
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movl	-184(%rbp), %eax
	xorl	-120(%rbp), %eax
	andl	-192(%rbp), %eax
	xorl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	xorl	-120(%rbp), %eax
	andl	-188(%rbp), %eax
	xorl	%eax, -180(%rbp)
	movl	-176(%rbp), %eax
	xorl	-116(%rbp), %eax
	andl	-192(%rbp), %eax
	xorl	%eax, -176(%rbp)
	movl	-172(%rbp), %eax
	xorl	-116(%rbp), %eax
	andl	-188(%rbp), %eax
	xorl	%eax, -172(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-120(%rbp), %eax
	orl	-116(%rbp), %eax
	addl	$2147483647, %eax
	shrl	$31, %eax
	subl	$1, %eax
	andl	%eax, -192(%rbp)
.L123:
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	testq	%rax, %rax
	jne	.L124
	movl	-184(%rbp), %eax
	andl	-188(%rbp), %eax
	orl	%eax, -180(%rbp)
	movl	-188(%rbp), %eax
	notl	%eax
	andl	%eax, -184(%rbp)
	movl	-176(%rbp), %eax
	andl	-188(%rbp), %eax
	orl	%eax, -172(%rbp)
	movl	-188(%rbp), %eax
	notl	%eax
	andl	%eax, -176(%rbp)
	movl	-184(%rbp), %eax
	salq	$31, %rax
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-176(%rbp), %eax
	salq	$31, %rax
	movq	%rax, %rdx
	movl	-172(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	movq	$1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$1, -64(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L125
.L126:
	movq	-96(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	xorq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	xorq	-8(%rbp), %rax
	andq	%rdx, %rax
	xorq	-8(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -144(%rbp)
	movl	-160(%rbp), %eax
	movl	-168(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	-160(%rbp), %eax
	movl	-164(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-140(%rbp), %eax
	andl	-136(%rbp), %eax
	andl	-144(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-140(%rbp), %eax
	andl	-136(%rbp), %eax
	movl	%eax, %edx
	movl	-144(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %eax
	xorl	$1, %eax
	orl	-132(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	negl	%eax
	andl	-164(%rbp), %eax
	subl	%eax, -168(%rbp)
	movl	-132(%rbp), %eax
	negq	%rax
	andq	-96(%rbp), %rax
	subq	%rax, -104(%rbp)
	movl	-132(%rbp), %eax
	negq	%rax
	andq	-72(%rbp), %rax
	subq	%rax, -88(%rbp)
	movl	-132(%rbp), %eax
	negq	%rax
	andq	-64(%rbp), %rax
	subq	%rax, -80(%rbp)
	movl	-128(%rbp), %eax
	negl	%eax
	andl	-168(%rbp), %eax
	subl	%eax, -164(%rbp)
	movl	-128(%rbp), %eax
	negq	%rax
	andq	-104(%rbp), %rax
	subq	%rax, -96(%rbp)
	movl	-128(%rbp), %eax
	negq	%rax
	andq	-88(%rbp), %rax
	subq	%rax, -72(%rbp)
	movl	-128(%rbp), %eax
	negq	%rax
	andq	-80(%rbp), %rax
	subq	%rax, -64(%rbp)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	andl	-168(%rbp), %eax
	addl	%eax, -168(%rbp)
	movl	-124(%rbp), %eax
	subq	$1, %rax
	andq	-88(%rbp), %rax
	addq	%rax, -88(%rbp)
	movl	-124(%rbp), %eax
	subq	$1, %rax
	andq	-80(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	shrq	%rax
	xorq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	negq	%rax
	andq	%rdx, %rax
	xorq	%rax, -104(%rbp)
	movl	-124(%rbp), %eax
	negl	%eax
	andl	-164(%rbp), %eax
	addl	%eax, -164(%rbp)
	movl	-124(%rbp), %eax
	negq	%rax
	andq	-72(%rbp), %rax
	addq	%rax, -72(%rbp)
	movl	-124(%rbp), %eax
	negq	%rax
	andq	-64(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	shrq	%rax
	xorq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	subq	$1, %rax
	andq	%rdx, %rax
	xorq	%rax, -96(%rbp)
	addl	$1, -160(%rbp)
.L125:
	cmpl	$30, -160(%rbp)
	jle	.L126
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_co_reduce
	addq	$16, %rsp
	movl	%eax, -148(%rbp)
	movq	-88(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-148(%rbp), %eax
	andl	$1, %eax
	negq	%rax
	andq	%rdx, %rax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-148(%rbp), %eax
	andl	$1, %eax
	negq	%rax
	andq	%rdx, %rax
	subq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-148(%rbp), %eax
	shrl	%eax
	movl	%eax, %eax
	negq	%rax
	andq	%rdx, %rax
	subq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movl	-148(%rbp), %eax
	shrl	%eax
	movl	%eax, %eax
	negq	%rax
	andq	%rdx, %rax
	subq	%rax, -64(%rbp)
	movq	-88(%rbp), %r8
	movl	-152(%rbp), %edi
	movq	-248(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_co_reduce_mod
	addq	$32, %rsp
	movq	-88(%rbp), %r8
	movl	-156(%rbp), %edi
	movq	-248(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_co_reduce_mod
	addq	$32, %rsp
	subl	$30, -200(%rbp)
.L122:
	cmpl	$29, -200(%rbp)
	ja	.L127
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	movl	%eax, -196(%rbp)
	movq	$1, -112(%rbp)
	jmp	.L128
.L129:
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	orl	%eax, -196(%rbp)
	addq	$1, -112(%rbp)
.L128:
	movq	-112(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L129
	movl	-196(%rbp), %eax
	negl	%eax
	orl	-196(%rbp), %eax
	sarl	$31, %eax
	leal	1(%rax), %edx
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	andl	%eax, %edx
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	andl	%edx, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4248:
	.size	zint_bezout, .-zint_bezout
	.type	zint_add_scaled_mul_small, @function
zint_add_scaled_mul_small:
.LFB4249:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -96(%rbp)
	je	.L138
	movq	-96(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -44(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	-104(%rbp), %eax
	movq	%rax, -32(%rbp)
	jmp	.L133
.L136:
	movl	-104(%rbp), %edx
	movq	-32(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L134
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L135
.L134:
	movl	-44(%rbp), %eax
.L135:
	movl	%eax, -40(%rbp)
	movl	16(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$31, %eax
	subl	16(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %edx
	movl	-100(%rbp), %eax
	cltq
	imulq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	shrq	$31, %rax
	movl	%eax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	addq	$1, -32(%rbp)
.L133:
	movq	-32(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L136
	jmp	.L130
.L138:
	nop
.L130:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L137
	call	__stack_chk_fail@PLT
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4249:
	.size	zint_add_scaled_mul_small, .-zint_add_scaled_mul_small
	.type	zint_sub_scaled, @function
zint_sub_scaled:
.LFB4250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L146
	movq	-80(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	-84(%rbp), %eax
	movq	%rax, -16(%rbp)
	jmp	.L142
.L145:
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L143
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L144
.L143:
	movl	-32(%rbp), %eax
.L144:
	movl	%eax, -28(%rbp)
	movl	-88(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$31, %eax
	subl	-88(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-24(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	andl	$2147483647, %edx
	movl	%edx, (%rax)
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -36(%rbp)
	addq	$1, -16(%rbp)
.L142:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L145
	jmp	.L139
.L146:
	nop
.L139:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4250:
	.size	zint_sub_scaled, .-zint_sub_scaled
	.type	zint_one_to_plain, @function
zint_one_to_plain:
.LFB4251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	andl	$-2147483648, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4251:
	.size	zint_one_to_plain, .-zint_one_to_plain
	.type	poly_big_to_fp, @function
poly_big_to_fp:
.LFB4252:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-100(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L151
	movq	$0, -32(%rbp)
	jmp	.L152
.L153:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	addq	$1, -32(%rbp)
.L152:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L153
	jmp	.L150
.L151:
	movq	$0, -32(%rbp)
	jmp	.L155
.L158:
	movq	-88(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	shrl	%eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -60(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L156
.L157:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	xorl	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	-64(%rbp), %edx
	addl	%edx, %edx
	andl	-56(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	fpr_of
	movq	%xmm0, %rax
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_mul
	movq	%xmm0, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %xmm1
	movq	%rax, %xmm0
	call	fpr_add
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	addq	$1, -24(%rbp)
	movsd	fpr_ptwo31(%rip), %xmm0
	movq	-40(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_mul
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
.L156:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L157
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$1, -32(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -80(%rbp)
.L155:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L158
.L150:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L159
	call	__stack_chk_fail@PLT
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.size	poly_big_to_fp, .-poly_big_to_fp
	.type	poly_big_to_small, @function
poly_big_to_small:
.LFB4253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L161
.L165:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	zint_one_to_plain
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	negl	%eax
	cmpl	%eax, -20(%rbp)
	jl	.L162
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L163
.L162:
	movl	$0, %eax
	jmp	.L164
.L163:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L161:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L165
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4253:
	.size	poly_big_to_small, .-poly_big_to_small
	.type	poly_sub_scaled, @function
poly_sub_scaled:
.LFB4254:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L167
.L172:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	imulq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L168
.L171:
	movl	24(%rbp), %r9d
	movl	-44(%rbp), %r8d
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	32(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	zint_add_scaled_mul_small
	addq	$16, %rsp
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L169
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	negl	-44(%rbp)
	jmp	.L170
.L169:
	movq	-72(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -24(%rbp)
.L170:
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -16(%rbp)
	addq	$1, -32(%rbp)
.L168:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L171
	addq	$1, -40(%rbp)
.L167:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L172
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4254:
	.size	poly_sub_scaled, .-poly_sub_scaled
	.type	poly_sub_scaled_ntt, @function
poly_sub_scaled_ntt:
.LFB4255:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -128(%rbp)
	movq	%rsi, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -168(%rbp)
	movl	40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	40(%rbp), %eax
	movl	$4, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	40(%rbp), %eax
	movl	$4, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	imulq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L174
.L181:
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -104(%rbp)
	movq	-160(%rbp), %rax
	movl	%eax, %edi
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%eax, %esi
	call	modp_Rx
	movl	%eax, -100(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %edi
	movl	40(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -72(%rbp)
	jmp	.L175
.L176:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-112(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -72(%rbp)
.L175:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L176
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %esi
	movl	40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -72(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	jmp	.L177
.L178:
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %edi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movq	-96(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -72(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -96(%rbp)
.L177:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L178
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %esi
	movl	40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_NTT2_ext
	movq	$0, -72(%rbp)
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	jmp	.L179
.L180:
	movq	-96(%rbp), %rax
	movl	(%rax), %esi
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-96(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -72(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -96(%rbp)
.L179:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L180
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %esi
	movl	40(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	addq	$1, -80(%rbp)
.L174:
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L181
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	pushq	-24(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$8, %rsp
	movq	$0, -80(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L182
.L183:
	movl	32(%rbp), %r8d
	movl	24(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_sub_scaled
	addq	$1, -80(%rbp)
	movq	-144(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -88(%rbp)
.L182:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L183
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4255:
	.size	poly_sub_scaled_ntt, .-poly_sub_scaled_ntt
	.type	get_rng_u64, @function
get_rng_u64:
.LFB4256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_i_shake256_extract@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4256:
	.size	get_rng_u64, .-get_rng_u64
	.section	.rodata
	.align 32
	.type	gauss_1024_12289, @object
	.size	gauss_1024_12289, 216
gauss_1024_12289:
	.quad	1283868770400643928
	.quad	6416574995475331444
	.quad	4078260278032692663
	.quad	2353523259288686585
	.quad	1227179971273316331
	.quad	575931623374121527
	.quad	242543240509105209
	.quad	91437049221049666
	.quad	30799446349977173
	.quad	9255276791179340
	.quad	2478152334826140
	.quad	590642893610164
	.quad	125206034929641
	.quad	23590435911403
	.quad	3948334035941
	.quad	586753615614
	.quad	77391054539
	.quad	9056793210
	.quad	940121950
	.quad	86539696
	.quad	7062824
	.quad	510971
	.quad	32764
	.quad	1862
	.quad	94
	.quad	4
	.quad	0
	.text
	.type	mkgauss, @function
mkgauss:
.LFB4257:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, %eax
	subl	-60(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L188
.L191:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_rng_u64
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -24(%rbp)
	movabsq	$9223372036854775807, %rax
	andq	%rax, -16(%rbp)
	movabsq	$1283868770400643928, %rdx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	shrq	$63, %rax
	movl	%eax, -36(%rbp)
	movl	$0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_rng_u64
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax
	andq	%rax, -16(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L189
.L190:
	movl	-32(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	gauss_1024_12289(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	shrq	$63, %rax
	xorl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	xorl	$1, %eax
	andl	-20(%rbp), %eax
	negl	%eax
	andl	-32(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	orl	%eax, -36(%rbp)
	addl	$1, -32(%rbp)
.L189:
	cmpl	$26, -32(%rbp)
	jbe	.L190
	movl	-24(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	xorl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -40(%rbp)
	addl	$1, -44(%rbp)
.L188:
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L191
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4257:
	.size	mkgauss, .-mkgauss
	.section	.rodata
	.align 32
	.type	MAX_BL_SMALL, @object
	.size	MAX_BL_SMALL, 88
MAX_BL_SMALL:
	.quad	1
	.quad	1
	.quad	2
	.quad	2
	.quad	4
	.quad	7
	.quad	14
	.quad	27
	.quad	53
	.quad	106
	.quad	209
	.align 32
	.type	MAX_BL_LARGE, @object
	.size	MAX_BL_LARGE, 80
MAX_BL_LARGE:
	.quad	2
	.quad	2
	.quad	5
	.quad	7
	.quad	12
	.quad	21
	.quad	40
	.quad	78
	.quad	157
	.quad	308
	.align 32
	.type	BITLENGTH, @object
	.size	BITLENGTH, 88
BITLENGTH:
	.long	4
	.long	0
	.long	11
	.long	1
	.long	24
	.long	1
	.long	50
	.long	1
	.long	102
	.long	1
	.long	202
	.long	2
	.long	401
	.long	4
	.long	794
	.long	5
	.long	1577
	.long	8
	.long	3138
	.long	13
	.long	6308
	.long	25
	.text
	.type	poly_small_sqnorm, @function
poly_small_sqnorm:
.LFB4258:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L195
.L196:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	%eax, %eax
	addl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	orl	%eax, -24(%rbp)
	addq	$1, -16(%rbp)
.L195:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L196
	movl	-24(%rbp), %eax
	sarl	$31, %eax
	orl	-28(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4258:
	.size	poly_small_sqnorm, .-poly_small_sqnorm
	.type	align_fpr, @function
align_fpr:
.LFB4259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$7, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
.L199:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4259:
	.size	align_fpr, .-align_fpr
	.type	align_u32, @function
align_u32:
.LFB4260:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$3, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L202
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
.L202:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4260:
	.size	align_u32, .-align_u32
	.type	poly_small_to_fp, @function
poly_small_to_fp:
.LFB4261:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L205
.L206:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movq	-24(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	fpr_of
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, (%rbx)
	addq	$1, -24(%rbp)
.L205:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L206
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4261:
	.size	poly_small_to_fp, .-poly_small_to_fp
	.type	make_fg_step, @function
make_fg_step:
.LFB4262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movl	%edx, -240(%rbp)
	movl	%ecx, -244(%rbp)
	movl	%r8d, -248(%rbp)
	movl	-236(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	shrq	%rax
	movq	%rax, -104(%rbp)
	movl	-240(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	imulq	-88(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	imulq	-88(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	imulq	-96(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	imulq	-96(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	imulq	-96(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-232(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	$0, -152(%rbp)
	jmp	.L208
.L222:
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -172(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %edi
	movl	-236(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	jmp	.L209
.L210:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -136(%rbp)
.L209:
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L210
	cmpl	$0, -244(%rbp)
	jne	.L211
	movl	-176(%rbp), %edi
	movl	-180(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
.L211:
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	jmp	.L212
.L213:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -160(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %edx
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-136(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -136(%rbp)
.L212:
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L213
	cmpl	$0, -244(%rbp)
	je	.L214
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
.L214:
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	jmp	.L215
.L216:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -136(%rbp)
.L215:
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L216
	cmpl	$0, -244(%rbp)
	jne	.L217
	movl	-176(%rbp), %edi
	movl	-180(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
.L217:
	movq	$0, -144(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	jmp	.L218
.L219:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	-144(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-136(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -136(%rbp)
.L218:
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L219
	cmpl	$0, -244(%rbp)
	je	.L220
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
.L220:
	cmpl	$0, -248(%rbp)
	jne	.L221
	movl	-236(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movl	-236(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
.L221:
	addq	$1, -152(%rbp)
.L208:
	movq	-152(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L222
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.L223
.L233:
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %edx
	movl	-212(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movl	-204(%rbp), %ecx
	movl	-208(%rbp), %edx
	movl	-212(%rbp), %eax
	movl	%eax, %esi
	call	modp_Rx
	movl	%eax, -200(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movl	-208(%rbp), %r8d
	movl	-212(%rbp), %edi
	movl	-236(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L224
.L225:
	movq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-200(%rbp), %r8d
	movl	-204(%rbp), %edi
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movl	%eax, (%rbx)
	addq	$1, -128(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -120(%rbp)
.L224:
	movq	-128(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L225
	movl	-208(%rbp), %edi
	movl	-212(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -128(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	jmp	.L226
.L227:
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -188(%rbp)
	movq	-128(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -184(%rbp)
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	-188(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movl	-204(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-120(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -128(%rbp)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -120(%rbp)
.L226:
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L227
	movq	$0, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L228
.L229:
	movq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-200(%rbp), %r8d
	movl	-204(%rbp), %edi
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movl	%eax, (%rbx)
	addq	$1, -128(%rbp)
	movq	-96(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -120(%rbp)
.L228:
	movq	-128(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L229
	movl	-208(%rbp), %edi
	movl	-212(%rbp), %esi
	movl	-236(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -128(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	jmp	.L230
.L231:
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movq	-128(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -192(%rbp)
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %edi
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %edx
	movl	-204(%rbp), %eax
	movl	%eax, %esi
	call	modp_montymul
	movq	-120(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -128(%rbp)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -120(%rbp)
.L230:
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L231
	cmpl	$0, -248(%rbp)
	jne	.L232
	movl	-236(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-208(%rbp), %r8d
	movl	-212(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movl	-236(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-208(%rbp), %r8d
	movl	-212(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
.L232:
	addq	$1, -152(%rbp)
.L223:
	movq	-152(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L233
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4262:
	.size	make_fg_step, .-make_fg_step
	.type	make_fg, @function
make_fg:
.LFB4263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movl	%r9d, -132(%rbp)
	movl	-124(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L235
.L236:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -72(%rbp)
.L235:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L236
	cmpl	$0, -128(%rbp)
	jne	.L237
	cmpl	$0, -132(%rbp)
	je	.L237
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-124(%rbp), %eax
	movl	$4, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %edi
	movl	-124(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	-124(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	-124(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	jmp	.L234
.L237:
	movl	$0, -88(%rbp)
	jmp	.L239
.L243:
	movl	-88(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -128(%rbp)
	ja	.L240
	cmpl	$0, -132(%rbp)
	je	.L241
.L240:
	movl	$1, %edi
	jmp	.L242
.L241:
	movl	$0, %edi
.L242:
	cmpl	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %ecx
	movl	-124(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, %esi
	movl	-88(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	make_fg_step
	addl	$1, -88(%rbp)
.L239:
	movl	-88(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jb	.L243
.L234:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4263:
	.size	make_fg, .-make_fg
	.type	solve_NTRU_deepest, @function
solve_NTRU_deepest:
.LFB4264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	-68(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-68(%rbp), %edi
	movl	-68(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	make_fg
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-8(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_bezout
	testl	%eax, %eax
	jne	.L245
	movl	$0, %eax
	jmp	.L246
.L245:
	movl	$12289, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	zint_mul_small
	testl	%eax, %eax
	jne	.L247
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	zint_mul_small
	testl	%eax, %eax
	je	.L248
.L247:
	movl	$0, %eax
	jmp	.L246
.L248:
	movl	$1, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4264:
	.size	solve_NTRU_deepest, .-solve_NTRU_deepest
	.type	solve_NTRU_intermediate, @function
solve_NTRU_intermediate:
.LFB4265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movl	%edi, -452(%rbp)
	movq	%rsi, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movl	%ecx, -456(%rbp)
	movq	%r8, -480(%rbp)
	movl	-452(%rbp), %eax
	subl	-456(%rbp), %eax
	movl	%eax, -428(%rbp)
	movl	-428(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	shrq	%rax
	movq	%rax, -192(%rbp)
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -184(%rbp)
	movl	-456(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -176(%rbp)
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_LARGE(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -168(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-176(%rbp), %rax
	imulq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-176(%rbp), %rax
	imulq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-456(%rbp), %edi
	movl	-452(%rbp), %ecx
	movq	-472(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	make_fg
	movq	-480(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-200(%rbp), %rax
	imulq	-168(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
	movq	-200(%rbp), %rax
	imulq	-168(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-200(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-184(%rbp), %rax
	imulq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-184(%rbp), %rax
	imulq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-192(%rbp), %rax
	imulq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rax
	imulq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -304(%rbp)
	jmp	.L250
.L253:
	movq	-304(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -352(%rbp)
	movl	-352(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -348(%rbp)
	movl	-348(%rbp), %edx
	movl	-352(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -344(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %edi
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-352(%rbp), %eax
	movl	%eax, %esi
	call	modp_Rx
	movl	%eax, -340(%rbp)
	movq	$0, -256(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	jmp	.L251
.L252:
	movl	-340(%rbp), %r8d
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %ecx
	movl	-352(%rbp), %edx
	movq	-176(%rbp), %rsi
	movq	-248(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movq	-232(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-340(%rbp), %r8d
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %ecx
	movl	-352(%rbp), %edx
	movq	-176(%rbp), %rsi
	movq	-240(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movq	-224(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -256(%rbp)
	movq	-176(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -248(%rbp)
	movq	-176(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -240(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -232(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -224(%rbp)
.L251:
	movq	-256(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L252
	addq	$1, -304(%rbp)
.L250:
	movq	-304(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L253
	movq	$0, -304(%rbp)
	jmp	.L254
.L266:
	movq	-304(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -392(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -388(%rbp)
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -384(%rbp)
	movq	-304(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L255
	movq	-160(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-160(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
.L255:
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-304(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %edi
	movl	-428(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	-304(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jnb	.L256
	movq	$0, -216(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	jmp	.L257
.L258:
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-264(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -216(%rbp)
	movq	-184(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
	movq	-184(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -264(%rbp)
.L257:
	movq	-216(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L258
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	jmp	.L259
.L256:
	movq	-184(%rbp), %rax
	movl	%eax, %edi
	movl	-384(%rbp), %ecx
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %eax
	movl	%eax, %esi
	call	modp_Rx
	movl	%eax, -380(%rbp)
	movq	$0, -216(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L260
.L261:
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %edi
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movq	-184(%rbp), %rsi
	movq	-272(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movl	%eax, (%rbx)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %edi
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movq	-184(%rbp), %rsi
	movq	-264(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movl	%eax, (%rbx)
	addq	$1, -216(%rbp)
	movq	-184(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
	movq	-184(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -264(%rbp)
.L260:
	movq	-216(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L261
	movl	-388(%rbp), %edi
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-388(%rbp), %edi
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
.L259:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -216(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	jmp	.L262
.L263:
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-264(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -216(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -264(%rbp)
.L262:
	movq	-216(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L263
	movl	-428(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-388(%rbp), %edi
	movl	-392(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-428(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-388(%rbp), %edi
	movl	-392(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -216(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	jmp	.L264
.L265:
	movq	-216(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -376(%rbp)
	movq	-216(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -368(%rbp)
	movq	-216(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -364(%rbp)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -360(%rbp)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -356(%rbp)
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-360(%rbp), %esi
	movl	-364(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movq	-272(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-168(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-272(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-360(%rbp), %esi
	movl	-368(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-356(%rbp), %esi
	movl	-372(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movq	-264(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-168(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-388(%rbp), %ecx
	movl	-392(%rbp), %edx
	movl	-356(%rbp), %esi
	movl	-376(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	addq	$1, -216(%rbp)
	movq	-168(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -272(%rbp)
	movq	-168(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -264(%rbp)
.L264:
	movq	-216(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L265
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %esi
	movl	-428(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	addq	$1, -304(%rbp)
.L254:
	movq	-304(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L266
	movq	-160(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-160(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-288(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-128(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -112(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-200(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_u32
	movq	%rax, -80(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -280(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -280(%rbp)
	jnb	.L267
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
.L267:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movl	$10, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	subq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-428(%rbp), %edi
	movq	-184(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movq	-184(%rbp), %rax
	subq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-428(%rbp), %edi
	movq	-184(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movq	-184(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	%eax, -424(%rbp)
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	BITLENGTH(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	4+BITLENGTH(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sall	$2, %edx
	subl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%eax, -420(%rbp)
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	BITLENGTH(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-456(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	4+BITLENGTH(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%eax, -416(%rbp)
	movl	-428(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-428(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-428(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	-428(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movl	-428(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movq	-168(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-168(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	%eax, -440(%rbp)
	movl	-440(%rbp), %eax
	subl	-420(%rbp), %eax
	movl	%eax, -436(%rbp)
.L285:
	movq	-312(%rbp), %rax
	movl	$10, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-312(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	%eax, -412(%rbp)
	movq	-312(%rbp), %rax
	subq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-428(%rbp), %edi
	movq	-168(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movq	-312(%rbp), %rax
	subq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-428(%rbp), %edi
	movq	-168(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-280(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movl	-428(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-428(%rbp), %edx
	movq	-280(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-428(%rbp), %edx
	movq	-112(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	-428(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	-428(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_add@PLT
	movl	-428(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	-428(%rbp), %edx
	movq	-280(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movl	-436(%rbp), %eax
	subl	-412(%rbp), %eax
	movl	%eax, %edx
	movl	-424(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -432(%rbp)
	cmpl	$0, -432(%rbp)
	jns	.L268
	negl	-432(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -328(%rbp)
	jmp	.L269
.L268:
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -328(%rbp)
.L269:
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -336(%rbp)
	jmp	.L270
.L272:
	movl	-432(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L271
	movsd	-328(%rbp), %xmm0
	movq	-336(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_mul
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -336(%rbp)
.L271:
	sarl	-432(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, %xmm0
	call	fpr_sqr
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -328(%rbp)
.L270:
	cmpl	$0, -432(%rbp)
	jne	.L272
	movq	$0, -304(%rbp)
	jmp	.L273
.L277:
	movq	-304(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movsd	-336(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	(%rax), %xmm0
	call	fpr_mul
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -320(%rbp)
	movsd	-320(%rbp), %xmm0
	movq	fpr_mtwo31m1(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_lt
	testl	%eax, %eax
	je	.L274
	movsd	fpr_ptwo31m1(%rip), %xmm0
	movq	-320(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_lt
	testl	%eax, %eax
	jne	.L275
.L274:
	movl	$0, %eax
	jmp	.L276
.L275:
	movq	-320(%rbp), %rax
	movq	%rax, %xmm0
	call	fpr_rint
	movq	-304(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addq	$1, -304(%rbp)
.L273:
	movq	-304(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L277
	movl	-436(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -408(%rbp)
	movl	-436(%rbp), %edx
	movslq	%edx, %rax
	imulq	$-2078209981, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$4, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	subl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -404(%rbp)
	cmpl	$4, -456(%rbp)
	ja	.L278
	movq	-184(%rbp), %r9
	movq	-184(%rbp), %r8
	movq	-136(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-312(%rbp), %rsi
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	-428(%rbp), %edi
	pushq	%rdi
	movl	-404(%rbp), %edi
	pushq	%rdi
	movl	-408(%rbp), %edi
	pushq	%rdi
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	poly_sub_scaled_ntt
	addq	$48, %rsp
	movq	-184(%rbp), %r9
	movq	-184(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-312(%rbp), %rsi
	movq	-288(%rbp), %rax
	subq	$8, %rsp
	pushq	-128(%rbp)
	movl	-428(%rbp), %edi
	pushq	%rdi
	movl	-404(%rbp), %edi
	pushq	%rdi
	movl	-408(%rbp), %edi
	pushq	%rdi
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	poly_sub_scaled_ntt
	addq	$48, %rsp
	jmp	.L279
.L278:
	movq	-184(%rbp), %r9
	movq	-184(%rbp), %r8
	movq	-136(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-312(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	-428(%rbp), %edi
	pushq	%rdi
	movl	-404(%rbp), %edi
	pushq	%rdi
	movl	-408(%rbp), %edi
	pushq	%rdi
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	poly_sub_scaled
	addq	$32, %rsp
	movq	-184(%rbp), %r9
	movq	-184(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-312(%rbp), %rsi
	movq	-288(%rbp), %rax
	movl	-428(%rbp), %edi
	pushq	%rdi
	movl	-404(%rbp), %edi
	pushq	%rdi
	movl	-408(%rbp), %edi
	pushq	%rdi
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	poly_sub_scaled
	addq	$32, %rsp
.L279:
	movl	-436(%rbp), %edx
	movl	-416(%rbp), %eax
	addl	%edx, %eax
	addl	$10, %eax
	movl	%eax, -400(%rbp)
	movl	-400(%rbp), %eax
	cmpl	-440(%rbp), %eax
	jge	.L280
	movl	-400(%rbp), %eax
	movl	%eax, -440(%rbp)
	movl	-440(%rbp), %eax
	leal	30(%rax), %edx
	movq	-312(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$5, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jge	.L280
	subq	$1, -312(%rbp)
.L280:
	cmpl	$0, -436(%rbp)
	jg	.L281
	movq	-312(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L282
	jmp	.L283
.L281:
	subl	$25, -436(%rbp)
	cmpl	$0, -436(%rbp)
	jns	.L285
	movl	$0, -436(%rbp)
	jmp	.L285
.L282:
	movq	$0, -304(%rbp)
	jmp	.L286
.L291:
	movq	-312(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -396(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L287
.L288:
	movq	-208(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rax, %rdx
	movl	-396(%rbp), %eax
	movl	%eax, (%rdx)
	addq	$1, -208(%rbp)
.L287:
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L288
	movq	-312(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	negl	%eax
	shrl	%eax
	movl	%eax, -396(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L289
.L290:
	movq	-208(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-288(%rbp), %rax
	addq	%rax, %rdx
	movl	-396(%rbp), %eax
	movl	%eax, (%rdx)
	addq	$1, -208(%rbp)
.L289:
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L290
	addq	$1, -304(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -296(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -288(%rbp)
.L286:
	movq	-304(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L291
.L283:
	movq	$0, -304(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L292
.L293:
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rcx
	movq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	addq	$1, -304(%rbp)
	movq	-184(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -264(%rbp)
.L292:
	movq	-200(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, -304(%rbp)
	jb	.L293
	movl	$1, %eax
.L276:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4265:
	.size	solve_NTRU_intermediate, .-solve_NTRU_intermediate
	.type	solve_NTRU_binary_depth1, @function
solve_NTRU_binary_depth1:
.LFB4266:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	%edi, -372(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movl	$1, -356(%rbp)
	movl	-372(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	-372(%rbp), %eax
	subl	-356(%rbp), %eax
	movl	%eax, -352(%rbp)
	movl	-352(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	shrq	%rax
	movq	%rax, -176(%rbp)
	movl	-356(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -168(%rbp)
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_SMALL(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -160(%rbp)
	movl	-356(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	MAX_BL_LARGE(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-160(%rbp), %rax
	imulq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	imulq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	$0, -288(%rbp)
	jmp	.L295
.L298:
	movq	-288(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	PRIMES(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -312(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -308(%rbp)
	movl	-308(%rbp), %edx
	movl	-312(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -304(%rbp)
	movq	-160(%rbp), %rax
	movl	%eax, %edi
	movl	-304(%rbp), %ecx
	movl	-308(%rbp), %edx
	movl	-312(%rbp), %eax
	movl	%eax, %esi
	call	modp_Rx
	movl	%eax, -300(%rbp)
	movq	$0, -264(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -232(%rbp)
	jmp	.L296
.L297:
	movl	-300(%rbp), %r8d
	movl	-304(%rbp), %edi
	movl	-308(%rbp), %ecx
	movl	-312(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-256(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movq	-240(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-300(%rbp), %r8d
	movl	-304(%rbp), %edi
	movl	-308(%rbp), %ecx
	movl	-312(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-248(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	zint_mod_small_signed
	movq	-232(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$1, -264(%rbp)
	movq	-160(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -256(%rbp)
	movq	-160(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -248(%rbp)
	movq	-152(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -240(%rbp)
	movq	-152(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -232(%rbp)
.L296:
	movq	-264(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L297
	addq	$1, -288(%rbp)
.L295:
	movq	-288(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L298
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-400(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-128(%rbp), %rax
	addq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	$0, -288(%rbp)
	jmp	.L299
.L312:
	movq	-288(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	PRIMES(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -348(%rbp)
	movl	-348(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -344(%rbp)
	movl	-344(%rbp), %edx
	movl	-348(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -340(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+PRIMES(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-344(%rbp), %r8d
	movl	-348(%rbp), %edi
	movl	-372(%rbp), %edx
	movq	-224(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -200(%rbp)
	jmp	.L300
.L301:
	movq	-384(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-200(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-216(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-348(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-392(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-200(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-208(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-348(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -200(%rbp)
.L300:
	movq	-200(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L301
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movl	-372(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movl	-372(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-208(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-372(%rbp), %eax
	movl	%eax, -360(%rbp)
	jmp	.L302
.L303:
	movl	-340(%rbp), %edi
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-360(%rbp), %esi
	movq	-216(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_poly_rec_res
	movl	-340(%rbp), %edi
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-360(%rbp), %esi
	movq	-208(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	modp_poly_rec_res
	subl	$1, -360(%rbp)
.L302:
	movl	-360(%rbp), %eax
	cmpl	-352(%rbp), %eax
	ja	.L303
	cmpl	$0, -356(%rbp)
	je	.L304
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-224(%rbp), %rax
	addq	%rax, %rcx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-216(%rbp), %rax
	addq	%rax, %rcx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
.L304:
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -200(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	jmp	.L305
.L306:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -200(%rbp)
	movq	-152(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -280(%rbp)
	movq	-152(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
.L305:
	movq	-200(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L306
	movl	-352(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-352(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -200(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	jmp	.L307
.L308:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -336(%rbp)
	movq	-200(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -332(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -328(%rbp)
	movq	-200(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -324(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-340(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -320(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-340(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -316(%rbp)
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-320(%rbp), %esi
	movl	-324(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movq	-280(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-280(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-320(%rbp), %esi
	movl	-328(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-316(%rbp), %esi
	movl	-332(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movq	-272(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-272(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-344(%rbp), %ecx
	movl	-348(%rbp), %edx
	movl	-316(%rbp), %esi
	movl	-336(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	addq	$1, -200(%rbp)
	movq	-152(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -280(%rbp)
	movq	-152(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -272(%rbp)
.L307:
	movq	-200(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L308
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-344(%rbp), %r8d
	movl	-348(%rbp), %esi
	movl	-352(%rbp), %ecx
	movq	-224(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-344(%rbp), %r8d
	movl	-348(%rbp), %esi
	movl	-352(%rbp), %ecx
	movq	-224(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	modp_iNTT2_ext
	movq	-288(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jnb	.L309
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movl	-352(%rbp), %ecx
	movq	-224(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movl	-344(%rbp), %edi
	movl	-348(%rbp), %esi
	movl	-352(%rbp), %ecx
	movq	-224(%rbp), %rdx
	movq	-208(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movq	$0, -200(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	jmp	.L310
.L311:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-280(%rbp), %rax
	movl	%edx, (%rax)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-272(%rbp), %rax
	movl	%edx, (%rax)
	addq	$1, -200(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -280(%rbp)
	movq	-168(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -272(%rbp)
.L310:
	movq	-200(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L311
.L309:
	addq	$1, -288(%rbp)
.L299:
	movq	-288(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L312
	movq	-184(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-128(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	movl	$1, %r9d
	leaq	PRIMES(%rip), %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-184(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-168(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	movl	$1, %r9d
	leaq	PRIMES(%rip), %r8
	movq	%rax, %rdi
	call	zint_rebuild_CRT
	addq	$16, %rsp
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	-352(%rbp), %edi
	movq	-152(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movl	-352(%rbp), %edi
	movq	-152(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-400(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	imulq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	-352(%rbp), %edi
	movq	-168(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movl	-352(%rbp), %edi
	movq	-168(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	poly_big_to_fp
	movq	-184(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-400(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	-352(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-352(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-352(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-352(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-352(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	falcon_inner_poly_add_muladj_fft@PLT
	movl	-352(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movl	-352(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movl	-352(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movq	$0, -288(%rbp)
	jmp	.L313
.L317:
	movq	-288(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	fpr_ptwo63m1(%rip), %xmm0
	movq	-296(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_lt
	testl	%eax, %eax
	je	.L314
	movsd	-296(%rbp), %xmm0
	movq	fpr_mtwo63m1(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_lt
	testl	%eax, %eax
	jne	.L315
.L314:
	movl	$0, %eax
	jmp	.L316
.L315:
	movq	-296(%rbp), %rax
	movq	%rax, %xmm0
	call	fpr_rint
	movq	-288(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	fpr_of
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, (%rbx)
	addq	$1, -288(%rbp)
.L313:
	movq	-288(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L317
	movl	-352(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-352(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	-352(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_fft@PLT
	movl	-352(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_sub@PLT
	movl	-352(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_sub@PLT
	movl	-352(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movl	-352(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movq	-400(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -288(%rbp)
	jmp	.L318
.L319:
	movq	-288(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	call	fpr_rint
	movq	-288(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	call	fpr_rint
	movq	-288(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addq	$1, -288(%rbp)
.L318:
	movq	-288(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.L319
	movl	$1, %eax
.L316:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4266:
	.size	solve_NTRU_binary_depth1, .-solve_NTRU_binary_depth1
	.type	solve_NTRU_binary_depth0, @function
solve_NTRU_binary_depth0:
.LFB4267:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movl	-196(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	shrq	%rax
	movq	%rax, -128(%rbp)
	movl	$2147473409, -192(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_R2
	movl	%eax, -184(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	$383167813, %r10d
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -144(%rbp)
	jmp	.L321
.L322:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	zint_one_to_plain
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-120(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movl	-192(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	zint_one_to_plain
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movl	-192(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L321:
	movq	-144(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L322
	movl	-196(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-196(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L323
.L324:
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-104(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-216(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-96(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L323:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L324
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L325
.L326:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -160(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -156(%rbp)
	movq	-144(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -152(%rbp)
	movq	-144(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -148(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-152(%rbp), %esi
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-152(%rbp), %esi
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-148(%rbp), %esi
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-148(%rbp), %esi
	movl	-168(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	addq	$2, -144(%rbp)
.L325:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L326
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$383167813, %r10d
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	modp_mkgm2
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	-208(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	$1, -144(%rbp)
	jmp	.L327
.L328:
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	subq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movl	-192(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L327:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L328
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L329
.L330:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -172(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L329:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L330
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	$1, -144(%rbp)
	jmp	.L331
.L332:
	movq	-216(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-216(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	subq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movl	-192(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L331:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L332
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L333
.L334:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -176(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ecx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-64(%rbp), %rdx
	leaq	(%rsi,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ecx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	leaq	(%rsi,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_add
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L333:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L334
	movl	$383167813, %r10d
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	modp_mkgm2
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L335
.L336:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_norm
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_norm
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
.L335:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L336
	movq	-56(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -32(%rbp)
	movq	$0, -144(%rbp)
	jmp	.L337
.L338:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	fpr_of
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, (%rbx)
	addq	$1, -144(%rbp)
.L337:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L338
	movl	-196(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movq	-64(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	align_fpr
	movq	%rax, -24(%rbp)
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-128(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -144(%rbp)
	jmp	.L339
.L340:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	fpr_of
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, (%rbx)
	addq	$1, -144(%rbp)
.L339:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L340
	movl	-196(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movl	-196(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_div_autoadj_fft@PLT
	movl	-196(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movq	$0, -144(%rbp)
	jmp	.L341
.L342:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	call	fpr_rint
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movl	-192(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L341:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L342
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$383167813, %r10d
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -144(%rbp)
	jmp	.L343
.L344:
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-216(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L343:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L344
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L345
.L346:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-184(%rbp), %esi
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, -180(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ecx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-120(%rbp), %rdx
	leaq	(%rsi,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movl	%eax, (%rbx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ecx
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-112(%rbp), %rdx
	leaq	(%rsi,%rdx), %rbx
	movl	-192(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	modp_sub
	movl	%eax, (%rbx)
	addq	$1, -144(%rbp)
.L345:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L346
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	-196(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_iNTT2_ext
	movq	$0, -144(%rbp)
	jmp	.L347
.L348:
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_norm
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-192(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_norm
	movq	-144(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
.L347:
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L348
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4267:
	.size	solve_NTRU_binary_depth0, .-solve_NTRU_binary_depth0
	.type	solve_NTRU, @function
solve_NTRU:
.LFB4268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movl	%r9d, -120(%rbp)
	movl	-116(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	16(%rbp), %rcx
	movl	%eax, %edi
	call	solve_NTRU_deepest
	testl	%eax, %eax
	jne	.L351
	movl	$0, %eax
	jmp	.L352
.L351:
	cmpl	$2, -116(%rbp)
	ja	.L353
	movl	-116(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.L354
.L355:
	movl	-104(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	16(%rbp), %r8
	movl	%eax, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	jne	.L354
	movl	$0, %eax
	jmp	.L352
.L354:
	movl	-104(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -104(%rbp)
	testl	%eax, %eax
	jne	.L355
	jmp	.L356
.L353:
	movl	-116(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.L357
.L358:
	movl	-100(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	16(%rbp), %r8
	movl	%eax, %edi
	call	solve_NTRU_intermediate
	testl	%eax, %eax
	jne	.L357
	movl	$0, %eax
	jmp	.L352
.L357:
	movl	-100(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -100(%rbp)
	cmpl	$2, %eax
	ja	.L358
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	16(%rbp), %rcx
	movl	%eax, %edi
	call	solve_NTRU_binary_depth1
	testl	%eax, %eax
	jne	.L359
	movl	$0, %eax
	jmp	.L352
.L359:
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	16(%rbp), %rcx
	movl	%eax, %edi
	call	solve_NTRU_binary_depth0
	testl	%eax, %eax
	jne	.L356
	movl	$0, %eax
	jmp	.L352
.L356:
	cmpq	$0, -136(%rbp)
	jne	.L360
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
.L360:
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movq	-128(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	poly_big_to_small
	testl	%eax, %eax
	je	.L361
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	poly_big_to_small
	testl	%eax, %eax
	jne	.L362
.L361:
	movl	$0, %eax
	jmp	.L352
.L362:
	movq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	leaq	PRIMES(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, %edi
	call	modp_ninv31
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-116(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	modp_mkgm2
	movq	$0, -80(%rbp)
	jmp	.L363
.L364:
	movq	-136(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -80(%rbp)
.L363:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L364
	movq	$0, -80(%rbp)
	jmp	.L365
.L366:
	movq	-144(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-152(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	movq	-128(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-80(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	modp_set
	movl	%eax, (%rbx)
	addq	$1, -80(%rbp)
.L365:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L366
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	modp_NTT2_ext
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$1, %esi
	movl	$12289, %edi
	call	modp_montymul
	movl	%eax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L367
.L369:
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %edx
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %edx
	movl	%eax, %edi
	call	modp_montymul
	movl	%eax, %ecx
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	modp_sub
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	je	.L368
	movl	$0, %eax
	jmp	.L352
.L368:
	addq	$1, -80(%rbp)
.L367:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L369
	movl	$1, %eax
.L352:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4268:
	.size	solve_NTRU, .-solve_NTRU
	.type	poly_small_mkgauss, @function
poly_small_mkgauss:
.LFB4269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L371
.L377:
	nop
.L372:
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkgauss
	movl	%eax, -20(%rbp)
	cmpl	$-127, -20(%rbp)
	jl	.L372
	cmpl	$127, -20(%rbp)
	jle	.L374
	jmp	.L372
.L374:
	movq	-8(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jne	.L375
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L376
	jmp	.L372
.L375:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	xorl	%eax, -24(%rbp)
.L376:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L371:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L377
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
	.size	poly_small_mkgauss, .-poly_small_mkgauss
	.globl	falcon_inner_keygen
	.type	falcon_inner_keygen, @function
falcon_inner_keygen:
.LFB4270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movl	16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
.L394:
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poly_small_mkgauss
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poly_small_mkgauss
	movl	16(%rbp), %eax
	leaq	falcon_inner_max_fg_bits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -88(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L379
.L383:
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -88(%rbp)
	jle	.L380
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	-88(%rbp), %edx
	negl	%edx
	cmpl	%edx, %eax
	jle	.L380
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -88(%rbp)
	jle	.L380
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	-88(%rbp), %edx
	negl	%edx
	cmpl	%edx, %eax
	jg	.L381
.L380:
	movl	$-1, -88(%rbp)
	jmp	.L382
.L381:
	addq	$1, -64(%rbp)
.L379:
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L383
.L382:
	cmpl	$0, -88(%rbp)
	js	.L395
	movq	-112(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	poly_small_sqnorm
	movl	%eax, -84(%rbp)
	movq	-120(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	poly_small_sqnorm
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-84(%rbp), %eax
	orl	-80(%rbp), %eax
	sarl	$31, %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	cmpl	$16822, -76(%rbp)
	ja	.L396
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poly_small_to_fp
	movq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	poly_small_to_fp
	movq	-24(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movq	-16(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_FFT@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	16(%rbp), %ecx
	movq	%rax, %rdi
	call	falcon_inner_poly_invnorm2_fft@PLT
	movq	-24(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movq	-16(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_poly_adj_fft@PLT
	movq	fpr_q(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	falcon_inner_poly_mulconst@PLT
	movq	fpr_q(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	falcon_inner_poly_mulconst@PLT
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	16(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	falcon_inner_poly_mul_autoadj_fft@PLT
	movq	-24(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	movq	-16(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	falcon_inner_iFFT@PLT
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L387
.L388:
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	call	fpr_sqr
	movq	%xmm0, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %xmm1
	movq	%rax, %xmm0
	call	fpr_add
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	call	fpr_sqr
	movq	%xmm0, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %xmm1
	movq	%rax, %xmm0
	call	fpr_add
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -72(%rbp)
	addq	$1, -64(%rbp)
.L387:
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L388
	movsd	fpr_bnorm_max(%rip), %xmm0
	movq	-72(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fpr_lt
	testl	%eax, %eax
	je	.L397
	cmpq	$0, -144(%rbp)
	jne	.L390
	movq	24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L391
.L390:
	movq	-144(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -48(%rbp)
.L391:
	movq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	16(%rbp), %ecx
	movq	%rax, %rdi
	call	falcon_inner_compute_public@PLT
	testl	%eax, %eax
	je	.L398
	movl	16(%rbp), %eax
	leaq	falcon_inner_max_FG_bits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %edi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movl	%edi, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	16(%rbp), %edi
	call	solve_NTRU
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L399
	jmp	.L385
.L395:
	nop
	jmp	.L394
.L396:
	nop
	jmp	.L394
.L397:
	nop
	jmp	.L394
.L398:
	nop
.L385:
	jmp	.L394
.L399:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4270:
	.size	falcon_inner_keygen, .-falcon_inner_keygen
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1127219200
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
