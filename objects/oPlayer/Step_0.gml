/// @desc Player Update

//Camera Speed Variables
var camXSpeed = .05;
var camYSpeed = .05;

//Iso Movement Speed Constants. North is up-right
enum NORTH{x = 12, y = -6};
enum NORTHEAST{x = 13, y = 0};
enum EAST{x = 12, y = 6};
enum SOUTHEAST{x = 0, y = 13};
enum SOUTH{x = -12, y = 6};
enum SOUTHWEST{x = -13, y = 0};
enum WEST{x = -12, y = -6};
enum NORTHWEST{x = 0, y = -13};
var moveSpeed = .1 //Movement speed modifier

//Stop previous player movement when keys released
xsp = 0;
ysp = 0;

//Movement Handler
var up, down, left, right;
if (keyboard_check(vk_up)) up=true; else up=false;
if (keyboard_check(vk_down)) down=true; else down=false;
if (keyboard_check(vk_left)) left=true; else left=false;
if (keyboard_check(vk_right)) right=true; else right=false;

if (up && right){xsp = NORTHEAST.x * moveSpeed; ysp = NORTHEAST.y * moveSpeed;}
else if (up && left){xsp = NORTHWEST.x * moveSpeed; ysp = NORTHWEST.y * moveSpeed;}
else if (down && right){xsp = SOUTHEAST.x * moveSpeed; ysp = SOUTHEAST.y * moveSpeed;}
else if (down && left){xsp = SOUTHWEST.x * moveSpeed; ysp = SOUTHWEST.y * moveSpeed;}
else if (up){xsp = NORTH.x * moveSpeed; ysp = NORTH.y * moveSpeed;}
else if (down){xsp = SOUTH.x * moveSpeed; ysp = SOUTH.y * moveSpeed;}
else if (left){xsp = WEST.x * moveSpeed; ysp = WEST.y * moveSpeed;}
else if (right){xsp = EAST.x * moveSpeed; ysp = EAST.y * moveSpeed;}

move_and_collide(xsp,ysp,oNPC);

//Camera setup & smooth following
var target_x = x - cam_w()/2
var target_y = y - cam_h()/2
var camX = lerp(cam_x(), target_x, camXSpeed);
var camY = lerp(cam_y(), target_y, camYSpeed);
camera_set_view_pos(view_camera[0], camX,camY);

if (keyboard_check(vk_f1))
{
	get_integer("x pos", x);
	get_integer("y pos", y);
}