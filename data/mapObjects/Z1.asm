Z1_Object:
	db $03 ; border block

	db 2 ; warps
	warp  4, 13, 7, PEWTER_CITY
	warp  5, 13, 7, PEWTER_CITY
	
	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to  5, 13, Z1_WIDTH
