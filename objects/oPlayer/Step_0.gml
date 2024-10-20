/// @desc Player Update

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

phy_speed_x = xsp;
phy_speed_y = ysp;

//Camera setup & smooth following
var target_x = x - cam_w()/2
var target_y = y - cam_h()/2
var camX = lerp(cam_x(), target_x, camXSpeed);
var camY = lerp(cam_y(), target_y, camYSpeed);
camera_set_view_pos(view_camera[0], camX,camY);

//For debugging, popup X & Y Coordinates in gameplay
if (keyboard_check(vk_f1))
{
	get_integer("x pos", x);
	get_integer("y pos", y);
}