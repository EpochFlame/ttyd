.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effLaserDisp
effLaserDisp:
/* 802521A8 0024F1A8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802521AC 0024F1AC  7C 08 02 A6 */	mflr r0
/* 802521B0 0024F1B0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802521B4 0024F1B4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 802521B8 0024F1B8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 802521BC 0024F1BC  7C 7E 1B 78 */	mr r30, r3
/* 802521C0 0024F1C0  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 802521C4 0024F1C4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802521C8 0024F1C8  2C 00 FF FF */	cmpwi r0, -1
/* 802521CC 0024F1CC  41 82 00 F0 */	beq lbl_802522BC
/* 802521D0 0024F1D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802521D4 0024F1D4  38 61 00 70 */	addi r3, r1, 0x70
/* 802521D8 0024F1D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 802521DC 0024F1DC  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 802521E0 0024F1E0  48 04 62 4D */	bl PSMTXTrans
/* 802521E4 0024F1E4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 802521E8 0024F1E8  38 61 00 40 */	addi r3, r1, 0x40
/* 802521EC 0024F1EC  FC 40 08 90 */	fmr f2, f1
/* 802521F0 0024F1F0  FC 60 08 90 */	fmr f3, f1
/* 802521F4 0024F1F4  48 04 62 B9 */	bl PSMTXScale
/* 802521F8 0024F1F8  7F C3 F3 78 */	mr r3, r30
/* 802521FC 0024F1FC  4B DB CF 55 */	bl camGetPtr
/* 80252200 0024F200  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 80252204 0024F204  38 61 00 10 */	addi r3, r1, 0x10
/* 80252208 0024F208  C0 02 10 28 */	lfs f0, lbl_804223A8-_SDA2_BASE_(r2)
/* 8025220C 0024F20C  38 80 00 79 */	li r4, 0x79
/* 80252210 0024F210  FC 20 08 50 */	fneg f1, f1
/* 80252214 0024F214  EC 20 00 72 */	fmuls f1, f0, f1
/* 80252218 0024F218  48 04 5F D5 */	bl PSMTXRotRad
/* 8025221C 0024F21C  38 61 00 70 */	addi r3, r1, 0x70
/* 80252220 0024F220  38 81 00 10 */	addi r4, r1, 0x10
/* 80252224 0024F224  7C 65 1B 78 */	mr r5, r3
/* 80252228 0024F228  48 04 5D 39 */	bl PSMTXConcat
/* 8025222C 0024F22C  38 61 00 70 */	addi r3, r1, 0x70
/* 80252230 0024F230  38 81 00 40 */	addi r4, r1, 0x40
/* 80252234 0024F234  7C 65 1B 78 */	mr r5, r3
/* 80252238 0024F238  48 04 5D 29 */	bl PSMTXConcat
/* 8025223C 0024F23C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252240 0024F240  38 80 00 40 */	li r4, 0x40
/* 80252244 0024F244  4B DE DE 51 */	bl animPoseSetMaterialFlagOn
/* 80252248 0024F248  80 62 10 24 */	lwz r3, lbl_804223A4-_SDA2_BASE_(r2)
/* 8025224C 0024F24C  38 81 00 0C */	addi r4, r1, 0xc
/* 80252250 0024F250  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80252254 0024F254  90 61 00 08 */	stw r3, 8(r1)
/* 80252258 0024F258  98 01 00 0B */	stb r0, 0xb(r1)
/* 8025225C 0024F25C  80 01 00 08 */	lwz r0, 8(r1)
/* 80252260 0024F260  90 01 00 0C */	stw r0, 0xc(r1)
/* 80252264 0024F264  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252268 0024F268  4B DE DD B1 */	bl animPoseSetMaterialEvtColor
/* 8025226C 0024F26C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252270 0024F270  4B DE C4 21 */	bl animPoseMain
/* 80252274 0024F274  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252278 0024F278  38 81 00 70 */	addi r4, r1, 0x70
/* 8025227C 0024F27C  C0 22 10 2C */	lfs f1, lbl_804223AC-_SDA2_BASE_(r2)
/* 80252280 0024F280  38 A0 00 01 */	li r5, 1
/* 80252284 0024F284  C0 42 10 30 */	lfs f2, lbl_804223B0-_SDA2_BASE_(r2)
/* 80252288 0024F288  4B DE 8B B5 */	bl animPoseDrawMtx
/* 8025228C 0024F28C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252290 0024F290  38 81 00 70 */	addi r4, r1, 0x70
/* 80252294 0024F294  C0 22 10 2C */	lfs f1, lbl_804223AC-_SDA2_BASE_(r2)
/* 80252298 0024F298  38 A0 00 02 */	li r5, 2
/* 8025229C 0024F29C  C0 42 10 30 */	lfs f2, lbl_804223B0-_SDA2_BASE_(r2)
/* 802522A0 0024F2A0  4B DE 8B 9D */	bl animPoseDrawMtx
/* 802522A4 0024F2A4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802522A8 0024F2A8  38 81 00 70 */	addi r4, r1, 0x70
/* 802522AC 0024F2AC  C0 22 10 2C */	lfs f1, lbl_804223AC-_SDA2_BASE_(r2)
/* 802522B0 0024F2B0  38 A0 00 03 */	li r5, 3
/* 802522B4 0024F2B4  C0 42 10 30 */	lfs f2, lbl_804223B0-_SDA2_BASE_(r2)
/* 802522B8 0024F2B8  4B DE 8B 85 */	bl animPoseDrawMtx
lbl_802522BC:
/* 802522BC 0024F2BC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802522C0 0024F2C0  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 802522C4 0024F2C4  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 802522C8 0024F2C8  7C 08 03 A6 */	mtlr r0
/* 802522CC 0024F2CC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802522D0 0024F2D0  4E 80 00 20 */	blr 
effLaserMain:
/* 802522D4 0024F2D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802522D8 0024F2D8  7C 08 02 A6 */	mflr r0
/* 802522DC 0024F2DC  3C 80 80 30 */	lis r4, lbl_80301400@ha
/* 802522E0 0024F2E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802522E4 0024F2E4  38 A4 14 00 */	addi r5, r4, lbl_80301400@l
/* 802522E8 0024F2E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802522EC 0024F2EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802522F0 0024F2F0  7C 7E 1B 78 */	mr r30, r3
/* 802522F4 0024F2F4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802522F8 0024F2F8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802522FC 0024F2FC  80 85 00 00 */	lwz r4, 0(r5)
/* 80252300 0024F300  80 65 00 04 */	lwz r3, 4(r5)
/* 80252304 0024F304  80 05 00 08 */	lwz r0, 8(r5)
/* 80252308 0024F308  90 81 00 0C */	stw r4, 0xc(r1)
/* 8025230C 0024F30C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80252310 0024F310  90 61 00 10 */	stw r3, 0x10(r1)
/* 80252314 0024F314  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80252318 0024F318  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8025231C 0024F31C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80252320 0024F320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252324 0024F324  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80252328 0024F328  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8025232C 0024F32C  80 8D 90 B0 */	lwz r4, lbl_80410310-_SDA_BASE_(r13)
/* 80252330 0024F330  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80252334 0024F334  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80252338 0024F338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025233C 0024F33C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80252340 0024F340  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80252344 0024F344  90 01 00 20 */	stw r0, 0x20(r1)
/* 80252348 0024F348  80 7E 00 00 */	lwz r3, 0(r30)
/* 8025234C 0024F34C  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80252350 0024F350  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80252354 0024F354  7C 85 00 D0 */	neg r4, r5
/* 80252358 0024F358  7C 84 2B 78 */	or r4, r4, r5
/* 8025235C 0024F35C  54 9D 0F FE */	srwi r29, r4, 0x1f
/* 80252360 0024F360  41 82 00 28 */	beq lbl_80252388
/* 80252364 0024F364  54 60 07 B8 */	rlwinm r0, r3, 0, 0x1e, 0x1c
/* 80252368 0024F368  90 1E 00 00 */	stw r0, 0(r30)
/* 8025236C 0024F36C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252370 0024F370  2C 03 FF FF */	cmpwi r3, -1
/* 80252374 0024F374  41 82 00 08 */	beq lbl_8025237C
/* 80252378 0024F378  4B DE 88 BD */	bl animPoseRelease
lbl_8025237C:
/* 8025237C 0024F37C  7F C3 F3 78 */	mr r3, r30
/* 80252380 0024F380  4B E0 B8 05 */	bl effDelete
/* 80252384 0024F384  48 00 01 98 */	b lbl_8025251C
lbl_80252388:
/* 80252388 0024F388  3C 60 80 30 */	lis r3, lbl_8030140C@ha
/* 8025238C 0024F38C  7F A4 EB 78 */	mr r4, r29
/* 80252390 0024F390  38 63 14 0C */	addi r3, r3, lbl_8030140C@l
/* 80252394 0024F394  38 A0 00 00 */	li r5, 0
/* 80252398 0024F398  4B DE 72 D9 */	bl animGroupBaseAsync
/* 8025239C 0024F39C  2C 03 00 00 */	cmpwi r3, 0
/* 802523A0 0024F3A0  41 82 01 7C */	beq lbl_8025251C
/* 802523A4 0024F3A4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802523A8 0024F3A8  2C 00 00 02 */	cmpwi r0, 2
/* 802523AC 0024F3AC  41 82 00 D4 */	beq lbl_80252480
/* 802523B0 0024F3B0  40 80 00 14 */	bge lbl_802523C4
/* 802523B4 0024F3B4  2C 00 00 00 */	cmpwi r0, 0
/* 802523B8 0024F3B8  41 82 00 18 */	beq lbl_802523D0
/* 802523BC 0024F3BC  40 80 00 60 */	bge lbl_8025241C
/* 802523C0 0024F3C0  48 00 01 3C */	b lbl_802524FC
lbl_802523C4:
/* 802523C4 0024F3C4  2C 00 00 04 */	cmpwi r0, 4
/* 802523C8 0024F3C8  40 80 01 34 */	bge lbl_802524FC
/* 802523CC 0024F3CC  48 00 01 04 */	b lbl_802524D0
lbl_802523D0:
/* 802523D0 0024F3D0  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802523D4 0024F3D4  2C 00 FF FF */	cmpwi r0, -1
/* 802523D8 0024F3D8  40 82 00 34 */	bne lbl_8025240C
/* 802523DC 0024F3DC  3C 60 80 30 */	lis r3, lbl_8030140C@ha
/* 802523E0 0024F3E0  7F A4 EB 78 */	mr r4, r29
/* 802523E4 0024F3E4  38 63 14 0C */	addi r3, r3, lbl_8030140C@l
/* 802523E8 0024F3E8  4B DE EC E9 */	bl animPoseEntry
/* 802523EC 0024F3EC  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802523F0 0024F3F0  38 82 10 34 */	addi r4, r2, lbl_804223B4-_SDA2_BASE_
/* 802523F4 0024F3F4  38 A0 00 01 */	li r5, 1
/* 802523F8 0024F3F8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802523FC 0024F3FC  4B DE E6 D9 */	bl animPoseSetAnim
/* 80252400 0024F400  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252404 0024F404  C0 22 10 38 */	lfs f1, lbl_804223B8-_SDA2_BASE_(r2)
/* 80252408 0024F408  4B DE E9 89 */	bl animPoseSetLocalTimeRate
lbl_8025240C:
/* 8025240C 0024F40C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80252410 0024F410  38 03 00 01 */	addi r0, r3, 1
/* 80252414 0024F414  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80252418 0024F418  48 00 00 E4 */	b lbl_802524FC
lbl_8025241C:
/* 8025241C 0024F41C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80252420 0024F420  38 60 00 01 */	li r3, 1
/* 80252424 0024F424  C0 02 10 3C */	lfs f0, lbl_804223BC-_SDA2_BASE_(r2)
/* 80252428 0024F428  38 A0 00 3C */	li r5, 0x3c
/* 8025242C 0024F42C  38 04 00 01 */	addi r0, r4, 1
/* 80252430 0024F430  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80252434 0024F434  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80252438 0024F438  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8025243C 0024F43C  EC 20 10 2A */	fadds f1, f0, f2
/* 80252440 0024F440  4B DB 47 CD */	bl intplGetValue
/* 80252444 0024F444  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80252448 0024F448  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8025244C 0024F44C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80252450 0024F450  41 80 00 AC */	blt lbl_802524FC
/* 80252454 0024F454  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252458 0024F458  38 82 10 40 */	addi r4, r2, lbl_804223C0-_SDA2_BASE_
/* 8025245C 0024F45C  38 A0 00 01 */	li r5, 1
/* 80252460 0024F460  4B DE E6 75 */	bl animPoseSetAnim
/* 80252464 0024F464  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80252468 0024F468  C0 22 10 38 */	lfs f1, lbl_804223B8-_SDA2_BASE_(r2)
/* 8025246C 0024F46C  4B DE E9 25 */	bl animPoseSetLocalTimeRate
/* 80252470 0024F470  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80252474 0024F474  38 03 00 02 */	addi r0, r3, 2
/* 80252478 0024F478  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8025247C 0024F47C  48 00 00 80 */	b lbl_802524FC
lbl_80252480:
/* 80252480 0024F480  4B DB E7 69 */	bl fadeIsFinish
/* 80252484 0024F484  2C 03 00 00 */	cmpwi r3, 0
/* 80252488 0024F488  41 82 00 74 */	beq lbl_802524FC
/* 8025248C 0024F48C  80 02 10 20 */	lwz r0, lbl_804223A0-_SDA2_BASE_(r2)
/* 80252490 0024F490  38 A1 00 08 */	addi r5, r1, 8
/* 80252494 0024F494  38 60 00 10 */	li r3, 0x10
/* 80252498 0024F498  38 80 00 64 */	li r4, 0x64
/* 8025249C 0024F49C  90 01 00 08 */	stw r0, 8(r1)
/* 802524A0 0024F4A0  4B DC 0C 11 */	bl fadeEntry
/* 802524A4 0024F4A4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802524A8 0024F4A8  38 82 10 40 */	addi r4, r2, lbl_804223C0-_SDA2_BASE_
/* 802524AC 0024F4AC  38 A0 00 01 */	li r5, 1
/* 802524B0 0024F4B0  4B DE E6 25 */	bl animPoseSetAnim
/* 802524B4 0024F4B4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802524B8 0024F4B8  C0 22 10 38 */	lfs f1, lbl_804223B8-_SDA2_BASE_(r2)
/* 802524BC 0024F4BC  4B DE E8 D5 */	bl animPoseSetLocalTimeRate
/* 802524C0 0024F4C0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802524C4 0024F4C4  38 03 00 01 */	addi r0, r3, 1
/* 802524C8 0024F4C8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802524CC 0024F4CC  48 00 00 30 */	b lbl_802524FC
lbl_802524D0:
/* 802524D0 0024F4D0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802524D4 0024F4D4  38 03 FF FF */	addi r0, r3, -1
/* 802524D8 0024F4D8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802524DC 0024F4DC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802524E0 0024F4E0  2C 00 00 00 */	cmpwi r0, 0
/* 802524E4 0024F4E4  40 80 00 18 */	bge lbl_802524FC
/* 802524E8 0024F4E8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802524EC 0024F4EC  4B DE 87 49 */	bl animPoseRelease
/* 802524F0 0024F4F0  7F C3 F3 78 */	mr r3, r30
/* 802524F4 0024F4F4  4B E0 B6 91 */	bl effDelete
/* 802524F8 0024F4F8  48 00 00 24 */	b lbl_8025251C
lbl_802524FC:
/* 802524FC 0024F4FC  38 61 00 18 */	addi r3, r1, 0x18
/* 80252500 0024F500  4B DB E1 C1 */	bl dispCalcZ
/* 80252504 0024F504  3C 60 80 25 */	lis r3, effLaserDisp@ha
/* 80252508 0024F508  7F C6 F3 78 */	mr r6, r30
/* 8025250C 0024F50C  38 A3 21 A8 */	addi r5, r3, effLaserDisp@l
/* 80252510 0024F510  38 80 00 02 */	li r4, 2
/* 80252514 0024F514  38 60 00 04 */	li r3, 4
/* 80252518 0024F518  4B DB E5 01 */	bl dispEntry
lbl_8025251C:
/* 8025251C 0024F51C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80252520 0024F520  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80252524 0024F524  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80252528 0024F528  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8025252C 0024F52C  7C 08 03 A6 */	mtlr r0
/* 80252530 0024F530  38 21 00 40 */	addi r1, r1, 0x40
/* 80252534 0024F534  4E 80 00 20 */	blr 

.global effLaserEntry
effLaserEntry:
/* 80252538 0024F538  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025253C 0024F53C  7C 08 02 A6 */	mflr r0
/* 80252540 0024F540  90 01 00 44 */	stw r0, 0x44(r1)
/* 80252544 0024F544  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80252548 0024F548  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8025254C 0024F54C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80252550 0024F550  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80252554 0024F554  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80252558 0024F558  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 8025255C 0024F55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252560 0024F560  93 C1 00 08 */	stw r30, 8(r1)
/* 80252564 0024F564  FF A0 08 90 */	fmr f29, f1
/* 80252568 0024F568  7C 7E 1B 78 */	mr r30, r3
/* 8025256C 0024F56C  FF C0 10 90 */	fmr f30, f2
/* 80252570 0024F570  FF E0 18 90 */	fmr f31, f3
/* 80252574 0024F574  4B E0 B8 49 */	bl effEntry
/* 80252578 0024F578  38 82 10 44 */	addi r4, r2, lbl_804223C4-_SDA2_BASE_
/* 8025257C 0024F57C  7C 7F 1B 78 */	mr r31, r3
/* 80252580 0024F580  90 83 00 14 */	stw r4, 0x14(r3)
/* 80252584 0024F584  38 00 00 01 */	li r0, 1
/* 80252588 0024F588  38 60 00 03 */	li r3, 3
/* 8025258C 0024F58C  90 1F 00 08 */	stw r0, 8(r31)
/* 80252590 0024F590  80 1F 00 08 */	lwz r0, 8(r31)
/* 80252594 0024F594  1C 80 00 34 */	mulli r4, r0, 0x34
/* 80252598 0024F598  4B DD D4 F5 */	bl __memAlloc
/* 8025259C 0024F59C  3C 80 80 25 */	lis r4, effLaserMain@ha
/* 802525A0 0024F5A0  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802525A4 0024F5A4  38 04 22 D4 */	addi r0, r4, effLaserMain@l
/* 802525A8 0024F5A8  C0 42 10 4C */	lfs f2, lbl_804223CC-_SDA2_BASE_(r2)
/* 802525AC 0024F5AC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802525B0 0024F5B0  38 A0 00 00 */	li r5, 0
/* 802525B4 0024F5B4  C0 02 10 50 */	lfs f0, lbl_804223D0-_SDA2_BASE_(r2)
/* 802525B8 0024F5B8  38 80 FF FF */	li r4, -1
/* 802525BC 0024F5BC  80 DF 00 00 */	lwz r6, 0(r31)
/* 802525C0 0024F5C0  38 00 00 FF */	li r0, 0xff
/* 802525C4 0024F5C4  60 C6 00 02 */	ori r6, r6, 2
/* 802525C8 0024F5C8  90 DF 00 00 */	stw r6, 0(r31)
/* 802525CC 0024F5CC  93 C3 00 00 */	stw r30, 0(r3)
/* 802525D0 0024F5D0  D3 A3 00 10 */	stfs f29, 0x10(r3)
/* 802525D4 0024F5D4  D3 C3 00 14 */	stfs f30, 0x14(r3)
/* 802525D8 0024F5D8  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 802525DC 0024F5DC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802525E0 0024F5E0  D0 23 00 04 */	stfs f1, 4(r3)
/* 802525E4 0024F5E4  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802525E8 0024F5E8  EC 22 08 2A */	fadds f1, f2, f1
/* 802525EC 0024F5EC  D0 23 00 08 */	stfs f1, 8(r3)
/* 802525F0 0024F5F0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802525F4 0024F5F4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802525F8 0024F5F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802525FC 0024F5FC  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80252600 0024F600  90 A3 00 28 */	stw r5, 0x28(r3)
/* 80252604 0024F604  90 83 00 20 */	stw r4, 0x20(r3)
/* 80252608 0024F608  90 03 00 30 */	stw r0, 0x30(r3)
/* 8025260C 0024F60C  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80252610 0024F610  7F E3 FB 78 */	mr r3, r31
/* 80252614 0024F614  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80252618 0024F618  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8025261C 0024F61C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80252620 0024F620  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80252624 0024F624  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 80252628 0024F628  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8025262C 0024F62C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252630 0024F630  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80252634 0024F634  83 C1 00 08 */	lwz r30, 8(r1)
/* 80252638 0024F638  7C 08 03 A6 */	mtlr r0
/* 8025263C 0024F63C  38 21 00 40 */	addi r1, r1, 0x40
/* 80252640 0024F640  4E 80 00 20 */	blr 