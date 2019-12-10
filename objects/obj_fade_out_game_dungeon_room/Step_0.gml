/// @description changes opacity of rectangle
if (global.rectangle_opacity_out > 1.01)
{
	room_goto(rm_to);
	global.location = rm_dungeon
	instance_destroy();
	global.moveable = true;

}
else global.rectangle_opacity_out = global.rectangle_opacity_out + 0.04;
