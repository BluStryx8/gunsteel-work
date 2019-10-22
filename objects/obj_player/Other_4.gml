/// @description Set room constants

// Camera
focus = 0;
camera_pan = 1024;
camera_width = 512;
camera_height = 384;
view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);

// Tileset
global.bulletmap = layer_tilemap_get_id("bullet_collision");
global.tilemap = layer_tilemap_get_id("collision");

// Temporary
if room == rm_game2
{
	x = 100;
	y = 100;
	global.holstered = true;
}
if room == rm_game global.holstered = false;