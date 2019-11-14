/// @description Finds the location of mouse pressed
if (global.paused) exit;
var playerx = obj_player.x;
var playery = obj_player.y;

if ((distance_to_point(playerx, playery) < 45)
	and obj_player.dodge <= 0 and !global.in_inv and obj_player.reloading == 0)
{
	room_restart();
	global.difficulty += 5;
}