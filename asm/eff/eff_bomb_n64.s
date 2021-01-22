.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effBombDisp_DUPE_801aa41c
effBombDisp_DUPE_801aa41c:
/* 801AA41C 001A741C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801AA420 001A7420  7C 08 02 A6 */	mflr r0
/* 801AA424 001A7424  90 01 01 14 */	stw r0, 0x114(r1)
/* 801AA428 001A7428  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 801AA42C 001A742C  93 C1 01 08 */	stw r30, 0x108(r1)
/* 801AA430 001A7430  93 A1 01 04 */	stw r29, 0x104(r1)
/* 801AA434 001A7434  7C 9D 23 78 */	mr r29, r4
/* 801AA438 001A7438  4B E6 4D 19 */	bl camGetPtr
/* 801AA43C 001A743C  83 BD 00 0C */	lwz r29, 0xc(r29)
/* 801AA440 001A7440  7C 7E 1B 78 */	mr r30, r3
/* 801AA444 001A7444  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801AA448 001A7448  83 FD 00 34 */	lwz r31, 0x34(r29)
/* 801AA44C 001A744C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801AA450 001A7450  C0 5D 00 08 */	lfs f2, 8(r29)
/* 801AA454 001A7454  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 801AA458 001A7458  48 0E DF D5 */	bl PSMTXTrans
/* 801AA45C 001A745C  38 60 00 04 */	li r3, 4
/* 801AA460 001A7460  4B E6 4C F1 */	bl camGetPtr
/* 801AA464 001A7464  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801AA468 001A7468  38 61 00 68 */	addi r3, r1, 0x68
/* 801AA46C 001A746C  C0 02 D6 58 */	lfs f0, lbl_8041E9D8-_SDA2_BASE_(r2)
/* 801AA470 001A7470  38 80 00 79 */	li r4, 0x79
/* 801AA474 001A7474  FC 20 08 50 */	fneg f1, f1
/* 801AA478 001A7478  EC 20 00 72 */	fmuls f1, f0, f1
/* 801AA47C 001A747C  48 0E DD 71 */	bl PSMTXRotRad
/* 801AA480 001A7480  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801AA484 001A7484  38 81 00 68 */	addi r4, r1, 0x68
/* 801AA488 001A7488  38 A1 00 38 */	addi r5, r1, 0x38
/* 801AA48C 001A748C  48 0E DA D5 */	bl PSMTXConcat
/* 801AA490 001A7490  38 81 00 38 */	addi r4, r1, 0x38
/* 801AA494 001A7494  38 7E 01 1C */	addi r3, r30, 0x11c
/* 801AA498 001A7498  7C 85 23 78 */	mr r5, r4
/* 801AA49C 001A749C  48 0E DA C5 */	bl PSMTXConcat
/* 801AA4A0 001A74A0  38 60 00 00 */	li r3, 0
/* 801AA4A4 001A74A4  48 10 6C 95 */	bl GXSetNumChans
/* 801AA4A8 001A74A8  38 60 00 01 */	li r3, 1
/* 801AA4AC 001A74AC  48 10 8D 1D */	bl GXSetNumTevStages
/* 801AA4B0 001A74B0  38 60 00 00 */	li r3, 0
/* 801AA4B4 001A74B4  38 80 00 00 */	li r4, 0
/* 801AA4B8 001A74B8  38 A0 00 00 */	li r5, 0
/* 801AA4BC 001A74BC  38 C0 00 FF */	li r6, 0xff
/* 801AA4C0 001A74C0  48 10 8B 6D */	bl GXSetTevOrder
/* 801AA4C4 001A74C4  38 60 00 00 */	li r3, 0
/* 801AA4C8 001A74C8  38 80 00 00 */	li r4, 0
/* 801AA4CC 001A74CC  38 A0 00 00 */	li r5, 0
/* 801AA4D0 001A74D0  38 C0 00 00 */	li r6, 0
/* 801AA4D4 001A74D4  38 E0 00 01 */	li r7, 1
/* 801AA4D8 001A74D8  39 00 00 00 */	li r8, 0
/* 801AA4DC 001A74DC  48 10 87 09 */	bl GXSetTevColorOp
/* 801AA4E0 001A74E0  38 60 00 00 */	li r3, 0
/* 801AA4E4 001A74E4  38 80 00 00 */	li r4, 0
/* 801AA4E8 001A74E8  38 A0 00 00 */	li r5, 0
/* 801AA4EC 001A74EC  38 C0 00 00 */	li r6, 0
/* 801AA4F0 001A74F0  38 E0 00 01 */	li r7, 1
/* 801AA4F4 001A74F4  39 00 00 00 */	li r8, 0
/* 801AA4F8 001A74F8  48 10 87 55 */	bl GXSetTevAlphaOp
/* 801AA4FC 001A74FC  38 60 00 00 */	li r3, 0
/* 801AA500 001A7500  38 80 00 0F */	li r4, 0xf
/* 801AA504 001A7504  38 A0 00 0F */	li r5, 0xf
/* 801AA508 001A7508  38 C0 00 0F */	li r6, 0xf
/* 801AA50C 001A750C  38 E0 00 02 */	li r7, 2
/* 801AA510 001A7510  48 10 86 4D */	bl GXSetTevColorIn
/* 801AA514 001A7514  38 60 00 00 */	li r3, 0
/* 801AA518 001A7518  38 80 00 07 */	li r4, 7
/* 801AA51C 001A751C  38 A0 00 01 */	li r5, 1
/* 801AA520 001A7520  38 C0 00 04 */	li r6, 4
/* 801AA524 001A7524  38 E0 00 07 */	li r7, 7
/* 801AA528 001A7528  48 10 86 79 */	bl GXSetTevAlphaIn
/* 801AA52C 001A752C  38 60 00 01 */	li r3, 1
/* 801AA530 001A7530  48 10 4D 51 */	bl GXSetNumTexGens
/* 801AA534 001A7534  38 60 00 00 */	li r3, 0
/* 801AA538 001A7538  38 80 00 01 */	li r4, 1
/* 801AA53C 001A753C  38 A0 00 04 */	li r5, 4
/* 801AA540 001A7540  38 C0 00 1E */	li r6, 0x1e
/* 801AA544 001A7544  38 E0 00 00 */	li r7, 0
/* 801AA548 001A7548  39 00 00 7D */	li r8, 0x7d
/* 801AA54C 001A754C  48 10 4A B5 */	bl GXSetTexCoordGen2
/* 801AA550 001A7550  C0 22 D6 5C */	lfs f1, lbl_8041E9DC-_SDA2_BASE_(r2)
/* 801AA554 001A7554  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801AA558 001A7558  C0 62 D6 60 */	lfs f3, lbl_8041E9E0-_SDA2_BASE_(r2)
/* 801AA55C 001A755C  FC 40 08 90 */	fmr f2, f1
/* 801AA560 001A7560  48 0E DF 4D */	bl PSMTXScale
/* 801AA564 001A7564  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801AA568 001A7568  38 80 00 1E */	li r4, 0x1e
/* 801AA56C 001A756C  38 A0 00 01 */	li r5, 1
/* 801AA570 001A7570  48 10 A0 5D */	bl GXLoadTexMtxImm
/* 801AA574 001A7574  38 60 00 00 */	li r3, 0
/* 801AA578 001A7578  48 10 59 11 */	bl GXSetCullMode
/* 801AA57C 001A757C  3C 60 80 3A */	lis r3, lbl_8039A970@ha
/* 801AA580 001A7580  38 63 A9 70 */	addi r3, r3, lbl_8039A970@l
/* 801AA584 001A7584  48 02 71 2D */	bl effSetVtxDescN64
/* 801AA588 001A7588  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 801AA58C 001A758C  2C 00 FF FF */	cmpwi r0, -1
/* 801AA590 001A7590  41 82 00 AC */	beq lbl_801AA63C
/* 801AA594 001A7594  38 81 00 18 */	addi r4, r1, 0x18
/* 801AA598 001A7598  38 60 00 18 */	li r3, 0x18
/* 801AA59C 001A759C  48 02 72 A9 */	bl effGetTexObjN64
/* 801AA5A0 001A75A0  38 61 00 18 */	addi r3, r1, 0x18
/* 801AA5A4 001A75A4  38 80 00 00 */	li r4, 0
/* 801AA5A8 001A75A8  48 10 74 D5 */	bl GXLoadTexObj
/* 801AA5AC 001A75AC  80 A2 D6 50 */	lwz r5, lbl_8041E9D0-_SDA2_BASE_(r2)
/* 801AA5B0 001A75B0  38 81 00 14 */	addi r4, r1, 0x14
/* 801AA5B4 001A75B4  80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 801AA5B8 001A75B8  38 60 00 01 */	li r3, 1
/* 801AA5BC 001A75BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801AA5C0 001A75C0  98 01 00 13 */	stb r0, 0x13(r1)
/* 801AA5C4 001A75C4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801AA5C8 001A75C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AA5CC 001A75CC  48 10 86 E9 */	bl GXSetTevColor
/* 801AA5D0 001A75D0  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 801AA5D4 001A75D4  38 61 00 98 */	addi r3, r1, 0x98
/* 801AA5D8 001A75D8  C0 62 D6 64 */	lfs f3, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AA5DC 001A75DC  FC 40 08 90 */	fmr f2, f1
/* 801AA5E0 001A75E0  48 0E DE CD */	bl PSMTXScale
/* 801AA5E4 001A75E4  38 81 00 98 */	addi r4, r1, 0x98
/* 801AA5E8 001A75E8  38 61 00 38 */	addi r3, r1, 0x38
/* 801AA5EC 001A75EC  7C 85 23 78 */	mr r5, r4
/* 801AA5F0 001A75F0  48 0E D9 71 */	bl PSMTXConcat
/* 801AA5F4 001A75F4  38 61 00 98 */	addi r3, r1, 0x98
/* 801AA5F8 001A75F8  38 80 00 00 */	li r4, 0
/* 801AA5FC 001A75FC  48 10 9E FD */	bl GXLoadPosMtxImm
/* 801AA600 001A7600  38 60 00 00 */	li r3, 0
/* 801AA604 001A7604  48 10 9F 95 */	bl GXSetCurrentMtx
/* 801AA608 001A7608  38 60 00 90 */	li r3, 0x90
/* 801AA60C 001A760C  38 80 00 00 */	li r4, 0
/* 801AA610 001A7610  38 A0 00 06 */	li r5, 6
/* 801AA614 001A7614  48 10 56 55 */	bl GXBegin
/* 801AA618 001A7618  38 60 00 00 */	li r3, 0
/* 801AA61C 001A761C  38 80 00 01 */	li r4, 1
/* 801AA620 001A7620  38 A0 00 02 */	li r5, 2
/* 801AA624 001A7624  38 C0 00 00 */	li r6, 0
/* 801AA628 001A7628  38 E0 00 00 */	li r7, 0
/* 801AA62C 001A762C  39 00 00 02 */	li r8, 2
/* 801AA630 001A7630  39 20 00 03 */	li r9, 3
/* 801AA634 001A7634  39 40 00 00 */	li r10, 0
/* 801AA638 001A7638  48 02 6F FD */	bl tri2
lbl_801AA63C:
/* 801AA63C 001A763C  2C 1F 00 01 */	cmpwi r31, 1
/* 801AA640 001A7640  40 82 00 0C */	bne lbl_801AA64C
/* 801AA644 001A7644  38 A0 00 C0 */	li r5, 0xc0
/* 801AA648 001A7648  48 00 00 18 */	b lbl_801AA660
lbl_801AA64C:
/* 801AA64C 001A764C  2C 1F 00 02 */	cmpwi r31, 2
/* 801AA650 001A7650  40 82 00 0C */	bne lbl_801AA65C
/* 801AA654 001A7654  38 A0 00 FF */	li r5, 0xff
/* 801AA658 001A7658  48 00 00 08 */	b lbl_801AA660
lbl_801AA65C:
/* 801AA65C 001A765C  80 BD 00 C0 */	lwz r5, 0xc0(r29)
lbl_801AA660:
/* 801AA660 001A7660  2C 1F 00 02 */	cmpwi r31, 2
/* 801AA664 001A7664  40 81 00 1C */	ble lbl_801AA680
/* 801AA668 001A7668  2C 1F 00 08 */	cmpwi r31, 8
/* 801AA66C 001A766C  38 60 00 7F */	li r3, 0x7f
/* 801AA670 001A7670  40 80 00 08 */	bge lbl_801AA678
/* 801AA674 001A7674  57 E3 20 36 */	slwi r3, r31, 4
lbl_801AA678:
/* 801AA678 001A7678  38 C3 00 80 */	addi r6, r3, 0x80
/* 801AA67C 001A767C  48 00 00 08 */	b lbl_801AA684
lbl_801AA680:
/* 801AA680 001A7680  38 C0 00 FF */	li r6, 0xff
lbl_801AA684:
/* 801AA684 001A7684  80 02 D6 54 */	lwz r0, lbl_8041E9D4-_SDA2_BASE_(r2)
/* 801AA688 001A7688  38 81 00 0C */	addi r4, r1, 0xc
/* 801AA68C 001A768C  38 60 00 01 */	li r3, 1
/* 801AA690 001A7690  90 01 00 08 */	stw r0, 8(r1)
/* 801AA694 001A7694  98 C1 00 0A */	stb r6, 0xa(r1)
/* 801AA698 001A7698  98 A1 00 0B */	stb r5, 0xb(r1)
/* 801AA69C 001A769C  80 01 00 08 */	lwz r0, 8(r1)
/* 801AA6A0 001A76A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AA6A4 001A76A4  48 10 86 11 */	bl GXSetTevColor
/* 801AA6A8 001A76A8  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 801AA6AC 001A76AC  38 61 00 98 */	addi r3, r1, 0x98
/* 801AA6B0 001A76B0  FC 40 08 90 */	fmr f2, f1
/* 801AA6B4 001A76B4  FC 60 08 90 */	fmr f3, f1
/* 801AA6B8 001A76B8  48 0E DD F5 */	bl PSMTXScale
/* 801AA6BC 001A76BC  C0 22 D6 58 */	lfs f1, lbl_8041E9D8-_SDA2_BASE_(r2)
/* 801AA6C0 001A76C0  38 61 00 68 */	addi r3, r1, 0x68
/* 801AA6C4 001A76C4  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 801AA6C8 001A76C8  38 80 00 7A */	li r4, 0x7a
/* 801AA6CC 001A76CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801AA6D0 001A76D0  48 0E DB 1D */	bl PSMTXRotRad
/* 801AA6D4 001A76D4  38 81 00 98 */	addi r4, r1, 0x98
/* 801AA6D8 001A76D8  38 61 00 68 */	addi r3, r1, 0x68
/* 801AA6DC 001A76DC  7C 85 23 78 */	mr r5, r4
/* 801AA6E0 001A76E0  48 0E D8 81 */	bl PSMTXConcat
/* 801AA6E4 001A76E4  38 81 00 98 */	addi r4, r1, 0x98
/* 801AA6E8 001A76E8  38 61 00 38 */	addi r3, r1, 0x38
/* 801AA6EC 001A76EC  7C 85 23 78 */	mr r5, r4
/* 801AA6F0 001A76F0  48 0E D8 71 */	bl PSMTXConcat
/* 801AA6F4 001A76F4  38 61 00 98 */	addi r3, r1, 0x98
/* 801AA6F8 001A76F8  38 80 00 00 */	li r4, 0
/* 801AA6FC 001A76FC  48 10 9D FD */	bl GXLoadPosMtxImm
/* 801AA700 001A7700  38 60 00 00 */	li r3, 0
/* 801AA704 001A7704  48 10 9E 95 */	bl GXSetCurrentMtx
/* 801AA708 001A7708  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 801AA70C 001A770C  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 801AA710 001A7710  7C 60 F8 96 */	mulhw r3, r0, r31
/* 801AA714 001A7714  54 60 0F FE */	srwi r0, r3, 0x1f
/* 801AA718 001A7718  7C 03 02 14 */	add r0, r3, r0
/* 801AA71C 001A771C  1C 00 00 03 */	mulli r0, r0, 3
/* 801AA720 001A7720  7C 00 F8 50 */	subf r0, r0, r31
/* 801AA724 001A7724  2C 00 00 01 */	cmpwi r0, 1
/* 801AA728 001A7728  41 82 00 3C */	beq lbl_801AA764
/* 801AA72C 001A772C  40 80 00 10 */	bge lbl_801AA73C
/* 801AA730 001A7730  2C 00 00 00 */	cmpwi r0, 0
/* 801AA734 001A7734  40 80 00 14 */	bge lbl_801AA748
/* 801AA738 001A7738  48 00 00 60 */	b lbl_801AA798
lbl_801AA73C:
/* 801AA73C 001A773C  2C 00 00 03 */	cmpwi r0, 3
/* 801AA740 001A7740  40 80 00 58 */	bge lbl_801AA798
/* 801AA744 001A7744  48 00 00 3C */	b lbl_801AA780
lbl_801AA748:
/* 801AA748 001A7748  38 81 00 18 */	addi r4, r1, 0x18
/* 801AA74C 001A774C  38 60 00 19 */	li r3, 0x19
/* 801AA750 001A7750  48 02 70 F5 */	bl effGetTexObjN64
/* 801AA754 001A7754  38 61 00 18 */	addi r3, r1, 0x18
/* 801AA758 001A7758  38 80 00 00 */	li r4, 0
/* 801AA75C 001A775C  48 10 73 21 */	bl GXLoadTexObj
/* 801AA760 001A7760  48 00 00 38 */	b lbl_801AA798
lbl_801AA764:
/* 801AA764 001A7764  38 81 00 18 */	addi r4, r1, 0x18
/* 801AA768 001A7768  38 60 00 1A */	li r3, 0x1a
/* 801AA76C 001A776C  48 02 70 D9 */	bl effGetTexObjN64
/* 801AA770 001A7770  38 61 00 18 */	addi r3, r1, 0x18
/* 801AA774 001A7774  38 80 00 00 */	li r4, 0
/* 801AA778 001A7778  48 10 73 05 */	bl GXLoadTexObj
/* 801AA77C 001A777C  48 00 00 1C */	b lbl_801AA798
lbl_801AA780:
/* 801AA780 001A7780  38 81 00 18 */	addi r4, r1, 0x18
/* 801AA784 001A7784  38 60 00 1B */	li r3, 0x1b
/* 801AA788 001A7788  48 02 70 BD */	bl effGetTexObjN64
/* 801AA78C 001A778C  38 61 00 18 */	addi r3, r1, 0x18
/* 801AA790 001A7790  38 80 00 00 */	li r4, 0
/* 801AA794 001A7794  48 10 72 E9 */	bl GXLoadTexObj
lbl_801AA798:
/* 801AA798 001A7798  38 60 00 90 */	li r3, 0x90
/* 801AA79C 001A779C  38 80 00 00 */	li r4, 0
/* 801AA7A0 001A77A0  38 A0 00 06 */	li r5, 6
/* 801AA7A4 001A77A4  48 10 54 C5 */	bl GXBegin
/* 801AA7A8 001A77A8  38 60 00 00 */	li r3, 0
/* 801AA7AC 001A77AC  38 80 00 01 */	li r4, 1
/* 801AA7B0 001A77B0  38 A0 00 02 */	li r5, 2
/* 801AA7B4 001A77B4  38 C0 00 00 */	li r6, 0
/* 801AA7B8 001A77B8  38 E0 00 00 */	li r7, 0
/* 801AA7BC 001A77BC  39 00 00 02 */	li r8, 2
/* 801AA7C0 001A77C0  39 20 00 03 */	li r9, 3
/* 801AA7C4 001A77C4  39 40 00 00 */	li r10, 0
/* 801AA7C8 001A77C8  48 02 6E 6D */	bl tri2
/* 801AA7CC 001A77CC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801AA7D0 001A77D0  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 801AA7D4 001A77D4  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 801AA7D8 001A77D8  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 801AA7DC 001A77DC  7C 08 03 A6 */	mtlr r0
/* 801AA7E0 001A77E0  38 21 01 10 */	addi r1, r1, 0x110
/* 801AA7E4 001A77E4  4E 80 00 20 */	blr 
effBombMain_DUPE_801aa7e8:
/* 801AA7E8 001A77E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AA7EC 001A77EC  7C 08 02 A6 */	mflr r0
/* 801AA7F0 001A77F0  3C 80 80 30 */	lis r4, lbl_802FA290@ha
/* 801AA7F4 001A77F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AA7F8 001A77F8  38 C4 A2 90 */	addi r6, r4, lbl_802FA290@l
/* 801AA7FC 001A77FC  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801AA800 001A7800  7C 7C 1B 78 */	mr r28, r3
/* 801AA804 001A7804  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 801AA808 001A7808  80 A6 00 00 */	lwz r5, 0(r6)
/* 801AA80C 001A780C  80 86 00 04 */	lwz r4, 4(r6)
/* 801AA810 001A7810  80 06 00 08 */	lwz r0, 8(r6)
/* 801AA814 001A7814  90 A1 00 08 */	stw r5, 8(r1)
/* 801AA818 001A7818  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801AA81C 001A781C  90 81 00 0C */	stw r4, 0xc(r1)
/* 801AA820 001A7820  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801AA824 001A7824  D0 01 00 08 */	stfs f0, 8(r1)
/* 801AA828 001A7828  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801AA82C 001A782C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801AA830 001A7830  80 A1 00 08 */	lwz r5, 8(r1)
/* 801AA834 001A7834  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801AA838 001A7838  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AA83C 001A783C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801AA840 001A7840  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801AA844 001A7844  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801AA848 001A7848  90 81 00 18 */	stw r4, 0x18(r1)
/* 801AA84C 001A784C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AA850 001A7850  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801AA854 001A7854  83 BF 00 40 */	lwz r29, 0x40(r31)
/* 801AA858 001A7858  38 04 FF FF */	addi r0, r4, -1
/* 801AA85C 001A785C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801AA860 001A7860  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 801AA864 001A7864  2C 00 00 00 */	cmpwi r0, 0
/* 801AA868 001A7868  40 80 00 0C */	bge lbl_801AA874
/* 801AA86C 001A786C  4B EB 33 19 */	bl effDelete
/* 801AA870 001A7870  48 00 02 28 */	b lbl_801AAA98
lbl_801AA874:
/* 801AA874 001A7874  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801AA878 001A7878  38 03 00 01 */	addi r0, r3, 1
/* 801AA87C 001A787C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801AA880 001A7880  83 DF 00 34 */	lwz r30, 0x34(r31)
/* 801AA884 001A7884  83 7F 00 00 */	lwz r27, 0(r31)
/* 801AA888 001A7888  2C 1E 00 07 */	cmpwi r30, 7
/* 801AA88C 001A788C  40 82 00 50 */	bne lbl_801AA8DC
/* 801AA890 001A7890  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 801AA894 001A7894  2C 00 00 00 */	cmpwi r0, 0
/* 801AA898 001A7898  40 82 00 24 */	bne lbl_801AA8BC
/* 801AA89C 001A789C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801AA8A0 001A78A0  7F 63 DB 78 */	mr r3, r27
/* 801AA8A4 001A78A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801AA8A8 001A78A8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 801AA8AC 001A78AC  48 01 D5 4D */	bl effKemuri8N64Entry
/* 801AA8B0 001A78B0  7F A4 EB 78 */	mr r4, r29
/* 801AA8B4 001A78B4  48 01 D8 05 */	bl effKemuri8N64SetCamId
/* 801AA8B8 001A78B8  48 00 00 50 */	b lbl_801AA908
lbl_801AA8BC:
/* 801AA8BC 001A78BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801AA8C0 001A78C0  38 7B 00 03 */	addi r3, r27, 3
/* 801AA8C4 001A78C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801AA8C8 001A78C8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 801AA8CC 001A78CC  48 01 D5 2D */	bl effKemuri8N64Entry
/* 801AA8D0 001A78D0  7F A4 EB 78 */	mr r4, r29
/* 801AA8D4 001A78D4  48 01 D7 E5 */	bl effKemuri8N64SetCamId
/* 801AA8D8 001A78D8  48 00 00 30 */	b lbl_801AA908
lbl_801AA8DC:
/* 801AA8DC 001A78DC  2C 1E 00 01 */	cmpwi r30, 1
/* 801AA8E0 001A78E0  40 82 00 28 */	bne lbl_801AA908
/* 801AA8E4 001A78E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801AA8E8 001A78E8  38 7B 00 04 */	addi r3, r27, 4
/* 801AA8EC 001A78EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801AA8F0 001A78F0  38 80 00 32 */	li r4, 0x32
/* 801AA8F4 001A78F4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 801AA8F8 001A78F8  C0 82 D6 64 */	lfs f4, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AA8FC 001A78FC  48 00 6A E5 */	bl effConfettiN64Entry
/* 801AA900 001A7900  7F A4 EB 78 */	mr r4, r29
/* 801AA904 001A7904  48 00 70 B5 */	bl func_801B19B8
lbl_801AA908:
/* 801AA908 001A7908  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 801AA90C 001A790C  2C 1E 00 08 */	cmpwi r30, 8
/* 801AA910 001A7910  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 801AA914 001A7914  EC 01 00 2A */	fadds f0, f1, f0
/* 801AA918 001A7918  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 801AA91C 001A791C  40 80 00 6C */	bge lbl_801AA988
/* 801AA920 001A7920  2C 1B 00 02 */	cmpwi r27, 2
/* 801AA924 001A7924  40 82 00 0C */	bne lbl_801AA930
/* 801AA928 001A7928  C0 22 D6 64 */	lfs f1, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AA92C 001A792C  48 00 00 08 */	b lbl_801AA934
lbl_801AA930:
/* 801AA930 001A7930  C0 22 D6 68 */	lfs f1, lbl_8041E9E8-_SDA2_BASE_(r2)
lbl_801AA934:
/* 801AA934 001A7934  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 801AA938 001A7938  3C 00 43 30 */	lis r0, 0x4330
/* 801AA93C 001A793C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801AA940 001A7940  3C 60 80 30 */	lis r3, lbl_802FA2A0@ha
/* 801AA944 001A7944  EC 00 08 2A */	fadds f0, f0, f1
/* 801AA948 001A7948  C8 23 A2 A0 */	lfd f1, lbl_802FA2A0@l(r3)
/* 801AA94C 001A794C  C0 42 D6 70 */	lfs f2, lbl_8041E9F0-_SDA2_BASE_(r2)
/* 801AA950 001A7950  C0 62 D6 6C */	lfs f3, lbl_8041E9EC-_SDA2_BASE_(r2)
/* 801AA954 001A7954  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 801AA958 001A7958  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 801AA95C 001A795C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AA960 001A7960  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AA964 001A7964  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801AA968 001A7968  EC 00 08 28 */	fsubs f0, f0, f1
/* 801AA96C 001A796C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801AA970 001A7970  EC 03 00 32 */	fmuls f0, f3, f0
/* 801AA974 001A7974  FC 00 00 1E */	fctiwz f0, f0
/* 801AA978 001A7978  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801AA97C 001A797C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801AA980 001A7980  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 801AA984 001A7984  48 00 00 50 */	b lbl_801AA9D4
lbl_801AA988:
/* 801AA988 001A7988  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 801AA98C 001A798C  3C 00 43 30 */	lis r0, 0x4330
/* 801AA990 001A7990  C0 02 D6 6C */	lfs f0, lbl_8041E9EC-_SDA2_BASE_(r2)
/* 801AA994 001A7994  3C 60 80 30 */	lis r3, lbl_802FA2A0@ha
/* 801AA998 001A7998  90 01 00 28 */	stw r0, 0x28(r1)
/* 801AA99C 001A799C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801AA9A0 001A79A0  C8 43 A2 A0 */	lfd f2, lbl_802FA2A0@l(r3)
/* 801AA9A4 001A79A4  C0 02 D6 74 */	lfs f0, lbl_8041E9F4-_SDA2_BASE_(r2)
/* 801AA9A8 001A79A8  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 801AA9AC 001A79AC  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 801AA9B0 001A79B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AA9B4 001A79B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801AA9B8 001A79B8  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 801AA9BC 001A79BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 801AA9C0 001A79C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AA9C4 001A79C4  FC 00 00 1E */	fctiwz f0, f0
/* 801AA9C8 001A79C8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801AA9CC 001A79CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AA9D0 001A79D0  90 1F 00 7C */	stw r0, 0x7c(r31)
lbl_801AA9D4:
/* 801AA9D4 001A79D4  2C 1E 00 03 */	cmpwi r30, 3
/* 801AA9D8 001A79D8  41 80 00 20 */	blt lbl_801AA9F8
/* 801AA9DC 001A79DC  40 82 00 0C */	bne lbl_801AA9E8
/* 801AA9E0 001A79E0  C0 02 D6 64 */	lfs f0, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AA9E4 001A79E4  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
lbl_801AA9E8:
/* 801AA9E8 001A79E8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 801AA9EC 001A79EC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801AA9F0 001A79F0  EC 01 00 2A */	fadds f0, f1, f0
/* 801AA9F4 001A79F4  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
lbl_801AA9F8:
/* 801AA9F8 001A79F8  2C 1E 00 03 */	cmpwi r30, 3
/* 801AA9FC 001A79FC  41 80 00 6C */	blt lbl_801AAA68
/* 801AAA00 001A7A00  2C 1E 00 06 */	cmpwi r30, 6
/* 801AAA04 001A7A04  40 80 00 18 */	bge lbl_801AAA1C
/* 801AAA08 001A7A08  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 801AAA0C 001A7A0C  C0 02 D6 78 */	lfs f0, lbl_8041E9F8-_SDA2_BASE_(r2)
/* 801AAA10 001A7A10  EC 01 00 2A */	fadds f0, f1, f0
/* 801AAA14 001A7A14  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 801AAA18 001A7A18  48 00 00 50 */	b lbl_801AAA68
lbl_801AAA1C:
/* 801AAA1C 001A7A1C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 801AAA20 001A7A20  3C 00 43 30 */	lis r0, 0x4330
/* 801AAA24 001A7A24  C0 02 D6 7C */	lfs f0, lbl_8041E9FC-_SDA2_BASE_(r2)
/* 801AAA28 001A7A28  3C 60 80 30 */	lis r3, lbl_802FA2A0@ha
/* 801AAA2C 001A7A2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801AAA30 001A7A30  EC 21 00 32 */	fmuls f1, f1, f0
/* 801AAA34 001A7A34  C8 43 A2 A0 */	lfd f2, lbl_802FA2A0@l(r3)
/* 801AAA38 001A7A38  C0 02 D6 74 */	lfs f0, lbl_8041E9F4-_SDA2_BASE_(r2)
/* 801AAA3C 001A7A3C  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 801AAA40 001A7A40  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 801AAA44 001A7A44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AAA48 001A7A48  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801AAA4C 001A7A4C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 801AAA50 001A7A50  EC 21 10 28 */	fsubs f1, f1, f2
/* 801AAA54 001A7A54  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AAA58 001A7A58  FC 00 00 1E */	fctiwz f0, f0
/* 801AAA5C 001A7A5C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801AAA60 001A7A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AAA64 001A7A64  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_801AAA68:
/* 801AAA68 001A7A68  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 801AAA6C 001A7A6C  38 61 00 14 */	addi r3, r1, 0x14
/* 801AAA70 001A7A70  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 801AAA74 001A7A74  EC 01 00 2A */	fadds f0, f1, f0
/* 801AAA78 001A7A78  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 801AAA7C 001A7A7C  4B E6 5C 45 */	bl dispCalcZ
/* 801AAA80 001A7A80  3C 80 80 1B */	lis r4, effBombDisp_DUPE_801aa41c@ha
/* 801AAA84 001A7A84  7F A3 EB 78 */	mr r3, r29
/* 801AAA88 001A7A88  38 A4 A4 1C */	addi r5, r4, effBombDisp_DUPE_801aa41c@l
/* 801AAA8C 001A7A8C  7F 86 E3 78 */	mr r6, r28
/* 801AAA90 001A7A90  38 80 00 02 */	li r4, 2
/* 801AAA94 001A7A94  4B E6 5F 85 */	bl dispEntry
lbl_801AAA98:
/* 801AAA98 001A7A98  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 801AAA9C 001A7A9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AAAA0 001A7AA0  7C 08 03 A6 */	mtlr r0
/* 801AAAA4 001A7AA4  38 21 00 50 */	addi r1, r1, 0x50
/* 801AAAA8 001A7AA8  4E 80 00 20 */	blr 

.global effBombN64Entry
effBombN64Entry:
/* 801AAAAC 001A7AAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AAAB0 001A7AB0  7C 08 02 A6 */	mflr r0
/* 801AAAB4 001A7AB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AAAB8 001A7AB8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801AAABC 001A7ABC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801AAAC0 001A7AC0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801AAAC4 001A7AC4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801AAAC8 001A7AC8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801AAACC 001A7ACC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 801AAAD0 001A7AD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AAAD4 001A7AD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801AAAD8 001A7AD8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801AAADC 001A7ADC  FF A0 08 90 */	fmr f29, f1
/* 801AAAE0 001A7AE0  7C 7D 1B 78 */	mr r29, r3
/* 801AAAE4 001A7AE4  FF C0 10 90 */	fmr f30, f2
/* 801AAAE8 001A7AE8  FF E0 18 90 */	fmr f31, f3
/* 801AAAEC 001A7AEC  4B EB 32 D1 */	bl effEntry
/* 801AAAF0 001A7AF0  2C 1D 00 03 */	cmpwi r29, 3
/* 801AAAF4 001A7AF4  7C 7F 1B 78 */	mr r31, r3
/* 801AAAF8 001A7AF8  3B C0 00 00 */	li r30, 0
/* 801AAAFC 001A7AFC  41 80 00 0C */	blt lbl_801AAB08
/* 801AAB00 001A7B00  3B C0 00 01 */	li r30, 1
/* 801AAB04 001A7B04  3B BD FF FD */	addi r29, r29, -3
lbl_801AAB08:
/* 801AAB08 001A7B08  3C 60 80 30 */	lis r3, lbl_802FA2A8@ha
/* 801AAB0C 001A7B0C  38 00 00 03 */	li r0, 3
/* 801AAB10 001A7B10  38 83 A2 A8 */	addi r4, r3, lbl_802FA2A8@l
/* 801AAB14 001A7B14  38 60 00 03 */	li r3, 3
/* 801AAB18 001A7B18  90 9F 00 14 */	stw r4, 0x14(r31)
/* 801AAB1C 001A7B1C  38 80 00 CC */	li r4, 0xcc
/* 801AAB20 001A7B20  90 1F 00 08 */	stw r0, 8(r31)
/* 801AAB24 001A7B24  4B E8 4F 69 */	bl __memAlloc
/* 801AAB28 001A7B28  3C 80 80 1B */	lis r4, effBombMain_DUPE_801aa7e8@ha
/* 801AAB2C 001A7B2C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 801AAB30 001A7B30  38 04 A7 E8 */	addi r0, r4, effBombMain_DUPE_801aa7e8@l
/* 801AAB34 001A7B34  38 C0 00 00 */	li r6, 0
/* 801AAB38 001A7B38  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801AAB3C 001A7B3C  38 A0 00 3C */	li r5, 0x3c
/* 801AAB40 001A7B40  2C 1D 00 00 */	cmpwi r29, 0
/* 801AAB44 001A7B44  38 80 00 04 */	li r4, 4
/* 801AAB48 001A7B48  D3 A3 00 04 */	stfs f29, 4(r3)
/* 801AAB4C 001A7B4C  38 00 FF FF */	li r0, -1
/* 801AAB50 001A7B50  D3 C3 00 08 */	stfs f30, 8(r3)
/* 801AAB54 001A7B54  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 801AAB58 001A7B58  90 C3 00 34 */	stw r6, 0x34(r3)
/* 801AAB5C 001A7B5C  90 A3 00 30 */	stw r5, 0x30(r3)
/* 801AAB60 001A7B60  93 A3 00 00 */	stw r29, 0(r3)
/* 801AAB64 001A7B64  93 C3 00 3C */	stw r30, 0x3c(r3)
/* 801AAB68 001A7B68  90 83 00 40 */	stw r4, 0x40(r3)
/* 801AAB6C 001A7B6C  41 82 00 08 */	beq lbl_801AAB74
/* 801AAB70 001A7B70  7F A0 EB 78 */	mr r0, r29
lbl_801AAB74:
/* 801AAB74 001A7B74  90 03 00 44 */	stw r0, 0x44(r3)
/* 801AAB78 001A7B78  38 00 00 00 */	li r0, 0
/* 801AAB7C 001A7B7C  2C 1D 00 01 */	cmpwi r29, 1
/* 801AAB80 001A7B80  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801AAB84 001A7B84  40 82 00 0C */	bne lbl_801AAB90
/* 801AAB88 001A7B88  C0 02 D6 64 */	lfs f0, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AAB8C 001A7B8C  48 00 00 08 */	b lbl_801AAB94
lbl_801AAB90:
/* 801AAB90 001A7B90  C0 02 D6 80 */	lfs f0, lbl_8041EA00-_SDA2_BASE_(r2)
lbl_801AAB94:
/* 801AAB94 001A7B94  2C 1D 00 01 */	cmpwi r29, 1
/* 801AAB98 001A7B98  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 801AAB9C 001A7B9C  40 82 00 0C */	bne lbl_801AABA8
/* 801AABA0 001A7BA0  C0 02 D6 64 */	lfs f0, lbl_8041E9E4-_SDA2_BASE_(r2)
/* 801AABA4 001A7BA4  48 00 00 08 */	b lbl_801AABAC
lbl_801AABA8:
/* 801AABA8 001A7BA8  C0 02 D6 80 */	lfs f0, lbl_8041EA00-_SDA2_BASE_(r2)
lbl_801AABAC:
/* 801AABAC 001A7BAC  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801AABB0 001A7BB0  2C 1D 00 01 */	cmpwi r29, 1
/* 801AABB4 001A7BB4  38 00 00 FF */	li r0, 0xff
/* 801AABB8 001A7BB8  93 A3 00 88 */	stw r29, 0x88(r3)
/* 801AABBC 001A7BBC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 801AABC0 001A7BC0  41 82 00 34 */	beq lbl_801AABF4
/* 801AABC4 001A7BC4  40 80 00 10 */	bge lbl_801AABD4
/* 801AABC8 001A7BC8  2C 1D 00 00 */	cmpwi r29, 0
/* 801AABCC 001A7BCC  40 80 00 14 */	bge lbl_801AABE0
/* 801AABD0 001A7BD0  48 00 00 48 */	b lbl_801AAC18
lbl_801AABD4:
/* 801AABD4 001A7BD4  2C 1D 00 03 */	cmpwi r29, 3
/* 801AABD8 001A7BD8  40 80 00 40 */	bge lbl_801AAC18
/* 801AABDC 001A7BDC  48 00 00 2C */	b lbl_801AAC08
lbl_801AABE0:
/* 801AABE0 001A7BE0  C0 22 D6 84 */	lfs f1, lbl_8041EA04-_SDA2_BASE_(r2)
/* 801AABE4 001A7BE4  C0 02 D6 88 */	lfs f0, lbl_8041EA08-_SDA2_BASE_(r2)
/* 801AABE8 001A7BE8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 801AABEC 001A7BEC  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 801AABF0 001A7BF0  48 00 00 28 */	b lbl_801AAC18
lbl_801AABF4:
/* 801AABF4 001A7BF4  C0 22 D6 8C */	lfs f1, lbl_8041EA0C-_SDA2_BASE_(r2)
/* 801AABF8 001A7BF8  C0 02 D6 90 */	lfs f0, lbl_8041EA10-_SDA2_BASE_(r2)
/* 801AABFC 001A7BFC  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 801AAC00 001A7C00  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 801AAC04 001A7C04  48 00 00 14 */	b lbl_801AAC18
lbl_801AAC08:
/* 801AAC08 001A7C08  C0 22 D6 94 */	lfs f1, lbl_8041EA14-_SDA2_BASE_(r2)
/* 801AAC0C 001A7C0C  C0 02 D6 98 */	lfs f0, lbl_8041EA18-_SDA2_BASE_(r2)
/* 801AAC10 001A7C10  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 801AAC14 001A7C14  D0 03 00 AC */	stfs f0, 0xac(r3)
lbl_801AAC18:
/* 801AAC18 001A7C18  C0 22 D6 60 */	lfs f1, lbl_8041E9E0-_SDA2_BASE_(r2)
/* 801AAC1C 001A7C1C  C0 02 D6 9C */	lfs f0, lbl_8041EA1C-_SDA2_BASE_(r2)
/* 801AAC20 001A7C20  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 801AAC24 001A7C24  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 801AAC28 001A7C28  7F E3 FB 78 */	mr r3, r31
/* 801AAC2C 001A7C2C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801AAC30 001A7C30  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801AAC34 001A7C34  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801AAC38 001A7C38  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801AAC3C 001A7C3C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 801AAC40 001A7C40  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801AAC44 001A7C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AAC48 001A7C48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801AAC4C 001A7C4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AAC50 001A7C50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801AAC54 001A7C54  7C 08 03 A6 */	mtlr r0
/* 801AAC58 001A7C58  38 21 00 50 */	addi r1, r1, 0x50
/* 801AAC5C 001A7C5C  4E 80 00 20 */	blr 

.global effBombN64SetCamId
effBombN64SetCamId:
/* 801AAC60 001A7C60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801AAC64 001A7C64  90 83 00 40 */	stw r4, 0x40(r3)
/* 801AAC68 001A7C68  4E 80 00 20 */	blr 