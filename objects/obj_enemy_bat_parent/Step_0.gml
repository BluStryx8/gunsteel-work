/// @description AI change
if (global.paused) exit;
anim += 1;
if (anim >= anim_speed)
{
	anim -= anim_speed;
	image_index += 1;
}
// if (!master_id.active) exit;


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
	if speed < 3 speed += 0.1
	if place_meeting(x,y, obj_player_collision)
	{
		state = 2 
		dont_run = false
	}
	
	
}

if state = 2 //retreating
{
	if !dont_run{
		direction = irandom_range(0,360)
		time = irandom_range(60,120)
		speed = 3
		dont_run = true
	} 
	else time -= 1;
	if time < 0 speed -= 0.1;
	if speed <= 0 state = 1;
}

