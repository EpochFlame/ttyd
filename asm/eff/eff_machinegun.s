.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effMachinegunDisp
effMachinegunDisp:
/* 80252644 0024F644  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80252648 0024F648  7C 08 02 A6 */	mflr r0
/* 8025264C 0024F64C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80252650 0024F650  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80252654 0024F654  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80252658 0024F658  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 8025265C 0024F65C  7C 7D 1B 78 */	mr r29, r3
/* 80252660 0024F660  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 80252664 0024F664  4B DB CA ED */	bl camGetPtr
/* 80252668 0024F668  7C 7F 1B 78 */	mr r31, r3
/* 8025266C 0024F66C  38 81 00 10 */	addi r4, r1, 0x10
/* 80252670 0024F670  38 60 00 89 */	li r3, 0x89
/* 80252674 0024F674  4B E0 B8 39 */	bl effGetTexObj
/* 80252678 0024F678  38 61 00 10 */	addi r3, r1, 0x10
/* 8025267C 0024F67C  38 80 00 00 */	li r4, 0
/* 80252680 0024F680  48 05 F3 FD */	bl GXLoadTexObj
/* 80252684 0024F684  38 60 00 01 */	li r3, 1
/* 80252688 0024F688  48 05 EA B1 */	bl GXSetNumChans
/* 8025268C 0024F68C  38 60 00 04 */	li r3, 4
/* 80252690 0024F690  38 80 00 00 */	li r4, 0
/* 80252694 0024F694  38 A0 00 00 */	li r5, 0
/* 80252698 0024F698  38 C0 00 00 */	li r6, 0
/* 8025269C 0024F69C  38 E0 00 00 */	li r7, 0
/* 802526A0 0024F6A0  39 00 00 00 */	li r8, 0
/* 802526A4 0024F6A4  39 20 00 02 */	li r9, 2
/* 802526A8 0024F6A8  48 05 EA CD */	bl GXSetChanCtrl
/* 802526AC 0024F6AC  80 A2 10 58 */	lwz r5, lbl_804223D8-_SDA2_BASE_(r2)
/* 802526B0 0024F6B0  38 81 00 0C */	addi r4, r1, 0xc
/* 802526B4 0024F6B4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802526B8 0024F6B8  38 60 00 04 */	li r3, 4
/* 802526BC 0024F6BC  90 A1 00 08 */	stw r5, 8(r1)
/* 802526C0 0024F6C0  98 01 00 0B */	stb r0, 0xb(r1)
/* 802526C4 0024F6C4  80 01 00 08 */	lwz r0, 8(r1)
/* 802526C8 0024F6C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802526CC 0024F6CC  48 05 E9 85 */	bl GXSetChanMatColor
/* 802526D0 0024F6D0  38 60 00 01 */	li r3, 1
/* 802526D4 0024F6D4  48 05 CB AD */	bl GXSetNumTexGens
/* 802526D8 0024F6D8  38 60 00 00 */	li r3, 0
/* 802526DC 0024F6DC  38 80 00 01 */	li r4, 1
/* 802526E0 0024F6E0  38 A0 00 04 */	li r5, 4
/* 802526E4 0024F6E4  38 C0 00 3C */	li r6, 0x3c
/* 802526E8 0024F6E8  38 E0 00 00 */	li r7, 0
/* 802526EC 0024F6EC  39 00 00 7D */	li r8, 0x7d
/* 802526F0 0024F6F0  48 05 C9 11 */	bl GXSetTexCoordGen2
/* 802526F4 0024F6F4  38 60 00 01 */	li r3, 1
/* 802526F8 0024F6F8  48 06 0A D1 */	bl GXSetNumTevStages
/* 802526FC 0024F6FC  38 60 00 00 */	li r3, 0
/* 80252700 0024F700  38 80 00 00 */	li r4, 0
/* 80252704 0024F704  38 A0 00 00 */	li r5, 0
/* 80252708 0024F708  38 C0 00 04 */	li r6, 4
/* 8025270C 0024F70C  48 06 09 21 */	bl GXSetTevOrder
/* 80252710 0024F710  38 60 00 00 */	li r3, 0
/* 80252714 0024F714  38 80 00 00 */	li r4, 0
/* 80252718 0024F718  38 A0 00 00 */	li r5, 0
/* 8025271C 0024F71C  38 C0 00 00 */	li r6, 0
/* 80252720 0024F720  38 E0 00 01 */	li r7, 1
/* 80252724 0024F724  39 00 00 00 */	li r8, 0
/* 80252728 0024F728  48 06 04 BD */	bl GXSetTevColorOp
/* 8025272C 0024F72C  38 60 00 00 */	li r3, 0
/* 80252730 0024F730  38 80 00 00 */	li r4, 0
/* 80252734 0024F734  38 A0 00 00 */	li r5, 0
/* 80252738 0024F738  38 C0 00 00 */	li r6, 0
/* 8025273C 0024F73C  38 E0 00 01 */	li r7, 1
/* 80252740 0024F740  39 00 00 00 */	li r8, 0
/* 80252744 0024F744  48 06 05 09 */	bl GXSetTevAlphaOp
/* 80252748 0024F748  38 60 00 00 */	li r3, 0
/* 8025274C 0024F74C  38 80 00 0F */	li r4, 0xf
/* 80252750 0024F750  38 A0 00 0F */	li r5, 0xf
/* 80252754 0024F754  38 C0 00 0F */	li r6, 0xf
/* 80252758 0024F758  38 E0 00 0A */	li r7, 0xa
/* 8025275C 0024F75C  48 06 04 01 */	bl GXSetTevColorIn
/* 80252760 0024F760  38 60 00 00 */	li r3, 0
/* 80252764 0024F764  38 80 00 07 */	li r4, 7
/* 80252768 0024F768  38 A0 00 05 */	li r5, 5
/* 8025276C 0024F76C  38 C0 00 04 */	li r6, 4
/* 80252770 0024F770  38 E0 00 07 */	li r7, 7
/* 80252774 0024F774  48 06 04 2D */	bl GXSetTevAlphaIn
/* 80252778 0024F778  38 60 00 00 */	li r3, 0
/* 8025277C 0024F77C  48 05 D7 0D */	bl GXSetCullMode
/* 80252780 0024F780  48 05 BF 9D */	bl GXClearVtxDesc
/* 80252784 0024F784  38 60 00 09 */	li r3, 9
/* 80252788 0024F788  38 80 00 01 */	li r4, 1
/* 8025278C 0024F78C  48 05 B6 79 */	bl GXSetVtxDesc
/* 80252790 0024F790  38 60 00 0D */	li r3, 0xd
/* 80252794 0024F794  38 80 00 01 */	li r4, 1
/* 80252798 0024F798  48 05 B6 6D */	bl GXSetVtxDesc
/* 8025279C 0024F79C  38 60 00 00 */	li r3, 0
/* 802527A0 0024F7A0  38 80 00 09 */	li r4, 9
/* 802527A4 0024F7A4  38 A0 00 01 */	li r5, 1
/* 802527A8 0024F7A8  38 C0 00 04 */	li r6, 4
/* 802527AC 0024F7AC  38 E0 00 00 */	li r7, 0
/* 802527B0 0024F7B0  48 05 BF A5 */	bl GXSetVtxAttrFmt
/* 802527B4 0024F7B4  38 60 00 00 */	li r3, 0
/* 802527B8 0024F7B8  38 80 00 0D */	li r4, 0xd
/* 802527BC 0024F7BC  38 A0 00 01 */	li r5, 1
/* 802527C0 0024F7C0  38 C0 00 04 */	li r6, 4
/* 802527C4 0024F7C4  38 E0 00 00 */	li r7, 0
/* 802527C8 0024F7C8  48 05 BF 8D */	bl GXSetVtxAttrFmt
/* 802527CC 0024F7CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802527D0 0024F7D0  38 61 00 90 */	addi r3, r1, 0x90
/* 802527D4 0024F7D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 802527D8 0024F7D8  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 802527DC 0024F7DC  48 04 5C 51 */	bl PSMTXTrans
/* 802527E0 0024F7E0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802527E4 0024F7E4  38 61 00 30 */	addi r3, r1, 0x30
/* 802527E8 0024F7E8  FC 40 08 90 */	fmr f2, f1
/* 802527EC 0024F7EC  FC 60 08 90 */	fmr f3, f1
/* 802527F0 0024F7F0  48 04 5C BD */	bl PSMTXScale
/* 802527F4 0024F7F4  7F A3 EB 78 */	mr r3, r29
/* 802527F8 0024F7F8  4B DB C9 59 */	bl camGetPtr
/* 802527FC 0024F7FC  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 80252800 0024F800  38 61 00 60 */	addi r3, r1, 0x60
/* 80252804 0024F804  C0 02 10 5C */	lfs f0, lbl_804223DC-_SDA2_BASE_(r2)
/* 80252808 0024F808  38 80 00 79 */	li r4, 0x79
/* 8025280C 0024F80C  FC 20 08 50 */	fneg f1, f1
/* 80252810 0024F810  EC 20 00 72 */	fmuls f1, f0, f1
/* 80252814 0024F814  48 04 59 D9 */	bl PSMTXRotRad
/* 80252818 0024F818  38 61 00 90 */	addi r3, r1, 0x90
/* 8025281C 0024F81C  38 81 00 60 */	addi r4, r1, 0x60
/* 80252820 0024F820  7C 65 1B 78 */	mr r5, r3
/* 80252824 0024F824  48 04 57 3D */	bl PSMTXConcat
/* 80252828 0024F828  C0 22 10 60 */	lfs f1, lbl_804223E0-_SDA2_BASE_(r2)
/* 8025282C 0024F82C  38 61 00 60 */	addi r3, r1, 0x60
/* 80252830 0024F830  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80252834 0024F834  38 80 00 7A */	li r4, 0x7a
/* 80252838 0024F838  C0 42 10 5C */	lfs f2, lbl_804223DC-_SDA2_BASE_(r2)
/* 8025283C 0024F83C  EC 01 00 2A */	fadds f0, f1, f0
/* 80252840 0024F840  EC 22 00 32 */	fmuls f1, f2, f0
/* 80252844 0024F844  48 04 59 A9 */	bl PSMTXRotRad
/* 80252848 0024F848  38 61 00 90 */	addi r3, r1, 0x90
/* 8025284C 0024F84C  38 81 00 60 */	addi r4, r1, 0x60
/* 80252850 0024F850  7C 65 1B 78 */	mr r5, r3
/* 80252854 0024F854  48 04 57 0D */	bl PSMTXConcat
/* 80252858 0024F858  38 61 00 90 */	addi r3, r1, 0x90
/* 8025285C 0024F85C  38 81 00 30 */	addi r4, r1, 0x30
/* 80252860 0024F860  7C 65 1B 78 */	mr r5, r3
/* 80252864 0024F864  48 04 56 FD */	bl PSMTXConcat
/* 80252868 0024F868  38 81 00 90 */	addi r4, r1, 0x90
/* 8025286C 0024F86C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 80252870 0024F870  7C 85 23 78 */	mr r5, r4
/* 80252874 0024F874  48 04 56 ED */	bl PSMTXConcat
/* 80252878 0024F878  38 61 00 90 */	addi r3, r1, 0x90
/* 8025287C 0024F87C  38 80 00 00 */	li r4, 0
/* 80252880 0024F880  48 06 1C 79 */	bl GXLoadPosMtxImm
/* 80252884 0024F884  38 60 00 00 */	li r3, 0
/* 80252888 0024F888  48 06 1D 11 */	bl GXSetCurrentMtx
/* 8025288C 0024F88C  38 60 00 80 */	li r3, 0x80
/* 80252890 0024F890  38 80 00 00 */	li r4, 0
/* 80252894 0024F894  38 A0 00 04 */	li r5, 4
/* 80252898 0024F898  48 05 D3 D1 */	bl GXBegin
/* 8025289C 0024F89C  C0 22 10 64 */	lfs f1, lbl_804223E4-_SDA2_BASE_(r2)
/* 802528A0 0024F8A0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802528A4 0024F8A4  C0 02 10 68 */	lfs f0, lbl_804223E8-_SDA2_BASE_(r2)
/* 802528A8 0024F8A8  FC 40 08 50 */	fneg f2, f1
/* 802528AC 0024F8AC  C0 22 10 6C */	lfs f1, lbl_804223EC-_SDA2_BASE_(r2)
/* 802528B0 0024F8B0  EC 42 00 32 */	fmuls f2, f2, f0
/* 802528B4 0024F8B4  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802528B8 0024F8B8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802528BC 0024F8BC  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 802528C0 0024F8C0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528C4 0024F8C4  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 802528C8 0024F8C8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528CC 0024F8CC  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 802528D0 0024F8D0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528D4 0024F8D4  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802528D8 0024F8D8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802528DC 0024F8DC  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 802528E0 0024F8E0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528E4 0024F8E4  C0 02 10 74 */	lfs f0, lbl_804223F4-_SDA2_BASE_(r2)
/* 802528E8 0024F8E8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528EC 0024F8EC  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 802528F0 0024F8F0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802528F4 0024F8F4  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 802528F8 0024F8F8  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 802528FC 0024F8FC  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 80252900 0024F900  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80252904 0024F904  C0 02 10 74 */	lfs f0, lbl_804223F4-_SDA2_BASE_(r2)
/* 80252908 0024F908  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8025290C 0024F90C  C0 02 10 74 */	lfs f0, lbl_804223F4-_SDA2_BASE_(r2)
/* 80252910 0024F910  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80252914 0024F914  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 80252918 0024F918  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8025291C 0024F91C  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 80252920 0024F920  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80252924 0024F924  C0 02 10 70 */	lfs f0, lbl_804223F0-_SDA2_BASE_(r2)
/* 80252928 0024F928  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8025292C 0024F92C  C0 02 10 74 */	lfs f0, lbl_804223F4-_SDA2_BASE_(r2)
/* 80252930 0024F930  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80252934 0024F934  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80252938 0024F938  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8025293C 0024F93C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 80252940 0024F940  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80252944 0024F944  7C 08 03 A6 */	mtlr r0
/* 80252948 0024F948  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8025294C 0024F94C  4E 80 00 20 */	blr 
effMachinegunMain:
/* 80252950 0024F950  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80252954 0024F954  7C 08 02 A6 */	mflr r0
/* 80252958 0024F958  3C 80 80 30 */	lis r4, lbl_80301420@ha
/* 8025295C 0024F95C  C0 42 10 78 */	lfs f2, lbl_804223F8-_SDA2_BASE_(r2)
/* 80252960 0024F960  90 01 00 34 */	stw r0, 0x34(r1)
/* 80252964 0024F964  38 A4 14 20 */	addi r5, r4, lbl_80301420@l
/* 80252968 0024F968  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025296C 0024F96C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80252970 0024F970  7C 7E 1B 78 */	mr r30, r3
/* 80252974 0024F974  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80252978 0024F978  80 85 00 00 */	lwz r4, 0(r5)
/* 8025297C 0024F97C  80 65 00 04 */	lwz r3, 4(r5)
/* 80252980 0024F980  80 05 00 08 */	lwz r0, 8(r5)
/* 80252984 0024F984  90 81 00 08 */	stw r4, 8(r1)
/* 80252988 0024F988  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8025298C 0024F98C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80252990 0024F990  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80252994 0024F994  D0 01 00 08 */	stfs f0, 8(r1)
/* 80252998 0024F998  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8025299C 0024F99C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802529A0 0024F9A0  80 81 00 08 */	lwz r4, 8(r1)
/* 802529A4 0024F9A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802529A8 0024F9A8  C0 02 10 7C */	lfs f0, lbl_804223FC-_SDA2_BASE_(r2)
/* 802529AC 0024F9AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802529B0 0024F9B0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802529B4 0024F9B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802529B8 0024F9B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 802529BC 0024F9BC  90 61 00 18 */	stw r3, 0x18(r1)
/* 802529C0 0024F9C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802529C4 0024F9C4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802529C8 0024F9C8  EC 22 00 72 */	fmuls f1, f2, f1
/* 802529CC 0024F9CC  EC 21 00 24 */	fdivs f1, f1, f0
/* 802529D0 0024F9D0  48 01 94 C1 */	bl cos
/* 802529D4 0024F9D4  FC 60 08 18 */	frsp f3, f1
/* 802529D8 0024F9D8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 802529DC 0024F9DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802529E0 0024F9E0  C0 42 10 78 */	lfs f2, lbl_804223F8-_SDA2_BASE_(r2)
/* 802529E4 0024F9E4  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 802529E8 0024F9E8  C0 02 10 7C */	lfs f0, lbl_804223FC-_SDA2_BASE_(r2)
/* 802529EC 0024F9EC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 802529F0 0024F9F0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802529F4 0024F9F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 802529F8 0024F9F8  EC 21 00 24 */	fdivs f1, f1, f0
/* 802529FC 0024F9FC  48 01 99 FD */	bl sin
/* 80252A00 0024FA00  FC 60 08 18 */	frsp f3, f1
/* 80252A04 0024FA04  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80252A08 0024FA08  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80252A0C 0024FA0C  C0 02 10 80 */	lfs f0, lbl_80422400-_SDA2_BASE_(r2)
/* 80252A10 0024FA10  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 80252A14 0024FA14  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80252A18 0024FA18  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80252A1C 0024FA1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80252A20 0024FA20  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80252A24 0024FA24  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80252A28 0024FA28  38 03 FF F6 */	addi r0, r3, -10
/* 80252A2C 0024FA2C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80252A30 0024FA30  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80252A34 0024FA34  2C 00 00 00 */	cmpwi r0, 0
/* 80252A38 0024FA38  40 80 00 10 */	bge lbl_80252A48
/* 80252A3C 0024FA3C  7F C3 F3 78 */	mr r3, r30
/* 80252A40 0024FA40  4B E0 B1 45 */	bl effDelete
/* 80252A44 0024FA44  48 00 00 24 */	b lbl_80252A68
lbl_80252A48:
/* 80252A48 0024FA48  38 61 00 14 */	addi r3, r1, 0x14
/* 80252A4C 0024FA4C  4B DB DC 75 */	bl dispCalcZ
/* 80252A50 0024FA50  3C 60 80 25 */	lis r3, effMachinegunDisp@ha
/* 80252A54 0024FA54  7F C6 F3 78 */	mr r6, r30
/* 80252A58 0024FA58  38 A3 26 44 */	addi r5, r3, effMachinegunDisp@l
/* 80252A5C 0024FA5C  38 80 00 02 */	li r4, 2
/* 80252A60 0024FA60  38 60 00 04 */	li r3, 4
/* 80252A64 0024FA64  4B DB DF B5 */	bl dispEntry
lbl_80252A68:
/* 80252A68 0024FA68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80252A6C 0024FA6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80252A70 0024FA70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80252A74 0024FA74  7C 08 03 A6 */	mtlr r0
/* 80252A78 0024FA78  38 21 00 30 */	addi r1, r1, 0x30
/* 80252A7C 0024FA7C  4E 80 00 20 */	blr 

.global effMachinegunEntry
effMachinegunEntry:
/* 80252A80 0024FA80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80252A84 0024FA84  7C 08 02 A6 */	mflr r0
/* 80252A88 0024FA88  90 01 00 44 */	stw r0, 0x44(r1)
/* 80252A8C 0024FA8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80252A90 0024FA90  48 00 BE AD */	bl _savefpr_26
/* 80252A94 0024FA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252A98 0024FA98  93 C1 00 08 */	stw r30, 8(r1)
/* 80252A9C 0024FA9C  FF 40 08 90 */	fmr f26, f1
/* 80252AA0 0024FAA0  7C 7E 1B 78 */	mr r30, r3
/* 80252AA4 0024FAA4  FF 60 10 90 */	fmr f27, f2
/* 80252AA8 0024FAA8  FF 80 18 90 */	fmr f28, f3
/* 80252AAC 0024FAAC  FF A0 20 90 */	fmr f29, f4
/* 80252AB0 0024FAB0  FF C0 28 90 */	fmr f30, f5
/* 80252AB4 0024FAB4  FF E0 30 90 */	fmr f31, f6
/* 80252AB8 0024FAB8  4B E0 B3 05 */	bl effEntry
/* 80252ABC 0024FABC  3C 80 80 30 */	lis r4, lbl_8030142C@ha
/* 80252AC0 0024FAC0  7C 7F 1B 78 */	mr r31, r3
/* 80252AC4 0024FAC4  38 84 14 2C */	addi r4, r4, lbl_8030142C@l
/* 80252AC8 0024FAC8  38 00 00 01 */	li r0, 1
/* 80252ACC 0024FACC  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80252AD0 0024FAD0  38 60 00 03 */	li r3, 3
/* 80252AD4 0024FAD4  38 80 00 28 */	li r4, 0x28
/* 80252AD8 0024FAD8  90 1F 00 08 */	stw r0, 8(r31)
/* 80252ADC 0024FADC  4B DD CF B1 */	bl __memAlloc
/* 80252AE0 0024FAE0  3C 80 80 25 */	lis r4, effMachinegunMain@ha
/* 80252AE4 0024FAE4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80252AE8 0024FAE8  38 84 29 50 */	addi r4, r4, effMachinegunMain@l
/* 80252AEC 0024FAEC  38 00 00 FF */	li r0, 0xff
/* 80252AF0 0024FAF0  90 9F 00 10 */	stw r4, 0x10(r31)
/* 80252AF4 0024FAF4  93 C3 00 00 */	stw r30, 0(r3)
/* 80252AF8 0024FAF8  D3 43 00 04 */	stfs f26, 4(r3)
/* 80252AFC 0024FAFC  D3 63 00 08 */	stfs f27, 8(r3)
/* 80252B00 0024FB00  D3 83 00 0C */	stfs f28, 0xc(r3)
/* 80252B04 0024FB04  D3 A3 00 14 */	stfs f29, 0x14(r3)
/* 80252B08 0024FB08  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80252B0C 0024FB0C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80252B10 0024FB10  D3 C3 00 18 */	stfs f30, 0x18(r3)
/* 80252B14 0024FB14  7F E3 FB 78 */	mr r3, r31
/* 80252B18 0024FB18  39 61 00 40 */	addi r11, r1, 0x40
/* 80252B1C 0024FB1C  48 00 BE 6D */	bl _restfpr_26
/* 80252B20 0024FB20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80252B24 0024FB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252B28 0024FB28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80252B2C 0024FB2C  7C 08 03 A6 */	mtlr r0
/* 80252B30 0024FB30  38 21 00 40 */	addi r1, r1, 0x40
/* 80252B34 0024FB34  4E 80 00 20 */	blr 