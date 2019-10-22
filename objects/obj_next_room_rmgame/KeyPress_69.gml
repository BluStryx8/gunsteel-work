/// @description Finds the location of mouse pressed
if (global.paused) exit;
var mousex = mouse_x
var mousey = mouse_y

if clicked = false{
	if (distance_to_point(mousex, mousey) < 50) {
		clicked = true
		global.moveable = false
		instance_create_layer(0,0,"fade",obj_fade_out_game_rm_game);	
	}
}
	