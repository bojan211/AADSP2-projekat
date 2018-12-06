	.extern _my_state
	.public _distortionInit
	.public _fabs_foo
	.public _processSingleChannel
	.code_ovly



_distortionInit:			/* LN: 6 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 6 | 
	i7 += 1			# LN: 6 | 
	i7 = i7 + (0x3)			# LN: 6 | 
	i1 = i7 - (0x1)			# LN: 6 | 
	xmem[i1] = i0			# LN: 6 | 
	i0 = i7 - (0x2)			# LN: 6 | 
	xmem[i0] = a0h			# LN: 6 | 
	i0 = i7 - (0x3)			# LN: 6 | 
	xmem[i0] = a1h			# LN: 6 | 
cline_6_0:			/* LN: 8 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 8 | 
	a0 = xmem[i0]			# LN: 8 | 
	AnyReg(i0, a0h)			# LN: 8 | 
	i1 = i7 - (0x2)			# LN: 8 | 
	a0 = xmem[i1]			# LN: 8 | 
	xmem[i0] = a0h			# LN: 8 | 
cline_8_0:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	i1 = i7 - (0x3)			# LN: 9 | 
	i0 += 1			# LN: 9 | 
	a0 = xmem[i1]			# LN: 9 | 
	xmem[i0] = a0h			# LN: 9 | 
cline_9_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 10 | 
__epilogue_104:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 10 | 
	i7 -= 1			# LN: 10 | 
	ret			# LN: 10 | 



_fabs_foo:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x1)			# LN: 12 | 
	i0 = i7 - (0x1)			# LN: 12 | 
	xmem[i0] = a0h			# LN: 12 | 
cline_12_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 14 | 
	a0 = xmem[i0]			# LN: 14 | 
	a0 & a0			# LN: 14 | 
	if (a >= 0) jmp (else_0)			# LN: 14 | 
cline_14_0:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 16 | 
	a0 = xmem[i0]			# LN: 16 | 
	a0 =- a0			# LN: 16 | 
	jmp (__epilogue_106)			# LN: 16 | 
cline_16_0:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 18 | 
	a0 = xmem[i0]			# LN: 18 | 
	jmp (__epilogue_106)			# LN: 18 | 
cline_18_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
__epilogue_106:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 19 | 
	i7 -= 1			# LN: 19 | 
	ret			# LN: 19 | 



_processSingleChannel:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 22 | 
	i7 += 1			# LN: 22 | 
	i7 = i7 + (0x5)			# LN: 22 | 
	i4 = i7 - (0x1)			# LN: 22 | 
	xmem[i4] = i0			# LN: 22 | 
	i0 = i7 - (0x2)			# LN: 22 | 
	xmem[i0] = i1			# LN: 22 | 
cline_22_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 26 | 
	a0 = 0			# LN: 26 | 
	xmem[i0] = a0h			# LN: 26 | 
	do (0x10), label_end_92			# LN: 26 | 
cline_26_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 27 | 
	i0 = xmem[i0]			# LN: 27 | 
	x0 = xmem[_my_state + 1]			# LN: 27 | 
	x1 = ymem[i0]			# LN: 27 | 
	i0 = i7 - (0x2)			# LN: 27 | 
	i0 = xmem[i0]			# LN: 27 | 
	a0 = x1 * x0			# LN: 27 | 
	ymem[i0] = a0			# LN: 27 | 
cline_27_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	i1 = i7 - (0x2)			# LN: 28 | 
	a0 = ymem[i0]			# LN: 28 | 
	i0 = xmem[i1]			# LN: 28 | 
	a0 = a0 << 1			# LN: 28 | 
	ymem[i0] = a0h			# LN: 28 | 
cline_28_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	i1 = i7 - (0x2)			# LN: 29 | 
	i0 += 1			# LN: 29 | 
	xmem[i1] = i0			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0x1)			# LN: 30 | 
	i0 += 1			# LN: 30 | 
	xmem[i1] = i0			# LN: 30 | 
cline_30_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 26 | 
	a0 = xmem[i0]			# LN: 26 | 
	uhalfword(a1) = (0x1)			# LN: 26 | 
	a0 = a0 + a1			# LN: 26 | 
	i0 = i7 - (0x3)			# LN: 26 | 
label_end_92:			# LN: 26 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 26 | 
cline_26_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	i1 = i7 - (0x2)			# LN: 33 | 
	i0 = i0 - (0x10)			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
cline_33_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 0]			# LN: 36 | 
	a0 & a0			# LN: 36 | 
	if (a == 0) jmp (case_0)			# LN: 36 | 
	uhalfword(a1) = (0x1)			# LN: 36 | 
	a0 - a1			# LN: 36 | 
	if (a == 0) jmp (case_1)			# LN: 36 | 
	jmp (default_0)			# LN: 36 | 
cline_36_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 41 | 
	a0 = 0			# LN: 41 | 
	xmem[i0] = a0h			# LN: 41 | 
	do (0x10), label_end_93			# LN: 41 | 
cline_41_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	i1 = i7 - (0x2)			# LN: 44 | 
	a0 = ymem[i0]			# LN: 44 | 
	call (_fabs_foo)			# LN: 44 | 
	i0 = xmem[i1]			# LN: 44 | 
	nop #empty cycle
	ymem[i0] = a0h			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	i1 = i7 - (0x2)			# LN: 45 | 
	i0 += 1			# LN: 45 | 
	xmem[i1] = i0			# LN: 45 | 
cline_45_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 41 | 
	a0 = xmem[i0]			# LN: 41 | 
	uhalfword(a1) = (0x1)			# LN: 41 | 
	a0 = a0 + a1			# LN: 41 | 
	i0 = i7 - (0x4)			# LN: 41 | 
label_end_93:			# LN: 41 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 41 | 
cline_41_1:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	jmp (_6E19A8)			# LN: 48 | 
cline_36_1:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 54 | 
	a0 = 0			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
	do (0x10), label_end_94			# LN: 54 | 
cline_54_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	i1 = i7 - (0x2)			# LN: 56 | 
	a0 = ymem[i0]			# LN: 56 | 
	call (_fabs_foo)			# LN: 56 | 
	i0 = xmem[i1]			# LN: 56 | 
	x1 = (0x4000)			# LN: 56 | 
	a1 = ymem[i0]			# LN: 56 | 
	a0 = a0 + a1			# LN: 56 | 
	x0 = a0h			# LN: 56 | 
	i0 = i7 - (0x2)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	a0 = x1 * x0			# LN: 56 | 
	ymem[i0] = a0			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (0x2)			# LN: 57 | 
	i0 += 1			# LN: 57 | 
	xmem[i1] = i0			# LN: 57 | 
cline_57_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 54 | 
	a0 = xmem[i0]			# LN: 54 | 
	uhalfword(a1) = (0x1)			# LN: 54 | 
	a0 = a0 + a1			# LN: 54 | 
	i0 = i7 - (0x5)			# LN: 54 | 
label_end_94:			# LN: 54 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 54 | 
cline_54_1:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	jmp (_6E19A8)			# LN: 59 | 
cline_36_2:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 62 | 
cline_62_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
_6E19A8:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 66 | 
__epilogue_108:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x5)			# LN: 66 | 
	i7 -= 1			# LN: 66 | 
	ret			# LN: 66 | 
