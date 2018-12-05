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
	uhalfword(a0) = (0x10)			# LN: 8 | 
	xmem[i0] = a0h			# LN: 8 | 
cline_8_0:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	i1 = i7 - (0x2)			# LN: 9 | 
	i0 += 1			# LN: 9 | 
	a0 = xmem[i1]			# LN: 9 | 
	xmem[i0] = a0h			# LN: 9 | 
cline_9_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	i1 = i7 - (0x3)			# LN: 10 | 
	i0 += 2			# LN: 10 | 
	a0 = xmem[i1]			# LN: 10 | 
	xmem[i0] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 11 | 
__epilogue_104:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 11 | 
	i7 -= 1			# LN: 11 | 
	ret			# LN: 11 | 



_fabs_foo:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 13 | 
	i7 += 1			# LN: 13 | 
	i7 = i7 + (0x1)			# LN: 13 | 
	i0 = i7 - (0x1)			# LN: 13 | 
	xmem[i0] = a0h			# LN: 13 | 
cline_13_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 15 | 
	a0 = xmem[i0]			# LN: 15 | 
	a0 & a0			# LN: 15 | 
	if (a >= 0) jmp (else_0)			# LN: 15 | 
cline_15_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 17 | 
	a0 = xmem[i0]			# LN: 17 | 
	a0 =- a0			# LN: 17 | 
	jmp (__epilogue_106)			# LN: 17 | 
cline_17_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 19 | 
	a0 = xmem[i0]			# LN: 19 | 
	jmp (__epilogue_106)			# LN: 19 | 
cline_19_0:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
__epilogue_106:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 20 | 
	i7 -= 1			# LN: 20 | 
	ret			# LN: 20 | 



_processSingleChannel:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 23 | 
	i7 += 1			# LN: 23 | 
	i7 = i7 + (0x5)			# LN: 23 | 
	i4 = i7 - (0x1)			# LN: 23 | 
	xmem[i4] = i0			# LN: 23 | 
	i0 = i7 - (0x2)			# LN: 23 | 
	xmem[i0] = i1			# LN: 23 | 
cline_23_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = 0			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
for_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 0]			# LN: 27 | 
	i0 = i7 - (0x3)			# LN: 27 | 
	a1 = xmem[i0]			# LN: 27 | 
	a1 - a0			# LN: 27 | 
	if (a >= 0) jmp (for_end_0)			# LN: 27 | 
cline_27_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	x0 = xmem[_my_state + 2]			# LN: 28 | 
	x1 = xmem[i0]			# LN: 28 | 
	i0 = i7 - (0x2)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	a0 = x1 * x0			# LN: 28 | 
	xmem[i0] = a0			# LN: 28 | 
cline_28_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	i1 = i7 - (0x2)			# LN: 29 | 
	a0 = xmem[i0]			# LN: 29 | 
	i0 = xmem[i1]			# LN: 29 | 
	a0 = a0 << 1			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0x2)			# LN: 30 | 
	i0 += 1			# LN: 30 | 
	xmem[i1] = i0			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 31 | 
	i0 = xmem[i0]			# LN: 31 | 
	i1 = i7 - (0x1)			# LN: 31 | 
	i0 += 1			# LN: 31 | 
	xmem[i1] = i0			# LN: 31 | 
cline_31_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 = a0 + a1			# LN: 27 | 
	i0 = i7 - (0x3)			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
	jmp (for_0)			# LN: 27 | 
cline_27_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 0]			# LN: 34 | 
	i0 = i7 - (0x2)			# LN: 34 | 
	a1 = xmem[i0]			# LN: 34 | 
	a0 = a1 - a0			# LN: 34 | 
	AnyReg(i0, a0h)			# LN: 34 | 
	i1 = i7 - (0x2)			# LN: 34 | 
	xmem[i1] = i0			# LN: 34 | 
cline_34_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 1]			# LN: 37 | 
	a0 & a0			# LN: 37 | 
	if (a == 0) jmp (case_0)			# LN: 37 | 
	uhalfword(a1) = (0x1)			# LN: 37 | 
	a0 - a1			# LN: 37 | 
	if (a == 0) jmp (case_1)			# LN: 37 | 
	jmp (default_0)			# LN: 37 | 
cline_37_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 42 | 
	a0 = 0			# LN: 42 | 
	xmem[i0] = a0h			# LN: 42 | 
for_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 0]			# LN: 42 | 
	i0 = i7 - (0x4)			# LN: 42 | 
	a1 = xmem[i0]			# LN: 42 | 
	a1 - a0			# LN: 42 | 
	if (a >= 0) jmp (for_end_1)			# LN: 42 | 
cline_42_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	i1 = i7 - (0x2)			# LN: 45 | 
	a0 = xmem[i0]			# LN: 45 | 
	call (_fabs_foo)			# LN: 45 | 
	i0 = xmem[i1]			# LN: 45 | 
	nop #empty cycle
	xmem[i0] = a0h			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	i1 = i7 - (0x2)			# LN: 46 | 
	i0 += 1			# LN: 46 | 
	xmem[i1] = i0			# LN: 46 | 
cline_46_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	uhalfword(a1) = (0x1)			# LN: 42 | 
	a0 = a0 + a1			# LN: 42 | 
	i0 = i7 - (0x4)			# LN: 42 | 
	xmem[i0] = a0h			# LN: 42 | 
	jmp (for_1)			# LN: 42 | 
cline_42_1:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	jmp (_355518)			# LN: 49 | 
cline_37_1:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 55 | 
	a0 = 0			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
for_2:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_my_state + 0]			# LN: 55 | 
	i0 = i7 - (0x5)			# LN: 55 | 
	a1 = xmem[i0]			# LN: 55 | 
	a1 - a0			# LN: 55 | 
	if (a >= 0) jmp (for_end_2)			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (0x2)			# LN: 57 | 
	a0 = xmem[i0]			# LN: 57 | 
	call (_fabs_foo)			# LN: 57 | 
	i0 = xmem[i1]			# LN: 57 | 
	x1 = (0x4000)			# LN: 57 | 
	a1 = xmem[i0]			# LN: 57 | 
	a0 = a0 + a1			# LN: 57 | 
	x0 = a0h			# LN: 57 | 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	a0 = x1 * x0			# LN: 57 | 
	xmem[i0] = a0			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	i1 = i7 - (0x2)			# LN: 58 | 
	i0 += 1			# LN: 58 | 
	xmem[i1] = i0			# LN: 58 | 
cline_58_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 55 | 
	a0 = xmem[i0]			# LN: 55 | 
	uhalfword(a1) = (0x1)			# LN: 55 | 
	a0 = a0 + a1			# LN: 55 | 
	i0 = i7 - (0x5)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
	jmp (for_2)			# LN: 55 | 
cline_55_1:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	jmp (_355518)			# LN: 60 | 
cline_37_2:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 63 | 
cline_63_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
_355518:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 67 | 
__epilogue_108:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x5)			# LN: 67 | 
	i7 -= 1			# LN: 67 | 
	ret			# LN: 67 | 
