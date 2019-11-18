/// @description Finds the location of player
if (global.paused) exit;
var playerx = obj_player.x;
var playery = obj_player.y;

if ((distance_to_point(playerx, playery) < 45)
	and obj_player.dodge <= 0 and !global.in_inv and obj_player.reloading == 0)
{
	global.seed = -1;
	global.level += 1;
	room_restart();
}