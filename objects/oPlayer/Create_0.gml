/// @desc Set Player Pos & Variables
phy_position_x = GetObjIsoPosX(phy_position_x, phy_position_y, sprite_width);
phy_position_y = GetObjIsoPosY(phy_position_x, phy_position_y, sprite_height);

xsp = 0;
ysp = 0;
phy_fixed_rotation = true;

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