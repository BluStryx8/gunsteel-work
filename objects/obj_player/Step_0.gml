/// @description Movement
/// Pause Game
if (keyboard_check_pressed(vk_escape) and room != rm_mainmenu)
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

/// Keyboard Movements
if (global.moveable == true)	// Checks if player can move
{
	// Check keyboard
	if (keyboard_check(global.p_left))	h_move -= 2;	// Move left
	if (keyboard_check(global.p_right)) h_move += 2;	// Move right
	if (keyboard_check(global.p_up))	v_move -= 2;	// Move up
	if (keyboard_check(global.p_down))	v_move += 2;	// Move down
	if (keyboard_check(global.p_sneak) or global.in_inv) sneak = true;	// Sneaking
	// Check dodge
	if ((mouse_check_button_pressed(mb_middle) or keyboard_check_pressed(global.p_dodge))
		and dodge <= 0 and !sneak
		and not (h_move == 0 and v_move == 0))
	{
		// Initialise Dodge
		h_dodge = h_move / 3;
		v_dodge = v_move / 3;
		dodge = move_speed;
	}
}

/// Decrease Speed
if (dodge <= 0)	// If not dodging
{
	// Horizontal Movement; Decrement speed towards 0
	if (h_move > 0) h_move -= 1;
	if (h_move < 0) h_move += 1;
	if (sneak)
	{
		// Slow Movement Cap
		if (h_move > move_speed / 2)  h_move = round(move_speed / 2);
		if (h_move < -move_speed / 2) h_move = round(-move_speed / 2);
	}
	else
	{
		// Standard Movement Cap
		if (h_move > move_speed)  h_move = move_speed;
		if (h_move < -move_speed) h_move = -move_speed;
	}
	// Vertical Movement; Decrement speed towards 0
	if (v_move > 0) v_move -= 1;
	if (v_move < 0) v_move += 1;
	if (sneak)
	{
		// Slow Movement Cap
		if (v_move > move_speed / 2)  v_move = round(move_speed / 2);
		if (v_move < -move_speed / 2) v_move = round(-move_speed / 2);
	}
	else
	{
		// Standard Movement Cap
		if (v_move > move_speed)  v_move = move_speed;
		if (v_move < -move_speed) v_move = -move_speed;
	}
}
else	// If dodging
{
	// Dodge Speed
	dodge -= 0.25;	// Decrements speed and duration of dodge
	h_move = round(h_dodge * dodge);
	v_move = round(v_dodge * dodge);
}

/// Update position
h_move = collision("x", h_move, 0);
v_move = collision("y", v_move, 16);
dir = point_direction(x, y, mouse_x, mouse_y);

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
	if (anim_frame < 0) anim_frame = room_speed / 4;	// Force animation if first frame of movement
	anim_frame += 1;
}
while (anim <= -3)
{
	anim += 3;
	if (anim_frame > 0) anim_frame = -(room_speed / 4);	// Force animation if first frame of movement
	anim_frame -= 1;
}

// Frametime
if (anim_frame > room_speed / 4 or (still = 1 and anim_frame > 0))
{
	anim_frame = 0;
	frame += 1;
	if (frame >= 5) frame = 1;	// Loops frame
	still = 0;
}
if (anim_frame < room_speed / -4 or (still = 1 and anim_frame < 0))
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
		var _bullet_count = 0;
		// Create bullets until _bullet_count matches bullets
		if (bullets != 0) do
		{
			instance_create_layer(x, y, "bullets", obj_player_bullet);
			_bullet_count += 1;
		}
		until _bullet_count >= bullets;
		// Sound
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		switch (type)
		{
			case "pistol":
			case "rifle":
				audio_play_sound(snd_fire_rifle, 1, false);
				break;
			case "shotgun":
				audio_play_sound(snd_fire_shotgun, 1, false);
				break;
		}
		// Increase inaccuracy
		accuracy += recoil;
		if (accuracy > max_recoil) accuracy = max_recoil;
		shake = round(shake_dur * global.settings_shake);	// Shake
		ammo -= 1;											// Reduce ammo
		if atk_type == "pump_action" pump = 1;				// Pump
	}
	else
	{
		if ammo <= 0 audio_play_sound(snd_dry_fire, 1, false)	// Dry fire sound
			else audio_play_sound(snd_reload_clip, 1, false);	// Not pumped sound
	}
}

// Attack Cooldown
if (fire_cooldown > 0) fire_cooldown -= 1;
if (fire_cooldown <= 0) fire_cooldown = 0;
if (accuracy > base_accuracy) accuracy -= 0.1;	// Decrease inaccuracy back to base accuracy

/// Calculate Reloading
if (reloading < 0 and fire_cooldown == 0) reloading = 0;	// negative reload signifies weapon swap
if (pump < 0 and fire_cooldown == 0) pump = 0;				// neagtive pump signifies pump reload
if (reloading > 1) reloading -= 1;							// Decrease reloading count

// Play sound pre-emptively
if (reloading == 30)										
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_clip, 1, false);
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
	ammo = max_ammo;
}
// Check for reload
if (keyboard_check(global.p_reload) and fire_cooldown == 0 and reloading == 0 and !global.holstered)
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_eject_clip, 1, false);
	reloading = reload_time;
	fire_cooldown = reloading;
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
	if (camera_pan > 2) camera_pan -= camera_pan / 2;
}
else if (focus == 0)
{
	// Standard scoping effect
	if (camera_pan > 8) camera_pan -= camera_pan / 2;
	if (camera_pan < 8) camera_pan += camera_pan;
}
else
{
	// Still camera
	if camera_pan < 1024 camera_pan += camera_pan;
}

if camera_pan < 1024 // 1024 or over makes the camera lock on player without scoping effect
{
	camera_set_view_pos(view_camera[0],
	((camera_pan - 1) * x / camera_pan + mouse_x / camera_pan) - camera_width / 2 + shake_x,
	((camera_pan - 1) * y / camera_pan + mouse_y / camera_pan) - camera_height / 2 + shake_y);
}