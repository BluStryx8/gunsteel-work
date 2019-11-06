/// @description AI change
if (global.paused) exit;
anim += 1;
if (anim >= anim_speed)
{
	anim -= anim_speed;
	image_index += 1;
}
if (variable_instance_exists(id, "master_id"))
	if (!master_id.active) exit;

switch (state)
{
	case 0:
		// Idle
		if ((distance_to_object(obj_player) < detect_distance) or instance_exists(obj_player_normal_bullet))
			state = 1;
		break;
	case 1:
		// Attacking
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		if (spd < max_speed) spd += 0.1;
		speed = spd;
		hspd = hspeed;
		vspd = vspeed;
		if (distance_to_object(obj_player) < dive_distance)
		{
			spd = dive_speed;
			bullet_spawn = 0;
			state = 2;
			dont_run = false;
		}
		break;
	case 2:
		// Escaping
		if (!dont_run)
		{
			// Define Escape duration
			time = irandom_range(min_escape_time, max_escape_time);
			dont_run = true;
		} 
		else time -= 1;
		if (time > 30 and bullet_spawn <= 0)
		{
			bullet_spawn = 5;
			enemy_spawn_bullet_pattern("direct", 1, direction, 0, 0, 180, scale + 0.1, scale + 0.3);
		}
		else bullet_spawn -= 1;
		if (time < 0) spd -= 0.1;
		if (spd <= 0) state = 1;
		speed = spd;
		hspd = hspeed;
		vspd = vspeed;
		break;
}