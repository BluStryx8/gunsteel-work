/// @description AI change
if (global.paused) exit;
anim += 1;
if (anim >= anim_speed - anim_modifier)
{
	anim -= anim_speed - anim_modifier;
	image_index += 1;
}
if (variable_instance_exists(id, "master_id"))
	if (!master_id.active) exit;

switch (state)
{
	case 0:
		// Idle
		anim_modifier = -1;
		if ((distance_to_object(obj_player) < detect_distance) or instance_exists(obj_player_normal_bullet))
			state = 1;
		break;
	case 1:
		// Attacking
		anim_modifier = 0;
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		if (spd < max_speed) spd += 0.1;
		speed = spd;
		hspd = hspeed;
		vspd = vspeed;
		if (distance_to_object(obj_player) < dive_distance)
		{
			if (windup_time != -1) state = 2;
				else state = 3;
			dont_run = false;
			time = windup_time;
			anim_modifier = -2;
			bullet_spawn = 0;
		}
		break;
	case 2:
		// Windup
		if (spd > max_speed / 2) spd -= 0.1;
		else if (time > 0) time -= 1;
		else state = 3;
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = spd;
		hspd = hspeed;
		vspd = vspeed;
		break;
	case 3:
		// Escaping
		if (!dont_run)
		{
			// Define Escape duration
			spd = dive_speed;
			time = irandom_range(min_escape_time, max_escape_time);
			dont_run = true;
			anim_modifier = 2;
		}
		else time -= 1;
		// Red Bat
		if (object_index == obj_enemy_bat_red)
		{
			if (time > 30 and bullet_spawn <= 0)
			{
				var _dir = point_direction(x, y, obj_player.x, obj_player.y);
				var _b_speed = floor(max_speed * 1.5);
				bullet_spawn = anim_speed * 2 - 4;
				enemy_spawn_bullet_pattern("direct", 1, _dir, 10, _b_speed, 120, scale + 0.1, scale + 0.3);
			}
		}
		// Green Bat
		if (object_index == obj_enemy_bat_green)
		{
			if (time > 30 and bullet_spawn <= 0)
			{
				bullet_spawn = anim_speed - 3;
				enemy_spawn_bullet_pattern("direct", 1, direction, 0, 0, 180, scale + 0.1, scale + 0.3);
			}	
		}
		if (time < 0)
		{
			anim_modifier = 1;
			spd -= 0.1;
		}
		if (spd <= 0) state = 1;
		if (bullet_spawn > 0) bullet_spawn -= 1;
		speed = spd;
		hspd = hspeed;
		vspd = vspeed;
		break;
}