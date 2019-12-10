/// @description changes opacity of rectangle
if (fade >= 1)
{
	room_goto(rm_to);
	instance_destroy();
}
else fade += 1 / room_speed;