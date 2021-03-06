Route24_h:
	db OVERWORLD ; tileset
	db ROUTE_24_HEIGHT, ROUTE_24_WIDTH ; dimensions (y, x)
	dw Route24_Blocks ; blocks
	dw Route24_TextPointers ; texts
	dw Route24_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_24, X5, -1, 0, X5_Blocks, 1
	SOUTH_MAP_CONNECTION ROUTE_24, CERULEAN_CITY, -3, 2, CeruleanCity_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_24, Y2, 6, 0, Y2_Blocks
	EAST_MAP_CONNECTION ROUTE_24, ROUTE_25, 0, 0, Route25_Blocks
	dw Route24_Object ; objects
