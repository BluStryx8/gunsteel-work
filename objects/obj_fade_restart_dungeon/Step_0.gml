/// @description changes opacity of rectangle
if (fade >= 1)
{
	global.seed = -1;
	global.level += 1;
	room_restart();
	instance_destroy();
}
else fade += 1 / room_speed;