	.public _SB_pok
	.extern _my_state
	.extern _sampleBuffer
	.extern _processSingleChannel
	.public _processing
	.xdata_ovly
_SB_pok
	.bss (0x1)
	.xdata_ovly
__extractedConst_0_3
	.dw  (0x4026e547)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x65ac8a37)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0x72148345)
	.xdata_ovly
__extractedConst_3_1
	.dw  (0x5a9df97b)
	.xdata_ovly
__extractedConst_4_1
	.dw  (0x50c332f0)
	.code_ovly



_processing:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 7 | 
	i7 += 1			# LN: 7 | 
	i7 = i7 + (0x1)			# LN: 7 | 
cline_7_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 10 | 
	xmem[_SB_pok + 0] = i0			# LN: 10 | 
cline_10_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 12 | 
	a0 = 0			# LN: 12 | 
	xmem[i0] = a0h			# LN: 12 | 
	do (0x10), label_end_92			# LN: 12 | 
cline_12_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 14 | 
	x0 = xmem[__extractedConst_0_3 + 0]			# LN: 14 | 
	x1 = xmem[i0]			# LN: 14 | 
	i0 = (0) + (_SB_pok)			# LN: 14 | 
	i0 = xmem[i0]			# LN: 14 | 
	a0 = x1 * x0			# LN: 14 | 
	xmem[i0] = a0			# LN: 14 | 
cline_14_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 15 | 
	i1 = xmem[_SB_pok + 0]			# LN: 15 | 
	i0 = i0 + (0x10)			# LN: 15 | 
	i1 = i1 + (0x10)			# LN: 15 | 
	x0 = xmem[i1]			# LN: 15 | 
	x1 = xmem[__extractedConst_0_3 + 0]			# LN: 15 | 
	a0 = x0 * x1			# LN: 15 | 
	xmem[i0] = a0			# LN: 15 | 
cline_15_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 17 | 
	i1 = xmem[_SB_pok + 0]			# LN: 17 | 
	i0 = i0 + (0x30)			# LN: 17 | 
	x0 = xmem[i1]			# LN: 17 | 
	x1 = xmem[__extractedConst_1_1 + 0]			# LN: 17 | 
	a0 = x0 * x1			# LN: 17 | 
	xmem[i0] = a0			# LN: 17 | 
cline_17_0:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 18 | 
	i1 = xmem[_SB_pok + 0]			# LN: 18 | 
	i0 = i0 + (0x40)			# LN: 18 | 
	i1 = i1 + (0x10)			# LN: 18 | 
	x0 = xmem[i1]			# LN: 18 | 
	x1 = xmem[__extractedConst_2_1 + 0]			# LN: 18 | 
	a0 = x0 * x1			# LN: 18 | 
	xmem[i0] = a0			# LN: 18 | 
cline_18_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 19 | 
	i1 = xmem[_SB_pok + 0]			# LN: 19 | 
	i0 = i0 + (0x20)			# LN: 19 | 
	i4 = xmem[_SB_pok + 0]			# LN: 19 | 
	a0 = xmem[i1]			# LN: 19 | 
	i1 = i4 + (0x10)			# LN: 19 | 
	a1 = xmem[i1]			# LN: 19 | 
	a0 = a0 + a1			# LN: 19 | 
	x0 = a0h			# LN: 19 | 
	x1 = xmem[__extractedConst_0_3 + 0]			# LN: 19 | 
	a0 = x0 * x1			# LN: 19 | 
	xmem[i0] = a0			# LN: 19 | 
cline_19_0:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 20 | 
	x0 = xmem[__extractedConst_3_1 + 0]			# LN: 20 | 
	i0 = i0 + (0x20)			# LN: 20 | 
	x1 = xmem[i0]			# LN: 20 | 
	i0 = (0) + (_SB_pok)			# LN: 20 | 
	i0 = xmem[i0]			# LN: 20 | 
	a0 = x1 * x0			# LN: 20 | 
	xmem[i0] = a0			# LN: 20 | 
cline_20_0:			/* LN: 21 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 21 | 
	i1 = xmem[_SB_pok + 0]			# LN: 21 | 
	i0 = i0 + (0x10)			# LN: 21 | 
	i1 = i1 + (0x20)			# LN: 21 | 
	x0 = xmem[i1]			# LN: 21 | 
	x1 = xmem[__extractedConst_4_1 + 0]			# LN: 21 | 
	a0 = x0 * x1			# LN: 21 | 
	xmem[i0] = a0			# LN: 21 | 
cline_21_0:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 22 | 
	i1 = xmem[_SB_pok + 0]			# LN: 22 | 
	i0 = i0 + (0x20)			# LN: 22 | 
	i1 = i1 + (0x50)			# LN: 22 | 
	call (_processSingleChannel)			# LN: 22 | 
cline_22_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_SB_pok + 0]			# LN: 23 | 
	nop #empty cycle
	i0 += 1			# LN: 23 | 
	xmem[_SB_pok + 0] = i0			# LN: 23 | 
cline_23_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 12 | 
	a0 = xmem[i0]			# LN: 12 | 
	uhalfword(a1) = (0x1)			# LN: 12 | 
	a0 = a0 + a1			# LN: 12 | 
	i0 = i7 - (0x1)			# LN: 12 | 
label_end_92:			# LN: 12 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 12 | 
cline_12_1:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_110)			# LN: 25 | 
__epilogue_110:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 25 | 
	i7 -= 1			# LN: 25 | 
	ret			# LN: 25 | 
