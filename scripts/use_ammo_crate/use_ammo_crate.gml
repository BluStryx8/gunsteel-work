if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
{
	var _ammo_rifle   = irandom_range(5, 10) * 20;
	var _ammo_sniper  = irandom_range(2, 4) * 5;
	var _ammo_shotgun = irandom_range(6, 12) * 10;
	var _ammo_special = 1;
	global.ammo_rifle	+= _ammo_rifle;
	global.ammo_sniper	+= _ammo_sniper;
	global.ammo_shotgun	+= _ammo_shotgun;
	global.ammo_special += _ammo_special;
	
	// Reload Sound
	audio_group_set_gain(audiogrp_sounds, global.sound_value, 0);
	audio_play_sound(snd_reload_shotgun, 1, false);
	inv_removeitem(item_type.ammo_crate);
}