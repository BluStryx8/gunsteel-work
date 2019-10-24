/// @description Finds the location of mouse pressed
if (global.paused) exit;
var mousex = mouse_x;
var mousey = mouse_y;

if (clicked = false)
{
	if ((distance_to_point(mousex, mousey) < 10) and obj_player.dodge <= 0 and !global.in_inv)
	{
		clicked = true;
		global.moveable = false;
		instance_create_layer(0, 0, "fade", obj_to);	
	}
}
	
