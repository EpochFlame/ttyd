.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effKemuri12Disp
effKemuri12Disp:
/* 801CA9A0 001C79A0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801CA9A4 001C79A4  7C 08 02 A6 */	mflr r0
/* 801CA9A8 001C79A8  90 01 01 04 */	stw r0, 0x104(r1)
/* 801CA9AC 001C79AC  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 801CA9B0 001C79B0  7C 9A 23 78 */	mr r26, r4
/* 801CA9B4 001C79B4  4B E4 47 9D */	bl camGetPtr
/* 801CA9B8 001C79B8  83 9A 00 0C */	lwz r28, 0xc(r26)
/* 801CA9BC 001C79BC  3C 80 80 30 */	lis r4, lbl_802FAA38@ha
/* 801CA9C0 001C79C0  3C 00 43 30 */	lis r0, 0x4330
/* 801CA9C4 001C79C4  7C 7E 1B 78 */	mr r30, r3
/* 801CA9C8 001C79C8  C0 7C 00 20 */	lfs f3, 0x20(r28)
/* 801CA9CC 001C79CC  38 60 00 00 */	li r3, 0
/* 801CA9D0 001C79D0  C8 24 AA 38 */	lfd f1, lbl_802FAA38@l(r4)
/* 801CA9D4 001C79D4  FC 00 18 1E */	fctiwz f0, f3
/* 801CA9D8 001C79D8  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801CA9DC 001C79DC  C0 42 E1 C8 */	lfs f2, lbl_8041F548@sda21(r2)
/* 801CA9E0 001C79E0  A3 FC 00 00 */	lhz r31, 0(r28)
/* 801CA9E4 001C79E4  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 801CA9E8 001C79E8  83 61 00 CC */	lwz r27, 0xcc(r1)
/* 801CA9EC 001C79EC  6F 64 80 00 */	xoris r4, r27, 0x8000
/* 801CA9F0 001C79F0  20 1B 00 07 */	subfic r0, r27, 7
/* 801CA9F4 001C79F4  90 81 00 D4 */	stw r4, 0xd4(r1)
/* 801CA9F8 001C79F8  7C 00 00 34 */	cntlzw r0, r0
/* 801CA9FC 001C79FC  54 1D D9 7E */	srwi r29, r0, 5
/* 801CAA00 001C7A00  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801CAA04 001C7A04  EC 00 08 28 */	fsubs f0, f0, f1
/* 801CAA08 001C7A08  EC 03 00 28 */	fsubs f0, f3, f0
/* 801CAA0C 001C7A0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801CAA10 001C7A10  FC 00 00 1E */	fctiwz f0, f0
/* 801CAA14 001C7A14  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 801CAA18 001C7A18  83 41 00 DC */	lwz r26, 0xdc(r1)
/* 801CAA1C 001C7A1C  48 0E 67 1D */	bl GXSetNumChans
/* 801CAA20 001C7A20  38 60 00 03 */	li r3, 3
/* 801CAA24 001C7A24  48 0E 87 A5 */	bl GXSetNumTevStages
/* 801CAA28 001C7A28  38 60 00 00 */	li r3, 0
/* 801CAA2C 001C7A2C  38 80 00 00 */	li r4, 0
/* 801CAA30 001C7A30  38 A0 00 00 */	li r5, 0
/* 801CAA34 001C7A34  38 C0 00 FF */	li r6, 0xff
/* 801CAA38 001C7A38  48 0E 85 F5 */	bl GXSetTevOrder
/* 801CAA3C 001C7A3C  38 60 00 00 */	li r3, 0
/* 801CAA40 001C7A40  38 80 00 00 */	li r4, 0
/* 801CAA44 001C7A44  38 A0 00 00 */	li r5, 0
/* 801CAA48 001C7A48  38 C0 00 00 */	li r6, 0
/* 801CAA4C 001C7A4C  38 E0 00 01 */	li r7, 1
/* 801CAA50 001C7A50  39 00 00 00 */	li r8, 0
/* 801CAA54 001C7A54  48 0E 81 91 */	bl GXSetTevColorOp
/* 801CAA58 001C7A58  38 60 00 00 */	li r3, 0
/* 801CAA5C 001C7A5C  38 80 00 00 */	li r4, 0
/* 801CAA60 001C7A60  38 A0 00 00 */	li r5, 0
/* 801CAA64 001C7A64  38 C0 00 00 */	li r6, 0
/* 801CAA68 001C7A68  38 E0 00 01 */	li r7, 1
/* 801CAA6C 001C7A6C  39 00 00 00 */	li r8, 0
/* 801CAA70 001C7A70  48 0E 81 DD */	bl GXSetTevAlphaOp
/* 801CAA74 001C7A74  38 60 00 00 */	li r3, 0
/* 801CAA78 001C7A78  38 80 00 0F */	li r4, 0xf
/* 801CAA7C 001C7A7C  38 A0 00 0F */	li r5, 0xf
/* 801CAA80 001C7A80  38 C0 00 0F */	li r6, 0xf
/* 801CAA84 001C7A84  38 E0 00 02 */	li r7, 2
/* 801CAA88 001C7A88  48 0E 80 D5 */	bl GXSetTevColorIn
/* 801CAA8C 001C7A8C  38 60 00 00 */	li r3, 0
/* 801CAA90 001C7A90  38 80 00 07 */	li r4, 7
/* 801CAA94 001C7A94  38 A0 00 07 */	li r5, 7
/* 801CAA98 001C7A98  38 C0 00 07 */	li r6, 7
/* 801CAA9C 001C7A9C  38 E0 00 04 */	li r7, 4
/* 801CAAA0 001C7AA0  48 0E 81 01 */	bl GXSetTevAlphaIn
/* 801CAAA4 001C7AA4  38 60 00 01 */	li r3, 1
/* 801CAAA8 001C7AA8  38 80 00 01 */	li r4, 1
/* 801CAAAC 001C7AAC  38 A0 00 01 */	li r5, 1
/* 801CAAB0 001C7AB0  38 C0 00 FF */	li r6, 0xff
/* 801CAAB4 001C7AB4  48 0E 85 79 */	bl GXSetTevOrder
/* 801CAAB8 001C7AB8  38 60 00 01 */	li r3, 1
/* 801CAABC 001C7ABC  38 80 00 00 */	li r4, 0
/* 801CAAC0 001C7AC0  38 A0 00 00 */	li r5, 0
/* 801CAAC4 001C7AC4  38 C0 00 00 */	li r6, 0
/* 801CAAC8 001C7AC8  38 E0 00 01 */	li r7, 1
/* 801CAACC 001C7ACC  39 00 00 00 */	li r8, 0
/* 801CAAD0 001C7AD0  48 0E 81 15 */	bl GXSetTevColorOp
/* 801CAAD4 001C7AD4  38 60 00 01 */	li r3, 1
/* 801CAAD8 001C7AD8  38 80 00 00 */	li r4, 0
/* 801CAADC 001C7ADC  38 A0 00 00 */	li r5, 0
/* 801CAAE0 001C7AE0  38 C0 00 00 */	li r6, 0
/* 801CAAE4 001C7AE4  38 E0 00 01 */	li r7, 1
/* 801CAAE8 001C7AE8  39 00 00 00 */	li r8, 0
/* 801CAAEC 001C7AEC  48 0E 81 61 */	bl GXSetTevAlphaOp
/* 801CAAF0 001C7AF0  38 60 00 01 */	li r3, 1
/* 801CAAF4 001C7AF4  38 80 00 0F */	li r4, 0xf
/* 801CAAF8 001C7AF8  38 A0 00 0F */	li r5, 0xf
/* 801CAAFC 001C7AFC  38 C0 00 0F */	li r6, 0xf
/* 801CAB00 001C7B00  38 E0 00 00 */	li r7, 0
/* 801CAB04 001C7B04  48 0E 80 59 */	bl GXSetTevColorIn
/* 801CAB08 001C7B08  38 60 00 01 */	li r3, 1
/* 801CAB0C 001C7B0C  38 80 00 00 */	li r4, 0
/* 801CAB10 001C7B10  38 A0 00 04 */	li r5, 4
/* 801CAB14 001C7B14  38 C0 00 02 */	li r6, 2
/* 801CAB18 001C7B18  38 E0 00 07 */	li r7, 7
/* 801CAB1C 001C7B1C  48 0E 80 85 */	bl GXSetTevAlphaIn
/* 801CAB20 001C7B20  38 60 00 02 */	li r3, 2
/* 801CAB24 001C7B24  38 80 00 FF */	li r4, 0xff
/* 801CAB28 001C7B28  38 A0 00 FF */	li r5, 0xff
/* 801CAB2C 001C7B2C  38 C0 00 FF */	li r6, 0xff
/* 801CAB30 001C7B30  48 0E 84 FD */	bl GXSetTevOrder
/* 801CAB34 001C7B34  38 60 00 02 */	li r3, 2
/* 801CAB38 001C7B38  38 80 00 00 */	li r4, 0
/* 801CAB3C 001C7B3C  38 A0 00 00 */	li r5, 0
/* 801CAB40 001C7B40  38 C0 00 00 */	li r6, 0
/* 801CAB44 001C7B44  38 E0 00 01 */	li r7, 1
/* 801CAB48 001C7B48  39 00 00 00 */	li r8, 0
/* 801CAB4C 001C7B4C  48 0E 80 99 */	bl GXSetTevColorOp
/* 801CAB50 001C7B50  38 60 00 02 */	li r3, 2
/* 801CAB54 001C7B54  38 80 00 00 */	li r4, 0
/* 801CAB58 001C7B58  38 A0 00 00 */	li r5, 0
/* 801CAB5C 001C7B5C  38 C0 00 00 */	li r6, 0
/* 801CAB60 001C7B60  38 E0 00 01 */	li r7, 1
/* 801CAB64 001C7B64  39 00 00 00 */	li r8, 0
/* 801CAB68 001C7B68  48 0E 80 E5 */	bl GXSetTevAlphaOp
/* 801CAB6C 001C7B6C  38 60 00 02 */	li r3, 2
/* 801CAB70 001C7B70  38 80 00 0F */	li r4, 0xf
/* 801CAB74 001C7B74  38 A0 00 0F */	li r5, 0xf
/* 801CAB78 001C7B78  38 C0 00 0F */	li r6, 0xf
/* 801CAB7C 001C7B7C  38 E0 00 00 */	li r7, 0
/* 801CAB80 001C7B80  48 0E 7F DD */	bl GXSetTevColorIn
/* 801CAB84 001C7B84  38 60 00 02 */	li r3, 2
/* 801CAB88 001C7B88  38 80 00 07 */	li r4, 7
/* 801CAB8C 001C7B8C  38 A0 00 00 */	li r5, 0
/* 801CAB90 001C7B90  38 C0 00 01 */	li r6, 1
/* 801CAB94 001C7B94  38 E0 00 07 */	li r7, 7
/* 801CAB98 001C7B98  48 0E 80 09 */	bl GXSetTevAlphaIn
/* 801CAB9C 001C7B9C  38 81 00 18 */	addi r4, r1, 0x18
/* 801CABA0 001C7BA0  38 60 00 0E */	li r3, 0xe
/* 801CABA4 001C7BA4  48 00 6C A1 */	bl effGetTexObjN64
/* 801CABA8 001C7BA8  38 61 00 18 */	addi r3, r1, 0x18
/* 801CABAC 001C7BAC  38 80 00 00 */	li r4, 0
/* 801CABB0 001C7BB0  48 0E 6E CD */	bl GXLoadTexObj
/* 801CABB4 001C7BB4  38 61 00 18 */	addi r3, r1, 0x18
/* 801CABB8 001C7BB8  38 80 00 01 */	li r4, 1
/* 801CABBC 001C7BBC  48 0E 6E C1 */	bl GXLoadTexObj
/* 801CABC0 001C7BC0  C0 3C 00 04 */	lfs f1, 4(r28)
/* 801CABC4 001C7BC4  38 61 00 98 */	addi r3, r1, 0x98
/* 801CABC8 001C7BC8  C0 5C 00 08 */	lfs f2, 8(r28)
/* 801CABCC 001C7BCC  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 801CABD0 001C7BD0  48 0C D8 5D */	bl PSMTXTrans
/* 801CABD4 001C7BD4  38 60 00 04 */	li r3, 4
/* 801CABD8 001C7BD8  4B E4 45 79 */	bl camGetPtr
/* 801CABDC 001C7BDC  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801CABE0 001C7BE0  38 61 00 38 */	addi r3, r1, 0x38
/* 801CABE4 001C7BE4  C0 02 E1 CC */	lfs f0, lbl_8041F54C@sda21(r2)
/* 801CABE8 001C7BE8  38 80 00 79 */	li r4, 0x79
/* 801CABEC 001C7BEC  FC 20 08 50 */	fneg f1, f1
/* 801CABF0 001C7BF0  EC 20 00 72 */	fmuls f1, f0, f1
/* 801CABF4 001C7BF4  48 0C D5 F9 */	bl PSMTXRotRad
/* 801CABF8 001C7BF8  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 801CABFC 001C7BFC  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAC00 001C7C00  FC 40 08 90 */	fmr f2, f1
/* 801CAC04 001C7C04  FC 60 08 90 */	fmr f3, f1
/* 801CAC08 001C7C08  48 0C D8 A5 */	bl PSMTXScale
/* 801CAC0C 001C7C0C  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAC10 001C7C10  38 81 00 38 */	addi r4, r1, 0x38
/* 801CAC14 001C7C14  7C 65 1B 78 */	mr r5, r3
/* 801CAC18 001C7C18  48 0C D3 49 */	bl PSMTXConcat
/* 801CAC1C 001C7C1C  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAC20 001C7C20  38 81 00 68 */	addi r4, r1, 0x68
/* 801CAC24 001C7C24  7C 65 1B 78 */	mr r5, r3
/* 801CAC28 001C7C28  48 0C D3 39 */	bl PSMTXConcat
/* 801CAC2C 001C7C2C  C0 22 E1 D0 */	lfs f1, lbl_8041F550@sda21(r2)
/* 801CAC30 001C7C30  38 61 00 38 */	addi r3, r1, 0x38
/* 801CAC34 001C7C34  38 80 00 7A */	li r4, 0x7a
/* 801CAC38 001C7C38  48 0C D5 B5 */	bl PSMTXRotRad
/* 801CAC3C 001C7C3C  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAC40 001C7C40  38 81 00 38 */	addi r4, r1, 0x38
/* 801CAC44 001C7C44  7C 65 1B 78 */	mr r5, r3
/* 801CAC48 001C7C48  48 0C D3 19 */	bl PSMTXConcat
/* 801CAC4C 001C7C4C  38 81 00 98 */	addi r4, r1, 0x98
/* 801CAC50 001C7C50  38 7E 01 1C */	addi r3, r30, 0x11c
/* 801CAC54 001C7C54  7C 85 23 78 */	mr r5, r4
/* 801CAC58 001C7C58  48 0C D3 09 */	bl PSMTXConcat
/* 801CAC5C 001C7C5C  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAC60 001C7C60  38 80 00 00 */	li r4, 0
/* 801CAC64 001C7C64  48 0E 98 95 */	bl GXLoadPosMtxImm
/* 801CAC68 001C7C68  38 60 00 00 */	li r3, 0
/* 801CAC6C 001C7C6C  48 0E 99 2D */	bl GXSetCurrentMtx
/* 801CAC70 001C7C70  80 02 1E 10 */	lwz r0, lbl_80423190@sda21(r2)
/* 801CAC74 001C7C74  38 81 00 14 */	addi r4, r1, 0x14
/* 801CAC78 001C7C78  88 FC 00 24 */	lbz r7, 0x24(r28)
/* 801CAC7C 001C7C7C  38 60 00 01 */	li r3, 1
/* 801CAC80 001C7C80  90 01 00 10 */	stw r0, 0x10(r1)
/* 801CAC84 001C7C84  88 DC 00 25 */	lbz r6, 0x25(r28)
/* 801CAC88 001C7C88  88 BC 00 26 */	lbz r5, 0x26(r28)
/* 801CAC8C 001C7C8C  88 1C 00 27 */	lbz r0, 0x27(r28)
/* 801CAC90 001C7C90  98 E1 00 10 */	stb r7, 0x10(r1)
/* 801CAC94 001C7C94  98 C1 00 11 */	stb r6, 0x11(r1)
/* 801CAC98 001C7C98  98 A1 00 12 */	stb r5, 0x12(r1)
/* 801CAC9C 001C7C9C  98 01 00 13 */	stb r0, 0x13(r1)
/* 801CACA0 001C7CA0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801CACA4 001C7CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CACA8 001C7CA8  48 0E 80 0D */	bl GXSetTevColor
/* 801CACAC 001C7CAC  80 02 1E 14 */	lwz r0, lbl_80423194@sda21(r2)
/* 801CACB0 001C7CB0  38 81 00 0C */	addi r4, r1, 0xc
/* 801CACB4 001C7CB4  38 60 00 02 */	li r3, 2
/* 801CACB8 001C7CB8  90 01 00 08 */	stw r0, 8(r1)
/* 801CACBC 001C7CBC  9B 41 00 0B */	stb r26, 0xb(r1)
/* 801CACC0 001C7CC0  80 01 00 08 */	lwz r0, 8(r1)
/* 801CACC4 001C7CC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CACC8 001C7CC8  48 0E 7F ED */	bl GXSetTevColor
/* 801CACCC 001C7CCC  38 60 00 02 */	li r3, 2
/* 801CACD0 001C7CD0  48 0E 45 B1 */	bl GXSetNumTexGens
/* 801CACD4 001C7CD4  38 60 00 00 */	li r3, 0
/* 801CACD8 001C7CD8  38 80 00 01 */	li r4, 1
/* 801CACDC 001C7CDC  38 A0 00 04 */	li r5, 4
/* 801CACE0 001C7CE0  38 C0 00 1E */	li r6, 0x1e
/* 801CACE4 001C7CE4  38 E0 00 00 */	li r7, 0
/* 801CACE8 001C7CE8  39 00 00 7D */	li r8, 0x7d
/* 801CACEC 001C7CEC  48 0E 43 15 */	bl GXSetTexCoordGen2
/* 801CACF0 001C7CF0  38 60 00 01 */	li r3, 1
/* 801CACF4 001C7CF4  38 80 00 01 */	li r4, 1
/* 801CACF8 001C7CF8  38 A0 00 04 */	li r5, 4
/* 801CACFC 001C7CFC  38 C0 00 21 */	li r6, 0x21
/* 801CAD00 001C7D00  38 E0 00 00 */	li r7, 0
/* 801CAD04 001C7D04  39 00 00 7D */	li r8, 0x7d
/* 801CAD08 001C7D08  48 0E 42 F9 */	bl GXSetTexCoordGen2
/* 801CAD0C 001C7D0C  C0 22 E1 D4 */	lfs f1, lbl_8041F554@sda21(r2)
/* 801CAD10 001C7D10  57 7B 28 34 */	slwi r27, r27, 5
/* 801CAD14 001C7D14  C0 42 E1 D8 */	lfs f2, lbl_8041F558@sda21(r2)
/* 801CAD18 001C7D18  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAD1C 001C7D1C  C0 62 E1 DC */	lfs f3, lbl_8041F55C@sda21(r2)
/* 801CAD20 001C7D20  48 0C D7 8D */	bl PSMTXScale
/* 801CAD24 001C7D24  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 801CAD28 001C7D28  3C 00 43 30 */	lis r0, 0x4330
/* 801CAD2C 001C7D2C  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 801CAD30 001C7D30  3C 80 80 30 */	lis r4, lbl_802FAA38@ha
/* 801CAD34 001C7D34  C0 42 E1 DC */	lfs f2, lbl_8041F55C@sda21(r2)
/* 801CAD38 001C7D38  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAD3C 001C7D3C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 801CAD40 001C7D40  C8 24 AA 38 */	lfd f1, lbl_802FAA38@l(r4)
/* 801CAD44 001C7D44  FC 60 10 90 */	fmr f3, f2
/* 801CAD48 001C7D48  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801CAD4C 001C7D4C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CAD50 001C7D50  48 0C D6 DD */	bl PSMTXTrans
/* 801CAD54 001C7D54  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAD58 001C7D58  38 81 00 98 */	addi r4, r1, 0x98
/* 801CAD5C 001C7D5C  7C 65 1B 78 */	mr r5, r3
/* 801CAD60 001C7D60  48 0C D2 01 */	bl PSMTXConcat
/* 801CAD64 001C7D64  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAD68 001C7D68  38 80 00 1E */	li r4, 0x1e
/* 801CAD6C 001C7D6C  38 A0 00 01 */	li r5, 1
/* 801CAD70 001C7D70  48 0E 98 5D */	bl GXLoadTexMtxImm
/* 801CAD74 001C7D74  2C 1D 00 00 */	cmpwi r29, 0
/* 801CAD78 001C7D78  41 82 00 70 */	beq .L_801CADE8
/* 801CAD7C 001C7D7C  C0 22 E1 D4 */	lfs f1, lbl_8041F554@sda21(r2)
/* 801CAD80 001C7D80  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAD84 001C7D84  C0 42 E1 D8 */	lfs f2, lbl_8041F558@sda21(r2)
/* 801CAD88 001C7D88  C0 62 E1 DC */	lfs f3, lbl_8041F55C@sda21(r2)
/* 801CAD8C 001C7D8C  48 0C D7 21 */	bl PSMTXScale
/* 801CAD90 001C7D90  38 7B 00 20 */	addi r3, r27, 0x20
/* 801CAD94 001C7D94  3C 00 43 30 */	lis r0, 0x4330
/* 801CAD98 001C7D98  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801CAD9C 001C7D9C  3C 80 80 30 */	lis r4, lbl_802FAA38@ha
/* 801CADA0 001C7DA0  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 801CADA4 001C7DA4  38 61 00 98 */	addi r3, r1, 0x98
/* 801CADA8 001C7DA8  C8 24 AA 38 */	lfd f1, lbl_802FAA38@l(r4)
/* 801CADAC 001C7DAC  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 801CADB0 001C7DB0  C0 42 E1 E0 */	lfs f2, lbl_8041F560@sda21(r2)
/* 801CADB4 001C7DB4  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801CADB8 001C7DB8  C0 62 E1 DC */	lfs f3, lbl_8041F55C@sda21(r2)
/* 801CADBC 001C7DBC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CADC0 001C7DC0  48 0C D6 6D */	bl PSMTXTrans
/* 801CADC4 001C7DC4  38 61 00 68 */	addi r3, r1, 0x68
/* 801CADC8 001C7DC8  38 81 00 98 */	addi r4, r1, 0x98
/* 801CADCC 001C7DCC  7C 65 1B 78 */	mr r5, r3
/* 801CADD0 001C7DD0  48 0C D1 91 */	bl PSMTXConcat
/* 801CADD4 001C7DD4  38 61 00 68 */	addi r3, r1, 0x68
/* 801CADD8 001C7DD8  38 80 00 21 */	li r4, 0x21
/* 801CADDC 001C7DDC  38 A0 00 01 */	li r5, 1
/* 801CADE0 001C7DE0  48 0E 97 ED */	bl GXLoadTexMtxImm
/* 801CADE4 001C7DE4  48 00 00 6C */	b .L_801CAE50
.L_801CADE8:
/* 801CADE8 001C7DE8  C0 22 E1 D4 */	lfs f1, lbl_8041F554@sda21(r2)
/* 801CADEC 001C7DEC  38 61 00 68 */	addi r3, r1, 0x68
/* 801CADF0 001C7DF0  C0 42 E1 D8 */	lfs f2, lbl_8041F558@sda21(r2)
/* 801CADF4 001C7DF4  C0 62 E1 DC */	lfs f3, lbl_8041F55C@sda21(r2)
/* 801CADF8 001C7DF8  48 0C D6 B5 */	bl PSMTXScale
/* 801CADFC 001C7DFC  38 7B 00 20 */	addi r3, r27, 0x20
/* 801CAE00 001C7E00  3C 00 43 30 */	lis r0, 0x4330
/* 801CAE04 001C7E04  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801CAE08 001C7E08  3C 80 80 30 */	lis r4, lbl_802FAA38@ha
/* 801CAE0C 001C7E0C  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 801CAE10 001C7E10  38 61 00 98 */	addi r3, r1, 0x98
/* 801CAE14 001C7E14  C0 42 E1 DC */	lfs f2, lbl_8041F55C@sda21(r2)
/* 801CAE18 001C7E18  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 801CAE1C 001C7E1C  C8 24 AA 38 */	lfd f1, lbl_802FAA38@l(r4)
/* 801CAE20 001C7E20  FC 60 10 90 */	fmr f3, f2
/* 801CAE24 001C7E24  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801CAE28 001C7E28  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CAE2C 001C7E2C  48 0C D6 01 */	bl PSMTXTrans
/* 801CAE30 001C7E30  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAE34 001C7E34  38 81 00 98 */	addi r4, r1, 0x98
/* 801CAE38 001C7E38  7C 65 1B 78 */	mr r5, r3
/* 801CAE3C 001C7E3C  48 0C D1 25 */	bl PSMTXConcat
/* 801CAE40 001C7E40  38 61 00 68 */	addi r3, r1, 0x68
/* 801CAE44 001C7E44  38 80 00 21 */	li r4, 0x21
/* 801CAE48 001C7E48  38 A0 00 01 */	li r5, 1
/* 801CAE4C 001C7E4C  48 0E 97 81 */	bl GXLoadTexMtxImm
.L_801CAE50:
/* 801CAE50 001C7E50  2C 1F 00 01 */	cmpwi r31, 1
/* 801CAE54 001C7E54  41 82 00 2C */	beq .L_801CAE80
/* 801CAE58 001C7E58  40 80 00 10 */	bge .L_801CAE68
/* 801CAE5C 001C7E5C  2C 1F 00 00 */	cmpwi r31, 0
/* 801CAE60 001C7E60  40 80 00 10 */	bge .L_801CAE70
/* 801CAE64 001C7E64  48 00 00 1C */	b .L_801CAE80
.L_801CAE68:
/* 801CAE68 001C7E68  2C 1F 00 03 */	cmpwi r31, 3
/* 801CAE6C 001C7E6C  40 80 00 14 */	bge .L_801CAE80
.L_801CAE70:
/* 801CAE70 001C7E70  3C 60 80 3A */	lis r3, lbl_803A2158@ha
/* 801CAE74 001C7E74  38 03 21 58 */	addi r0, r3, lbl_803A2158@l
/* 801CAE78 001C7E78  7C 1A 03 78 */	mr r26, r0
/* 801CAE7C 001C7E7C  48 00 00 10 */	b .L_801CAE8C
.L_801CAE80:
/* 801CAE80 001C7E80  3C 60 80 3A */	lis r3, lbl_803A2190@ha
/* 801CAE84 001C7E84  38 03 21 90 */	addi r0, r3, lbl_803A2190@l
/* 801CAE88 001C7E88  7C 1A 03 78 */	mr r26, r0
.L_801CAE8C:
/* 801CAE8C 001C7E8C  38 60 00 00 */	li r3, 0
/* 801CAE90 001C7E90  48 0E 4F F9 */	bl GXSetCullMode
/* 801CAE94 001C7E94  7F 43 D3 78 */	mr r3, r26
/* 801CAE98 001C7E98  48 00 68 19 */	bl effSetVtxDescN64
/* 801CAE9C 001C7E9C  2C 1F 00 01 */	cmpwi r31, 1
/* 801CAEA0 001C7EA0  41 82 00 54 */	beq .L_801CAEF4
/* 801CAEA4 001C7EA4  40 80 00 10 */	bge .L_801CAEB4
/* 801CAEA8 001C7EA8  2C 1F 00 00 */	cmpwi r31, 0
/* 801CAEAC 001C7EAC  40 80 00 10 */	bge .L_801CAEBC
/* 801CAEB0 001C7EB0  48 00 00 44 */	b .L_801CAEF4
.L_801CAEB4:
/* 801CAEB4 001C7EB4  2C 1F 00 03 */	cmpwi r31, 3
/* 801CAEB8 001C7EB8  40 80 00 3C */	bge .L_801CAEF4
.L_801CAEBC:
/* 801CAEBC 001C7EBC  38 60 00 90 */	li r3, 0x90
/* 801CAEC0 001C7EC0  38 80 00 00 */	li r4, 0
/* 801CAEC4 001C7EC4  38 A0 00 06 */	li r5, 6
/* 801CAEC8 001C7EC8  48 0E 4D A1 */	bl GXBegin
/* 801CAECC 001C7ECC  38 60 00 00 */	li r3, 0
/* 801CAED0 001C7ED0  38 80 00 01 */	li r4, 1
/* 801CAED4 001C7ED4  38 A0 00 02 */	li r5, 2
/* 801CAED8 001C7ED8  38 C0 00 00 */	li r6, 0
/* 801CAEDC 001C7EDC  38 E0 00 00 */	li r7, 0
/* 801CAEE0 001C7EE0  39 00 00 02 */	li r8, 2
/* 801CAEE4 001C7EE4  39 20 00 03 */	li r9, 3
/* 801CAEE8 001C7EE8  39 40 00 00 */	li r10, 0
/* 801CAEEC 001C7EEC  48 00 67 49 */	bl tri2
/* 801CAEF0 001C7EF0  48 00 00 80 */	b .L_801CAF70
.L_801CAEF4:
/* 801CAEF4 001C7EF4  38 60 00 90 */	li r3, 0x90
/* 801CAEF8 001C7EF8  38 80 00 00 */	li r4, 0
/* 801CAEFC 001C7EFC  38 A0 00 12 */	li r5, 0x12
/* 801CAF00 001C7F00  48 0E 4D 69 */	bl GXBegin
/* 801CAF04 001C7F04  38 60 00 08 */	li r3, 8
/* 801CAF08 001C7F08  38 80 00 09 */	li r4, 9
/* 801CAF0C 001C7F0C  38 A0 00 0A */	li r5, 0xa
/* 801CAF10 001C7F10  38 C0 00 00 */	li r6, 0
/* 801CAF14 001C7F14  38 E0 00 08 */	li r7, 8
/* 801CAF18 001C7F18  39 00 00 0A */	li r8, 0xa
/* 801CAF1C 001C7F1C  39 20 00 0B */	li r9, 0xb
/* 801CAF20 001C7F20  39 40 00 00 */	li r10, 0
/* 801CAF24 001C7F24  48 00 67 11 */	bl tri2
/* 801CAF28 001C7F28  38 60 00 04 */	li r3, 4
/* 801CAF2C 001C7F2C  38 80 00 05 */	li r4, 5
/* 801CAF30 001C7F30  38 A0 00 06 */	li r5, 6
/* 801CAF34 001C7F34  38 C0 00 00 */	li r6, 0
/* 801CAF38 001C7F38  38 E0 00 04 */	li r7, 4
/* 801CAF3C 001C7F3C  39 00 00 06 */	li r8, 6
/* 801CAF40 001C7F40  39 20 00 07 */	li r9, 7
/* 801CAF44 001C7F44  39 40 00 00 */	li r10, 0
/* 801CAF48 001C7F48  48 00 66 ED */	bl tri2
/* 801CAF4C 001C7F4C  38 60 00 00 */	li r3, 0
/* 801CAF50 001C7F50  38 80 00 01 */	li r4, 1
/* 801CAF54 001C7F54  38 A0 00 02 */	li r5, 2
/* 801CAF58 001C7F58  38 C0 00 00 */	li r6, 0
/* 801CAF5C 001C7F5C  38 E0 00 00 */	li r7, 0
/* 801CAF60 001C7F60  39 00 00 02 */	li r8, 2
/* 801CAF64 001C7F64  39 20 00 03 */	li r9, 3
/* 801CAF68 001C7F68  39 40 00 00 */	li r10, 0
/* 801CAF6C 001C7F6C  48 00 66 C9 */	bl tri2
.L_801CAF70:
/* 801CAF70 001C7F70  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 801CAF74 001C7F74  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801CAF78 001C7F78  7C 08 03 A6 */	mtlr r0
/* 801CAF7C 001C7F7C  38 21 01 00 */	addi r1, r1, 0x100
/* 801CAF80 001C7F80  4E 80 00 20 */	blr 
effKemuri12Main:
/* 801CAF84 001C7F84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801CAF88 001C7F88  7C 08 02 A6 */	mflr r0
/* 801CAF8C 001C7F8C  3C 80 43 30 */	lis r4, 0x4330
/* 801CAF90 001C7F90  3C A0 80 30 */	lis r5, lbl_802FAA28@ha
/* 801CAF94 001C7F94  90 01 00 44 */	stw r0, 0x44(r1)
/* 801CAF98 001C7F98  39 05 AA 28 */	addi r8, r5, lbl_802FAA28@l
/* 801CAF9C 001C7F9C  3C A0 80 30 */	lis r5, lbl_802FAA38@ha
/* 801CAFA0 001C7FA0  C0 62 E1 E4 */	lfs f3, lbl_8041F564@sda21(r2)
/* 801CAFA4 001C7FA4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801CAFA8 001C7FA8  7C 7F 1B 78 */	mr r31, r3
/* 801CAFAC 001C7FAC  C8 45 AA 38 */	lfd f2, lbl_802FAA38@l(r5)
/* 801CAFB0 001C7FB0  81 23 00 0C */	lwz r9, 0xc(r3)
/* 801CAFB4 001C7FB4  80 E8 00 00 */	lwz r7, 0(r8)
/* 801CAFB8 001C7FB8  80 C8 00 04 */	lwz r6, 4(r8)
/* 801CAFBC 001C7FBC  80 08 00 08 */	lwz r0, 8(r8)
/* 801CAFC0 001C7FC0  90 E1 00 08 */	stw r7, 8(r1)
/* 801CAFC4 001C7FC4  C0 09 00 04 */	lfs f0, 4(r9)
/* 801CAFC8 001C7FC8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801CAFCC 001C7FCC  C0 29 00 08 */	lfs f1, 8(r9)
/* 801CAFD0 001C7FD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801CAFD4 001C7FD4  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 801CAFD8 001C7FD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801CAFDC 001C7FDC  80 C1 00 08 */	lwz r6, 8(r1)
/* 801CAFE0 001C7FE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801CAFE4 001C7FE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801CAFE8 001C7FE8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 801CAFEC 001C7FEC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801CAFF0 001C7FF0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801CAFF4 001C7FF4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801CAFF8 001C7FF8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801CAFFC 001C7FFC  80 A9 00 18 */	lwz r5, 0x18(r9)
/* 801CB000 001C8000  80 09 00 1C */	lwz r0, 0x1c(r9)
/* 801CB004 001C8004  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801CB008 001C8008  90 81 00 20 */	stw r4, 0x20(r1)
/* 801CB00C 001C800C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CB010 001C8010  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801CB014 001C8014  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801CB018 001C8018  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801CB01C 001C801C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801CB020 001C8020  90 81 00 28 */	stw r4, 0x28(r1)
/* 801CB024 001C8024  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801CB028 001C8028  EC 23 00 72 */	fmuls f1, f3, f1
/* 801CB02C 001C802C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB030 001C8030  EC 01 00 24 */	fdivs f0, f1, f0
/* 801CB034 001C8034  D0 09 00 20 */	stfs f0, 0x20(r9)
/* 801CB038 001C8038  80 89 00 18 */	lwz r4, 0x18(r9)
/* 801CB03C 001C803C  38 04 00 01 */	addi r0, r4, 1
/* 801CB040 001C8040  90 09 00 18 */	stw r0, 0x18(r9)
/* 801CB044 001C8044  80 89 00 14 */	lwz r4, 0x14(r9)
/* 801CB048 001C8048  38 04 FF FF */	addi r0, r4, -1
/* 801CB04C 001C804C  90 09 00 14 */	stw r0, 0x14(r9)
/* 801CB050 001C8050  80 09 00 14 */	lwz r0, 0x14(r9)
/* 801CB054 001C8054  2C 00 00 00 */	cmpwi r0, 0
/* 801CB058 001C8058  40 80 00 0C */	bge .L_801CB064
/* 801CB05C 001C805C  4B E9 2B 29 */	bl effDelete
/* 801CB060 001C8060  48 00 00 24 */	b .L_801CB084
.L_801CB064:
/* 801CB064 001C8064  38 61 00 14 */	addi r3, r1, 0x14
/* 801CB068 001C8068  4B E4 56 59 */	bl dispCalcZ
/* 801CB06C 001C806C  3C 60 80 1D */	lis r3, effKemuri12Disp@ha
/* 801CB070 001C8070  7F E6 FB 78 */	mr r6, r31
/* 801CB074 001C8074  38 A3 A9 A0 */	addi r5, r3, effKemuri12Disp@l
/* 801CB078 001C8078  38 80 00 02 */	li r4, 2
/* 801CB07C 001C807C  38 60 00 04 */	li r3, 4
/* 801CB080 001C8080  4B E4 59 99 */	bl dispEntry
.L_801CB084:
/* 801CB084 001C8084  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CB088 001C8088  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801CB08C 001C808C  7C 08 03 A6 */	mtlr r0
/* 801CB090 001C8090  38 21 00 40 */	addi r1, r1, 0x40
/* 801CB094 001C8094  4E 80 00 20 */	blr 

.global effKemuri12N64Entry
effKemuri12N64Entry:
/* 801CB098 001C8098  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801CB09C 001C809C  7C 08 02 A6 */	mflr r0
/* 801CB0A0 001C80A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 801CB0A4 001C80A4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801CB0A8 001C80A8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801CB0AC 001C80AC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801CB0B0 001C80B0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801CB0B4 001C80B4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801CB0B8 001C80B8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 801CB0BC 001C80BC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 801CB0C0 001C80C0  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 801CB0C4 001C80C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CB0C8 001C80C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CB0CC 001C80CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CB0D0 001C80D0  FF 80 08 90 */	fmr f28, f1
/* 801CB0D4 001C80D4  7C 7D 1B 78 */	mr r29, r3
/* 801CB0D8 001C80D8  FF A0 10 90 */	fmr f29, f2
/* 801CB0DC 001C80DC  7C 9E 23 78 */	mr r30, r4
/* 801CB0E0 001C80E0  FF C0 18 90 */	fmr f30, f3
/* 801CB0E4 001C80E4  FF E0 20 90 */	fmr f31, f4
/* 801CB0E8 001C80E8  4B E9 2C D5 */	bl effEntry
/* 801CB0EC 001C80EC  3C 80 80 30 */	lis r4, lbl_802FAA40@ha
/* 801CB0F0 001C80F0  7C 7F 1B 78 */	mr r31, r3
/* 801CB0F4 001C80F4  38 84 AA 40 */	addi r4, r4, lbl_802FAA40@l
/* 801CB0F8 001C80F8  38 00 00 01 */	li r0, 1
/* 801CB0FC 001C80FC  90 9F 00 14 */	stw r4, 0x14(r31)
/* 801CB100 001C8100  38 60 00 03 */	li r3, 3
/* 801CB104 001C8104  38 80 00 28 */	li r4, 0x28
/* 801CB108 001C8108  90 1F 00 08 */	stw r0, 8(r31)
/* 801CB10C 001C810C  4B E6 49 81 */	bl __memAlloc
/* 801CB110 001C8110  3C 80 80 1D */	lis r4, effKemuri12Main@ha
/* 801CB114 001C8114  90 7F 00 0C */	stw r3, 0xc(r31)
/* 801CB118 001C8118  38 04 AF 84 */	addi r0, r4, effKemuri12Main@l
/* 801CB11C 001C811C  38 A0 00 00 */	li r5, 0
/* 801CB120 001C8120  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801CB124 001C8124  2C 1D 00 01 */	cmpwi r29, 1
/* 801CB128 001C8128  C0 02 E1 DC */	lfs f0, lbl_8041F55C@sda21(r2)
/* 801CB12C 001C812C  93 C3 00 14 */	stw r30, 0x14(r3)
/* 801CB130 001C8130  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801CB134 001C8134  93 C3 00 1C */	stw r30, 0x1c(r3)
/* 801CB138 001C8138  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801CB13C 001C813C  B3 A3 00 00 */	sth r29, 0(r3)
/* 801CB140 001C8140  D3 83 00 04 */	stfs f28, 4(r3)
/* 801CB144 001C8144  D3 A3 00 08 */	stfs f29, 8(r3)
/* 801CB148 001C8148  D3 C3 00 0C */	stfs f30, 0xc(r3)
/* 801CB14C 001C814C  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 801CB150 001C8150  41 82 00 2C */	beq .L_801CB17C
/* 801CB154 001C8154  40 80 00 44 */	bge .L_801CB198
/* 801CB158 001C8158  2C 1D 00 00 */	cmpwi r29, 0
/* 801CB15C 001C815C  40 80 00 08 */	bge .L_801CB164
/* 801CB160 001C8160  48 00 00 38 */	b .L_801CB198
.L_801CB164:
/* 801CB164 001C8164  98 A3 00 26 */	stb r5, 0x26(r3)
/* 801CB168 001C8168  38 00 00 82 */	li r0, 0x82
/* 801CB16C 001C816C  98 A3 00 25 */	stb r5, 0x25(r3)
/* 801CB170 001C8170  98 A3 00 24 */	stb r5, 0x24(r3)
/* 801CB174 001C8174  98 03 00 27 */	stb r0, 0x27(r3)
/* 801CB178 001C8178  48 00 00 40 */	b .L_801CB1B8
.L_801CB17C:
/* 801CB17C 001C817C  38 80 00 FF */	li r4, 0xff
/* 801CB180 001C8180  38 00 00 82 */	li r0, 0x82
/* 801CB184 001C8184  98 83 00 24 */	stb r4, 0x24(r3)
/* 801CB188 001C8188  98 A3 00 26 */	stb r5, 0x26(r3)
/* 801CB18C 001C818C  98 A3 00 25 */	stb r5, 0x25(r3)
/* 801CB190 001C8190  98 03 00 27 */	stb r0, 0x27(r3)
/* 801CB194 001C8194  48 00 00 24 */	b .L_801CB1B8
.L_801CB198:
/* 801CB198 001C8198  38 00 00 E1 */	li r0, 0xe1
/* 801CB19C 001C819C  38 A0 00 D7 */	li r5, 0xd7
/* 801CB1A0 001C81A0  98 03 00 24 */	stb r0, 0x24(r3)
/* 801CB1A4 001C81A4  38 80 00 FF */	li r4, 0xff
/* 801CB1A8 001C81A8  38 00 00 B4 */	li r0, 0xb4
/* 801CB1AC 001C81AC  98 A3 00 25 */	stb r5, 0x25(r3)
/* 801CB1B0 001C81B0  98 83 00 26 */	stb r4, 0x26(r3)
/* 801CB1B4 001C81B4  98 03 00 27 */	stb r0, 0x27(r3)
.L_801CB1B8:
/* 801CB1B8 001C81B8  7F E3 FB 78 */	mr r3, r31
/* 801CB1BC 001C81BC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801CB1C0 001C81C0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801CB1C4 001C81C4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801CB1C8 001C81C8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801CB1CC 001C81CC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 801CB1D0 001C81D0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801CB1D4 001C81D4  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 801CB1D8 001C81D8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 801CB1DC 001C81DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CB1E0 001C81E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CB1E4 001C81E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801CB1E8 001C81E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CB1EC 001C81EC  7C 08 03 A6 */	mtlr r0
/* 801CB1F0 001C81F0  38 21 00 60 */	addi r1, r1, 0x60
/* 801CB1F4 001C81F4  4E 80 00 20 */	blr 
