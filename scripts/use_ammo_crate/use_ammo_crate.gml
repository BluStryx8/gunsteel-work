if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
{
	var _ammo_rifle   = irandom_range(10, 20) * 20;
	var _ammo_sniper  = irandom_range(4, 8) * 5;
	var _ammo_shotgun = irandom_range(12, 24) * 10;
	var _ammo_minigun = irandom_range(3, 8) * 250;
	global.ammo_rifle	+= _ammo_rifle;
	global.ammo_sniper	+= _ammo_sniper;
	global.ammo_shotgun	+= _ammo_shotgun;
	global.ammo_minigun += _ammo_minigun;
	
	// Reload Sound
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_shotgun, 1, false);
	inv_removeitem(item_type.ammo_crate);
}