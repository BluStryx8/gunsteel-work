/// @description AI change
if (global.paused) exit;
anim += 1;
if (aggro and distance_to_object(obj_player) < detect_distance)
{
	if (anim >= anim_speed - 1)
	{
		anim -= (anim_speed - 1);
		image_index += 1;
	}
}
else
{
	if (anim >= anim_speed)
	{
		anim -= anim_speed;
		image_index += 1;
	}
}

if (variable_instance_exists(id, "master_id"))
	if (!master_id.active) exit;

action_timer -= 1;

if action_timer <= 0
{
	switch (action)
	{
		case "idle":
			action = "jump_prep";
			action_timer = 120;
			break;
		case "jump_prep":
			action = "jump";
			action_timer = irandom_range(jump_min_time, jump_max_time);
			bounce = action_timer;
			anim = anim_speed;
			break;
		case "jump":
			action = "land";
			action_timer = 60;
			spd = 0;
			bounce = 0;
			hspd = 0;
			vspd = 0;
			break;
		case "land":
			action = "idle";
			action_timer = irandom_range(idle_min_time, idle_max_time);
			if (distance_to_object(obj_player) > undetect_distance)
			{
				aggro = false;
				direction = irandom_range(0, 359);
			}
			break;
	}
}

if (action == "idle")
{
	if (distance_to_object(obj_player) < detect_distance) or instance_exists(obj_player_normal_bullet)
		aggro = true;
	if (aggro)
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	if (direction <= 45 or direction > 315)
		dir = "right";
	else if (direction <= 135 and direction > 45)
		dir = "up";
	else if (direction <= 225 and direction > 135)
		dir = "left";
	else if (direction <= 315 and direction > 225)
		dir = "down";
}

if (action == "jump")
{
	speed = spd;
	hspd = hspeed;
	vspd = vspeed - round((action_timer - (bounce / 2)) / jump_height_div);
	speed = 0;
	hspd = collision("x", hspd, 0);
	vspd = collision("y", vspd, 0);
}