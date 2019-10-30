/// @description AI change
if (global.paused) exit;

anim += 1;
if (anim >= anim_speed)
{
	anim -= anim_speed;
	image_index += 1;
}
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
			break;
		case "land":
			action = "idle";
			action_timer = irandom_range(idle_min_time, idle_max_time);
			break;
	}
}

if (action == "idle")
{
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
	var _hspd = hspeed;
	var _vspd = vspeed - round((action_timer - (bounce / 2)) / jump_height_div);
	speed = 0;
	_hspd = collision("x", _hspd, 0);
	_vspd = collision("y", _vspd, 0);
}