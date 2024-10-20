/// @desc Set Player Pos & Variables
x = GetObjIsoPosX(x, y, sprite_width);
y = GetObjIsoPosY(x, y, sprite_height);

xsp = 0;
ysp = 0;
phy_fixed_rotation = true;

depth = -100;

//Camera Speed Variables
camXSpeed = .05;
camYSpeed = .05;

//Iso Movement Speed Constants. North is up-right
enum NORTH{x = 12, y = -6};
enum NORTHEAST{x = 13, y = 0};
enum EAST{x = 12, y = 6};
enum SOUTHEAST{x = 0, y = 13};
enum SOUTH{x = -12, y = 6};
enum SOUTHWEST{x = -13, y = 0};
enum WEST{x = -12, y = -6};
enum NORTHWEST{x = 0, y = -13};
moveSpeed = .1 //Movement speed modifier