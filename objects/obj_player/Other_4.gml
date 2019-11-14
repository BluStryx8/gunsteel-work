/// @description Set room constants
// Camera
// Temporary
if (room == rm_mainmenu)
{
	global.truepause = true;
	starting = true;
	dir = 0;
	global.player_setx = 2272;	// Starting x position
	global.player_sety = 416;	// Starting y position
}
else
{
	focus = 0;
	camera_pan = 1024;
	camera_width = 512;
	camera_height = 384;
	view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);
}
if (room == rm_game)
{
	global.holstered = false;
	if (starting)
	{
		starting = false;
		global.player_setx = 270;	// Starting x position
		global.player_sety = 200;	// Starting y position
	}
}
if (room == rm_game2) global.holstered = true;

// Goes to the right place in room
x = global.player_setx;
y = global.player_sety;
p_defense = p_max_defense;