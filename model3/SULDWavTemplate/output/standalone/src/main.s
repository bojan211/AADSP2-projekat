	.public _CURRENT_CH_NUM
	.public _distorsion_mode
	.public _my_state
	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.extern _distortionInit
	.public _main
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
_CURRENT_CH_NUM
	.dw  (0x6)
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x0)
	.dw  (0xe6666666)
	.dw  (0x66666800)
	.xdata_ovly
_distorsion_mode
	.dw  (0x0)
	.xdata_ovly
_my_state
	.bss (0x3)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x4c)
	.dw  (0x31)
	.dw  (0x6b)
	.dw  (0x5f)
	.dw  (0x52)
	.dw  (0x33)
	.dw  (0x6b)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x65)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x2f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 16 | 
	i7 += 1			# LN: 16 | 
	i7 = i7 + (0x212)			# LN: 16 | 
	i1 = i7 - (0x1)			# LN: 16 | 
	xmem[i1] = a0h			# LN: 16 | 
	i1 = i7 - (0x2)			# LN: 16 | 
	xmem[i1] = i0			# LN: 16 | 
cline_16_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 37 | 
	a0 = 0			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
	do (0x8), label_end_93			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 38 | 
	a0 = 0			# LN: 38 | 
	xmem[i0] = a0h			# LN: 38 | 
	do (0x10), label_end_92			# LN: 38 | 
cline_38_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 39 | 
	a0 = xmem[i0]; a1 = 0			# LN: 39, 39 | 
	a0 = a0 << 4			# LN: 39 | 
	i0 = a0			# LN: 39 | 
	i1 = i7 - (0x4)			# LN: 39 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 39 | 
	a0 = xmem[i1]			# LN: 39 | 
	b0 = i0			# LN: 39 | 
	a0 = a0 + b0			# LN: 39 | 
	AnyReg(i0, a0h)			# LN: 39 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 39 | 
cline_39_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 38 | 
	a0 = xmem[i0]			# LN: 38 | 
	uhalfword(a1) = (0x1)			# LN: 38 | 
	a0 = a0 + a1			# LN: 38 | 
	i0 = i7 - (0x4)			# LN: 38 | 
label_end_92:			# LN: 38 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 38 | 
cline_38_1:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 37 | 
	a0 = xmem[i0]			# LN: 37 | 
	uhalfword(a1) = (0x1)			# LN: 37 | 
	a0 = a0 + a1			# LN: 37 | 
	i0 = i7 - (0x3)			# LN: 37 | 
label_end_93:			# LN: 37 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 37 | 
cline_37_1:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 44 | 
	i1 = (0) + (_string_const_0)			# LN: 44 | 
	call (_strcpy)			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 45 | 
	call (_cl_wavread_open)			# LN: 45 | 
	AnyReg(i0, a0h)			# LN: 45 | 
	i1 = i7 - (0x105)			# LN: 45 | 
	xmem[i1] = i0			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 46 | 
	a0 = xmem[i0]			# LN: 46 | 
	a0 & a0			# LN: 46 | 
	if (a != 0) jmp (else_0)			# LN: 46 | 
cline_46_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 48 | 
	call (_printf)			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 49 | 
	jmp (__epilogue_228)			# LN: 49 | 
cline_49_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	call (_cl_wavread_getnchannels)			# LN: 55 | 
	i0 = i7 - (0x106)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	call (_cl_wavread_bits_per_sample)			# LN: 56 | 
	i0 = i7 - (0x107)			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	call (_cl_wavread_frame_rate)			# LN: 57 | 
	i0 = i7 - (0x108)			# LN: 57 | 
	xmem[i0] = a0h			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	call (_cl_wavread_number_of_frames)			# LN: 58 | 
	i0 = i7 - (0x109)			# LN: 58 | 
	xmem[i0] = a0h			# LN: 58 | 
cline_58_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 64 | 
	i1 = (0) + (_string_const_2)			# LN: 64 | 
	call (_strcpy)			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 65 | 
	i1 = i7 - (0x107)			# LN: 65 | 
	a0 = xmem[i1]			# LN: 65 | 
	a1 = xmem[_CURRENT_CH_NUM + 0]			# LN: 65 | 
	i1 = i7 - (0x108)			# LN: 65 | 
	b0 = xmem[i1]			# LN: 65 | 
	call (_cl_wavwrite_open)			# LN: 65 | 
	AnyReg(i0, a0h)			# LN: 65 | 
	i1 = i7 - (0x20a)			# LN: 65 | 
	xmem[i1] = i0			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 66 | 
	a0 = xmem[i0]			# LN: 66 | 
	a0 & a0			# LN: 66 | 
	if (a != 0) jmp (else_1)			# LN: 66 | 
cline_66_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 68 | 
	call (_printf)			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 69 | 
	jmp (__epilogue_228)			# LN: 69 | 
cline_69_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
for_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x10)			# LN: 82 | 
	call (__div)			# LN: 82 | 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a1 = xmem[i0]			# LN: 82 | 
	a1 - a0			# LN: 82 | 
	if (a >= 0) jmp (for_end_2)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
	do (0x10), label_end_94			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = 0			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
for_4:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	i0 = i7 - (0x106)			# LN: 86 | 
	a1 = xmem[i0]			# LN: 86 | 
	a0 - a1			# LN: 86 | 
	if (a >= 0) jmp (for_end_4)			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	call (_cl_wavread_recvsample)			# LN: 88 | 
	i0 = i7 - (0x20e)			# LN: 88 | 
	xmem[i0] = a0h			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	a0 = a0 << 4			# LN: 89 | 
	i0 = a0			# LN: 89 | 
	i1 = i7 - (0x20c)			# LN: 89 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	a1 = i0			# LN: 89 | 
	a0 = a1 + a0			# LN: 89 | 
	AnyReg(i0, a0h)			# LN: 89 | 
	i1 = i7 - (0x20e)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
cline_89_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	uhalfword(a1) = (0x1)			# LN: 86 | 
	a0 = a0 + a1			# LN: 86 | 
	i0 = i7 - (0x20d)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
	jmp (for_4)			# LN: 86 | 
cline_86_1:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	uhalfword(a1) = (0x1)			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x20c)			# LN: 84 | 
label_end_94:			# LN: 84 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 84 | 
cline_84_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[__extractedConst_0_1 + 0]			# LN: 93 | 
	a0h = xmem[__extractedConst_0_1 + 1]			# LN: 93 | 
	a0l = xmem[__extractedConst_0_1 + 2]			# LN: 93 | 
	i0 = i7 - (0x211)			# LN: 93 | 
	xmem[i0] = a0g; i0 += 1			# LN: 93, 93 | 
	xmem[i0] = a0h; i0 += 1			# LN: 93, 93 | 
	xmem[i0] = a0l			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 94 | 
	a0g = xmem[i0]; i0 += 1			# LN: 94, 94 | 
	a0h = xmem[i0]; i0 += 1			# LN: 94, 94 | 
	a0l = xmem[i0]			# LN: 94 | 
	a0 = a0 >> 1			# LN: 94 | 
	i0 = i7 - (0x211)			# LN: 94 | 
	xmem[i0] = a0g; i0 += 1			# LN: 94, 94 | 
	xmem[i0] = a0h; i0 += 1			# LN: 94, 94 | 
	xmem[i0] = a0l			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 95 | 
	a0g = xmem[i0]; i0 += 1			# LN: 95, 95 | 
	a0h = xmem[i0]; i0 += 1			# LN: 95, 95 | 
	a0l = xmem[i0]			# LN: 95 | 
	i0 = i7 - (0x212)			# LN: 95 | 
	xmem[i0] = a0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_mode + 0]			# LN: 96 | 
	i1 = i7 - (0x212)			# LN: 96 | 
	a1 = xmem[i1]			# LN: 96 | 
	i0 = (0) + (_my_state)			# LN: 96 | 
	call (_distortionInit)			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 97 | 
cline_97_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 99 | 
	a0 = 0			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
	do (0x10), label_end_95			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 101 | 
	a0 = 0			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
for_6:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	a1 = xmem[_CURRENT_CH_NUM + 0]			# LN: 101 | 
	a0 - a1			# LN: 101 | 
	if (a >= 0) jmp (for_end_6)			# LN: 101 | 
cline_101_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	a0 = a0 << 4			# LN: 103 | 
	i0 = a0			# LN: 103 | 
	i1 = i7 - (0x20c)			# LN: 103 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 103 | 
	a0 = xmem[i1]			# LN: 103 | 
	a1 = i0			# LN: 103 | 
	a0 = a1 + a0			# LN: 103 | 
	AnyReg(i0, a0h)			# LN: 103 | 
	i1 = i7 - (0x20e)			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	xmem[i1] = a0h			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 104 | 
	i1 = i7 - (0x20e)			# LN: 104 | 
	a0 = xmem[i1]			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	call (_cl_wavwrite_sendsample)			# LN: 104 | 
cline_104_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	uhalfword(a1) = (0x1)			# LN: 101 | 
	a0 = a0 + a1			# LN: 101 | 
	i0 = i7 - (0x20d)			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
	jmp (for_6)			# LN: 101 | 
cline_101_1:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	uhalfword(a1) = (0x1)			# LN: 99 | 
	a0 = a0 + a1			# LN: 99 | 
	i0 = i7 - (0x20c)			# LN: 99 | 
label_end_95:			# LN: 99 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 99 | 
cline_99_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x20b)			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	jmp (for_2)			# LN: 82 | 
cline_82_1:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 112 | 
	i0 = xmem[i0]			# LN: 112 | 
	call (_cl_wavread_close)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 113 | 
	i0 = xmem[i0]			# LN: 113 | 
	call (_cl_wavwrite_close)			# LN: 113 | 
cline_113_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 116 | 
	jmp (__epilogue_228)			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
__epilogue_228:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x212)			# LN: 117 | 
	i7 -= 1			# LN: 117 | 
	ret			# LN: 117 | 
