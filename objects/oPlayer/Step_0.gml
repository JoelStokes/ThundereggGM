/// @desc Player Movement
xsp = 0;
ysp = 0;

if keyboard_check(vk_left)
{
	xsp=-1;	
}

if keyboard_check(vk_right)
{
	xsp=1;	
}

if keyboard_check(vk_up)
{
	ysp=-1;	
}

if keyboard_check(vk_down)
{
	ysp=1;	
}

/*
//Need to work out math for proper isometric movement
var vertPrimary = .5;
var vertSecondary = .9;
var horPrimary = .9;
var horSecondary = .7;

if keyboard_check(vk_left)
{
	xsp=-horPrimary;
	ysp=-horSecondary;
}

if keyboard_check(vk_right)
{
	xsp=horPrimary;
	ysp=horSecondary;
}

if keyboard_check(vk_up)
{
	ysp=-vertPrimary;
	xsp=vertSecondary;
}

if keyboard_check(vk_down)
{
	ysp=vertPrimary;
	xsp=-vertSecondary;
}*/

move_and_collide(xsp,ysp,oRender);

//Camera setup & smooth following
var target_x = x - cam_w()/2
var target_y = y - 150
var camX = lerp(cam_x(), target_x, .025)
var camY = lerp(cam_y(), target_y, .025)
camera_set_view_pos(view_camera[0], camX,camY)