Z1_Object:
	db $03 ; border block

	db 2 ; warps
	warp  6, 23, 7, -1
	warp  7, 23, 7, -1
	
	db 0 ; signs

	db 12 ; objects
	object SPRITE_BLACK_HAIR_BOY_1,  1, 17, STAY, RIGHT, 1, OPP_JR_TRAINER_M, 10
	object SPRITE_BLACK_HAIR_BOY_1, 12, 17, STAY, LEFT, 2, OPP_JR_TRAINER_M, 11
	object SPRITE_BLACK_HAIR_BOY_1,  9,  4, STAY, LEFT, 3, OPP_JR_TRAINER_M, 19
	object SPRITE_BLACK_HAIR_BOY_1, 11,  4, STAY, DOWN, 4, OPP_JR_TRAINER_M, 17
	object SPRITE_BLACK_HAIR_BOY_1,  4, 10, STAY, DOWN, 5, OPP_JR_TRAINER_M, 14
	object SPRITE_BLACK_HAIR_BOY_1,  9, 10, STAY, DOWN, 6, OPP_JR_TRAINER_M, 15
	object SPRITE_BLACK_HAIR_BOY_1,  2,  4, STAY, DOWN, 7, OPP_JR_TRAINER_M, 16
	object SPRITE_BLACK_HAIR_BOY_1,  2, 10, STAY, DOWN, 8, OPP_JR_TRAINER_M, 12
	object SPRITE_BLACK_HAIR_BOY_1,  4,  4, STAY, RIGHT, 9, OPP_JR_TRAINER_M, 18
	object SPRITE_BLACK_HAIR_BOY_1, 11, 10, STAY, DOWN, 10, OPP_JR_TRAINER_M, 13
	object SPRITE_BLACK_HAIR_BOY_2,  7,  2, STAY, DOWN, 11, ; person
	object SPRITE_BLACK_HAIR_BOY_1,  7, 19, STAY, DOWN, 12, ; person

	; warp-to
	warp_to  7, 23, Z1_WIDTH
	warp_to 23, 23, Z1_WIDTH
