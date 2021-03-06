ViridianCity_h:
	db OVERWORLD ; tileset
	db VIRIDIAN_CITY_HEIGHT, VIRIDIAN_CITY_WIDTH ; dimensions (y, x)
	dw ViridianCity_Blocks ; blocks
	dw ViridianCity_TextPointers ; texts
	dw ViridianCity_Script ; scripts
	db NORTH | SOUTH | WEST | EAST; connections
	NORTH_MAP_CONNECTION VIRIDIAN_CITY, ROUTE_2, 5, 0, Route2_Blocks
	SOUTH_MAP_CONNECTION VIRIDIAN_CITY, ROUTE_1, 5, 0, Route1_Blocks, 1
	WEST_MAP_CONNECTION VIRIDIAN_CITY, ROUTE_22, 4, 0, Route22_Blocks
	EAST_MAP_CONNECTION VIRIDIAN_CITY, ROUTE_17, 0, 0, Route17_Blocks
	dw ViridianCity_Object ; objects
