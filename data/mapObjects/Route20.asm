Route20_Object:
	db $43 ; border block

	db 3 ; warps
	warp 48,  7, 0, SEAFOAM_ISLANDS_1F
	warp 58, 11, 2, SEAFOAM_ISLANDS_1F
	warp 52,  5, 4, DIGLETTS_CAVE_ROUTE_2

	db 3 ; signs
	sign 51,  9, 11 ; Route20Text11
	sign 57, 13, 12 ; Route20Text12
	sign 65, 13, 14 ; Route20Text13

	db 10 ; objects
	object SPRITE_SWIMMER, 87, 8, STAY, UP, 1, OPP_SWIMMER, 9
	object SPRITE_SWIMMER, 68, 11, STAY, UP, 2, OPP_BEAUTY, 15
	object SPRITE_SWIMMER, 63,  5, STAY, DOWN, 3, OPP_BEAUTY, 6
	object SPRITE_SWIMMER, 56, 15, STAY, RIGHT, 4, OPP_JR_TRAINER_F, 24
	object SPRITE_SWIMMER, 38, 13, STAY, DOWN, 5, OPP_SWIMMER, 10
	object SPRITE_SWIMMER, 87, 13, STAY, UP, 6, OPP_SWIMMER, 11
	object SPRITE_BLACK_HAIR_BOY_1, 34, 9, STAY, UP, 7, OPP_BIRD_KEEPER, 11
	object SPRITE_SWIMMER, 25, 7, STAY, UP, 8, OPP_BEAUTY, 7
	object SPRITE_SWIMMER, 24, 12, STAY, DOWN, 9, OPP_JR_TRAINER_F, 16
	object SPRITE_SWIMMER, 15, 8, STAY, UP, 10, OPP_BEAUTY, 8

	; warp-to
	warp_to 48,  7, ROUTE_20_WIDTH ; SEAFOAM_ISLANDS_1F
	warp_to 58, 11, ROUTE_20_WIDTH ; SEAFOAM_ISLANDS_1F
	warp_to 52,  5, ROUTE_20_WIDTH ; X6