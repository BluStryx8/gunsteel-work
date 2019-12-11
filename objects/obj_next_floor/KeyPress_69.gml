/// @description Finds the location of player
if (global.paused) exit;
var _player_x = obj_player.x;
var _player_y = obj_player.y;

if ((distance_to_point(_player_x, _player_y) < 45)
	and obj_player.dodge <= 0 and obj_player.reloading == 0
	and !global.in_inv and global.moveable)
{
	global.moveable = false;
	instance_create_layer(0, 0, "control", obj_fade_restart_dungeon);
}