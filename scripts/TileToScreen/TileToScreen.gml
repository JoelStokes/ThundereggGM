/// @function TileToScreenX(_tY, _tX)
/// @description Convert from 2D X,Y to Iso Width
/// @param {real} _tY Y Coordinate
/// @param {real}  _tX  X Coordinate
/// @return {real}

function TileToScreenX(_tY, _tX){
     return ((_tX - _tY) * (TILE_W *0.5)) +(ROOM_W *0.5)
}

/// @function TileToScreenY(_tY, _tX)
/// @description Convert from 2D X,Y to Iso Height
/// @param {real} _tY Y Coordinate
/// @param {real}  _tX  X Coordinate
/// @return {real}

function TileToScreenY(_tY, _tX){
     return ((_tX + _tY) * (TILE_H *0.5)) +(ROOM_H *0)
}