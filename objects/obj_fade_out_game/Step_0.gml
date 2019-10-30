/// @description changes opacity of rectangle
if (global.rectangle_opacity_out > 1.01)
{
	room_goto(rm_to);
	global.location = rm_game2
	instance_destroy();
	global.player_setx = 125;
	global.player_sety = 146;
}
else global.rectangle_opacity_out = global.rectangle_opacity_out + 0.01;

if (global.rectangle_opacity_out > 0.5) global.transitioning = true;
if (global.rectangle_opacity_out > 0.9) global.transitioning = false;