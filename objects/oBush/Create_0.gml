/// @desc Set NPC Pos & Variables
x = GetObjIsoPosX(x, y, sprite_width);
y = GetObjIsoPosY(x, y, sprite_height);

depth = -200;

inRect = false;
battleChance = 15;

//Set current randomization seed for true random
randomize();