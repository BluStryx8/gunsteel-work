/// @description All player actions
if (global.truepause)
{
	global.paused = true;
	exit;
}

/// Pause Game
if (keyboard_check_pressed(vk_escape) and room != rm_mainmenu and room != rm_settings)
{
	global.paused = !global.paused;	// Toggle paused
}
if (global.paused) exit;	// Exits if paused

/// Update variables
sprite = spr_gui_empty;	// Resets weapon sprite
sneak = false;			// stops sneak if not being held down
xprev[2] = xprev[1];	// Records position 3 frames ago
yprev[2] = yprev[1];
xprev[1] = xprev[0];	// Records position 2 frames ago
yprev[1] = yprev[0];
xprev[0] = xprevious;	// Records position 1 frame ago
yprev[0] = yprevious;
move_speed = base_speed - weight;	// Weighs down player if using heavy weapons

/// Keyboard Movements
if (global.moveable == true and immune <= 45)	// Checks if player can move
{
	if (keyboard_check(vk_shift) or global.in_inv) sneak = true;	// Sneaking
	// Check dodge
	if ((mouse_check_button_pressed(mb_middle) or keyboard_check_pressed(vk_space))
		and dodge == 0 and !sneak
		and not (h_move == 0 and v_move == 0))
	{
		// Initialise Dodge
		h_dodge = h_move / 2;
		v_dodge = v_move / 2;
		dodge = move_speed;
	}
	else
	{
		// Check keyboard
		if (keyboard_check(ord("A")))	h_move -= 2;	// Move left
		if (keyboard_check(ord("D")))	h_move += 2;	// Move right
		if (keyboard_check(ord("W")))	v_move -= 2;	// Move up
		if (keyboard_check(ord("S")))	v_move += 2;	// Move down
	}
}

/// Decrease Speed
if (dodge <= 0 and immune <= 50)	// If not dodging
{
	// Horizontal Movement; Decrement speed towards 0
	if (h_move > 0) h_move -= 1;
	if (h_move < 0) h_move += 1;
	if (sneak)	// Slow Movement Cap
		h_move = round(clamp(h_move, -move_speed / 2, move_speed / 2));
	else
		h_move = clamp(h_move, -move_speed, move_speed);
	// Vertical Movement; Decrement speed towards 0
	if (v_move > 0) v_move -= 1;
	if (v_move < 0) v_move += 1;
	if (sneak)	// Slow Movement Cap
		v_move = round(clamp(v_move, -move_speed / 2, move_speed / 2));
	else
		v_move = clamp(v_move, -move_speed, move_speed);
}
else if (dodge > 0)	// If dodging
{
	// Dodge Speed
	dodge -= 0.25;	// Decrements speed and duration of dodge
	h_move = clamp(round(h_dodge * dodge), -move_speed * 2, move_speed * 2);
	v_move = clamp(round(v_dodge * dodge), -move_speed * 2, move_speed * 2);
	if (dodge <= 0) dodge = -dodge_cooldown;
}
if (dodge < 0) dodge += 1;
if (immune > 0) immune -= 1;

/// Update position
mask_index = spr_player_collision;
h_move = collision("x", h_move, 0);
v_move = collision("y", v_move, 16);
dir = point_direction(x, y, mouse_x, mouse_y);
mask_index = sprite_index;

// Dodge handling if the player hits a wall
if (dodge > 0)
{
	if (h_move == 0) h_dodge = 0;
	if (v_move == 0) v_dodge = 0;
	if (h_dodge == 0 and v_dodge == 0 and dodge > 2) dodge = 2;
}

/// Check animating

// Animation for x
if (dir <= 90 or dir >= 270) anim += h_move else anim -= h_move;

// Animation for y
if (h_move == 0) anim += abs(v_move);

// If not moving
if (h_move == 0 and v_move == 0)
{
	anim_x = 0;
	anim_y = 0;
	anim = 0;
	anim_frame = 0;
	frame = 0;
	still = 1;
}

// If moved far enough
while (anim >= 3)
{
	anim -= 3;
	if (anim_frame < 0) anim_frame = frametime;		// Force animation if first frame of movement
	anim_frame += 1;
}
while (anim <= -3)
{
	anim += 3;
	if (anim_frame > 0) anim_frame = -frametime;	// Force animation if first frame of movement
	anim_frame -= 1;
}

// Frametime
if (anim_frame > frametime or (still = 1 and anim_frame > 0))
{
	anim_frame = 0;
	frame += 1;
	if (frame >= 5) frame = 1;	// Loops frame
	still = 0;
}
if (anim_frame < -frametime or (still = 1 and anim_frame < 0))
{
	anim_frame = 0;
	frame -= 1;
	if (frame <= 0) frame = 4;	// Loops frame
	still = 0;
}

/// Animation
switch(frame)
{	
	case 1:			// First frame
		anim_x = 0;
		anim_y = -1;
		break;
	
	case 2:			// Second frame
		anim_x = 1;
		anim_y = -1;
		break;
	
	case 3:			// Third frame
		anim_x = 1;
		anim_y = 0;
		break;
	
	case 4:			// Forth frame
		anim_x = 0;
		anim_y = 0;
		break;
}

/// Calculate Firing
if (fire > 0 and fire_cooldown == 0)
{
	// Fire
	fire_cooldown = reload;
	fire -= 1;
	// Check Ammo
	if (ammo > 0 and pump == 0)
	{
		// Set bullet type, and do sound
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		switch (type)
		{
			case "Pistol":
			case "Assault Rifle":
				var _bullet = obj_player_normal_bullet;
				audio_play_sound(snd_fire_rifle, 1, false);
				break;
			case "Sniper Rifle":
			case "Minigun":
				var _bullet = obj_player_snipe_bullet;
				audio_play_sound(snd_fire_rifle, 1, false);
				break;
			case "Shotgun":
				var _bullet = obj_player_round_bullet;
				audio_play_sound(snd_fire_shotgun, 1, false);
				break;
		}
		// Create bullets until _bullet_count matches bullets
		for (var _bullet_count = 0; _bullet_count < bullets; _bullet_count++)
			instance_create_layer(x, y, "bullets", _bullet);
		
		// Increase inaccuracy
		accuracy += recoil;
		if (accuracy > max_recoil) accuracy = max_recoil;
		shake = round(shake_dur * global.settings_shake);	// Shake
		ammo -= 1;											// Reduce ammo
		if atk_type == "Pump Action" pump = 1;				// Pump
	}
	else
	{
		if ammo <= 0 audio_play_sound(snd_dry_fire, 1, false)	// Dry fire sound
			else audio_play_sound(snd_reload_clip, 1, false);	// Not pumped sound
	}
}
// If not firing
if (not mouse_check_button(mb_left)) firing = false;

// Attack Cooldown
if (fire_cooldown > 0) fire_cooldown -= 1;
if (fire_cooldown <= 0) fire_cooldown = 0;
if (accuracy > base_accuracy) accuracy -= 0.1;	// Decrease inaccuracy back to base accuracy
if (sneak and accuracy > max_recoil - (max_recoil - base_accuracy) / 2) accuracy -= 0.1;
if (wind > 0 and not mouse_check_button(mb_left))
{
	wind -= 1;
	if !audio_is_playing(snd_minigun_winddown)
	{
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_stop_sound(snd_minigun_windup);
		audio_play_sound(snd_minigun_winddown, 1, false);
	}
}

/// Calculate Reloading
if (reloading < 0 and fire_cooldown == 0) reloading = 0;	// negative reload signifies weapon swap
if (pump < 0 and fire_cooldown == 0) pump = 0;				// neagtive pump signifies pump reload
if (reloading > 1) reloading -= 1;							// Decrease reloading count

// Pre-emptive reload
if (reloading == 30)
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_clip, 1, false);
	accuracy = max_recoil;
	switch (type)
	{
		case "Pistol":
		case "Assault Rifle":
		case "Sniper Rifle":
		case "Minigun":
			ammo = max_ammo;
			break;
		case "Shotgun":
			if (ammo < max_ammo)
			{
				ammo += 1;
				reloading += pump_time;
				fire_cooldown = reloading;
			}
			else
			{
				audio_stop_sound(snd_reload_clip);
				if (ammo == max_ammo) and (pump == 1)
				{
					audio_play_sound(snd_reload_eject_clip, 1, false);
					reloading += pump_time;
					fire_cooldown = reloading;
					pump = -1;
				}
			}
			break;
	}
}
if (reloading == 15)										
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_shotgun, 1, false);
}
// Reload
if (reloading == 1)
{
	reloading = 0;
	pump = 0;
}
// Check for reload
if (keyboard_check(ord("R")) and fire_cooldown == 0 and reloading == 0 and wind <= 0
					and !global.holstered and type != "other")
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_eject_clip, 1, false);
	reloading = reload_time;
	fire_cooldown = reloading;
	if (type != "Shotgun") ammo = 0;
	if (atk_type == "Pump Action") pump = 1;
}

/// Camera (Temp)
// Shake
if (shake > 0)
{
	shake -= 1;
	shake_x = irandom_range(-shake, shake);
	shake_y = irandom_range(-shake, shake);
	// Stops shake if too close to mouse
	var _dist = max((25 - point_distance(x, y, mouse_x, mouse_y)) / 2, 0);
	if (shake_x > 0) shake_x = max(shake_x - _dist, 0) else shake_x = min(shake_x + _dist, 0);
	if (shake_y > 0) shake_y = max(shake_y - _dist, 0) else shake_y = min(shake_y + _dist, 0);
}
else
{
	// Cancel shake
	shake_x = 0;
	shake_y = 0;
}

// Centre camera on player
camera_set_view_pos(view_camera[0], x - h_move - camera_width / 2 + shake_x,
									y - v_move - camera_height / 2 + shake_y);
// Scoping
if (focus == 1)
{
	// True Scope
	if (camera_pan > 1.3) camera_pan -= camera_pan / 4;
}
else if (focus == 0)
{
	// Standard scoping effect
	if (camera_pan > 6) camera_pan -= camera_pan / 4;
	if (camera_pan < 6) camera_pan += camera_pan / 3;
}
else
{
	// Still camera
	if camera_pan < 1024 camera_pan += camera_pan / 3;
}

if camera_pan < 1024 // 1024 or over makes the camera lock on player without scoping effect
{
	camera_set_view_pos(view_camera[0],
	((camera_pan - 1) * x / camera_pan + mouse_x / camera_pan) - camera_width / 2 + shake_x,
	((camera_pan - 1) * y / camera_pan + mouse_y / camera_pan) - camera_height / 2 + shake_y);
}