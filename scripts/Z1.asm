Z1_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Z1TrainerHeader0
	ld de, Z1_ScriptPointers
	ld a, [wZ1CurScript]
	call ExecuteCurMapScriptInTable
	ret

Z1Pewter_5c3a4:
	ld hl, GymZ1CityName
	ld de, GymZ1LeaderName
	jp LoadGymLeaderAndCityName

GymZ1CityName:
	db "PEWTER CITY@"

GymZ1LeaderName:
	db "BROCK@"

Z1_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Z1PewterScript_5c3df:
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_BROCK
	lb bc, TM_34, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $5
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM34
	jr .gymVictory
.BagFull
	ld a, $6
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.gymVictory
	ld hl, wObtainedBadges
	set 0, [hl]
	ld hl, wBeatGymFlags
	set 0, [hl]

	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef HideObject

	ResetEvents EVENT_1ST_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE

	; deactivate gym trainers
	SetEvent EVENT_BEAT_PEWTER_GYM_TRAINER_0

	ret

Z1_TextPointers:
	dw Z1PewterText0
	dw Z1PewterText1
	dw Z1PewterText2
	dw Z1PewterText3
	dw Z1PewterText4
	dw Z1PewterText5
	dw Z1PewterText6
	dw Z1PewterText7
	dw Z1PewterText8
	dw Z1PewterText9
	dw Z1PewterText10
	dw Z1PewterText11
	dw Z1PewterText12

Z1TrainerHeader0:
	dbEventFlagBit EVENT_9E0
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E0
	dw Z1PewterBattleText1 ; TextBeforeBattle
	dw Z1PewterAfterBattleText1 ; TextAfterBattle
	dw Z1PewterEndBattleText1 ; TextEndBattle
	dw Z1PewterEndBattleText1 ; TextEndBattle

Z1TrainerHeader1:
	dbEventFlagBit EVENT_9E1
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E1
	dw Z1PewterBattleText2 ; TextBeforeBattle
	dw Z1PewterAfterBattleText2 ; TextAfterBattle
	dw Z1PewterEndBattleText2 ; TextEndBattle
	dw Z1PewterEndBattleText2 ; TextEndBattle
	
Z1TrainerHeader2:
	dbEventFlagBit EVENT_9E2
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E2
	dw Z1PewterBattleText3 ; TextBeforeBattle
	dw Z1PewterAfterBattleText3 ; TextAfterBattle
	dw Z1PewterEndBattleText3 ; TextEndBattle
	dw Z1PewterEndBattleText3 ; TextEndBattle
	
Z1TrainerHeader3:
	dbEventFlagBit EVENT_9E3
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E3
	dw Z1PewterBattleText4 ; TextBeforeBattle
	dw Z1PewterAfterBattleText4 ; TextAfterBattle
	dw Z1PewterEndBattleText4 ; TextEndBattle
	dw Z1PewterEndBattleText4 ; TextEndBattle
	
Z1TrainerHeader4:
	dbEventFlagBit EVENT_9E4
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E4
	dw Z1PewterBattleText5 ; TextBeforeBattle
	dw Z1PewterAfterBattleText5 ; TextAfterBattle
	dw Z1PewterEndBattleText5 ; TextEndBattle
	dw Z1PewterEndBattleText5 ; TextEndBattle
	
Z1TrainerHeader5:
	dbEventFlagBit EVENT_9E5
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E5
	dw Z1PewterBattleText6 ; TextBeforeBattle
	dw Z1PewterAfterBattleText6 ; TextAfterBattle
	dw Z1PewterEndBattleText6 ; TextEndBattle
	dw Z1PewterEndBattleText6 ; TextEndBattle

Z1TrainerHeader6:
	dbEventFlagBit EVENT_9E6
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E6
	dw Z1PewterBattleText7 ; TextBeforeBattle
	dw Z1PewterAfterBattleText7 ; TextAfterBattle
	dw Z1PewterEndBattleText7 ; TextEndBattle
	dw Z1PewterEndBattleText7 ; TextEndBattle
	
Z1TrainerHeader7:
	dbEventFlagBit EVENT_9E7
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E7
	dw Z1PewterBattleText8 ; TextBeforeBattle
	dw Z1PewterAfterBattleText8 ; TextAfterBattle
	dw Z1PewterEndBattleText8 ; TextEndBattle
	dw Z1PewterEndBattleText8 ; TextEndBattle

Z1TrainerHeader8:
	dbEventFlagBit EVENT_9E8
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E8
	dw Z1PewterBattleText9 ; TextBeforeBattle
	dw Z1PewterAfterBattleText9 ; TextAfterBattle
	dw Z1PewterEndBattleText9 ; TextEndBattle
	dw Z1PewterEndBattleText9 ; TextEndBattle
	
Z1TrainerHeader9:
	dbEventFlagBit EVENT_9E9
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E9
	dw Z1PewterBattleText10 ; TextBeforeBattle
	dw Z1PewterAfterBattleText10 ; TextAfterBattle
	dw Z1PewterEndBattleText10 ; TextEndBattle
	dw Z1PewterEndBattleText10 ; TextEndBattle
	
Z1TrainerHeader10:
	dbEventFlagBit EVENT_9EA
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9EA
	dw Z1PewterBattleText11 ; TextBeforeBattle
	dw Z1PewterAfterBattleText11 ; TextAfterBattle
	dw Z1PewterEndBattleText11 ; TextEndBattle
	dw Z1PewterEndBattleText11 ; TextEndBattle
	
	db $ff

Z1PewterBattleText1:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText1:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText1:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText2:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText2:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText2:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"	

Z1PewterBattleText3:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText3:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText3:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText4:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText4:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText4:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"

Z1PewterBattleText5:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText5:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText5:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"

Z1PewterBattleText6:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText6:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText6:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"

Z1PewterBattleText7:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText7:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText7:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText8:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText8:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText8:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText9:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText9:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText9:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText10:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText10:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText10:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText11:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText11:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText11:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"	
							
Z1PewterText0:
	TX_ASM
	ld hl, Z1TrainerHeader0	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText1:
	TX_ASM
	ld hl, Z1TrainerHeader1	
	call TalkToTrainer
	jp TextScriptEnd

Z1PewterText2:
	TX_ASM
	ld hl, Z1TrainerHeader2	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText3:
	TX_ASM
	ld hl, Z1TrainerHeader3	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText4:
	TX_ASM
	ld hl, Z1TrainerHeader4	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText5:
	TX_ASM
	ld hl, Z1TrainerHeader5	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText6:
	TX_ASM
	ld hl, Z1TrainerHeader6	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText7:
	TX_ASM
	ld hl, Z1TrainerHeader7	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText8:
	TX_ASM
	ld hl, Z1TrainerHeader8	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText9:
	TX_ASM
	ld hl, Z1TrainerHeader9	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText10:
	TX_ASM
	ld hl, Z1TrainerHeader10	
	call TalkToTrainer
	jp TextScriptEnd

Z1PewterText11:
	TX_ASM
	ld hl, Z1TrainerHeader10
	call PrintText
	jp TextScriptEnd
	
Z1PewterText12:
	TX_ASM
	ld hl, Z1TrainerHeader10
	call PrintText
	jp TextScriptEnd
