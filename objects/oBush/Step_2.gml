/// @desc Collision & Roll for Battle

/*
Check if player has walked inside or outside of hitbox.
Had to be moved out of collision function due to continuous
calls while inside with no easy way to determine leaving status
*/
var col = rectangle_in_rectangle(
		bbox_left,
		bbox_top,
		bbox_right,
		bbox_bottom, 
		oPlayer.bbox_left,
		oPlayer.bbox_top,
		oPlayer.bbox_right,
		oPlayer.bbox_bottom)
		
if (col !=0 && !inRect)
{
	inRect = true;
	if (irandom(99) < battleChance)
	{
	    room_goto(BattleTest);
	}
} else if (col == 0)
{
	inRect = false;
}