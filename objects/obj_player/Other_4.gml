/// @description Set room constants
// Camera
focus = 0;
camera_pan = 1024;
camera_width = 512;
camera_height = 384;
view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);

// Temporary
if (room == rm_game2)
{
	global.holstered = true;
}
if (room == rm_game) global.holstered = false;


// Goes to the right place in room
x = global.player_setx;
y = global.player_sety;