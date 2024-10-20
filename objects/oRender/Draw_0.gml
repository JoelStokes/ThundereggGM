/// @description Render game
var tileData, roomX, roomY, tileIndex, tileZ;

//Required for gpu_set_depth to function as expected
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY];	
		roomX = TileToScreenX(tX, tY);
		roomY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		//Place matching tile in iso x and pseudo z
		if (tileIndex != 0)
		{
			gpu_set_depth(-roomY);
			draw_sprite(sStatic, tileIndex-1, roomX, roomY - tileZ);
			
			//Add new physics fixture if applicable
			if (tileZ > 0)
			{
				instance_create_depth(roomX, roomY - tileZ, -1000, cCubeBase);
			}
		}
	}
}