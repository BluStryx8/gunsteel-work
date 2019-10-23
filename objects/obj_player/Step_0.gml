/// @description Movement
if (keyboard_check_pressed(vk_escape) and not room == rm_mainmenu)
{
	global.paused = !global.paused;
}
if (global.paused) exit;

// Update
sprite = spr_gui_empty;
xprev[2] = xprev[1];
yprev[2] = yprev[1];
xprev[1] = xprev[0];
yprev[1] = yprev[0];
xprev[0] = xprevious;
yprev[0] = yprevious;

// Keyboard Movements
if global.moveable = true
{
	if keyboard_check(global.p_left) h_move -= 2;
	if keyboard_check(global.p_right) h_move += 2;
	if keyboard_check(global.p_up) v_move -= 2;
	if keyboard_check(global.p_down) v_move += 2;
	if (mouse_check_button_pressed(mb_middle) and dodge <= 0 and not (h_move == 0 and v_move == 0))
	{
		h_dodge = h_move / 3;
		v_dodge = v_move / 3;
		dodge = move_speed;
	}
}

// Decrease Speed
if dodge <= 0
{
	// Horizontal Movement
	if h_move > 0 h_move -= 1;
	if h_move < 0 h_move += 1;
	if keyboard_check(vk_shift)
	{
		// Slow Movement
		if h_move > move_speed / 2 h_move = round(move_speed / 2);
		if h_move < -move_speed / 2 h_move = round(-move_speed / 2);
	}
	else
	{
		// Standard Movement
		if (h_move > move_speed) h_move = move_speed;
		if (h_move < -move_speed) h_move = -move_speed;
	}
	// Vertical Movement
	if v_move > 0 v_move -= 1;
	if v_move < 0 v_move += 1;
	if keyboard_check(vk_shift)
	{
		// Slow Movement
		if v_move > move_speed / 2 v_move = round(move_speed / 2);
		if v_move < -move_speed / 2 v_move = round(-move_speed / 2);
	}
	else
	{
		// Standard Movement
		if v_move > move_speed v_move = move_speed;
		if v_move < -move_speed v_move = -move_speed;
	}
}
else
{
	// Dodge Speed
	dodge -= 0.25;
	h_move = round(h_dodge * dodge);
	v_move = round(v_dodge * dodge);
}

h_move = collision("x", h_move, 0);
v_move = collision("y", v_move, 16);

if dodge > 0
{
	if h_move == 0 h_dodge = 0;
	if v_move == 0 v_dodge = 0;
	if h_dodge == 0 and v_dodge == 0 and dodge > 2 dodge = 2;
}

// Animation for x
if global.moveable = true
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	if _dir <= 90 or _dir >= 270
	{
		anim += h_move
	}
	else
	{
		anim -= h_move
	}
}
// Animation for y
if h_move == 0 anim += abs(v_move);

// If not moving
if h_move == 0 and v_move == 0
{
	anim_x = 0;
	anim_y = 0;
	anim = 0;
	anim_frame = 0;
	frame = 0;
	still = 1;
}

// If moved far enough
while anim >= 3
{
	anim -= 3
	if anim_frame < 0 anim_frame = room_speed / 4; // Force animation
	anim_frame += 1;
}
while anim <= -3
{
	anim += 3
	if anim_frame > 0 anim_frame = -(room_speed / 4); // Force animation
	anim_frame -= 1;
}

// Frametime
if anim_frame > room_speed / 4 or (still = 1 and anim_frame > 0)
{
	anim_frame = 0;
	frame += 1;
	still = 0;
}
if anim_frame < -(room_speed / 4) or (still = 1 and anim_frame < 0)
{
	anim_frame = 0;
	frame -= 1;
	if frame <= 0 frame = 4;
	still = 0;
}

// Animation
switch(frame)
{
	case 0:
	if still == 0
	{
		frame = 4;
		anim_x = 0;
		anim_y = 0;
	}
	break;
	
	case 1:
	anim_x = 0;
	anim_y = -1;
	break;
	
	case 2:
	anim_x = 1;
	anim_y = -1;
	break;
	
	case 3:
	anim_x = 1;
	anim_y = 0;
	break;
	
	case 4:
	anim_x = 0;
	anim_y = 0;
	break;
	
	case 5:
	frame = 1;
	anim_x = 0;
	anim_y = -1;
	break;
}

// Calculate Fire
if fire > 0 and fire_cooldown == 0
{
	fire_cooldown = reload;
	fire -= 1;
	// Check Ammo
	if ammo > 0
	{
		if accuracy < base_accuracy accuracy = base_accuracy;
		var _bullet_count = 0;
		if bullets != 0 do
		{
			instance_create_layer(x, y, "bullets", obj_player_bullet);
			_bullet_count += 1;
		}
		until _bullet_count >= bullets;
		audio_group_set_gain(audiogrp_sounds,global.settings_sound_volume,0);
		audio_play_sound(snd_fire, 1, false);
		accuracy += recoil;
		if accuracy > max_recoil accuracy = max_recoil;
		shake = round(shake_dur * global.settings_shake);
		ammo -= 1;
	}
	else
	{
		audio_play_sound(snd_dry_fire, 1, false);
	}
}

// Attack Cooldown
if fire_cooldown > 0 fire_cooldown -= 1;
if fire_cooldown <= 0
{
	fire_cooldown = 0;
	if accuracy > base_accuracy accuracy -= 0.1;
}

// Shake
if shake > 0
{
	shake -= 1;
	shake_x = irandom_range(-shake, shake);
	shake_y = irandom_range(-shake, shake);
}
else
{
	shake_x = 0
	shake_y = 0
}

// Camera (Temp)
camera_set_view_pos(view_camera[0], x - h_move - camera_width / 2 + shake_x, y - v_move - camera_height / 2 + shake_y);
if focus == 1
{
	if camera_pan > 2 camera_pan -= camera_pan / 2;
}
else if focus == 0
{
	if camera_pan > 8 camera_pan -= camera_pan / 2;
	if camera_pan < 8 camera_pan += camera_pan;
}
// Reset camera pan
// if camera_pan < 1024 camera_pan += camera_pan;

if camera_pan < 1024
{
	camera_set_view_pos(view_camera[0],
	((camera_pan - 1) * x / camera_pan + mouse_x / camera_pan) - camera_width / 2 + shake_x,
	((camera_pan - 1) * y / camera_pan + mouse_y / camera_pan) - camera_height / 2 + shake_y);
}