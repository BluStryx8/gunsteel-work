/// @description Peforms actions

if state = 0 ///idle
{
	if distance_to_object(obj_player) < 75 or object_exists(obj_player_normal_bullet) or object_exists(obj_player_snipe_bullet) or object_exists(obj_player_round_bullet)
	{
		state = 1 
	}
}

if state = 1 ///attacking
{
	direction  = point_direction(x,y,obj_player.x,obj_player.y)
	if place_meeting(x,y, obj_player_collision)
	{
		state = 2 
		dont_run = false
	}
	
	
}

if state = 2 //retreating
{
	if dont_run = false{
		direction = irandom_range(0,360)
		time = irandom_range(1,2)
		alarm[0] = room_speed/time * 2
		dont_run = true
	} 
	
}



