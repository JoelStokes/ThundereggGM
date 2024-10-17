/// @desc Build the Map

layer_set_visible("Map", false);
layer_set_visible("Heightmap", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");
var heightMap = layer_tilemap_get_id("Heightmap");

//Pull data from all rows/columns on map
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		var tileMapData = tilemap_get(tileMap, tX, tY);
		var heightMapData = tilemap_get(heightMap, tX, tY);
		
		//Needed to prevent mirrorinig or rotation tile issues
		tileMapData = tile_get_index(tileMapData);
		heightMapData = tile_get_index(heightMapData);
		
		//Create 1d array for tile data (sprite, z)
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		
		//Get value from height map number
		var newZ = 0;
		switch(heightMapData)
		{
			case 1:
				newZ = 1;
				break;
			case 2:
				newZ = 2;
				break;
			case 3:
				newZ = 3;
				break;
			case 4:
				newZ = -1;
				break;
			case 5:
				newZ = -2;
				break;
		}
		
		thisTile[TILE.Z] = newZ*8;
		
		//stick tile into ds_grid position. "#" is fast grid accessor
		global.theMap[# tX, tY] = thisTile;
	}
}