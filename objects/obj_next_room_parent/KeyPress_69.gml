/// @description Finds the location of mouse pressed
if (global.paused) exit;
var playerx = obj_player.x;
var playery = obj_player.y;

if (clicked = false)
{
	if ((distance_to_point(playerx, playery) < 45) and obj_player.dodge <= 0 and !global.in_inv)
	{
		clicked = true;
		global.moveable = false;
		instance_create_layer(0, 0, "fade", obj_to);	
	}
}
	
