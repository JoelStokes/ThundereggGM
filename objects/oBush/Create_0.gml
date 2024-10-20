/// @desc Set NPC Pos & Variables
x = GetObjIsoPosX(x, y, sprite_width);
y = GetObjIsoPosY(x, y, sprite_height);

depth = -y;

inRect = false;
battleChance = 15;

//Set current randomization seed for true random
randomize();