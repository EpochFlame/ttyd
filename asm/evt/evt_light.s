.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global evt_light_bind_mapobj
evt_light_bind_mapobj:
/* 80130C50 0012DC50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80130C54 0012DC54  7C 08 02 A6 */	mflr r0
/* 80130C58 0012DC58  90 01 00 74 */	stw r0, 0x74(r1)
/* 80130C5C 0012DC5C  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 80130C60 0012DC60  7C 9C 23 78 */	mr r28, r4
/* 80130C64 0012DC64  7C 7B 1B 78 */	mr r27, r3
/* 80130C68 0012DC68  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 80130C6C 0012DC6C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80130C70 0012DC70  4B EF FF 5D */	bl evtGetValue
/* 80130C74 0012DC74  80 9D 00 04 */	lwz r4, 4(r29)
/* 80130C78 0012DC78  7C 7E 1B 78 */	mr r30, r3
/* 80130C7C 0012DC7C  7F 63 DB 78 */	mr r3, r27
/* 80130C80 0012DC80  4B EF FF 4D */	bl evtGetValue
/* 80130C84 0012DC84  80 9D 00 08 */	lwz r4, 8(r29)
/* 80130C88 0012DC88  7C 7F 1B 78 */	mr r31, r3
/* 80130C8C 0012DC8C  7F 63 DB 78 */	mr r3, r27
/* 80130C90 0012DC90  4B EF FF 3D */	bl evtGetValue
/* 80130C94 0012DC94  7C 7D 1B 78 */	mr r29, r3
/* 80130C98 0012DC98  7F C3 F3 78 */	mr r3, r30
/* 80130C9C 0012DC9C  4B EE AA B5 */	bl lightNameToPtr
/* 80130CA0 0012DCA0  7C 7E 1B 78 */	mr r30, r3
/* 80130CA4 0012DCA4  7F E3 FB 78 */	mr r3, r31
/* 80130CA8 0012DCA8  4B EE E6 15 */	bl mapGetMapObj
/* 80130CAC 0012DCAC  2C 1C 00 00 */	cmpwi r28, 0
/* 80130CB0 0012DCB0  7C 7F 1B 78 */	mr r31, r3
/* 80130CB4 0012DCB4  41 82 00 5C */	beq .L_80130D10
/* 80130CB8 0012DCB8  3C 60 80 2F */	lis r3, lbl_802F3148@ha
/* 80130CBC 0012DCBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80130CC0 0012DCC0  39 03 31 48 */	addi r8, r3, lbl_802F3148@l
/* 80130CC4 0012DCC4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80130CC8 0012DCC8  80 E8 00 00 */	lwz r7, 0(r8)
/* 80130CCC 0012DCCC  7C 85 23 78 */	mr r5, r4
/* 80130CD0 0012DCD0  80 C8 00 04 */	lwz r6, 4(r8)
/* 80130CD4 0012DCD4  80 08 00 08 */	lwz r0, 8(r8)
/* 80130CD8 0012DCD8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80130CDC 0012DCDC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80130CE0 0012DCE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80130CE4 0012DCE4  48 16 7B BD */	bl PSMTXMultVec
/* 80130CE8 0012DCE8  38 81 00 14 */	addi r4, r1, 0x14
/* 80130CEC 0012DCEC  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80130CF0 0012DCF0  7C 85 23 78 */	mr r5, r4
/* 80130CF4 0012DCF4  48 16 80 AD */	bl PSVECSubtract
/* 80130CF8 0012DCF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80130CFC 0012DCFC  D0 1B 00 78 */	stfs f0, 0x78(r27)
/* 80130D00 0012DD00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80130D04 0012DD04  D0 1B 00 7C */	stfs f0, 0x7c(r27)
/* 80130D08 0012DD08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80130D0C 0012DD0C  D0 1B 00 80 */	stfs f0, 0x80(r27)
.L_80130D10:
/* 80130D10 0012DD10  C0 1B 00 78 */	lfs f0, 0x78(r27)
/* 80130D14 0012DD14  2C 1D 00 01 */	cmpwi r29, 1
/* 80130D18 0012DD18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80130D1C 0012DD1C  C0 1B 00 7C */	lfs f0, 0x7c(r27)
/* 80130D20 0012DD20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80130D24 0012DD24  C0 1B 00 80 */	lfs f0, 0x80(r27)
/* 80130D28 0012DD28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80130D2C 0012DD2C  41 82 00 28 */	beq .L_80130D54
/* 80130D30 0012DD30  40 80 00 48 */	bge .L_80130D78
/* 80130D34 0012DD34  2C 1D 00 00 */	cmpwi r29, 0
/* 80130D38 0012DD38  40 80 00 08 */	bge .L_80130D40
/* 80130D3C 0012DD3C  48 00 00 3C */	b .L_80130D78
.L_80130D40:
/* 80130D40 0012DD40  38 81 00 14 */	addi r4, r1, 0x14
/* 80130D44 0012DD44  38 7F 00 AC */	addi r3, r31, 0xac
/* 80130D48 0012DD48  7C 85 23 78 */	mr r5, r4
/* 80130D4C 0012DD4C  48 16 7B 55 */	bl PSMTXMultVec
/* 80130D50 0012DD50  48 00 00 28 */	b .L_80130D78
.L_80130D54:
/* 80130D54 0012DD54  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80130D58 0012DD58  38 61 00 20 */	addi r3, r1, 0x20
/* 80130D5C 0012DD5C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80130D60 0012DD60  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 80130D64 0012DD64  48 16 76 C9 */	bl PSMTXTrans
/* 80130D68 0012DD68  38 81 00 14 */	addi r4, r1, 0x14
/* 80130D6C 0012DD6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80130D70 0012DD70  7C 85 23 78 */	mr r5, r4
/* 80130D74 0012DD74  48 16 7B 2D */	bl PSMTXMultVec
.L_80130D78:
/* 80130D78 0012DD78  3C 60 80 2F */	lis r3, lbl_802F3154@ha
/* 80130D7C 0012DD7C  38 81 00 08 */	addi r4, r1, 8
/* 80130D80 0012DD80  39 03 31 54 */	addi r8, r3, lbl_802F3154@l
/* 80130D84 0012DD84  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80130D88 0012DD88  80 E8 00 00 */	lwz r7, 0(r8)
/* 80130D8C 0012DD8C  7C 85 23 78 */	mr r5, r4
/* 80130D90 0012DD90  80 C8 00 04 */	lwz r6, 4(r8)
/* 80130D94 0012DD94  80 08 00 08 */	lwz r0, 8(r8)
/* 80130D98 0012DD98  90 E1 00 08 */	stw r7, 8(r1)
/* 80130D9C 0012DD9C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80130DA0 0012DDA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80130DA4 0012DDA4  48 16 7A FD */	bl PSMTXMultVec
/* 80130DA8 0012DDA8  38 61 00 08 */	addi r3, r1, 8
/* 80130DAC 0012DDAC  38 81 00 14 */	addi r4, r1, 0x14
/* 80130DB0 0012DDB0  38 BE 00 24 */	addi r5, r30, 0x24
/* 80130DB4 0012DDB4  48 16 7F C9 */	bl PSVECAdd
/* 80130DB8 0012DDB8  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 80130DBC 0012DDBC  38 60 00 00 */	li r3, 0
/* 80130DC0 0012DDC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80130DC4 0012DDC4  7C 08 03 A6 */	mtlr r0
/* 80130DC8 0012DDC8  38 21 00 70 */	addi r1, r1, 0x70
/* 80130DCC 0012DDCC  4E 80 00 20 */	blr 

.global evt_light_npc_lighting_onoff
evt_light_npc_lighting_onoff:
/* 80130DD0 0012DDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130DD4 0012DDD4  7C 08 02 A6 */	mflr r0
/* 80130DD8 0012DDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130DDC 0012DDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130DE0 0012DDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80130DE4 0012DDE4  7C 7E 1B 78 */	mr r30, r3
/* 80130DE8 0012DDE8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 80130DEC 0012DDEC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80130DF0 0012DDF0  4B EF FD DD */	bl evtGetValue
/* 80130DF4 0012DDF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80130DF8 0012DDF8  7C 7F 1B 78 */	mr r31, r3
/* 80130DFC 0012DDFC  7F C3 F3 78 */	mr r3, r30
/* 80130E00 0012DE00  4B EF FD CD */	bl evtGetValue
/* 80130E04 0012DE04  4B F1 82 71 */	bl npcNameToPtr
/* 80130E08 0012DE08  2C 1F 00 00 */	cmpwi r31, 0
/* 80130E0C 0012DE0C  41 82 00 14 */	beq .L_80130E20
/* 80130E10 0012DE10  80 63 01 04 */	lwz r3, 0x104(r3)
/* 80130E14 0012DE14  38 80 00 02 */	li r4, 2
/* 80130E18 0012DE18  4B F0 F2 3D */	bl animPoseSetMaterialLightFlagOn
/* 80130E1C 0012DE1C  48 00 00 10 */	b .L_80130E2C
.L_80130E20:
/* 80130E20 0012DE20  80 63 01 04 */	lwz r3, 0x104(r3)
/* 80130E24 0012DE24  38 80 00 02 */	li r4, 2
/* 80130E28 0012DE28  4B F0 F2 0D */	bl animPoseSetMaterialLightFlagOff
.L_80130E2C:
/* 80130E2C 0012DE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130E30 0012DE30  38 60 00 02 */	li r3, 2
/* 80130E34 0012DE34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130E38 0012DE38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80130E3C 0012DE3C  7C 08 03 A6 */	mtlr r0
/* 80130E40 0012DE40  38 21 00 10 */	addi r1, r1, 0x10
/* 80130E44 0012DE44  4E 80 00 20 */	blr 

.global evt_light_party_lighting_onoff
evt_light_party_lighting_onoff:
/* 80130E48 0012DE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130E4C 0012DE4C  7C 08 02 A6 */	mflr r0
/* 80130E50 0012DE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130E54 0012DE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130E58 0012DE58  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80130E5C 0012DE5C  80 84 00 00 */	lwz r4, 0(r4)
/* 80130E60 0012DE60  4B EF FD 6D */	bl evtGetValue
/* 80130E64 0012DE64  7C 7F 1B 78 */	mr r31, r3
/* 80130E68 0012DE68  48 00 AB F1 */	bl marioGetPartyId
/* 80130E6C 0012DE6C  4B F8 BF C5 */	bl partyGetPtr
/* 80130E70 0012DE70  2C 1F 00 00 */	cmpwi r31, 0
/* 80130E74 0012DE74  41 82 00 14 */	beq .L_80130E88
/* 80130E78 0012DE78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80130E7C 0012DE7C  38 80 00 02 */	li r4, 2
/* 80130E80 0012DE80  4B F0 F1 D5 */	bl animPoseSetMaterialLightFlagOn
/* 80130E84 0012DE84  48 00 00 10 */	b .L_80130E94
.L_80130E88:
/* 80130E88 0012DE88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80130E8C 0012DE8C  38 80 00 02 */	li r4, 2
/* 80130E90 0012DE90  4B F0 F1 A5 */	bl animPoseSetMaterialLightFlagOff
.L_80130E94:
/* 80130E94 0012DE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130E98 0012DE98  38 60 00 02 */	li r3, 2
/* 80130E9C 0012DE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130EA0 0012DEA0  7C 08 03 A6 */	mtlr r0
/* 80130EA4 0012DEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80130EA8 0012DEA8  4E 80 00 20 */	blr 

.global evt_light_mario_lighting_onoff
evt_light_mario_lighting_onoff:
/* 80130EAC 0012DEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130EB0 0012DEB0  7C 08 02 A6 */	mflr r0
/* 80130EB4 0012DEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130EB8 0012DEB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130EBC 0012DEBC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80130EC0 0012DEC0  80 84 00 00 */	lwz r4, 0(r4)
/* 80130EC4 0012DEC4  4B EF FD 09 */	bl evtGetValue
/* 80130EC8 0012DEC8  7C 7F 1B 78 */	mr r31, r3
/* 80130ECC 0012DECC  4B F2 C3 49 */	bl marioGetPtr
/* 80130ED0 0012DED0  2C 1F 00 00 */	cmpwi r31, 0
/* 80130ED4 0012DED4  7C 7F 1B 78 */	mr r31, r3
/* 80130ED8 0012DED8  41 82 00 2C */	beq .L_80130F04
/* 80130EDC 0012DEDC  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80130EE0 0012DEE0  38 80 00 02 */	li r4, 2
/* 80130EE4 0012DEE4  4B F0 F1 71 */	bl animPoseSetMaterialLightFlagOn
/* 80130EE8 0012DEE8  80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 80130EEC 0012DEEC  38 80 00 02 */	li r4, 2
/* 80130EF0 0012DEF0  4B F0 F1 65 */	bl animPoseSetMaterialLightFlagOn
/* 80130EF4 0012DEF4  80 7F 02 30 */	lwz r3, 0x230(r31)
/* 80130EF8 0012DEF8  38 80 00 02 */	li r4, 2
/* 80130EFC 0012DEFC  4B F0 F1 59 */	bl animPoseSetMaterialLightFlagOn
/* 80130F00 0012DF00  48 00 00 28 */	b .L_80130F28
.L_80130F04:
/* 80130F04 0012DF04  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80130F08 0012DF08  38 80 00 02 */	li r4, 2
/* 80130F0C 0012DF0C  4B F0 F1 29 */	bl animPoseSetMaterialLightFlagOff
/* 80130F10 0012DF10  80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 80130F14 0012DF14  38 80 00 02 */	li r4, 2
/* 80130F18 0012DF18  4B F0 F1 1D */	bl animPoseSetMaterialLightFlagOff
/* 80130F1C 0012DF1C  80 7F 02 30 */	lwz r3, 0x230(r31)
/* 80130F20 0012DF20  38 80 00 02 */	li r4, 2
/* 80130F24 0012DF24  4B F0 F1 11 */	bl animPoseSetMaterialLightFlagOff
.L_80130F28:
/* 80130F28 0012DF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130F2C 0012DF2C  38 60 00 02 */	li r3, 2
/* 80130F30 0012DF30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130F34 0012DF34  7C 08 03 A6 */	mtlr r0
/* 80130F38 0012DF38  38 21 00 10 */	addi r1, r1, 0x10
/* 80130F3C 0012DF3C  4E 80 00 20 */	blr 

.global evt_light_charalight_all_onoff
evt_light_charalight_all_onoff:
/* 80130F40 0012DF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130F44 0012DF44  7C 08 02 A6 */	mflr r0
/* 80130F48 0012DF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130F4C 0012DF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130F50 0012DF50  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80130F54 0012DF54  80 84 00 00 */	lwz r4, 0(r4)
/* 80130F58 0012DF58  4B EF FC 75 */	bl evtGetValue
/* 80130F5C 0012DF5C  2C 03 00 00 */	cmpwi r3, 0
/* 80130F60 0012DF60  41 82 00 34 */	beq .L_80130F94
/* 80130F64 0012DF64  3B E0 00 00 */	li r31, 0
/* 80130F68 0012DF68  48 00 00 1C */	b .L_80130F84
.L_80130F6C:
/* 80130F6C 0012DF6C  7F E3 FB 78 */	mr r3, r31
/* 80130F70 0012DF70  4B EE A3 65 */	bl lightNumberToPtr
/* 80130F74 0012DF74  A0 03 00 00 */	lhz r0, 0(r3)
/* 80130F78 0012DF78  3B FF 00 01 */	addi r31, r31, 1
/* 80130F7C 0012DF7C  60 00 00 80 */	ori r0, r0, 0x80
/* 80130F80 0012DF80  B0 03 00 00 */	sth r0, 0(r3)
.L_80130F84:
/* 80130F84 0012DF84  4B EE A3 AD */	bl lightGetEntryNum
/* 80130F88 0012DF88  7C 1F 18 00 */	cmpw r31, r3
/* 80130F8C 0012DF8C  41 80 FF E0 */	blt .L_80130F6C
/* 80130F90 0012DF90  48 00 00 30 */	b .L_80130FC0
.L_80130F94:
/* 80130F94 0012DF94  3B E0 00 00 */	li r31, 0
/* 80130F98 0012DF98  48 00 00 1C */	b .L_80130FB4
.L_80130F9C:
/* 80130F9C 0012DF9C  7F E3 FB 78 */	mr r3, r31
/* 80130FA0 0012DFA0  4B EE A3 35 */	bl lightNumberToPtr
/* 80130FA4 0012DFA4  A0 03 00 00 */	lhz r0, 0(r3)
/* 80130FA8 0012DFA8  3B FF 00 01 */	addi r31, r31, 1
/* 80130FAC 0012DFAC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80130FB0 0012DFB0  B0 03 00 00 */	sth r0, 0(r3)
.L_80130FB4:
/* 80130FB4 0012DFB4  4B EE A3 7D */	bl lightGetEntryNum
/* 80130FB8 0012DFB8  7C 1F 18 00 */	cmpw r31, r3
/* 80130FBC 0012DFBC  41 80 FF E0 */	blt .L_80130F9C
.L_80130FC0:
/* 80130FC0 0012DFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130FC4 0012DFC4  38 60 00 02 */	li r3, 2
/* 80130FC8 0012DFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130FCC 0012DFCC  7C 08 03 A6 */	mtlr r0
/* 80130FD0 0012DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80130FD4 0012DFD4  4E 80 00 20 */	blr 
