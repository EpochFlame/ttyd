.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effFreezeDisp
effFreezeDisp:
/* 801BCE40 001B9E40  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801BCE44 001B9E44  7C 08 02 A6 */	mflr r0
/* 801BCE48 001B9E48  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801BCE4C 001B9E4C  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801BCE50 001B9E50  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801BCE54 001B9E54  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 801BCE58 001B9E58  7C 9D 23 78 */	mr r29, r4
/* 801BCE5C 001B9E5C  4B E5 22 F5 */	bl camGetPtr
/* 801BCE60 001B9E60  83 DD 00 0C */	lwz r30, 0xc(r29)
/* 801BCE64 001B9E64  7C 7F 1B 78 */	mr r31, r3
/* 801BCE68 001B9E68  38 61 00 98 */	addi r3, r1, 0x98
/* 801BCE6C 001B9E6C  8B BE 00 1B */	lbz r29, 0x1b(r30)
/* 801BCE70 001B9E70  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801BCE74 001B9E74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801BCE78 001B9E78  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801BCE7C 001B9E7C  48 0D B5 B1 */	bl PSMTXTrans
/* 801BCE80 001B9E80  38 60 00 04 */	li r3, 4
/* 801BCE84 001B9E84  4B E5 22 CD */	bl camGetPtr
/* 801BCE88 001B9E88  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801BCE8C 001B9E8C  38 61 00 38 */	addi r3, r1, 0x38
/* 801BCE90 001B9E90  C0 02 DC 80 */	lfs f0, lbl_8041F000-_SDA2_BASE_(r2)
/* 801BCE94 001B9E94  38 80 00 79 */	li r4, 0x79
/* 801BCE98 001B9E98  FC 20 08 50 */	fneg f1, f1
/* 801BCE9C 001B9E9C  EC 20 00 72 */	fmuls f1, f0, f1
/* 801BCEA0 001B9EA0  48 0D B3 4D */	bl PSMTXRotRad
/* 801BCEA4 001B9EA4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 801BCEA8 001B9EA8  38 61 00 68 */	addi r3, r1, 0x68
/* 801BCEAC 001B9EAC  FC 40 08 90 */	fmr f2, f1
/* 801BCEB0 001B9EB0  FC 60 08 90 */	fmr f3, f1
/* 801BCEB4 001B9EB4  48 0D B5 F9 */	bl PSMTXScale
/* 801BCEB8 001B9EB8  38 61 00 98 */	addi r3, r1, 0x98
/* 801BCEBC 001B9EBC  38 81 00 38 */	addi r4, r1, 0x38
/* 801BCEC0 001B9EC0  7C 65 1B 78 */	mr r5, r3
/* 801BCEC4 001B9EC4  48 0D B0 9D */	bl PSMTXConcat
/* 801BCEC8 001B9EC8  38 61 00 98 */	addi r3, r1, 0x98
/* 801BCECC 001B9ECC  38 81 00 68 */	addi r4, r1, 0x68
/* 801BCED0 001B9ED0  7C 65 1B 78 */	mr r5, r3
/* 801BCED4 001B9ED4  48 0D B0 8D */	bl PSMTXConcat
/* 801BCED8 001B9ED8  38 81 00 98 */	addi r4, r1, 0x98
/* 801BCEDC 001B9EDC  38 7F 01 1C */	addi r3, r31, 0x11c
/* 801BCEE0 001B9EE0  7C 85 23 78 */	mr r5, r4
/* 801BCEE4 001B9EE4  48 0D B0 7D */	bl PSMTXConcat
/* 801BCEE8 001B9EE8  38 61 00 98 */	addi r3, r1, 0x98
/* 801BCEEC 001B9EEC  38 80 00 00 */	li r4, 0
/* 801BCEF0 001B9EF0  48 0F 76 09 */	bl GXLoadPosMtxImm
/* 801BCEF4 001B9EF4  38 60 00 00 */	li r3, 0
/* 801BCEF8 001B9EF8  48 0F 76 A1 */	bl GXSetCurrentMtx
/* 801BCEFC 001B9EFC  80 02 1D 98 */	lwz r0, lbl_80423118-_SDA2_BASE_(r2)
/* 801BCF00 001B9F00  38 81 00 14 */	addi r4, r1, 0x14
/* 801BCF04 001B9F04  88 DE 00 18 */	lbz r6, 0x18(r30)
/* 801BCF08 001B9F08  38 60 00 01 */	li r3, 1
/* 801BCF0C 001B9F0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BCF10 001B9F10  88 BE 00 19 */	lbz r5, 0x19(r30)
/* 801BCF14 001B9F14  88 1E 00 1A */	lbz r0, 0x1a(r30)
/* 801BCF18 001B9F18  98 C1 00 10 */	stb r6, 0x10(r1)
/* 801BCF1C 001B9F1C  98 A1 00 11 */	stb r5, 0x11(r1)
/* 801BCF20 001B9F20  98 01 00 12 */	stb r0, 0x12(r1)
/* 801BCF24 001B9F24  9B A1 00 13 */	stb r29, 0x13(r1)
/* 801BCF28 001B9F28  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BCF2C 001B9F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BCF30 001B9F30  48 0F 5D 85 */	bl GXSetTevColor
/* 801BCF34 001B9F34  80 02 1D 9C */	lwz r0, lbl_8042311C-_SDA2_BASE_(r2)
/* 801BCF38 001B9F38  38 81 00 0C */	addi r4, r1, 0xc
/* 801BCF3C 001B9F3C  88 FE 00 1C */	lbz r7, 0x1c(r30)
/* 801BCF40 001B9F40  38 60 00 02 */	li r3, 2
/* 801BCF44 001B9F44  90 01 00 08 */	stw r0, 8(r1)
/* 801BCF48 001B9F48  88 DE 00 1D */	lbz r6, 0x1d(r30)
/* 801BCF4C 001B9F4C  88 BE 00 1E */	lbz r5, 0x1e(r30)
/* 801BCF50 001B9F50  88 1E 00 1F */	lbz r0, 0x1f(r30)
/* 801BCF54 001B9F54  98 E1 00 08 */	stb r7, 8(r1)
/* 801BCF58 001B9F58  98 C1 00 09 */	stb r6, 9(r1)
/* 801BCF5C 001B9F5C  98 A1 00 0A */	stb r5, 0xa(r1)
/* 801BCF60 001B9F60  98 01 00 0B */	stb r0, 0xb(r1)
/* 801BCF64 001B9F64  80 01 00 08 */	lwz r0, 8(r1)
/* 801BCF68 001B9F68  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BCF6C 001B9F6C  48 0F 5D 49 */	bl GXSetTevColor
/* 801BCF70 001B9F70  38 60 00 00 */	li r3, 0
/* 801BCF74 001B9F74  48 0F 41 C5 */	bl GXSetNumChans
/* 801BCF78 001B9F78  38 60 00 01 */	li r3, 1
/* 801BCF7C 001B9F7C  48 0F 62 4D */	bl GXSetNumTevStages
/* 801BCF80 001B9F80  38 60 00 00 */	li r3, 0
/* 801BCF84 001B9F84  38 80 00 00 */	li r4, 0
/* 801BCF88 001B9F88  38 A0 00 00 */	li r5, 0
/* 801BCF8C 001B9F8C  38 C0 00 FF */	li r6, 0xff
/* 801BCF90 001B9F90  48 0F 60 9D */	bl GXSetTevOrder
/* 801BCF94 001B9F94  38 60 00 00 */	li r3, 0
/* 801BCF98 001B9F98  38 80 00 00 */	li r4, 0
/* 801BCF9C 001B9F9C  38 A0 00 00 */	li r5, 0
/* 801BCFA0 001B9FA0  38 C0 00 00 */	li r6, 0
/* 801BCFA4 001B9FA4  38 E0 00 01 */	li r7, 1
/* 801BCFA8 001B9FA8  39 00 00 00 */	li r8, 0
/* 801BCFAC 001B9FAC  48 0F 5C 39 */	bl GXSetTevColorOp
/* 801BCFB0 001B9FB0  38 60 00 00 */	li r3, 0
/* 801BCFB4 001B9FB4  38 80 00 00 */	li r4, 0
/* 801BCFB8 001B9FB8  38 A0 00 00 */	li r5, 0
/* 801BCFBC 001B9FBC  38 C0 00 00 */	li r6, 0
/* 801BCFC0 001B9FC0  38 E0 00 01 */	li r7, 1
/* 801BCFC4 001B9FC4  39 00 00 00 */	li r8, 0
/* 801BCFC8 001B9FC8  48 0F 5C 85 */	bl GXSetTevAlphaOp
/* 801BCFCC 001B9FCC  38 60 00 00 */	li r3, 0
/* 801BCFD0 001B9FD0  38 80 00 04 */	li r4, 4
/* 801BCFD4 001B9FD4  38 A0 00 02 */	li r5, 2
/* 801BCFD8 001B9FD8  38 C0 00 08 */	li r6, 8
/* 801BCFDC 001B9FDC  38 E0 00 0F */	li r7, 0xf
/* 801BCFE0 001B9FE0  48 0F 5B 7D */	bl GXSetTevColorIn
/* 801BCFE4 001B9FE4  38 60 00 00 */	li r3, 0
/* 801BCFE8 001B9FE8  38 80 00 07 */	li r4, 7
/* 801BCFEC 001B9FEC  38 A0 00 01 */	li r5, 1
/* 801BCFF0 001B9FF0  38 C0 00 04 */	li r6, 4
/* 801BCFF4 001B9FF4  38 E0 00 07 */	li r7, 7
/* 801BCFF8 001B9FF8  48 0F 5B A9 */	bl GXSetTevAlphaIn
/* 801BCFFC 001B9FFC  38 60 00 01 */	li r3, 1
/* 801BD000 001BA000  48 0F 22 81 */	bl GXSetNumTexGens
/* 801BD004 001BA004  38 60 00 00 */	li r3, 0
/* 801BD008 001BA008  38 80 00 01 */	li r4, 1
/* 801BD00C 001BA00C  38 A0 00 04 */	li r5, 4
/* 801BD010 001BA010  38 C0 00 1E */	li r6, 0x1e
/* 801BD014 001BA014  38 E0 00 00 */	li r7, 0
/* 801BD018 001BA018  39 00 00 7D */	li r8, 0x7d
/* 801BD01C 001BA01C  48 0F 1F E5 */	bl GXSetTexCoordGen2
/* 801BD020 001BA020  C0 22 DC 84 */	lfs f1, lbl_8041F004-_SDA2_BASE_(r2)
/* 801BD024 001BA024  38 61 00 68 */	addi r3, r1, 0x68
/* 801BD028 001BA028  C0 42 DC 88 */	lfs f2, lbl_8041F008-_SDA2_BASE_(r2)
/* 801BD02C 001BA02C  C0 62 DC 8C */	lfs f3, lbl_8041F00C-_SDA2_BASE_(r2)
/* 801BD030 001BA030  48 0D B4 7D */	bl PSMTXScale
/* 801BD034 001BA034  38 61 00 68 */	addi r3, r1, 0x68
/* 801BD038 001BA038  38 80 00 1E */	li r4, 0x1e
/* 801BD03C 001BA03C  38 A0 00 01 */	li r5, 1
/* 801BD040 001BA040  48 0F 75 8D */	bl GXLoadTexMtxImm
/* 801BD044 001BA044  38 81 00 18 */	addi r4, r1, 0x18
/* 801BD048 001BA048  38 60 00 8A */	li r3, 0x8a
/* 801BD04C 001BA04C  48 01 47 F9 */	bl effGetTexObjN64
/* 801BD050 001BA050  38 61 00 18 */	addi r3, r1, 0x18
/* 801BD054 001BA054  38 80 00 00 */	li r4, 0
/* 801BD058 001BA058  48 0F 4A 25 */	bl GXLoadTexObj
/* 801BD05C 001BA05C  38 60 00 00 */	li r3, 0
/* 801BD060 001BA060  48 0F 2E 29 */	bl GXSetCullMode
/* 801BD064 001BA064  88 9E 00 24 */	lbz r4, 0x24(r30)
/* 801BD068 001BA068  3C 60 80 3A */	lis r3, lbl_8039CF38@ha
/* 801BD06C 001BA06C  38 03 CF 38 */	addi r0, r3, lbl_8039CF38@l
/* 801BD070 001BA070  7C 83 07 74 */	extsb r3, r4
/* 801BD074 001BA074  1C 63 00 38 */	mulli r3, r3, 0x38
/* 801BD078 001BA078  7C 60 1A 14 */	add r3, r0, r3
/* 801BD07C 001BA07C  48 01 46 35 */	bl effSetVtxDescN64
/* 801BD080 001BA080  38 60 00 90 */	li r3, 0x90
/* 801BD084 001BA084  38 80 00 00 */	li r4, 0
/* 801BD088 001BA088  38 A0 00 06 */	li r5, 6
/* 801BD08C 001BA08C  48 0F 2B DD */	bl GXBegin
/* 801BD090 001BA090  38 60 00 00 */	li r3, 0
/* 801BD094 001BA094  38 80 00 01 */	li r4, 1
/* 801BD098 001BA098  38 A0 00 02 */	li r5, 2
/* 801BD09C 001BA09C  38 C0 00 00 */	li r6, 0
/* 801BD0A0 001BA0A0  38 E0 00 00 */	li r7, 0
/* 801BD0A4 001BA0A4  39 00 00 02 */	li r8, 2
/* 801BD0A8 001BA0A8  39 20 00 03 */	li r9, 3
/* 801BD0AC 001BA0AC  39 40 00 00 */	li r10, 0
/* 801BD0B0 001BA0B0  48 01 45 85 */	bl tri2
/* 801BD0B4 001BA0B4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801BD0B8 001BA0B8  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801BD0BC 001BA0BC  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801BD0C0 001BA0C0  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 801BD0C4 001BA0C4  7C 08 03 A6 */	mtlr r0
/* 801BD0C8 001BA0C8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801BD0CC 001BA0CC  4E 80 00 20 */	blr 
effFreezeMain:
/* 801BD0D0 001BA0D0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 801BD0D4 001BA0D4  7C 08 02 A6 */	mflr r0
/* 801BD0D8 001BA0D8  90 01 01 44 */	stw r0, 0x144(r1)
/* 801BD0DC 001BA0DC  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 801BD0E0 001BA0E0  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 801BD0E4 001BA0E4  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 801BD0E8 001BA0E8  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 801BD0EC 001BA0EC  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 801BD0F0 001BA0F0  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 801BD0F4 001BA0F4  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 801BD0F8 001BA0F8  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 801BD0FC 001BA0FC  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 801BD100 001BA100  F3 61 00 F8 */	psq_st f27, 248(r1), 0, qr0
/* 801BD104 001BA104  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 801BD108 001BA108  F3 41 00 E8 */	psq_st f26, 232(r1), 0, qr0
/* 801BD10C 001BA10C  DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 801BD110 001BA110  F3 21 00 D8 */	psq_st f25, 216(r1), 0, qr0
/* 801BD114 001BA114  DB 01 00 C0 */	stfd f24, 0xc0(r1)
/* 801BD118 001BA118  F3 01 00 C8 */	psq_st f24, 200(r1), 0, qr0
/* 801BD11C 001BA11C  DA E1 00 B0 */	stfd f23, 0xb0(r1)
/* 801BD120 001BA120  F2 E1 00 B8 */	psq_st f23, 184(r1), 0, qr0
/* 801BD124 001BA124  DA C1 00 A0 */	stfd f22, 0xa0(r1)
/* 801BD128 001BA128  F2 C1 00 A8 */	psq_st f22, 168(r1), 0, qr0
/* 801BD12C 001BA12C  DA A1 00 90 */	stfd f21, 0x90(r1)
/* 801BD130 001BA130  F2 A1 00 98 */	psq_st f21, 152(r1), 0, qr0
/* 801BD134 001BA134  BF 01 00 70 */	stmw r24, 0x70(r1)
/* 801BD138 001BA138  3C 80 80 30 */	lis r4, lbl_802FA6A8@ha
/* 801BD13C 001BA13C  83 43 00 0C */	lwz r26, 0xc(r3)
/* 801BD140 001BA140  38 A4 A6 A8 */	addi r5, r4, lbl_802FA6A8@l
/* 801BD144 001BA144  7C 78 1B 78 */	mr r24, r3
/* 801BD148 001BA148  80 85 00 00 */	lwz r4, 0(r5)
/* 801BD14C 001BA14C  80 65 00 04 */	lwz r3, 4(r5)
/* 801BD150 001BA150  80 05 00 08 */	lwz r0, 8(r5)
/* 801BD154 001BA154  90 81 00 08 */	stw r4, 8(r1)
/* 801BD158 001BA158  C0 1A 00 04 */	lfs f0, 4(r26)
/* 801BD15C 001BA15C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801BD160 001BA160  C0 3A 00 08 */	lfs f1, 8(r26)
/* 801BD164 001BA164  D0 01 00 08 */	stfs f0, 8(r1)
/* 801BD168 001BA168  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 801BD16C 001BA16C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BD170 001BA170  80 81 00 08 */	lwz r4, 8(r1)
/* 801BD174 001BA174  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801BD178 001BA178  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801BD17C 001BA17C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801BD180 001BA180  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BD184 001BA184  90 81 00 14 */	stw r4, 0x14(r1)
/* 801BD188 001BA188  90 61 00 18 */	stw r3, 0x18(r1)
/* 801BD18C 001BA18C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BD190 001BA190  80 78 00 00 */	lwz r3, 0(r24)
/* 801BD194 001BA194  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 801BD198 001BA198  41 82 00 14 */	beq lbl_801BD1AC
/* 801BD19C 001BA19C  54 63 07 B8 */	rlwinm r3, r3, 0, 0x1e, 0x1c
/* 801BD1A0 001BA1A0  38 00 00 10 */	li r0, 0x10
/* 801BD1A4 001BA1A4  90 78 00 00 */	stw r3, 0(r24)
/* 801BD1A8 001BA1A8  90 1A 00 10 */	stw r0, 0x10(r26)
lbl_801BD1AC:
/* 801BD1AC 001BA1AC  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 801BD1B0 001BA1B0  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 801BD1B4 001BA1B4  40 80 00 0C */	bge lbl_801BD1C0
/* 801BD1B8 001BA1B8  38 03 FF FF */	addi r0, r3, -1
/* 801BD1BC 001BA1BC  90 1A 00 10 */	stw r0, 0x10(r26)
lbl_801BD1C0:
/* 801BD1C0 001BA1C0  80 7A 00 14 */	lwz r3, 0x14(r26)
/* 801BD1C4 001BA1C4  38 03 00 01 */	addi r0, r3, 1
/* 801BD1C8 001BA1C8  90 1A 00 14 */	stw r0, 0x14(r26)
/* 801BD1CC 001BA1CC  83 7A 00 10 */	lwz r27, 0x10(r26)
/* 801BD1D0 001BA1D0  2C 1B 00 00 */	cmpwi r27, 0
/* 801BD1D4 001BA1D4  40 80 02 D0 */	bge lbl_801BD4A4
/* 801BD1D8 001BA1D8  3C 60 80 30 */	lis r3, lbl_802FA6B8@ha
/* 801BD1DC 001BA1DC  3C C0 66 66 */	lis r6, 0x66666667@ha
/* 801BD1E0 001BA1E0  38 A3 A6 B8 */	addi r5, r3, lbl_802FA6B8@l
/* 801BD1E4 001BA1E4  3C 80 88 89 */	lis r4, 0x88888889@ha
/* 801BD1E8 001BA1E8  3C 60 B6 0B */	lis r3, 0xB60B60B7@ha
/* 801BD1EC 001BA1EC  CB 25 00 00 */	lfd f25, 0(r5)
/* 801BD1F0 001BA1F0  C3 42 DC A0 */	lfs f26, lbl_8041F020-_SDA2_BASE_(r2)
/* 801BD1F4 001BA1F4  3B 66 66 67 */	addi r27, r6, 0x66666667@l
/* 801BD1F8 001BA1F8  C3 62 DC 9C */	lfs f27, lbl_8041F01C-_SDA2_BASE_(r2)
/* 801BD1FC 001BA1FC  3B C4 88 89 */	addi r30, r4, 0x88888889@l
/* 801BD200 001BA200  C3 82 DC 98 */	lfs f28, lbl_8041F018-_SDA2_BASE_(r2)
/* 801BD204 001BA204  3B E3 60 B7 */	addi r31, r3, 0xB60B60B7@l
/* 801BD208 001BA208  C3 A2 DC 90 */	lfs f29, lbl_8041F010-_SDA2_BASE_(r2)
/* 801BD20C 001BA20C  3B 20 00 00 */	li r25, 0
/* 801BD210 001BA210  C3 C2 DC 94 */	lfs f30, lbl_8041F014-_SDA2_BASE_(r2)
/* 801BD214 001BA214  3F 80 43 30 */	lis r28, 0x4330
/* 801BD218 001BA218  C3 E2 DC A4 */	lfs f31, lbl_8041F024-_SDA2_BASE_(r2)
/* 801BD21C 001BA21C  C2 E2 DC 8C */	lfs f23, lbl_8041F00C-_SDA2_BASE_(r2)
/* 801BD220 001BA220  C3 02 DC A8 */	lfs f24, lbl_8041F028-_SDA2_BASE_(r2)
lbl_801BD224:
/* 801BD224 001BA224  48 0A 91 51 */	bl rand
/* 801BD228 001BA228  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD22C 001BA22C  93 81 00 20 */	stw r28, 0x20(r1)
/* 801BD230 001BA230  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 801BD234 001BA234  7C 00 16 70 */	srawi r0, r0, 2
/* 801BD238 001BA238  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801BD23C 001BA23C  7C 00 22 14 */	add r0, r0, r4
/* 801BD240 001BA240  1C 00 00 0A */	mulli r0, r0, 0xa
/* 801BD244 001BA244  7C 00 18 50 */	subf r0, r0, r3
/* 801BD248 001BA248  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD24C 001BA24C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BD250 001BA250  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 801BD254 001BA254  EC 21 C8 28 */	fsubs f1, f1, f25
/* 801BD258 001BA258  EC 3A 00 72 */	fmuls f1, f26, f1
/* 801BD25C 001BA25C  EC 3B E0 7A */	fmadds f1, f27, f1, f28
/* 801BD260 001BA260  EE A0 00 72 */	fmuls f21, f0, f1
/* 801BD264 001BA264  48 0A 91 11 */	bl rand
/* 801BD268 001BA268  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD26C 001BA26C  93 81 00 28 */	stw r28, 0x28(r1)
/* 801BD270 001BA270  C0 3A 00 20 */	lfs f1, 0x20(r26)
/* 801BD274 001BA274  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801BD278 001BA278  7C 00 26 70 */	srawi r0, r0, 4
/* 801BD27C 001BA27C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801BD280 001BA280  7C 00 22 14 */	add r0, r0, r4
/* 801BD284 001BA284  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801BD288 001BA288  7C 00 18 50 */	subf r0, r0, r3
/* 801BD28C 001BA28C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD290 001BA290  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801BD294 001BA294  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 801BD298 001BA298  EC 42 C8 28 */	fsubs f2, f2, f25
/* 801BD29C 001BA29C  EE C1 00 BA */	fmadds f22, f1, f2, f0
/* 801BD2A0 001BA2A0  48 0A 90 D5 */	bl rand
/* 801BD2A4 001BA2A4  7C BB 18 96 */	mulhw r5, r27, r3
/* 801BD2A8 001BA2A8  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 801BD2AC 001BA2AC  57 24 0F FE */	srwi r4, r25, 0x1f
/* 801BD2B0 001BA2B0  93 81 00 30 */	stw r28, 0x30(r1)
/* 801BD2B4 001BA2B4  57 20 07 FE */	clrlwi r0, r25, 0x1f
/* 801BD2B8 001BA2B8  EC 7E 00 2A */	fadds f3, f30, f0
/* 801BD2BC 001BA2BC  7C A5 1E 70 */	srawi r5, r5, 3
/* 801BD2C0 001BA2C0  7C 00 22 78 */	xor r0, r0, r4
/* 801BD2C4 001BA2C4  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 801BD2C8 001BA2C8  C0 3A 00 04 */	lfs f1, 4(r26)
/* 801BD2CC 001BA2CC  7C A5 32 14 */	add r5, r5, r6
/* 801BD2D0 001BA2D0  FC 40 B0 90 */	fmr f2, f22
/* 801BD2D4 001BA2D4  1C C5 00 14 */	mulli r6, r5, 0x14
/* 801BD2D8 001BA2D8  FC 80 A8 90 */	fmr f4, f21
/* 801BD2DC 001BA2DC  7C A4 00 50 */	subf r5, r4, r0
/* 801BD2E0 001BA2E0  38 99 00 1E */	addi r4, r25, 0x1e
/* 801BD2E4 001BA2E4  7C 06 18 50 */	subf r0, r6, r3
/* 801BD2E8 001BA2E8  38 65 00 02 */	addi r3, r5, 2
/* 801BD2EC 001BA2EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD2F0 001BA2F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BD2F4 001BA2F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801BD2F8 001BA2F8  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD2FC 001BA2FC  EC 01 00 2A */	fadds f0, f1, f0
/* 801BD300 001BA300  EC 20 E8 28 */	fsubs f1, f0, f29
/* 801BD304 001BA304  48 00 17 F5 */	bl effGlassN64Entry
/* 801BD308 001BA308  7C 7D 1B 78 */	mr r29, r3
/* 801BD30C 001BA30C  48 0A 90 69 */	bl rand
/* 801BD310 001BA310  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD314 001BA314  93 81 00 38 */	stw r28, 0x38(r1)
/* 801BD318 001BA318  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD31C 001BA31C  7C 00 16 70 */	srawi r0, r0, 2
/* 801BD320 001BA320  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD324 001BA324  7C 00 2A 14 */	add r0, r0, r5
/* 801BD328 001BA328  1C 00 00 0A */	mulli r0, r0, 0xa
/* 801BD32C 001BA32C  7C 00 18 50 */	subf r0, r0, r3
/* 801BD330 001BA330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD334 001BA334  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801BD338 001BA338  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801BD33C 001BA33C  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD340 001BA340  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801BD344 001BA344  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 801BD348 001BA348  48 0A 90 2D */	bl rand
/* 801BD34C 001BA34C  7C 1E 18 96 */	mulhw r0, r30, r3
/* 801BD350 001BA350  93 81 00 40 */	stw r28, 0x40(r1)
/* 801BD354 001BA354  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD358 001BA358  7C 00 1A 14 */	add r0, r0, r3
/* 801BD35C 001BA35C  7C 00 26 70 */	srawi r0, r0, 4
/* 801BD360 001BA360  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD364 001BA364  7C 00 2A 14 */	add r0, r0, r5
/* 801BD368 001BA368  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 801BD36C 001BA36C  7C 00 18 50 */	subf r0, r0, r3
/* 801BD370 001BA370  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD374 001BA374  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BD378 001BA378  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801BD37C 001BA37C  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD380 001BA380  EC 1F D8 3A */	fmadds f0, f31, f0, f27
/* 801BD384 001BA384  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 801BD388 001BA388  48 0A 8F ED */	bl rand
/* 801BD38C 001BA38C  7C 1F 18 96 */	mulhw r0, r31, r3
/* 801BD390 001BA390  93 81 00 48 */	stw r28, 0x48(r1)
/* 801BD394 001BA394  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD398 001BA398  7C 00 1A 14 */	add r0, r0, r3
/* 801BD39C 001BA39C  7C 00 46 70 */	srawi r0, r0, 8
/* 801BD3A0 001BA3A0  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD3A4 001BA3A4  7C 00 2A 14 */	add r0, r0, r5
/* 801BD3A8 001BA3A8  1C 00 01 68 */	mulli r0, r0, 0x168
/* 801BD3AC 001BA3AC  7C 00 18 50 */	subf r0, r0, r3
/* 801BD3B0 001BA3B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD3B4 001BA3B4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801BD3B8 001BA3B8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801BD3BC 001BA3BC  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD3C0 001BA3C0  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 801BD3C4 001BA3C4  48 0A 8F B1 */	bl rand
/* 801BD3C8 001BA3C8  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD3CC 001BA3CC  93 81 00 50 */	stw r28, 0x50(r1)
/* 801BD3D0 001BA3D0  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD3D4 001BA3D4  7C 00 1E 70 */	srawi r0, r0, 3
/* 801BD3D8 001BA3D8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD3DC 001BA3DC  7C 00 2A 14 */	add r0, r0, r5
/* 801BD3E0 001BA3E0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 801BD3E4 001BA3E4  7C 00 18 50 */	subf r0, r0, r3
/* 801BD3E8 001BA3E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD3EC 001BA3EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 801BD3F0 001BA3F0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801BD3F4 001BA3F4  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD3F8 001BA3F8  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 801BD3FC 001BA3FC  48 0A 8F 79 */	bl rand
/* 801BD400 001BA400  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD404 001BA404  93 81 00 58 */	stw r28, 0x58(r1)
/* 801BD408 001BA408  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD40C 001BA40C  7C 00 16 70 */	srawi r0, r0, 2
/* 801BD410 001BA410  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD414 001BA414  7C 00 2A 14 */	add r0, r0, r5
/* 801BD418 001BA418  1C 00 00 0A */	mulli r0, r0, 0xa
/* 801BD41C 001BA41C  7C 60 18 50 */	subf r3, r0, r3
/* 801BD420 001BA420  38 03 FF FB */	addi r0, r3, -5
/* 801BD424 001BA424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD428 001BA428  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801BD42C 001BA42C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801BD430 001BA430  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD434 001BA434  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 801BD438 001BA438  48 0A 8F 3D */	bl rand
/* 801BD43C 001BA43C  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801BD440 001BA440  3B 39 00 01 */	addi r25, r25, 1
/* 801BD444 001BA444  93 81 00 60 */	stw r28, 0x60(r1)
/* 801BD448 001BA448  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801BD44C 001BA44C  2C 19 00 0A */	cmpwi r25, 0xa
/* 801BD450 001BA450  7C 00 16 70 */	srawi r0, r0, 2
/* 801BD454 001BA454  54 05 0F FE */	srwi r5, r0, 0x1f
/* 801BD458 001BA458  7C 00 2A 14 */	add r0, r0, r5
/* 801BD45C 001BA45C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 801BD460 001BA460  7C 60 18 50 */	subf r3, r0, r3
/* 801BD464 001BA464  38 03 FF FB */	addi r0, r3, -5
/* 801BD468 001BA468  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BD46C 001BA46C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801BD470 001BA470  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801BD474 001BA474  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801BD478 001BA478  D0 04 00 50 */	stfs f0, 0x50(r4)
/* 801BD47C 001BA47C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801BD480 001BA480  D2 E3 00 54 */	stfs f23, 0x54(r3)
/* 801BD484 001BA484  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801BD488 001BA488  D3 03 00 58 */	stfs f24, 0x58(r3)
/* 801BD48C 001BA48C  41 80 FD 98 */	blt lbl_801BD224
/* 801BD490 001BA490  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 801BD494 001BA494  4B EA 06 F1 */	bl effDelete
/* 801BD498 001BA498  7F 03 C3 78 */	mr r3, r24
/* 801BD49C 001BA49C  4B EA 06 E9 */	bl effDelete
/* 801BD4A0 001BA4A0  48 00 01 18 */	b lbl_801BD5B8
lbl_801BD4A4:
/* 801BD4A4 001BA4A4  88 7A 00 25 */	lbz r3, 0x25(r26)
/* 801BD4A8 001BA4A8  83 3A 00 14 */	lwz r25, 0x14(r26)
/* 801BD4AC 001BA4AC  38 03 FF FF */	addi r0, r3, -1
/* 801BD4B0 001BA4B0  98 1A 00 25 */	stb r0, 0x25(r26)
/* 801BD4B4 001BA4B4  88 1A 00 25 */	lbz r0, 0x25(r26)
/* 801BD4B8 001BA4B8  7C 00 07 75 */	extsb. r0, r0
/* 801BD4BC 001BA4BC  40 80 00 34 */	bge lbl_801BD4F0
/* 801BD4C0 001BA4C0  48 0A 8E B5 */	bl rand
/* 801BD4C4 001BA4C4  3C 80 88 89 */	lis r4, 0x88888889@ha
/* 801BD4C8 001BA4C8  38 04 88 89 */	addi r0, r4, 0x88888889@l
/* 801BD4CC 001BA4CC  7C 00 18 96 */	mulhw r0, r0, r3
/* 801BD4D0 001BA4D0  7C 00 1A 14 */	add r0, r0, r3
/* 801BD4D4 001BA4D4  7C 00 2E 70 */	srawi r0, r0, 5
/* 801BD4D8 001BA4D8  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801BD4DC 001BA4DC  7C 00 22 14 */	add r0, r0, r4
/* 801BD4E0 001BA4E0  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 801BD4E4 001BA4E4  7C 60 18 50 */	subf r3, r0, r3
/* 801BD4E8 001BA4E8  38 03 00 08 */	addi r0, r3, 8
/* 801BD4EC 001BA4EC  98 1A 00 25 */	stb r0, 0x25(r26)
lbl_801BD4F0:
/* 801BD4F0 001BA4F0  88 1A 00 25 */	lbz r0, 0x25(r26)
/* 801BD4F4 001BA4F4  7C 03 07 74 */	extsb r3, r0
/* 801BD4F8 001BA4F8  2C 03 00 08 */	cmpwi r3, 8
/* 801BD4FC 001BA4FC  40 80 00 18 */	bge lbl_801BD514
/* 801BD500 001BA500  54 60 0F FE */	srwi r0, r3, 0x1f
/* 801BD504 001BA504  7C 00 1A 14 */	add r0, r0, r3
/* 801BD508 001BA508  7C 00 0E 70 */	srawi r0, r0, 1
/* 801BD50C 001BA50C  98 1A 00 24 */	stb r0, 0x24(r26)
/* 801BD510 001BA510  48 00 00 0C */	b lbl_801BD51C
lbl_801BD514:
/* 801BD514 001BA514  38 00 00 00 */	li r0, 0
/* 801BD518 001BA518  98 1A 00 24 */	stb r0, 0x24(r26)
lbl_801BD51C:
/* 801BD51C 001BA51C  2C 1B 00 10 */	cmpwi r27, 0x10
/* 801BD520 001BA520  40 81 00 40 */	ble lbl_801BD560
/* 801BD524 001BA524  57 20 E0 06 */	slwi r0, r25, 0x1c
/* 801BD528 001BA528  57 23 0F FE */	srwi r3, r25, 0x1f
/* 801BD52C 001BA52C  7C 03 00 50 */	subf r0, r3, r0
/* 801BD530 001BA530  54 00 20 3E */	rotlwi r0, r0, 4
/* 801BD534 001BA534  7C 00 1A 15 */	add. r0, r0, r3
/* 801BD538 001BA538  40 82 00 28 */	bne lbl_801BD560
/* 801BD53C 001BA53C  C0 9A 00 20 */	lfs f4, 0x20(r26)
/* 801BD540 001BA540  38 60 00 02 */	li r3, 2
/* 801BD544 001BA544  C0 42 DC AC */	lfs f2, lbl_8041F02C-_SDA2_BASE_(r2)
/* 801BD548 001BA548  38 80 00 1E */	li r4, 0x1e
/* 801BD54C 001BA54C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801BD550 001BA550  C0 3A 00 04 */	lfs f1, 4(r26)
/* 801BD554 001BA554  EC 42 01 3A */	fmadds f2, f2, f4, f0
/* 801BD558 001BA558  C0 7A 00 0C */	lfs f3, 0xc(r26)
/* 801BD55C 001BA55C  48 03 0B E9 */	bl effVaporN64Entry
lbl_801BD560:
/* 801BD560 001BA560  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 801BD564 001BA564  38 61 00 14 */	addi r3, r1, 0x14
/* 801BD568 001BA568  C0 1A 00 04 */	lfs f0, 4(r26)
/* 801BD56C 001BA56C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 801BD570 001BA570  C0 22 DC 90 */	lfs f1, lbl_8041F010-_SDA2_BASE_(r2)
/* 801BD574 001BA574  D0 04 00 04 */	stfs f0, 4(r4)
/* 801BD578 001BA578  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801BD57C 001BA57C  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 801BD580 001BA580  EC 01 00 2A */	fadds f0, f1, f0
/* 801BD584 001BA584  80 84 00 0C */	lwz r4, 0xc(r4)
/* 801BD588 001BA588  D0 04 00 08 */	stfs f0, 8(r4)
/* 801BD58C 001BA58C  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 801BD590 001BA590  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 801BD594 001BA594  80 84 00 0C */	lwz r4, 0xc(r4)
/* 801BD598 001BA598  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801BD59C 001BA59C  4B E5 31 25 */	bl dispCalcZ
/* 801BD5A0 001BA5A0  3C 60 80 1C */	lis r3, effFreezeDisp@ha
/* 801BD5A4 001BA5A4  7F 06 C3 78 */	mr r6, r24
/* 801BD5A8 001BA5A8  38 A3 CE 40 */	addi r5, r3, effFreezeDisp@l
/* 801BD5AC 001BA5AC  38 80 00 02 */	li r4, 2
/* 801BD5B0 001BA5B0  38 60 00 04 */	li r3, 4
/* 801BD5B4 001BA5B4  4B E5 34 65 */	bl dispEntry
lbl_801BD5B8:
/* 801BD5B8 001BA5B8  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 801BD5BC 001BA5BC  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 801BD5C0 001BA5C0  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 801BD5C4 001BA5C4  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 801BD5C8 001BA5C8  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 801BD5CC 001BA5CC  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 801BD5D0 001BA5D0  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 801BD5D4 001BA5D4  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 801BD5D8 001BA5D8  E3 61 00 F8 */	psq_l f27, 248(r1), 0, qr0
/* 801BD5DC 001BA5DC  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 801BD5E0 001BA5E0  E3 41 00 E8 */	psq_l f26, 232(r1), 0, qr0
/* 801BD5E4 001BA5E4  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 801BD5E8 001BA5E8  E3 21 00 D8 */	psq_l f25, 216(r1), 0, qr0
/* 801BD5EC 001BA5EC  CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 801BD5F0 001BA5F0  E3 01 00 C8 */	psq_l f24, 200(r1), 0, qr0
/* 801BD5F4 001BA5F4  CB 01 00 C0 */	lfd f24, 0xc0(r1)
/* 801BD5F8 001BA5F8  E2 E1 00 B8 */	psq_l f23, 184(r1), 0, qr0
/* 801BD5FC 001BA5FC  CA E1 00 B0 */	lfd f23, 0xb0(r1)
/* 801BD600 001BA600  E2 C1 00 A8 */	psq_l f22, 168(r1), 0, qr0
/* 801BD604 001BA604  CA C1 00 A0 */	lfd f22, 0xa0(r1)
/* 801BD608 001BA608  E2 A1 00 98 */	psq_l f21, 152(r1), 0, qr0
/* 801BD60C 001BA60C  CA A1 00 90 */	lfd f21, 0x90(r1)
/* 801BD610 001BA610  BB 01 00 70 */	lmw r24, 0x70(r1)
/* 801BD614 001BA614  80 01 01 44 */	lwz r0, 0x144(r1)
/* 801BD618 001BA618  7C 08 03 A6 */	mtlr r0
/* 801BD61C 001BA61C  38 21 01 40 */	addi r1, r1, 0x140
/* 801BD620 001BA620  4E 80 00 20 */	blr 

.global effFreezeN64Entry
effFreezeN64Entry:
/* 801BD624 001BA624  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801BD628 001BA628  7C 08 02 A6 */	mflr r0
/* 801BD62C 001BA62C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801BD630 001BA630  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801BD634 001BA634  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801BD638 001BA638  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801BD63C 001BA63C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801BD640 001BA640  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801BD644 001BA644  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 801BD648 001BA648  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 801BD64C 001BA64C  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 801BD650 001BA650  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BD654 001BA654  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801BD658 001BA658  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801BD65C 001BA65C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801BD660 001BA660  FF 80 08 90 */	fmr f28, f1
/* 801BD664 001BA664  7C 7C 1B 78 */	mr r28, r3
/* 801BD668 001BA668  FF A0 10 90 */	fmr f29, f2
/* 801BD66C 001BA66C  7C 9D 23 78 */	mr r29, r4
/* 801BD670 001BA670  FF C0 18 90 */	fmr f30, f3
/* 801BD674 001BA674  FF E0 20 90 */	fmr f31, f4
/* 801BD678 001BA678  4B EA 07 45 */	bl effEntry
/* 801BD67C 001BA67C  3C 80 80 30 */	lis r4, lbl_802FA6C0@ha
/* 801BD680 001BA680  7C 7E 1B 78 */	mr r30, r3
/* 801BD684 001BA684  38 84 A6 C0 */	addi r4, r4, lbl_802FA6C0@l
/* 801BD688 001BA688  38 00 00 01 */	li r0, 1
/* 801BD68C 001BA68C  90 9E 00 14 */	stw r4, 0x14(r30)
/* 801BD690 001BA690  38 60 00 03 */	li r3, 3
/* 801BD694 001BA694  38 80 00 2C */	li r4, 0x2c
/* 801BD698 001BA698  90 1E 00 08 */	stw r0, 8(r30)
/* 801BD69C 001BA69C  4B E7 23 F1 */	bl __memAlloc
/* 801BD6A0 001BA6A0  7C 7F 1B 78 */	mr r31, r3
/* 801BD6A4 001BA6A4  3C 60 80 1C */	lis r3, effFreezeMain@ha
/* 801BD6A8 001BA6A8  93 FE 00 0C */	stw r31, 0xc(r30)
/* 801BD6AC 001BA6AC  38 63 D0 D0 */	addi r3, r3, effFreezeMain@l
/* 801BD6B0 001BA6B0  2C 1D 00 00 */	cmpwi r29, 0
/* 801BD6B4 001BA6B4  38 00 00 00 */	li r0, 0
/* 801BD6B8 001BA6B8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 801BD6BC 001BA6BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 801BD6C0 001BA6C0  60 63 00 02 */	ori r3, r3, 2
/* 801BD6C4 001BA6C4  90 7E 00 00 */	stw r3, 0(r30)
/* 801BD6C8 001BA6C8  93 9F 00 00 */	stw r28, 0(r31)
/* 801BD6CC 001BA6CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801BD6D0 001BA6D0  41 81 00 10 */	bgt lbl_801BD6E0
/* 801BD6D4 001BA6D4  38 00 03 E8 */	li r0, 0x3e8
/* 801BD6D8 001BA6D8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801BD6DC 001BA6DC  48 00 00 08 */	b lbl_801BD6E4
lbl_801BD6E0:
/* 801BD6E0 001BA6E0  93 BF 00 10 */	stw r29, 0x10(r31)
lbl_801BD6E4:
/* 801BD6E4 001BA6E4  38 E0 00 FF */	li r7, 0xff
/* 801BD6E8 001BA6E8  C0 02 DC 90 */	lfs f0, lbl_8041F010-_SDA2_BASE_(r2)
/* 801BD6EC 001BA6EC  98 FF 00 1B */	stb r7, 0x1b(r31)
/* 801BD6F0 001BA6F0  38 C0 00 F0 */	li r6, 0xf0
/* 801BD6F4 001BA6F4  38 00 00 00 */	li r0, 0
/* 801BD6F8 001BA6F8  FC 20 E0 90 */	fmr f1, f28
/* 801BD6FC 001BA6FC  D3 9F 00 04 */	stfs f28, 4(r31)
/* 801BD700 001BA700  FC 60 F0 90 */	fmr f3, f30
/* 801BD704 001BA704  FC C0 F8 90 */	fmr f6, f31
/* 801BD708 001BA708  C0 82 DC B0 */	lfs f4, lbl_8041F030-_SDA2_BASE_(r2)
/* 801BD70C 001BA70C  D3 BF 00 08 */	stfs f29, 8(r31)
/* 801BD710 001BA710  EC 40 E8 2A */	fadds f2, f0, f29
/* 801BD714 001BA714  C0 A2 DC B4 */	lfs f5, lbl_8041F034-_SDA2_BASE_(r2)
/* 801BD718 001BA718  D3 DF 00 0C */	stfs f30, 0xc(r31)
/* 801BD71C 001BA71C  38 60 00 01 */	li r3, 1
/* 801BD720 001BA720  38 80 00 04 */	li r4, 4
/* 801BD724 001BA724  D3 FF 00 20 */	stfs f31, 0x20(r31)
/* 801BD728 001BA728  38 A0 00 00 */	li r5, 0
/* 801BD72C 001BA72C  98 FF 00 18 */	stb r7, 0x18(r31)
/* 801BD730 001BA730  98 FF 00 19 */	stb r7, 0x19(r31)
/* 801BD734 001BA734  98 FF 00 1A */	stb r7, 0x1a(r31)
/* 801BD738 001BA738  98 DF 00 1C */	stb r6, 0x1c(r31)
/* 801BD73C 001BA73C  98 FF 00 1D */	stb r7, 0x1d(r31)
/* 801BD740 001BA740  98 FF 00 1E */	stb r7, 0x1e(r31)
/* 801BD744 001BA744  98 FF 00 1F */	stb r7, 0x1f(r31)
/* 801BD748 001BA748  98 1F 00 25 */	stb r0, 0x25(r31)
/* 801BD74C 001BA74C  98 1F 00 24 */	stb r0, 0x24(r31)
/* 801BD750 001BA750  48 03 3D D9 */	bl effSnowDustN64Entry
/* 801BD754 001BA754  90 7F 00 28 */	stw r3, 0x28(r31)
/* 801BD758 001BA758  7F C3 F3 78 */	mr r3, r30
/* 801BD75C 001BA75C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801BD760 001BA760  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801BD764 001BA764  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801BD768 001BA768  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801BD76C 001BA76C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 801BD770 001BA770  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801BD774 001BA774  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 801BD778 001BA778  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 801BD77C 001BA77C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BD780 001BA780  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801BD784 001BA784  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801BD788 001BA788  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801BD78C 001BA78C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801BD790 001BA790  7C 08 03 A6 */	mtlr r0
/* 801BD794 001BA794  38 21 00 60 */	addi r1, r1, 0x60
/* 801BD798 001BA798  4E 80 00 20 */	blr 