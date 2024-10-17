/// @desc Build the Map

layer_set_visible("Map", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");

//Pull data from all rows/columns on map
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		var tileMapData = tilemap_get(tileMap, tX, tY);
		
		//Needed to prevent mirrorinig or rotation tile issues
		tileMapData = tile_get_index(tileMapData);
		
		//Create 1d array for tile data (sprite, z)
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0;
		
		//stick tile into ds_grid position. "#" is fast grid accessor
		global.theMap[# tX, tY] = thisTile;
	}
}