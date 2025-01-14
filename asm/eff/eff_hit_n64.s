.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global main_dl_DUPE_801bfaec
main_dl_DUPE_801bfaec:
/* 801BFAEC 001BCAEC  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801BFAF0 001BCAF0  7C 08 02 A6 */	mflr r0
/* 801BFAF4 001BCAF4  90 01 01 34 */	stw r0, 0x134(r1)
/* 801BFAF8 001BCAF8  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 801BFAFC 001BCAFC  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 801BFB00 001BCB00  BF 61 01 0C */	stmw r27, 0x10c(r1)
/* 801BFB04 001BCB04  7C 7B 1B 78 */	mr r27, r3
/* 801BFB08 001BCB08  C0 42 DD 60 */	lfs f2, lbl_8041F0E0@sda21(r2)
/* 801BFB0C 001BCB0C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 801BFB10 001BCB10  7C 9C 23 78 */	mr r28, r4
/* 801BFB14 001BCB14  C0 02 DD 64 */	lfs f0, lbl_8041F0E4@sda21(r2)
/* 801BFB18 001BCB18  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801BFB1C 001BCB1C  EC 42 00 72 */	fmuls f2, f2, f1
/* 801BFB20 001BCB20  FC 20 10 1E */	fctiwz f1, f2
/* 801BFB24 001BCB24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801BFB28 001BCB28  D8 21 00 F8 */	stfd f1, 0xf8(r1)
/* 801BFB2C 001BCB2C  83 C1 00 FC */	lwz r30, 0xfc(r1)
/* 801BFB30 001BCB30  4C 41 13 82 */	cror 2, 1, 2
/* 801BFB34 001BCB34  40 82 00 0C */	bne .L_801BFB40
/* 801BFB38 001BCB38  3B A0 00 01 */	li r29, 1
/* 801BFB3C 001BCB3C  48 00 00 08 */	b .L_801BFB44
.L_801BFB40:
/* 801BFB40 001BCB40  3B A0 00 00 */	li r29, 0
.L_801BFB44:
/* 801BFB44 001BCB44  C0 22 DD 68 */	lfs f1, lbl_8041F0E8@sda21(r2)
/* 801BFB48 001BCB48  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFB4C 001BCB4C  C0 42 DD 6C */	lfs f2, lbl_8041F0EC@sda21(r2)
/* 801BFB50 001BCB50  C0 62 DD 70 */	lfs f3, lbl_8041F0F0@sda21(r2)
/* 801BFB54 001BCB54  48 0D 89 59 */	bl PSMTXScale
/* 801BFB58 001BCB58  C0 22 DD 70 */	lfs f1, lbl_8041F0F0@sda21(r2)
/* 801BFB5C 001BCB5C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801BFB60 001BCB60  C0 42 DD 74 */	lfs f2, lbl_8041F0F4@sda21(r2)
/* 801BFB64 001BCB64  FC 60 08 90 */	fmr f3, f1
/* 801BFB68 001BCB68  48 0D 88 C5 */	bl PSMTXTrans
/* 801BFB6C 001BCB6C  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFB70 001BCB70  38 81 00 C8 */	addi r4, r1, 0xc8
/* 801BFB74 001BCB74  7C 65 1B 78 */	mr r5, r3
/* 801BFB78 001BCB78  48 0D 83 E9 */	bl PSMTXConcat
/* 801BFB7C 001BCB7C  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFB80 001BCB80  38 80 00 1E */	li r4, 0x1e
/* 801BFB84 001BCB84  38 A0 00 01 */	li r5, 1
/* 801BFB88 001BCB88  48 0F 4A 45 */	bl GXLoadTexMtxImm
/* 801BFB8C 001BCB8C  C0 22 DD 68 */	lfs f1, lbl_8041F0E8@sda21(r2)
/* 801BFB90 001BCB90  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFB94 001BCB94  C0 42 DD 6C */	lfs f2, lbl_8041F0EC@sda21(r2)
/* 801BFB98 001BCB98  C0 62 DD 70 */	lfs f3, lbl_8041F0F0@sda21(r2)
/* 801BFB9C 001BCB9C  48 0D 89 11 */	bl PSMTXScale
/* 801BFBA0 001BCBA0  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFBA4 001BCBA4  38 80 00 21 */	li r4, 0x21
/* 801BFBA8 001BCBA8  38 A0 00 01 */	li r5, 1
/* 801BFBAC 001BCBAC  48 0F 4A 21 */	bl GXLoadTexMtxImm
/* 801BFBB0 001BCBB0  2C 1D 00 00 */	cmpwi r29, 0
/* 801BFBB4 001BCBB4  41 82 00 28 */	beq .L_801BFBDC
/* 801BFBB8 001BCBB8  C0 22 DD 70 */	lfs f1, lbl_8041F0F0@sda21(r2)
/* 801BFBBC 001BCBBC  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFBC0 001BCBC0  FC 40 08 90 */	fmr f2, f1
/* 801BFBC4 001BCBC4  FC 60 08 90 */	fmr f3, f1
/* 801BFBC8 001BCBC8  48 0D 88 E5 */	bl PSMTXScale
/* 801BFBCC 001BCBCC  38 61 00 98 */	addi r3, r1, 0x98
/* 801BFBD0 001BCBD0  38 80 00 21 */	li r4, 0x21
/* 801BFBD4 001BCBD4  38 A0 00 01 */	li r5, 1
/* 801BFBD8 001BCBD8  48 0F 49 F5 */	bl GXLoadTexMtxImm
.L_801BFBDC:
/* 801BFBDC 001BCBDC  1C 9E 00 38 */	mulli r4, r30, 0x38
/* 801BFBE0 001BCBE0  3C 60 80 3A */	lis r3, lbl_8039D4B8@ha
/* 801BFBE4 001BCBE4  C3 E2 DD 78 */	lfs f31, lbl_8041F0F8@sda21(r2)
/* 801BFBE8 001BCBE8  3B DF 00 44 */	addi r30, r31, 0x44
/* 801BFBEC 001BCBEC  38 03 D4 B8 */	addi r0, r3, lbl_8039D4B8@l
/* 801BFBF0 001BCBF0  7F E0 22 14 */	add r31, r0, r4
/* 801BFBF4 001BCBF4  3B A0 00 01 */	li r29, 1
/* 801BFBF8 001BCBF8  48 00 00 E0 */	b .L_801BFCD8
.L_801BFBFC:
/* 801BFBFC 001BCBFC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 801BFC00 001BCC00  38 61 00 08 */	addi r3, r1, 8
/* 801BFC04 001BCC04  38 80 00 79 */	li r4, 0x79
/* 801BFC08 001BCC08  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801BFC0C 001BCC0C  48 0D 85 E1 */	bl PSMTXRotRad
/* 801BFC10 001BCC10  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 801BFC14 001BCC14  38 61 00 38 */	addi r3, r1, 0x38
/* 801BFC18 001BCC18  38 80 00 7A */	li r4, 0x7a
/* 801BFC1C 001BCC1C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801BFC20 001BCC20  48 0D 85 CD */	bl PSMTXRotRad
/* 801BFC24 001BCC24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801BFC28 001BCC28  38 61 00 68 */	addi r3, r1, 0x68
/* 801BFC2C 001BCC2C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801BFC30 001BCC30  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801BFC34 001BCC34  48 0D 87 F9 */	bl PSMTXTrans
/* 801BFC38 001BCC38  38 81 00 38 */	addi r4, r1, 0x38
/* 801BFC3C 001BCC3C  38 61 00 08 */	addi r3, r1, 8
/* 801BFC40 001BCC40  7C 85 23 78 */	mr r5, r4
/* 801BFC44 001BCC44  48 0D 83 1D */	bl PSMTXConcat
/* 801BFC48 001BCC48  38 81 00 68 */	addi r4, r1, 0x68
/* 801BFC4C 001BCC4C  38 61 00 38 */	addi r3, r1, 0x38
/* 801BFC50 001BCC50  7C 85 23 78 */	mr r5, r4
/* 801BFC54 001BCC54  48 0D 83 0D */	bl PSMTXConcat
/* 801BFC58 001BCC58  38 81 00 68 */	addi r4, r1, 0x68
/* 801BFC5C 001BCC5C  7F 83 E3 78 */	mr r3, r28
/* 801BFC60 001BCC60  7C 85 23 78 */	mr r5, r4
/* 801BFC64 001BCC64  48 0D 82 FD */	bl PSMTXConcat
/* 801BFC68 001BCC68  38 60 00 04 */	li r3, 4
/* 801BFC6C 001BCC6C  4B E4 F4 E5 */	bl camGetPtr
/* 801BFC70 001BCC70  38 81 00 68 */	addi r4, r1, 0x68
/* 801BFC74 001BCC74  38 63 01 1C */	addi r3, r3, 0x11c
/* 801BFC78 001BCC78  7C 85 23 78 */	mr r5, r4
/* 801BFC7C 001BCC7C  48 0D 82 E5 */	bl PSMTXConcat
/* 801BFC80 001BCC80  38 61 00 68 */	addi r3, r1, 0x68
/* 801BFC84 001BCC84  38 80 00 00 */	li r4, 0
/* 801BFC88 001BCC88  48 0F 48 71 */	bl GXLoadPosMtxImm
/* 801BFC8C 001BCC8C  38 60 00 00 */	li r3, 0
/* 801BFC90 001BCC90  48 0F 49 09 */	bl GXSetCurrentMtx
/* 801BFC94 001BCC94  7F E3 FB 78 */	mr r3, r31
/* 801BFC98 001BCC98  48 01 1A 19 */	bl effSetVtxDescN64
/* 801BFC9C 001BCC9C  38 60 00 90 */	li r3, 0x90
/* 801BFCA0 001BCCA0  38 80 00 00 */	li r4, 0
/* 801BFCA4 001BCCA4  38 A0 00 06 */	li r5, 6
/* 801BFCA8 001BCCA8  48 0E FF C1 */	bl GXBegin
/* 801BFCAC 001BCCAC  38 60 00 00 */	li r3, 0
/* 801BFCB0 001BCCB0  38 80 00 01 */	li r4, 1
/* 801BFCB4 001BCCB4  38 A0 00 02 */	li r5, 2
/* 801BFCB8 001BCCB8  38 C0 00 00 */	li r6, 0
/* 801BFCBC 001BCCBC  38 E0 00 00 */	li r7, 0
/* 801BFCC0 001BCCC0  39 00 00 02 */	li r8, 2
/* 801BFCC4 001BCCC4  39 20 00 03 */	li r9, 3
/* 801BFCC8 001BCCC8  39 40 00 00 */	li r10, 0
/* 801BFCCC 001BCCCC  48 01 19 69 */	bl tri2
/* 801BFCD0 001BCCD0  3B BD 00 01 */	addi r29, r29, 1
/* 801BFCD4 001BCCD4  3B DE 00 44 */	addi r30, r30, 0x44
.L_801BFCD8:
/* 801BFCD8 001BCCD8  80 1B 00 08 */	lwz r0, 8(r27)
/* 801BFCDC 001BCCDC  7C 1D 00 00 */	cmpw r29, r0
/* 801BFCE0 001BCCE0  41 80 FF 1C */	blt .L_801BFBFC
/* 801BFCE4 001BCCE4  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 801BFCE8 001BCCE8  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 801BFCEC 001BCCEC  BB 61 01 0C */	lmw r27, 0x10c(r1)
/* 801BFCF0 001BCCF0  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801BFCF4 001BCCF4  7C 08 03 A6 */	mtlr r0
/* 801BFCF8 001BCCF8  38 21 01 30 */	addi r1, r1, 0x130
/* 801BFCFC 001BCCFC  4E 80 00 20 */	blr 
effHitDisp:
/* 801BFD00 001BCD00  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 801BFD04 001BCD04  7C 08 02 A6 */	mflr r0
/* 801BFD08 001BCD08  90 01 01 94 */	stw r0, 0x194(r1)
/* 801BFD0C 001BCD0C  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 801BFD10 001BCD10  F3 E1 01 88 */	psq_st f31, 392(r1), 0, qr0
/* 801BFD14 001BCD14  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 801BFD18 001BCD18  F3 C1 01 78 */	psq_st f30, 376(r1), 0, qr0
/* 801BFD1C 001BCD1C  BE E1 01 4C */	stmw r23, 0x14c(r1)
/* 801BFD20 001BCD20  7C 9C 23 78 */	mr r28, r4
/* 801BFD24 001BCD24  4B E4 F4 2D */	bl camGetPtr
/* 801BFD28 001BCD28  83 FC 00 0C */	lwz r31, 0xc(r28)
/* 801BFD2C 001BCD2C  C0 22 DD 60 */	lfs f1, lbl_8041F0E0@sda21(r2)
/* 801BFD30 001BCD30  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801BFD34 001BCD34  83 7F 00 34 */	lwz r27, 0x34(r31)
/* 801BFD38 001BCD38  EF C1 00 32 */	fmuls f30, f1, f0
/* 801BFD3C 001BCD3C  83 5F 00 00 */	lwz r26, 0(r31)
/* 801BFD40 001BCD40  FC 00 F0 1E */	fctiwz f0, f30
/* 801BFD44 001BCD44  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 801BFD48 001BCD48  83 A1 01 3C */	lwz r29, 0x13c(r1)
/* 801BFD4C 001BCD4C  2C 1D 00 04 */	cmpwi r29, 4
/* 801BFD50 001BCD50  41 81 03 DC */	bgt .L_801C012C
/* 801BFD54 001BCD54  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 801BFD58 001BCD58  38 61 01 04 */	addi r3, r1, 0x104
/* 801BFD5C 001BCD5C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801BFD60 001BCD60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801BFD64 001BCD64  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 801BFD68 001BCD68  48 0D 86 C5 */	bl PSMTXTrans
/* 801BFD6C 001BCD6C  38 60 00 04 */	li r3, 4
/* 801BFD70 001BCD70  4B E4 F3 E1 */	bl camGetPtr
/* 801BFD74 001BCD74  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801BFD78 001BCD78  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801BFD7C 001BCD7C  C0 02 DD 78 */	lfs f0, lbl_8041F0F8@sda21(r2)
/* 801BFD80 001BCD80  38 80 00 79 */	li r4, 0x79
/* 801BFD84 001BCD84  FC 20 08 50 */	fneg f1, f1
/* 801BFD88 001BCD88  EC 20 00 72 */	fmuls f1, f0, f1
/* 801BFD8C 001BCD8C  48 0D 84 61 */	bl PSMTXRotRad
/* 801BFD90 001BCD90  FC 20 F8 90 */	fmr f1, f31
/* 801BFD94 001BCD94  38 61 00 D4 */	addi r3, r1, 0xd4
/* 801BFD98 001BCD98  FC 40 F8 90 */	fmr f2, f31
/* 801BFD9C 001BCD9C  FC 60 F8 90 */	fmr f3, f31
/* 801BFDA0 001BCDA0  48 0D 87 0D */	bl PSMTXScale
/* 801BFDA4 001BCDA4  38 61 01 04 */	addi r3, r1, 0x104
/* 801BFDA8 001BCDA8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801BFDAC 001BCDAC  7C 65 1B 78 */	mr r5, r3
/* 801BFDB0 001BCDB0  48 0D 81 B1 */	bl PSMTXConcat
/* 801BFDB4 001BCDB4  38 61 01 04 */	addi r3, r1, 0x104
/* 801BFDB8 001BCDB8  38 81 00 D4 */	addi r4, r1, 0xd4
/* 801BFDBC 001BCDBC  38 A1 00 74 */	addi r5, r1, 0x74
/* 801BFDC0 001BCDC0  48 0D 81 A1 */	bl PSMTXConcat
/* 801BFDC4 001BCDC4  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 801BFDC8 001BCDC8  3C 00 43 30 */	lis r0, 0x4330
/* 801BFDCC 001BCDCC  90 61 01 3C */	stw r3, 0x13c(r1)
/* 801BFDD0 001BCDD0  3C 80 80 30 */	lis r4, lbl_802FA790@ha
/* 801BFDD4 001BCDD4  C8 24 A7 90 */	lfd f1, lbl_802FA790@l(r4)
/* 801BFDD8 001BCDD8  2C 1A 00 01 */	cmpwi r26, 1
/* 801BFDDC 001BCDDC  90 01 01 38 */	stw r0, 0x138(r1)
/* 801BFDE0 001BCDE0  C0 42 DD 7C */	lfs f2, lbl_8041F0FC@sda21(r2)
/* 801BFDE4 001BCDE4  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 801BFDE8 001BCDE8  83 BF 00 2C */	lwz r29, 0x2c(r31)
/* 801BFDEC 001BCDEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BFDF0 001BCDF0  EC 1E 00 28 */	fsubs f0, f30, f0
/* 801BFDF4 001BCDF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801BFDF8 001BCDF8  FC 00 00 1E */	fctiwz f0, f0
/* 801BFDFC 001BCDFC  D8 01 01 40 */	stfd f0, 0x140(r1)
/* 801BFE00 001BCE00  83 C1 01 44 */	lwz r30, 0x144(r1)
/* 801BFE04 001BCE04  41 82 00 18 */	beq .L_801BFE1C
/* 801BFE08 001BCE08  40 80 00 08 */	bge .L_801BFE10
/* 801BFE0C 001BCE0C  48 00 00 B4 */	b .L_801BFEC0
.L_801BFE10:
/* 801BFE10 001BCE10  2C 1A 00 03 */	cmpwi r26, 3
/* 801BFE14 001BCE14  40 80 00 AC */	bge .L_801BFEC0
/* 801BFE18 001BCE18  48 00 00 68 */	b .L_801BFE80
.L_801BFE1C:
/* 801BFE1C 001BCE1C  38 1B FF FF */	addi r0, r27, -1
/* 801BFE20 001BCE20  2C 00 00 0D */	cmpwi r0, 0xd
/* 801BFE24 001BCE24  40 80 00 14 */	bge .L_801BFE38
/* 801BFE28 001BCE28  38 0D C7 8C */	addi r0, r13, lbl_804139EC@sda21
/* 801BFE2C 001BCE2C  7C 60 DA 14 */	add r3, r0, r27
/* 801BFE30 001BCE30  88 E3 FF FF */	lbz r7, -1(r3)
/* 801BFE34 001BCE34  48 00 00 08 */	b .L_801BFE3C
.L_801BFE38:
/* 801BFE38 001BCE38  38 E0 00 00 */	li r7, 0
.L_801BFE3C:
/* 801BFE3C 001BCE3C  88 1F 00 3D */	lbz r0, 0x3d(r31)
/* 801BFE40 001BCE40  88 BF 00 3E */	lbz r5, 0x3e(r31)
/* 801BFE44 001BCE44  7C C0 39 D6 */	mullw r6, r0, r7
/* 801BFE48 001BCE48  88 9F 00 3F */	lbz r4, 0x3f(r31)
/* 801BFE4C 001BCE4C  88 7F 00 40 */	lbz r3, 0x40(r31)
/* 801BFE50 001BCE50  88 1F 00 41 */	lbz r0, 0x41(r31)
/* 801BFE54 001BCE54  8B 5F 00 3C */	lbz r26, 0x3c(r31)
/* 801BFE58 001BCE58  7C A5 39 D6 */	mullw r5, r5, r7
/* 801BFE5C 001BCE5C  7C DB 46 70 */	srawi r27, r6, 8
/* 801BFE60 001BCE60  7C 84 39 D6 */	mullw r4, r4, r7
/* 801BFE64 001BCE64  7C B9 46 70 */	srawi r25, r5, 8
/* 801BFE68 001BCE68  7C 63 39 D6 */	mullw r3, r3, r7
/* 801BFE6C 001BCE6C  7C 98 46 70 */	srawi r24, r4, 8
/* 801BFE70 001BCE70  7C 00 39 D6 */	mullw r0, r0, r7
/* 801BFE74 001BCE74  7C 77 46 70 */	srawi r23, r3, 8
/* 801BFE78 001BCE78  7C 1F 46 70 */	srawi r31, r0, 8
/* 801BFE7C 001BCE7C  48 00 00 5C */	b .L_801BFED8
.L_801BFE80:
/* 801BFE80 001BCE80  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 801BFE84 001BCE84  41 82 00 20 */	beq .L_801BFEA4
/* 801BFE88 001BCE88  8B 5F 00 3C */	lbz r26, 0x3c(r31)
/* 801BFE8C 001BCE8C  8B 7F 00 3D */	lbz r27, 0x3d(r31)
/* 801BFE90 001BCE90  8B 3F 00 3E */	lbz r25, 0x3e(r31)
/* 801BFE94 001BCE94  8B 1F 00 3F */	lbz r24, 0x3f(r31)
/* 801BFE98 001BCE98  8A FF 00 40 */	lbz r23, 0x40(r31)
/* 801BFE9C 001BCE9C  8B FF 00 41 */	lbz r31, 0x41(r31)
/* 801BFEA0 001BCEA0  48 00 00 38 */	b .L_801BFED8
.L_801BFEA4:
/* 801BFEA4 001BCEA4  8B 1F 00 3C */	lbz r24, 0x3c(r31)
/* 801BFEA8 001BCEA8  3B 40 00 00 */	li r26, 0
/* 801BFEAC 001BCEAC  8A FF 00 3D */	lbz r23, 0x3d(r31)
/* 801BFEB0 001BCEB0  3B 60 00 00 */	li r27, 0
/* 801BFEB4 001BCEB4  8B FF 00 3E */	lbz r31, 0x3e(r31)
/* 801BFEB8 001BCEB8  3B 20 00 00 */	li r25, 0
/* 801BFEBC 001BCEBC  48 00 00 1C */	b .L_801BFED8
.L_801BFEC0:
/* 801BFEC0 001BCEC0  8B 5F 00 3C */	lbz r26, 0x3c(r31)
/* 801BFEC4 001BCEC4  8B 7F 00 3D */	lbz r27, 0x3d(r31)
/* 801BFEC8 001BCEC8  8B 3F 00 3E */	lbz r25, 0x3e(r31)
/* 801BFECC 001BCECC  8B 1F 00 3F */	lbz r24, 0x3f(r31)
/* 801BFED0 001BCED0  8A FF 00 40 */	lbz r23, 0x40(r31)
/* 801BFED4 001BCED4  8B FF 00 41 */	lbz r31, 0x41(r31)
.L_801BFED8:
/* 801BFED8 001BCED8  38 60 00 00 */	li r3, 0
/* 801BFEDC 001BCEDC  48 0F 12 5D */	bl GXSetNumChans
/* 801BFEE0 001BCEE0  38 60 00 02 */	li r3, 2
/* 801BFEE4 001BCEE4  48 0F 32 E5 */	bl GXSetNumTevStages
/* 801BFEE8 001BCEE8  38 60 00 00 */	li r3, 0
/* 801BFEEC 001BCEEC  38 80 00 00 */	li r4, 0
/* 801BFEF0 001BCEF0  38 A0 00 00 */	li r5, 0
/* 801BFEF4 001BCEF4  38 C0 00 FF */	li r6, 0xff
/* 801BFEF8 001BCEF8  48 0F 31 35 */	bl GXSetTevOrder
/* 801BFEFC 001BCEFC  38 60 00 00 */	li r3, 0
/* 801BFF00 001BCF00  38 80 00 00 */	li r4, 0
/* 801BFF04 001BCF04  38 A0 00 00 */	li r5, 0
/* 801BFF08 001BCF08  38 C0 00 00 */	li r6, 0
/* 801BFF0C 001BCF0C  38 E0 00 01 */	li r7, 1
/* 801BFF10 001BCF10  39 00 00 00 */	li r8, 0
/* 801BFF14 001BCF14  48 0F 2C D1 */	bl GXSetTevColorOp
/* 801BFF18 001BCF18  38 60 00 00 */	li r3, 0
/* 801BFF1C 001BCF1C  38 80 00 00 */	li r4, 0
/* 801BFF20 001BCF20  38 A0 00 00 */	li r5, 0
/* 801BFF24 001BCF24  38 C0 00 00 */	li r6, 0
/* 801BFF28 001BCF28  38 E0 00 01 */	li r7, 1
/* 801BFF2C 001BCF2C  39 00 00 00 */	li r8, 0
/* 801BFF30 001BCF30  48 0F 2D 1D */	bl GXSetTevAlphaOp
/* 801BFF34 001BCF34  38 60 00 00 */	li r3, 0
/* 801BFF38 001BCF38  38 80 00 0F */	li r4, 0xf
/* 801BFF3C 001BCF3C  38 A0 00 0F */	li r5, 0xf
/* 801BFF40 001BCF40  38 C0 00 0F */	li r6, 0xf
/* 801BFF44 001BCF44  38 E0 00 08 */	li r7, 8
/* 801BFF48 001BCF48  48 0F 2C 15 */	bl GXSetTevColorIn
/* 801BFF4C 001BCF4C  38 60 00 00 */	li r3, 0
/* 801BFF50 001BCF50  38 80 00 07 */	li r4, 7
/* 801BFF54 001BCF54  38 A0 00 07 */	li r5, 7
/* 801BFF58 001BCF58  38 C0 00 07 */	li r6, 7
/* 801BFF5C 001BCF5C  38 E0 00 04 */	li r7, 4
/* 801BFF60 001BCF60  48 0F 2C 41 */	bl GXSetTevAlphaIn
/* 801BFF64 001BCF64  38 60 00 01 */	li r3, 1
/* 801BFF68 001BCF68  38 80 00 01 */	li r4, 1
/* 801BFF6C 001BCF6C  38 A0 00 01 */	li r5, 1
/* 801BFF70 001BCF70  38 C0 00 FF */	li r6, 0xff
/* 801BFF74 001BCF74  48 0F 30 B9 */	bl GXSetTevOrder
/* 801BFF78 001BCF78  38 60 00 01 */	li r3, 1
/* 801BFF7C 001BCF7C  38 80 00 00 */	li r4, 0
/* 801BFF80 001BCF80  38 A0 00 00 */	li r5, 0
/* 801BFF84 001BCF84  38 C0 00 00 */	li r6, 0
/* 801BFF88 001BCF88  38 E0 00 01 */	li r7, 1
/* 801BFF8C 001BCF8C  39 00 00 00 */	li r8, 0
/* 801BFF90 001BCF90  48 0F 2C 55 */	bl GXSetTevColorOp
/* 801BFF94 001BCF94  38 60 00 01 */	li r3, 1
/* 801BFF98 001BCF98  38 80 00 00 */	li r4, 0
/* 801BFF9C 001BCF9C  38 A0 00 00 */	li r5, 0
/* 801BFFA0 001BCFA0  38 C0 00 00 */	li r6, 0
/* 801BFFA4 001BCFA4  38 E0 00 01 */	li r7, 1
/* 801BFFA8 001BCFA8  39 00 00 00 */	li r8, 0
/* 801BFFAC 001BCFAC  48 0F 2C A1 */	bl GXSetTevAlphaOp
/* 801BFFB0 001BCFB0  38 60 00 01 */	li r3, 1
/* 801BFFB4 001BCFB4  38 80 00 04 */	li r4, 4
/* 801BFFB8 001BCFB8  38 A0 00 02 */	li r5, 2
/* 801BFFBC 001BCFBC  38 C0 00 00 */	li r6, 0
/* 801BFFC0 001BCFC0  38 E0 00 0F */	li r7, 0xf
/* 801BFFC4 001BCFC4  48 0F 2B 99 */	bl GXSetTevColorIn
/* 801BFFC8 001BCFC8  38 60 00 01 */	li r3, 1
/* 801BFFCC 001BCFCC  38 80 00 00 */	li r4, 0
/* 801BFFD0 001BCFD0  38 A0 00 04 */	li r5, 4
/* 801BFFD4 001BCFD4  38 C0 00 02 */	li r6, 2
/* 801BFFD8 001BCFD8  38 E0 00 07 */	li r7, 7
/* 801BFFDC 001BCFDC  48 0F 2B C5 */	bl GXSetTevAlphaIn
/* 801BFFE0 001BCFE0  80 02 1D B8 */	lwz r0, lbl_80423138@sda21(r2)
/* 801BFFE4 001BCFE4  38 81 00 14 */	addi r4, r1, 0x14
/* 801BFFE8 001BCFE8  38 60 00 01 */	li r3, 1
/* 801BFFEC 001BCFEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BFFF0 001BCFF0  9B 41 00 10 */	stb r26, 0x10(r1)
/* 801BFFF4 001BCFF4  9B 61 00 11 */	stb r27, 0x11(r1)
/* 801BFFF8 001BCFF8  9B 21 00 12 */	stb r25, 0x12(r1)
/* 801BFFFC 001BCFFC  9B A1 00 13 */	stb r29, 0x13(r1)
/* 801C0000 001BD000  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C0004 001BD004  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0008 001BD008  48 0F 2C AD */	bl GXSetTevColor
/* 801C000C 001BD00C  80 02 1D BC */	lwz r0, lbl_8042313C@sda21(r2)
/* 801C0010 001BD010  38 81 00 0C */	addi r4, r1, 0xc
/* 801C0014 001BD014  38 60 00 02 */	li r3, 2
/* 801C0018 001BD018  90 01 00 08 */	stw r0, 8(r1)
/* 801C001C 001BD01C  9B 01 00 08 */	stb r24, 8(r1)
/* 801C0020 001BD020  9A E1 00 09 */	stb r23, 9(r1)
/* 801C0024 001BD024  9B E1 00 0A */	stb r31, 0xa(r1)
/* 801C0028 001BD028  9B C1 00 0B */	stb r30, 0xb(r1)
/* 801C002C 001BD02C  80 01 00 08 */	lwz r0, 8(r1)
/* 801C0030 001BD030  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C0034 001BD034  48 0F 2C 81 */	bl GXSetTevColor
/* 801C0038 001BD038  38 81 00 24 */	addi r4, r1, 0x24
/* 801C003C 001BD03C  38 60 00 4A */	li r3, 0x4a
/* 801C0040 001BD040  48 01 18 05 */	bl effGetTexObjN64
/* 801C0044 001BD044  38 61 00 24 */	addi r3, r1, 0x24
/* 801C0048 001BD048  38 80 00 00 */	li r4, 0
/* 801C004C 001BD04C  48 0F 1A 31 */	bl GXLoadTexObj
/* 801C0050 001BD050  38 61 00 24 */	addi r3, r1, 0x24
/* 801C0054 001BD054  38 80 00 01 */	li r4, 1
/* 801C0058 001BD058  48 0F 1A 25 */	bl GXLoadTexObj
/* 801C005C 001BD05C  38 60 00 02 */	li r3, 2
/* 801C0060 001BD060  48 0E F2 21 */	bl GXSetNumTexGens
/* 801C0064 001BD064  38 60 00 00 */	li r3, 0
/* 801C0068 001BD068  38 80 00 01 */	li r4, 1
/* 801C006C 001BD06C  38 A0 00 04 */	li r5, 4
/* 801C0070 001BD070  38 C0 00 1E */	li r6, 0x1e
/* 801C0074 001BD074  38 E0 00 00 */	li r7, 0
/* 801C0078 001BD078  39 00 00 7D */	li r8, 0x7d
/* 801C007C 001BD07C  48 0E EF 85 */	bl GXSetTexCoordGen2
/* 801C0080 001BD080  38 60 00 01 */	li r3, 1
/* 801C0084 001BD084  38 80 00 01 */	li r4, 1
/* 801C0088 001BD088  38 A0 00 04 */	li r5, 4
/* 801C008C 001BD08C  38 C0 00 21 */	li r6, 0x21
/* 801C0090 001BD090  38 E0 00 00 */	li r7, 0
/* 801C0094 001BD094  39 00 00 7D */	li r8, 0x7d
/* 801C0098 001BD098  48 0E EF 69 */	bl GXSetTexCoordGen2
/* 801C009C 001BD09C  38 60 00 00 */	li r3, 0
/* 801C00A0 001BD0A0  48 0E FD E9 */	bl GXSetCullMode
/* 801C00A4 001BD0A4  3C 60 80 30 */	lis r3, lbl_802FA790@ha
/* 801C00A8 001BD0A8  3C 80 80 30 */	lis r4, lbl_802FA784@ha
/* 801C00AC 001BD0AC  C3 C2 DD 78 */	lfs f30, lbl_8041F0F8@sda21(r2)
/* 801C00B0 001BD0B0  3B C4 A7 84 */	addi r30, r4, lbl_802FA784@l
/* 801C00B4 001BD0B4  CB E3 A7 90 */	lfd f31, lbl_802FA790@l(r3)
/* 801C00B8 001BD0B8  3B 60 00 00 */	li r27, 0
/* 801C00BC 001BD0BC  3B E0 00 00 */	li r31, 0
/* 801C00C0 001BD0C0  3F A0 43 30 */	lis r29, 0x4330
.L_801C00C4:
/* 801C00C4 001BD0C4  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 801C00C8 001BD0C8  80 DE 00 00 */	lwz r6, 0(r30)
/* 801C00CC 001BD0CC  90 01 01 44 */	stw r0, 0x144(r1)
/* 801C00D0 001BD0D0  38 61 00 44 */	addi r3, r1, 0x44
/* 801C00D4 001BD0D4  80 BE 00 04 */	lwz r5, 4(r30)
/* 801C00D8 001BD0D8  38 81 00 18 */	addi r4, r1, 0x18
/* 801C00DC 001BD0DC  93 A1 01 40 */	stw r29, 0x140(r1)
/* 801C00E0 001BD0E0  80 1E 00 08 */	lwz r0, 8(r30)
/* 801C00E4 001BD0E4  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 801C00E8 001BD0E8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801C00EC 001BD0EC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801C00F0 001BD0F0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801C00F4 001BD0F4  EC 3E 00 32 */	fmuls f1, f30, f0
/* 801C00F8 001BD0F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C00FC 001BD0FC  48 0D 82 C1 */	bl func_802983BC
/* 801C0100 001BD100  38 81 00 44 */	addi r4, r1, 0x44
/* 801C0104 001BD104  38 61 00 74 */	addi r3, r1, 0x74
/* 801C0108 001BD108  7C 85 23 78 */	mr r5, r4
/* 801C010C 001BD10C  48 0D 7E 55 */	bl PSMTXConcat
/* 801C0110 001BD110  7F 83 E3 78 */	mr r3, r28
/* 801C0114 001BD114  38 81 00 44 */	addi r4, r1, 0x44
/* 801C0118 001BD118  4B FF F9 D5 */	bl main_dl_DUPE_801bfaec
/* 801C011C 001BD11C  3B 7B 00 01 */	addi r27, r27, 1
/* 801C0120 001BD120  3B FF 00 78 */	addi r31, r31, 0x78
/* 801C0124 001BD124  2C 1B 00 03 */	cmpwi r27, 3
/* 801C0128 001BD128  41 80 FF 9C */	blt .L_801C00C4
.L_801C012C:
/* 801C012C 001BD12C  E3 E1 01 88 */	psq_l f31, 392(r1), 0, qr0
/* 801C0130 001BD130  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 801C0134 001BD134  E3 C1 01 78 */	psq_l f30, 376(r1), 0, qr0
/* 801C0138 001BD138  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 801C013C 001BD13C  BA E1 01 4C */	lmw r23, 0x14c(r1)
/* 801C0140 001BD140  80 01 01 94 */	lwz r0, 0x194(r1)
/* 801C0144 001BD144  7C 08 03 A6 */	mtlr r0
/* 801C0148 001BD148  38 21 01 90 */	addi r1, r1, 0x190
/* 801C014C 001BD14C  4E 80 00 20 */	blr 
effHitMain:
/* 801C0150 001BD150  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C0154 001BD154  7C 08 02 A6 */	mflr r0
/* 801C0158 001BD158  3C 80 80 30 */	lis r4, lbl_802FA778@ha
/* 801C015C 001BD15C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C0160 001BD160  38 E4 A7 78 */	addi r7, r4, lbl_802FA778@l
/* 801C0164 001BD164  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C0168 001BD168  7C 7F 1B 78 */	mr r31, r3
/* 801C016C 001BD16C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 801C0170 001BD170  80 C7 00 00 */	lwz r6, 0(r7)
/* 801C0174 001BD174  80 A7 00 04 */	lwz r5, 4(r7)
/* 801C0178 001BD178  80 07 00 08 */	lwz r0, 8(r7)
/* 801C017C 001BD17C  90 C1 00 08 */	stw r6, 8(r1)
/* 801C0180 001BD180  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C0184 001BD184  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801C0188 001BD188  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C018C 001BD18C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C0190 001BD190  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801C0194 001BD194  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C0198 001BD198  80 C1 00 08 */	lwz r6, 8(r1)
/* 801C019C 001BD19C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801C01A0 001BD1A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C01A4 001BD1A4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 801C01A8 001BD1A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C01AC 001BD1AC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801C01B0 001BD1B0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801C01B4 001BD1B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C01B8 001BD1B8  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 801C01BC 001BD1BC  81 44 00 00 */	lwz r10, 0(r4)
/* 801C01C0 001BD1C0  38 05 FF FF */	addi r0, r5, -1
/* 801C01C4 001BD1C4  90 04 00 30 */	stw r0, 0x30(r4)
/* 801C01C8 001BD1C8  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 801C01CC 001BD1CC  38 05 00 01 */	addi r0, r5, 1
/* 801C01D0 001BD1D0  90 04 00 34 */	stw r0, 0x34(r4)
/* 801C01D4 001BD1D4  80 04 00 30 */	lwz r0, 0x30(r4)
/* 801C01D8 001BD1D8  2C 00 00 00 */	cmpwi r0, 0
/* 801C01DC 001BD1DC  40 80 00 0C */	bge .L_801C01E8
/* 801C01E0 001BD1E0  4B E9 D9 A5 */	bl effDelete
/* 801C01E4 001BD1E4  48 00 00 E0 */	b .L_801C02C4
.L_801C01E8:
/* 801C01E8 001BD1E8  38 ED C7 68 */	addi r7, r13, lbl_804139C8@sda21
/* 801C01EC 001BD1EC  81 24 00 34 */	lwz r9, 0x34(r4)
/* 801C01F0 001BD1F0  7C 07 50 AE */	lbzx r0, r7, r10
/* 801C01F4 001BD1F4  7C 09 00 00 */	cmpw r9, r0
/* 801C01F8 001BD1F8  41 81 00 3C */	bgt .L_801C0234
/* 801C01FC 001BD1FC  38 6D C7 6C */	addi r3, r13, lbl_804139CC@sda21
/* 801C0200 001BD200  3C 00 43 30 */	lis r0, 0x4330
/* 801C0204 001BD204  7C A3 4A 14 */	add r5, r3, r9
/* 801C0208 001BD208  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C020C 001BD20C  88 A5 FF FF */	lbz r5, -1(r5)
/* 801C0210 001BD210  3C 60 80 30 */	lis r3, lbl_802FA798@ha
/* 801C0214 001BD214  C8 43 A7 98 */	lfd f2, lbl_802FA798@l(r3)
/* 801C0218 001BD218  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801C021C 001BD21C  C0 02 DD 80 */	lfs f0, lbl_8041F100@sda21(r2)
/* 801C0220 001BD220  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 801C0224 001BD224  EC 21 10 28 */	fsubs f1, f1, f2
/* 801C0228 001BD228  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C022C 001BD22C  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 801C0230 001BD230  48 00 00 0C */	b .L_801C023C
.L_801C0234:
/* 801C0234 001BD234  C0 02 DD 84 */	lfs f0, lbl_8041F104@sda21(r2)
/* 801C0238 001BD238  D0 04 00 38 */	stfs f0, 0x38(r4)
.L_801C023C:
/* 801C023C 001BD23C  3C 60 80 30 */	lis r3, lbl_802FA798@ha
/* 801C0240 001BD240  C0 02 DD 70 */	lfs f0, lbl_8041F0F0@sda21(r2)
/* 801C0244 001BD244  C8 43 A7 98 */	lfd f2, lbl_802FA798@l(r3)
/* 801C0248 001BD248  39 00 00 01 */	li r8, 1
/* 801C024C 001BD24C  38 AD C7 7C */	addi r5, r13, lbl_804139DC@sda21
/* 801C0250 001BD250  3C 60 43 30 */	lis r3, 0x4330
/* 801C0254 001BD254  38 84 00 44 */	addi r4, r4, 0x44
/* 801C0258 001BD258  48 00 00 40 */	b .L_801C0298
.L_801C025C:
/* 801C025C 001BD25C  7C 07 50 AE */	lbzx r0, r7, r10
/* 801C0260 001BD260  38 C0 00 0C */	li r6, 0xc
/* 801C0264 001BD264  7C 09 00 00 */	cmpw r9, r0
/* 801C0268 001BD268  41 81 00 08 */	bgt .L_801C0270
/* 801C026C 001BD26C  38 C9 FF FF */	addi r6, r9, -1
.L_801C0270:
/* 801C0270 001BD270  7C 05 30 AE */	lbzx r0, r5, r6
/* 801C0274 001BD274  39 08 00 01 */	addi r8, r8, 1
/* 801C0278 001BD278  90 61 00 20 */	stw r3, 0x20(r1)
/* 801C027C 001BD27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0280 001BD280  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 801C0284 001BD284  EC 21 10 28 */	fsubs f1, f1, f2
/* 801C0288 001BD288  D0 24 00 04 */	stfs f1, 4(r4)
/* 801C028C 001BD28C  D0 04 00 08 */	stfs f0, 8(r4)
/* 801C0290 001BD290  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 801C0294 001BD294  38 84 00 44 */	addi r4, r4, 0x44
.L_801C0298:
/* 801C0298 001BD298  80 1F 00 08 */	lwz r0, 8(r31)
/* 801C029C 001BD29C  7C 08 00 00 */	cmpw r8, r0
/* 801C02A0 001BD2A0  41 80 FF BC */	blt .L_801C025C
/* 801C02A4 001BD2A4  38 61 00 14 */	addi r3, r1, 0x14
/* 801C02A8 001BD2A8  4B E5 04 19 */	bl dispCalcZ
/* 801C02AC 001BD2AC  3C 60 80 1C */	lis r3, effHitDisp@ha
/* 801C02B0 001BD2B0  7F E6 FB 78 */	mr r6, r31
/* 801C02B4 001BD2B4  38 A3 FD 00 */	addi r5, r3, effHitDisp@l
/* 801C02B8 001BD2B8  38 80 00 02 */	li r4, 2
/* 801C02BC 001BD2BC  38 60 00 04 */	li r3, 4
/* 801C02C0 001BD2C0  4B E5 07 59 */	bl dispEntry
.L_801C02C4:
/* 801C02C4 001BD2C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C02C8 001BD2C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C02CC 001BD2CC  7C 08 03 A6 */	mtlr r0
/* 801C02D0 001BD2D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801C02D4 001BD2D4  4E 80 00 20 */	blr 

.global effHitN64Entry
effHitN64Entry:
/* 801C02D8 001BD2D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C02DC 001BD2DC  7C 08 02 A6 */	mflr r0
/* 801C02E0 001BD2E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C02E4 001BD2E4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801C02E8 001BD2E8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801C02EC 001BD2EC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801C02F0 001BD2F0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801C02F4 001BD2F4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801C02F8 001BD2F8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801C02FC 001BD2FC  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801C0300 001BD300  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 801C0304 001BD304  BF 01 00 20 */	stmw r24, 0x20(r1)
/* 801C0308 001BD308  FF 80 08 90 */	fmr f28, f1
/* 801C030C 001BD30C  7C 7B 1B 78 */	mr r27, r3
/* 801C0310 001BD310  FF A0 10 90 */	fmr f29, f2
/* 801C0314 001BD314  7C 98 23 78 */	mr r24, r4
/* 801C0318 001BD318  FF E0 18 90 */	fmr f31, f3
/* 801C031C 001BD31C  FF C0 20 90 */	fmr f30, f4
/* 801C0320 001BD320  4B E9 DA 9D */	bl effEntry
/* 801C0324 001BD324  1C D8 00 05 */	mulli r6, r24, 5
/* 801C0328 001BD328  3C A0 55 55 */	lis r5, 0x55555556@ha
/* 801C032C 001BD32C  3C 80 80 30 */	lis r4, lbl_802FA7A0@ha
/* 801C0330 001BD330  38 A5 55 56 */	addi r5, r5, 0x55555556@l
/* 801C0334 001BD334  38 06 00 14 */	addi r0, r6, 0x14
/* 801C0338 001BD338  7C 7D 1B 78 */	mr r29, r3
/* 801C033C 001BD33C  7C A5 00 96 */	mulhw r5, r5, r0
/* 801C0340 001BD340  38 04 A7 A0 */	addi r0, r4, lbl_802FA7A0@l
/* 801C0344 001BD344  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C0348 001BD348  38 60 00 03 */	li r3, 3
/* 801C034C 001BD34C  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 801C0350 001BD350  7C 85 02 14 */	add r4, r5, r0
/* 801C0354 001BD354  3B 44 00 01 */	addi r26, r4, 1
/* 801C0358 001BD358  1C 9A 00 44 */	mulli r4, r26, 0x44
/* 801C035C 001BD35C  93 5D 00 08 */	stw r26, 8(r29)
/* 801C0360 001BD360  4B E6 F7 2D */	bl __memAlloc
/* 801C0364 001BD364  3C 80 80 1C */	lis r4, effHitMain@ha
/* 801C0368 001BD368  90 7D 00 0C */	stw r3, 0xc(r29)
/* 801C036C 001BD36C  38 04 01 50 */	addi r0, r4, effHitMain@l
/* 801C0370 001BD370  38 8D C7 68 */	addi r4, r13, lbl_804139C8@sda21
/* 801C0374 001BD374  90 1D 00 10 */	stw r0, 0x10(r29)
/* 801C0378 001BD378  38 C0 00 00 */	li r6, 0
/* 801C037C 001BD37C  C0 02 DD 70 */	lfs f0, lbl_8041F0F0@sda21(r2)
/* 801C0380 001BD380  2C 1B 00 02 */	cmpwi r27, 2
/* 801C0384 001BD384  93 63 00 00 */	stw r27, 0(r3)
/* 801C0388 001BD388  D3 83 00 04 */	stfs f28, 4(r3)
/* 801C038C 001BD38C  D3 A3 00 08 */	stfs f29, 8(r3)
/* 801C0390 001BD390  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 801C0394 001BD394  7C 04 D8 AE */	lbzx r0, r4, r27
/* 801C0398 001BD398  90 03 00 30 */	stw r0, 0x30(r3)
/* 801C039C 001BD39C  90 C3 00 34 */	stw r6, 0x34(r3)
/* 801C03A0 001BD3A0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 801C03A4 001BD3A4  41 82 00 5C */	beq .L_801C0400
/* 801C03A8 001BD3A8  40 80 00 80 */	bge .L_801C0428
/* 801C03AC 001BD3AC  2C 1B 00 00 */	cmpwi r27, 0
/* 801C03B0 001BD3B0  41 82 00 10 */	beq .L_801C03C0
/* 801C03B4 001BD3B4  40 80 00 2C */	bge .L_801C03E0
/* 801C03B8 001BD3B8  48 00 00 70 */	b .L_801C0428
/* 801C03BC 001BD3BC  48 00 00 6C */	b .L_801C0428
.L_801C03C0:
/* 801C03C0 001BD3C0  38 00 00 FF */	li r0, 0xff
/* 801C03C4 001BD3C4  98 03 00 3C */	stb r0, 0x3c(r3)
/* 801C03C8 001BD3C8  98 03 00 3D */	stb r0, 0x3d(r3)
/* 801C03CC 001BD3CC  98 03 00 3E */	stb r0, 0x3e(r3)
/* 801C03D0 001BD3D0  98 03 00 3F */	stb r0, 0x3f(r3)
/* 801C03D4 001BD3D4  98 03 00 40 */	stb r0, 0x40(r3)
/* 801C03D8 001BD3D8  98 03 00 41 */	stb r0, 0x41(r3)
/* 801C03DC 001BD3DC  48 00 00 70 */	b .L_801C044C
.L_801C03E0:
/* 801C03E0 001BD3E0  38 00 00 FF */	li r0, 0xff
/* 801C03E4 001BD3E4  98 03 00 3C */	stb r0, 0x3c(r3)
/* 801C03E8 001BD3E8  98 03 00 3D */	stb r0, 0x3d(r3)
/* 801C03EC 001BD3EC  98 C3 00 3E */	stb r6, 0x3e(r3)
/* 801C03F0 001BD3F0  98 03 00 3F */	stb r0, 0x3f(r3)
/* 801C03F4 001BD3F4  98 C3 00 40 */	stb r6, 0x40(r3)
/* 801C03F8 001BD3F8  98 C3 00 41 */	stb r6, 0x41(r3)
/* 801C03FC 001BD3FC  48 00 00 50 */	b .L_801C044C
.L_801C0400:
/* 801C0400 001BD400  38 A0 00 FF */	li r5, 0xff
/* 801C0404 001BD404  38 80 00 C8 */	li r4, 0xc8
/* 801C0408 001BD408  98 A3 00 3C */	stb r5, 0x3c(r3)
/* 801C040C 001BD40C  38 00 00 E6 */	li r0, 0xe6
/* 801C0410 001BD410  98 A3 00 3D */	stb r5, 0x3d(r3)
/* 801C0414 001BD414  98 C3 00 3E */	stb r6, 0x3e(r3)
/* 801C0418 001BD418  98 83 00 3F */	stb r4, 0x3f(r3)
/* 801C041C 001BD41C  98 A3 00 40 */	stb r5, 0x40(r3)
/* 801C0420 001BD420  98 03 00 41 */	stb r0, 0x41(r3)
/* 801C0424 001BD424  48 00 00 28 */	b .L_801C044C
.L_801C0428:
/* 801C0428 001BD428  38 A0 00 00 */	li r5, 0
/* 801C042C 001BD42C  38 80 00 FF */	li r4, 0xff
/* 801C0430 001BD430  98 A3 00 3C */	stb r5, 0x3c(r3)
/* 801C0434 001BD434  38 00 00 E6 */	li r0, 0xe6
/* 801C0438 001BD438  98 83 00 3D */	stb r4, 0x3d(r3)
/* 801C043C 001BD43C  98 83 00 3E */	stb r4, 0x3e(r3)
/* 801C0440 001BD440  98 A3 00 3F */	stb r5, 0x3f(r3)
/* 801C0444 001BD444  98 A3 00 40 */	stb r5, 0x40(r3)
/* 801C0448 001BD448  98 03 00 41 */	stb r0, 0x41(r3)
.L_801C044C:
/* 801C044C 001BD44C  3C 80 80 30 */	lis r4, lbl_802FA790@ha
/* 801C0450 001BD450  3C A0 B6 0B */	lis r5, 0xB60B60B7@ha
/* 801C0454 001BD454  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 801C0458 001BD458  3B 83 00 44 */	addi r28, r3, 0x44
/* 801C045C 001BD45C  CB C4 A7 90 */	lfd f30, lbl_802FA790@l(r4)
/* 801C0460 001BD460  3B E5 60 B7 */	addi r31, r5, 0xB60B60B7@l
/* 801C0464 001BD464  C3 E2 DD 70 */	lfs f31, lbl_8041F0F0@sda21(r2)
/* 801C0468 001BD468  3B 3A FF FF */	addi r25, r26, -1
/* 801C046C 001BD46C  3B 60 00 01 */	li r27, 1
/* 801C0470 001BD470  3B C0 01 68 */	li r30, 0x168
/* 801C0474 001BD474  3F 00 43 30 */	lis r24, 0x4330
/* 801C0478 001BD478  48 00 00 90 */	b .L_801C0508
.L_801C047C:
/* 801C047C 001BD47C  48 0A 5E F9 */	bl rand
/* 801C0480 001BD480  7C 9E CB D6 */	divw r4, r30, r25
/* 801C0484 001BD484  D3 FC 00 04 */	stfs f31, 4(r28)
/* 801C0488 001BD488  38 A0 00 00 */	li r5, 0
/* 801C048C 001BD48C  D3 FC 00 08 */	stfs f31, 8(r28)
/* 801C0490 001BD490  38 00 00 FF */	li r0, 0xff
/* 801C0494 001BD494  3B DE 01 68 */	addi r30, r30, 0x168
/* 801C0498 001BD498  7C DF 18 96 */	mulhw r6, r31, r3
/* 801C049C 001BD49C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801C04A0 001BD4A0  D3 FC 00 0C */	stfs f31, 0xc(r28)
/* 801C04A4 001BD4A4  3B 7B 00 01 */	addi r27, r27, 1
/* 801C04A8 001BD4A8  D3 FC 00 10 */	stfs f31, 0x10(r28)
/* 801C04AC 001BD4AC  7C C6 1A 14 */	add r6, r6, r3
/* 801C04B0 001BD4B0  7C C6 46 70 */	srawi r6, r6, 8
/* 801C04B4 001BD4B4  D3 FC 00 14 */	stfs f31, 0x14(r28)
/* 801C04B8 001BD4B8  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 801C04BC 001BD4BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 801C04C0 001BD4C0  7C 86 3A 14 */	add r4, r6, r7
/* 801C04C4 001BD4C4  1C 84 01 68 */	mulli r4, r4, 0x168
/* 801C04C8 001BD4C8  93 01 00 10 */	stw r24, 0x10(r1)
/* 801C04CC 001BD4CC  7C 64 18 50 */	subf r3, r4, r3
/* 801C04D0 001BD4D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C04D4 001BD4D4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801C04D8 001BD4D8  D3 FC 00 20 */	stfs f31, 0x20(r28)
/* 801C04DC 001BD4DC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801C04E0 001BD4E0  90 BC 00 00 */	stw r5, 0(r28)
/* 801C04E4 001BD4E4  93 01 00 08 */	stw r24, 8(r1)
/* 801C04E8 001BD4E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801C04EC 001BD4EC  C8 21 00 08 */	lfd f1, 8(r1)
/* 801C04F0 001BD4F0  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 801C04F4 001BD4F4  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801C04F8 001BD4F8  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 801C04FC 001BD4FC  D3 FC 00 10 */	stfs f31, 0x10(r28)
/* 801C0500 001BD500  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 801C0504 001BD504  3B 9C 00 44 */	addi r28, r28, 0x44
.L_801C0508:
/* 801C0508 001BD508  7C 1B D0 00 */	cmpw r27, r26
/* 801C050C 001BD50C  41 80 FF 70 */	blt .L_801C047C
/* 801C0510 001BD510  7F A3 EB 78 */	mr r3, r29
/* 801C0514 001BD514  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801C0518 001BD518  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801C051C 001BD51C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801C0520 001BD520  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801C0524 001BD524  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801C0528 001BD528  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801C052C 001BD52C  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 801C0530 001BD530  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801C0534 001BD534  BB 01 00 20 */	lmw r24, 0x20(r1)
/* 801C0538 001BD538  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C053C 001BD53C  7C 08 03 A6 */	mtlr r0
/* 801C0540 001BD540  38 21 00 80 */	addi r1, r1, 0x80
/* 801C0544 001BD544  4E 80 00 20 */	blr 
