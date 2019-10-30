/// @description Sets alarm and has if statement for timer
if instance_exists(obj_player)
{
	alarm[0] = room_speed*60
}


if reminder_time = 30 
{
	reminder = true
	alarm[1] = room_speed * 4
}
