/// @description Necro AI
if (global.paused) exit;
// Animate
// anim += 1;
// var _anim_mod = 0;
// if (distance_to_object(obj_player) < close_distance) _anim_mod += 1;
// if (anim >= anim_speed - _anim_mod)
// {
// 	anim -= (anim_speed - _anim_mod);
// 	image_index += 1;
// }

if (variable_instance_exists(id, "master_id"))
	if (!master_id.active) exit;

if (distance_to_object(obj_player) < close_distance)
	state = false // Running
else
	state = true // Attacking

if (state)
{
	// Movement Control
	if (move_timer == 0)
	{
		var _dir = point_direction(x, y, obj_player.x, obj_player.y);
		if (_dir <= 45 or _dir > 315)
		{
			dir = "right";
			direction = irandom_range(46, 316);
		}
		else if (_dir <= 135 and _dir > 45)
		{
			dir = "up";
			direction = (irandom_range(136, 405)) mod 360;
		}
		else if (_dir <= 225 and _dir > 135)
		{
			dir = "left";
			direction = (irandom_range(226, 495)) mod 360;
		}
		else if (_dir <= 315 and _dir > 225)
		{
			dir = "down";
			direction = (irandom_range(316, 585)) mod 360;
		}
		spd = 1.5;
		move_timer = irandom_range(min_move, max_move);
		if (distance_to_object(obj_player) > far_distance)
		{
			direction = point_direction(x, y, obj_player.x, obj_player.y) + irandom_range(-90, 90);
			spd = 0.75;
		}
	}
	else if (move_timer > 1)
	{
		move_timer -= 1;
	}
	else if (move_timer == 1)
	{
		spd = 0;
		move_timer = -irandom_range(min_move_cd, max_move_cd);
	}
	else move_timer += 1;
	// Attacks
	if (attack_timer_1 <= 0)
	{
		// Homing Shot
		var _dir = point_direction(x, y, obj_player.x, obj_player.y);
		enemy_spawn_bullet_pattern("homing", 1, _dir, 60, 2, 240, scale - 0.1, scale + 0.1);
		attack_timer_1 = irandom_range(attack_1_rate_min, attack_1_rate_max);
	}
	else attack_timer_1 -= 1;
	if (attack_timer_2 <= 0)
	{
		// Spread
		enemy_spawn_bullet_pattern("spread", 6, 0, 10, 2.5, 180, scale - 0.1, scale + 0.1);
		attack_timer_2 = irandom_range(attack_2_rate_min, attack_2_rate_max);
	}
	else attack_timer_2 -= 1;
	attack_timer_3 = 0;
}
else if (!state)
{
	// Movement Control
	if (move_timer <= 0)
	{
		direction = point_direction(obj_player.x, obj_player.y, x, y) + irandom_range(-10, 10);
		spd = 2;
		move_timer = irandom_range(min_move, max_move);
	}
	else move_timer -= 10;
	if (attack_timer_2 <= 0)
	{
		// Spread
		enemy_spawn_bullet_pattern("spread", 6, 0, 15, 2, 180, scale - 0.1, scale + 0.1);
		attack_timer_2 = irandom_range(attack_2_rate_min, attack_2_rate_max);
	}
	else attack_timer_2 -= 2;
	if (attack_timer_3 <= 0)
	{
		// Trail
		enemy_spawn_bullet_pattern("direct", 5, direction, 60, -0.5, 60, scale - 0.1, scale + 0.1);
		attack_timer_3 = irandom_range(attack_3_rate_min, attack_3_rate_max);
	}
	else attack_timer_3 -= 1;
}


speed = spd;
hspd = round(hspeed);
vspd = round(vspeed);
speed = 0;
if hspd == 0 var _htest = true else var _htest = false;
if vspd == 0 var _vtest = true else var _vtest = false;
mask_index = spr_enemy_slime_mask;
hspd = collision("x", hspd, 0);
vspd = collision("y", vspd, 7);
mask_index = sprite_index;

if (hspd == 0 and !_htest) or (vspd == 0 and !_vtest) or (hspd == 0 and vspd == 0 and move_timer > 0)
	move_timer = 0;	// New direction off wall