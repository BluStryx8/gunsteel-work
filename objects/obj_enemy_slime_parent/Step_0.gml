/// @description AI change
if (global.paused) exit;
anim += 1;
var _anim_mod = 0;
if (aggro and distance_to_object(obj_player) < detect_distance) _anim_mod += 1;
if (action == "jump_prep") _anim_mod += 2; 
if (anim >= anim_speed - _anim_mod)
{
	anim -= (anim_speed - _anim_mod);
	image_index += 1;
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
			if (object_index == obj_enemy_slime_red)
				enemy_spawn_bullet_pattern("spread", 8, 0, 10, 2.5, 240, scale - 0.1, scale + 0.1);
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
	{
		action_timer -= 1;
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}
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