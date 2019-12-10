/// @description Change Opacity of Rectangle
if fade >= 1 
{
	instance_destroy();
	room_goto(rm_dungeon);
}
else
	fade += 0.04;