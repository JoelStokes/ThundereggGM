/// @function GetObjIsoPosX(_x, _y, _w)
/// @description Convert object pos from 2D X to Isometric X
/// @param {real} _x X Coordinate
/// @param {real}  _y Y Coordinate
/// @param {real}  _w Sprite Width
/// @return {real}

function GetObjIsoPosX(_x, _y, _w){
	//Convert from x,y to tile, then from tile to iso x
	var newX = (TileToScreenX(_x, _y)/TILE_W)+(_w/2);
	return newX;
}

/// @function GetObjIsoPosY(_x, _y, _h)
/// @description Convert object pos from 2D Y position to Isometric X
/// @param {real} _x X Coordinate
/// @param {real}  _y Y Coordinate
/// @param {real}  _h Sprite Height
/// @return {real}

function GetObjIsoPosY(_x, _y, _h){
	//Convert from x,y to tile, then from tile to iso y
	var newY = (TileToScreenY(_x, _y)/TILE_H)-(_h/2);
	return newY;
}