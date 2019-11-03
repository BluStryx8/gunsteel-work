/// @description Finds the location of mouse pressed
if (global.paused) exit;

// Registeres if you pressed e near it
var mousex = mouse_x;
var mousey = mouse_y;

if clicked = false
{
	if (distance_to_point(mousex, mousey) < 15) and obj_player.dodge <= 0
	{
		clicked = true;
		global.moveable = false;
		global.in_furnace = true
		global.in_inv = true
	
		
	}
}
else
{
	clicked = false
	global.moveable = true
	global.in_furnace = false
	global.in_inv = false
}


	
