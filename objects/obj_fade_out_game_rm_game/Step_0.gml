/// @description changes opacity of rectangle
if (global.rectangle_opacity_out > 1.01)
{
	room_goto(rm_to);
	instance_destroy();
	global.moveable = true;
	global.player_setx = 479;
	global.player_sety = 516;
}
else global.rectangle_opacity_out = global.rectangle_opacity_out + 0.01;