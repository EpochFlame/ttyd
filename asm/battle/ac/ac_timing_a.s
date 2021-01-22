.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global actionCommandDisp_DUPE_801251cc
actionCommandDisp_DUPE_801251cc:
/* 801251CC 001221CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801251D0 001221D0  7C 08 02 A6 */	mflr r0
/* 801251D4 001221D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801251D8 001221D8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801251DC 001221DC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801251E0 001221E0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801251E4 001221E4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801251E8 001221E8  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 801251EC 001221EC  83 ED 17 10 */	lwz r31, lbl_80418970-_SDA_BASE_(r13)
/* 801251F0 001221F0  FF C0 08 90 */	fmr f30, f1
/* 801251F4 001221F4  FF E0 10 90 */	fmr f31, f2
/* 801251F8 001221F8  38 60 00 08 */	li r3, 8
/* 801251FC 001221FC  3B DF 1F 20 */	addi r30, r31, 0x1f20
/* 80125200 00122200  4B EE 9F 51 */	bl camGetPtr
/* 80125204 00122204  80 1F 1F 50 */	lwz r0, 0x1f50(r31)
/* 80125208 00122208  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8012520C 0012220C  41 82 00 54 */	beq lbl_80125260
/* 80125210 00122210  3C 60 80 2F */	lis r3, lbl_802EFBC8@ha
/* 80125214 00122214  C0 22 B0 A8 */	lfs f1, lbl_8041C428-_SDA2_BASE_(r2)
/* 80125218 00122218  38 A3 FB C8 */	addi r5, r3, lbl_802EFBC8@l
/* 8012521C 0012221C  C0 02 B0 AC */	lfs f0, lbl_8041C42C-_SDA2_BASE_(r2)
/* 80125220 00122220  80 05 00 00 */	lwz r0, 0(r5)
/* 80125224 00122224  EC 41 F0 2A */	fadds f2, f1, f30
/* 80125228 00122228  80 85 00 04 */	lwz r4, 4(r5)
/* 8012522C 0012222C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80125230 00122230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80125234 00122234  38 61 00 14 */	addi r3, r1, 0x14
/* 80125238 00122238  80 05 00 08 */	lwz r0, 8(r5)
/* 8012523C 0012223C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80125240 00122240  38 80 00 10 */	li r4, 0x10
/* 80125244 00122244  C0 22 B0 B0 */	lfs f1, lbl_8041C430-_SDA2_BASE_(r2)
/* 80125248 00122248  38 A0 00 65 */	li r5, 0x65
/* 8012524C 0012224C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80125250 00122250  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80125254 00122254  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80125258 00122258  4B EF 52 DD */	bl iconDispGx
/* 8012525C 0012225C  48 00 00 50 */	b lbl_801252AC
lbl_80125260:
/* 80125260 00122260  3C 60 80 2F */	lis r3, lbl_802EFBD4@ha
/* 80125264 00122264  C0 22 B0 A8 */	lfs f1, lbl_8041C428-_SDA2_BASE_(r2)
/* 80125268 00122268  38 A3 FB D4 */	addi r5, r3, lbl_802EFBD4@l
/* 8012526C 0012226C  C0 02 B0 AC */	lfs f0, lbl_8041C42C-_SDA2_BASE_(r2)
/* 80125270 00122270  80 05 00 00 */	lwz r0, 0(r5)
/* 80125274 00122274  EC 41 F0 2A */	fadds f2, f1, f30
/* 80125278 00122278  80 85 00 04 */	lwz r4, 4(r5)
/* 8012527C 0012227C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80125280 00122280  90 01 00 08 */	stw r0, 8(r1)
/* 80125284 00122284  38 61 00 08 */	addi r3, r1, 8
/* 80125288 00122288  80 05 00 08 */	lwz r0, 8(r5)
/* 8012528C 0012228C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80125290 00122290  38 80 00 10 */	li r4, 0x10
/* 80125294 00122294  C0 22 B0 B0 */	lfs f1, lbl_8041C430-_SDA2_BASE_(r2)
/* 80125298 00122298  38 A0 00 64 */	li r5, 0x64
/* 8012529C 0012229C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801252A0 001222A0  D0 41 00 08 */	stfs f2, 8(r1)
/* 801252A4 001222A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801252A8 001222A8  4B EF 52 8D */	bl iconDispGx
lbl_801252AC:
/* 801252AC 001222AC  80 7E 00 00 */	lwz r3, 0(r30)
/* 801252B0 001222B0  38 03 00 01 */	addi r0, r3, 1
/* 801252B4 001222B4  90 1E 00 00 */	stw r0, 0(r30)
/* 801252B8 001222B8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801252BC 001222BC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801252C0 001222C0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801252C4 001222C4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801252C8 001222C8  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 801252CC 001222CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801252D0 001222D0  7C 08 03 A6 */	mtlr r0
/* 801252D4 001222D4  38 21 00 50 */	addi r1, r1, 0x50
/* 801252D8 001222D8  4E 80 00 20 */	blr 

.global battleAcDelete_TimingA
battleAcDelete_TimingA:
/* 801252DC 001222DC  38 00 03 E8 */	li r0, 0x3e8
/* 801252E0 001222E0  90 03 1C 9C */	stw r0, 0x1c9c(r3)
/* 801252E4 001222E4  4E 80 00 20 */	blr 

.global battleAcDisp_TimingA
battleAcDisp_TimingA:
/* 801252E8 001222E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801252EC 001222EC  7C 08 02 A6 */	mflr r0
/* 801252F0 001222F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801252F4 001222F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801252F8 001222F8  3B E4 1F 20 */	addi r31, r4, 0x1f20
/* 801252FC 001222FC  80 04 1C 9C */	lwz r0, 0x1c9c(r4)
/* 80125300 00122300  2C 00 00 64 */	cmpwi r0, 0x64
/* 80125304 00122304  41 82 00 48 */	beq lbl_8012534C
/* 80125308 00122308  40 80 00 10 */	bge lbl_80125318
/* 8012530C 0012230C  2C 00 00 63 */	cmpwi r0, 0x63
/* 80125310 00122310  40 80 00 1C */	bge lbl_8012532C
/* 80125314 00122314  48 00 00 B8 */	b lbl_801253CC
lbl_80125318:
/* 80125318 00122318  2C 00 03 EA */	cmpwi r0, 0x3ea
/* 8012531C 0012231C  40 80 00 B0 */	bge lbl_801253CC
/* 80125320 00122320  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80125324 00122324  40 80 00 54 */	bge lbl_80125378
/* 80125328 00122328  48 00 00 A4 */	b lbl_801253CC
lbl_8012532C:
/* 8012532C 0012232C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80125330 00122330  38 60 00 04 */	li r3, 4
/* 80125334 00122334  C0 22 B0 B4 */	lfs f1, lbl_8041C434-_SDA2_BASE_(r2)
/* 80125338 00122338  38 A0 00 14 */	li r5, 0x14
/* 8012533C 0012233C  C0 42 B0 B8 */	lfs f2, lbl_8041C438-_SDA2_BASE_(r2)
/* 80125340 00122340  20 80 00 14 */	subfic r4, r0, 0x14
/* 80125344 00122344  4B EE 18 C9 */	bl intplGetValue
/* 80125348 00122348  D0 3F 00 14 */	stfs f1, 0x14(r31)
lbl_8012534C:
/* 8012534C 0012234C  C0 02 B0 B8 */	lfs f0, lbl_8041C438-_SDA2_BASE_(r2)
/* 80125350 00122350  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80125354 00122354  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80125358 00122358  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8012535C 0012235C  4B FF FE 71 */	bl actionCommandDisp_DUPE_801251cc
/* 80125360 00122360  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80125364 00122364  2C 03 00 00 */	cmpwi r3, 0
/* 80125368 00122368  40 81 00 64 */	ble lbl_801253CC
/* 8012536C 0012236C  38 03 FF FF */	addi r0, r3, -1
/* 80125370 00122370  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80125374 00122374  48 00 00 58 */	b lbl_801253CC
lbl_80125378:
/* 80125378 00122378  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8012537C 0012237C  2C 03 00 28 */	cmpwi r3, 0x28
/* 80125380 00122380  41 80 00 24 */	blt lbl_801253A4
/* 80125384 00122384  C0 22 B0 B8 */	lfs f1, lbl_8041C438-_SDA2_BASE_(r2)
/* 80125388 00122388  38 83 FF D8 */	addi r4, r3, -40
/* 8012538C 0012238C  C0 42 B0 B4 */	lfs f2, lbl_8041C434-_SDA2_BASE_(r2)
/* 80125390 00122390  38 60 00 04 */	li r3, 4
/* 80125394 00122394  38 A0 00 14 */	li r5, 0x14
/* 80125398 00122398  4B EE 18 75 */	bl intplGetValue
/* 8012539C 0012239C  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 801253A0 001223A0  48 00 00 0C */	b lbl_801253AC
lbl_801253A4:
/* 801253A4 001223A4  C0 02 B0 B8 */	lfs f0, lbl_8041C438-_SDA2_BASE_(r2)
/* 801253A8 001223A8  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_801253AC:
/* 801253AC 001223AC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 801253B0 001223B0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 801253B4 001223B4  4B FF FE 19 */	bl actionCommandDisp_DUPE_801251cc
/* 801253B8 001223B8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801253BC 001223BC  2C 03 00 3C */	cmpwi r3, 0x3c
/* 801253C0 001223C0  40 80 00 0C */	bge lbl_801253CC
/* 801253C4 001223C4  38 03 00 01 */	addi r0, r3, 1
/* 801253C8 001223C8  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_801253CC:
/* 801253CC 001223CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801253D0 001223D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801253D4 001223D4  7C 08 03 A6 */	mtlr r0
/* 801253D8 001223D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801253DC 001223DC  4E 80 00 20 */	blr 

.global battleAcResult_TimingA
battleAcResult_TimingA:
/* 801253E0 001223E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801253E4 001223E4  7C 08 02 A6 */	mflr r0
/* 801253E8 001223E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801253EC 001223EC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 801253F0 001223F0  7C 7F 1B 78 */	mr r31, r3
/* 801253F4 001223F4  48 00 01 8D */	bl battleAcTimingA_GetSuccessFrame
/* 801253F8 001223F8  80 1F 1C 94 */	lwz r0, 0x1c94(r31)
/* 801253FC 001223FC  7C 7E 1B 78 */	mr r30, r3
/* 80125400 00122400  3B 80 00 00 */	li r28, 0
/* 80125404 00122404  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80125408 00122408  41 82 00 4C */	beq lbl_80125454
/* 8012540C 0012240C  80 7F 1C 90 */	lwz r3, 0x1c90(r31)
/* 80125410 00122410  80 03 02 78 */	lwz r0, 0x278(r3)
/* 80125414 00122414  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80125418 00122418  41 82 00 3C */	beq lbl_80125454
/* 8012541C 0012241C  38 60 00 64 */	li r3, 0x64
/* 80125420 00122420  4B EE 0A A5 */	bl irand
/* 80125424 00122424  2C 03 00 00 */	cmpwi r3, 0
/* 80125428 00122428  41 80 00 10 */	blt lbl_80125438
/* 8012542C 0012242C  38 00 00 00 */	li r0, 0
/* 80125430 00122430  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 80125434 00122434  48 00 00 18 */	b lbl_8012544C
lbl_80125438:
/* 80125438 00122438  38 00 00 02 */	li r0, 2
/* 8012543C 0012243C  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 80125440 00122440  80 7F 1C B4 */	lwz r3, 0x1cb4(r31)
/* 80125444 00122444  38 03 00 01 */	addi r0, r3, 1
/* 80125448 00122448  90 1F 1C B4 */	stw r0, 0x1cb4(r31)
lbl_8012544C:
/* 8012544C 0012244C  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
/* 80125450 00122450  48 00 01 1C */	b lbl_8012556C
lbl_80125454:
/* 80125454 00122454  80 7F 1C 90 */	lwz r3, 0x1c90(r31)
/* 80125458 00122458  88 03 03 03 */	lbz r0, 0x303(r3)
/* 8012545C 0012245C  28 00 00 00 */	cmplwi r0, 0
/* 80125460 00122460  41 82 00 20 */	beq lbl_80125480
/* 80125464 00122464  38 00 00 02 */	li r0, 2
/* 80125468 00122468  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 8012546C 0012246C  80 7F 1C B4 */	lwz r3, 0x1cb4(r31)
/* 80125470 00122470  38 03 00 01 */	addi r0, r3, 1
/* 80125474 00122474  90 1F 1C B4 */	stw r0, 0x1cb4(r31)
/* 80125478 00122478  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
/* 8012547C 0012247C  48 00 00 F0 */	b lbl_8012556C
lbl_80125480:
/* 80125480 00122480  38 00 00 00 */	li r0, 0
/* 80125484 00122484  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 80125488 00122488  80 1F 0E F4 */	lwz r0, 0xef4(r31)
/* 8012548C 0012248C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80125490 00122490  41 82 00 28 */	beq lbl_801254B8
/* 80125494 00122494  38 60 00 03 */	li r3, 3
/* 80125498 00122498  38 00 00 02 */	li r0, 2
/* 8012549C 0012249C  90 7F 1C E8 */	stw r3, 0x1ce8(r31)
/* 801254A0 001224A0  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 801254A4 001224A4  80 7F 1C B4 */	lwz r3, 0x1cb4(r31)
/* 801254A8 001224A8  38 03 00 01 */	addi r0, r3, 1
/* 801254AC 001224AC  90 1F 1C B4 */	stw r0, 0x1cb4(r31)
/* 801254B0 001224B0  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
/* 801254B4 001224B4  48 00 00 B8 */	b lbl_8012556C
lbl_801254B8:
/* 801254B8 001224B8  3B A0 00 00 */	li r29, 0
lbl_801254BC:
/* 801254BC 001224BC  7F A3 EB 78 */	mr r3, r29
/* 801254C0 001224C0  38 80 01 00 */	li r4, 0x100
/* 801254C4 001224C4  4B FE F7 35 */	bl BattlePadCheckRecordTrigger
/* 801254C8 001224C8  2C 03 00 00 */	cmpwi r3, 0
/* 801254CC 001224CC  41 82 00 08 */	beq lbl_801254D4
/* 801254D0 001224D0  3B 9C 00 01 */	addi r28, r28, 1
lbl_801254D4:
/* 801254D4 001224D4  3B BD 00 01 */	addi r29, r29, 1
/* 801254D8 001224D8  2C 1D 00 14 */	cmpwi r29, 0x14
/* 801254DC 001224DC  41 80 FF E0 */	blt lbl_801254BC
/* 801254E0 001224E0  2C 1C 00 02 */	cmpwi r28, 2
/* 801254E4 001224E4  41 80 00 14 */	blt lbl_801254F8
/* 801254E8 001224E8  38 00 00 01 */	li r0, 1
/* 801254EC 001224EC  90 1F 1C E8 */	stw r0, 0x1ce8(r31)
/* 801254F0 001224F0  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
/* 801254F4 001224F4  48 00 00 78 */	b lbl_8012556C
lbl_801254F8:
/* 801254F8 001224F8  3B A0 00 00 */	li r29, 0
/* 801254FC 001224FC  48 00 00 1C */	b lbl_80125518
lbl_80125500:
/* 80125500 00122500  7F A3 EB 78 */	mr r3, r29
/* 80125504 00122504  38 80 01 00 */	li r4, 0x100
/* 80125508 00122508  4B FE F6 F1 */	bl BattlePadCheckRecordTrigger
/* 8012550C 0012250C  2C 03 00 00 */	cmpwi r3, 0
/* 80125510 00122510  40 82 00 10 */	bne lbl_80125520
/* 80125514 00122514  3B BD 00 01 */	addi r29, r29, 1
lbl_80125518:
/* 80125518 00122518  7C 1D F0 00 */	cmpw r29, r30
/* 8012551C 0012251C  41 80 FF E4 */	blt lbl_80125500
lbl_80125520:
/* 80125520 00122520  7C 1D F0 00 */	cmpw r29, r30
/* 80125524 00122524  41 80 00 28 */	blt lbl_8012554C
/* 80125528 00122528  2C 1C 00 00 */	cmpwi r28, 0
/* 8012552C 0012252C  40 81 00 10 */	ble lbl_8012553C
/* 80125530 00122530  38 00 00 01 */	li r0, 1
/* 80125534 00122534  90 1F 1C E8 */	stw r0, 0x1ce8(r31)
/* 80125538 00122538  48 00 00 0C */	b lbl_80125544
lbl_8012553C:
/* 8012553C 0012253C  38 00 00 02 */	li r0, 2
/* 80125540 00122540  90 1F 1C E8 */	stw r0, 0x1ce8(r31)
lbl_80125544:
/* 80125544 00122544  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
/* 80125548 00122548  48 00 00 24 */	b lbl_8012556C
lbl_8012554C:
/* 8012554C 0012254C  38 60 00 03 */	li r3, 3
/* 80125550 00122550  38 00 00 02 */	li r0, 2
/* 80125554 00122554  90 7F 1C E8 */	stw r3, 0x1ce8(r31)
/* 80125558 00122558  90 1F 1C B8 */	stw r0, 0x1cb8(r31)
/* 8012555C 0012255C  80 7F 1C B4 */	lwz r3, 0x1cb4(r31)
/* 80125560 00122560  38 03 00 01 */	addi r0, r3, 1
/* 80125564 00122564  90 1F 1C B4 */	stw r0, 0x1cb4(r31)
/* 80125568 00122568  80 7F 1C B8 */	lwz r3, 0x1cb8(r31)
lbl_8012556C:
/* 8012556C 0012256C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 80125570 00122570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80125574 00122574  7C 08 03 A6 */	mtlr r0
/* 80125578 00122578  38 21 00 20 */	addi r1, r1, 0x20
/* 8012557C 0012257C  4E 80 00 20 */	blr 

.global battleAcTimingA_GetSuccessFrame
battleAcTimingA_GetSuccessFrame:
/* 80125580 00122580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80125584 00122584  7C 08 02 A6 */	mflr r0
/* 80125588 00122588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012558C 0012258C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80125590 00122590  7C 7F 1B 78 */	mr r31, r3
/* 80125594 00122594  4B FC FC 79 */	bl BattleActionCommandGetDifficulty
/* 80125598 00122598  80 1F 1F 50 */	lwz r0, 0x1f50(r31)
/* 8012559C 0012259C  54 64 10 3A */	slwi r4, r3, 2
/* 801255A0 001225A0  38 6D 9D F0 */	addi r3, r13, lbl_80411050-_SDA_BASE_
/* 801255A4 001225A4  80 BF 1C B4 */	lwz r5, 0x1cb4(r31)
/* 801255A8 001225A8  7C 83 20 2E */	lwzx r4, r3, r4
/* 801255AC 001225AC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801255B0 001225B0  80 64 00 04 */	lwz r3, 4(r4)
/* 801255B4 001225B4  41 82 00 34 */	beq lbl_801255E8
/* 801255B8 001225B8  3C 60 00 02 */	lis r3, 0x000186A0@ha
/* 801255BC 001225BC  38 03 86 A0 */	addi r0, r3, 0x000186A0@l
/* 801255C0 001225C0  7C 05 00 00 */	cmpw r5, r0
/* 801255C4 001225C4  41 80 00 0C */	blt lbl_801255D0
/* 801255C8 001225C8  38 60 00 00 */	li r3, 0
/* 801255CC 001225CC  48 00 00 1C */	b lbl_801255E8
lbl_801255D0:
/* 801255D0 001225D0  80 04 00 00 */	lwz r0, 0(r4)
/* 801255D4 001225D4  7C 05 00 00 */	cmpw r5, r0
/* 801255D8 001225D8  40 81 00 0C */	ble lbl_801255E4
/* 801255DC 001225DC  38 84 00 08 */	addi r4, r4, 8
/* 801255E0 001225E0  4B FF FF F0 */	b lbl_801255D0
lbl_801255E4:
/* 801255E4 001225E4  80 64 00 04 */	lwz r3, 4(r4)
lbl_801255E8:
/* 801255E8 001225E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801255EC 001225EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801255F0 001225F0  7C 08 03 A6 */	mtlr r0
/* 801255F4 001225F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801255F8 001225F8  4E 80 00 20 */	blr 

.global battleAcMain_TimingA
battleAcMain_TimingA:
/* 801255FC 001225FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80125600 00122600  7C 08 02 A6 */	mflr r0
/* 80125604 00122604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80125608 00122608  BF C1 00 08 */	stmw r30, 8(r1)
/* 8012560C 0012260C  7C 7E 1B 78 */	mr r30, r3
/* 80125610 00122610  38 9E 1F 4C */	addi r4, r30, 0x1f4c
/* 80125614 00122614  3B FE 1F 20 */	addi r31, r30, 0x1f20
/* 80125618 00122618  80 03 1C 9C */	lwz r0, 0x1c9c(r3)
/* 8012561C 0012261C  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80125620 00122620  41 82 00 78 */	beq lbl_80125698
/* 80125624 00122624  40 80 00 1C */	bge lbl_80125640
/* 80125628 00122628  2C 00 00 64 */	cmpwi r0, 0x64
/* 8012562C 0012262C  41 82 00 BC */	beq lbl_801256E8
/* 80125630 00122630  40 80 00 B8 */	bge lbl_801256E8
/* 80125634 00122634  2C 00 00 00 */	cmpwi r0, 0
/* 80125638 00122638  41 82 00 18 */	beq lbl_80125650
/* 8012563C 0012263C  48 00 00 AC */	b lbl_801256E8
lbl_80125640:
/* 80125640 00122640  2C 00 03 EA */	cmpwi r0, 0x3ea
/* 80125644 00122644  41 82 00 88 */	beq lbl_801256CC
/* 80125648 00122648  40 80 00 A0 */	bge lbl_801256E8
/* 8012564C 0012264C  48 00 00 5C */	b lbl_801256A8
lbl_80125650:
/* 80125650 00122650  7F E3 FB 78 */	mr r3, r31
/* 80125654 00122654  38 80 00 00 */	li r4, 0
/* 80125658 00122658  38 A0 00 2C */	li r5, 0x2c
/* 8012565C 0012265C  4B ED FA 59 */	bl func_800050B4
/* 80125660 00122660  C0 22 B0 B4 */	lfs f1, lbl_8041C434-_SDA2_BASE_(r2)
/* 80125664 00122664  38 80 00 14 */	li r4, 0x14
/* 80125668 00122668  C0 02 B0 BC */	lfs f0, lbl_8041C43C-_SDA2_BASE_(r2)
/* 8012566C 0012266C  38 60 00 63 */	li r3, 0x63
/* 80125670 00122670  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80125674 00122674  38 00 00 00 */	li r0, 0
/* 80125678 00122678  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8012567C 0012267C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80125680 00122680  90 7E 1C 9C */	stw r3, 0x1c9c(r30)
/* 80125684 00122684  80 7E 1F 50 */	lwz r3, 0x1f50(r30)
/* 80125688 00122688  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 8012568C 0012268C  90 7E 1F 50 */	stw r3, 0x1f50(r30)
/* 80125690 00122690  90 1E 1C E8 */	stw r0, 0x1ce8(r30)
/* 80125694 00122694  48 00 00 54 */	b lbl_801256E8
lbl_80125698:
/* 80125698 00122698  38 60 00 3C */	li r3, 0x3c
/* 8012569C 0012269C  38 00 03 E9 */	li r0, 0x3e9
/* 801256A0 001226A0  90 64 00 08 */	stw r3, 8(r4)
/* 801256A4 001226A4  90 1E 1C 9C */	stw r0, 0x1c9c(r30)
lbl_801256A8:
/* 801256A8 001226A8  80 64 00 08 */	lwz r3, 8(r4)
/* 801256AC 001226AC  38 03 FF FF */	addi r0, r3, -1
/* 801256B0 001226B0  90 04 00 08 */	stw r0, 8(r4)
/* 801256B4 001226B4  80 04 00 08 */	lwz r0, 8(r4)
/* 801256B8 001226B8  2C 00 00 00 */	cmpwi r0, 0
/* 801256BC 001226BC  41 81 00 2C */	bgt lbl_801256E8
/* 801256C0 001226C0  38 00 03 EA */	li r0, 0x3ea
/* 801256C4 001226C4  90 1E 1C 9C */	stw r0, 0x1c9c(r30)
/* 801256C8 001226C8  48 00 00 20 */	b lbl_801256E8
lbl_801256CC:
/* 801256CC 001226CC  38 00 00 00 */	li r0, 0
/* 801256D0 001226D0  38 60 00 00 */	li r3, 0
/* 801256D4 001226D4  90 1E 1C A0 */	stw r0, 0x1ca0(r30)
/* 801256D8 001226D8  90 1E 1C A8 */	stw r0, 0x1ca8(r30)
/* 801256DC 001226DC  90 1E 1C A4 */	stw r0, 0x1ca4(r30)
/* 801256E0 001226E0  90 1E 1C AC */	stw r0, 0x1cac(r30)
/* 801256E4 001226E4  48 00 00 08 */	b lbl_801256EC
lbl_801256E8:
/* 801256E8 001226E8  38 60 00 01 */	li r3, 1
lbl_801256EC:
/* 801256EC 001226EC  BB C1 00 08 */	lmw r30, 8(r1)
/* 801256F0 001226F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801256F4 001226F4  7C 08 03 A6 */	mtlr r0
/* 801256F8 001226F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801256FC 001226FC  4E 80 00 20 */	blr 