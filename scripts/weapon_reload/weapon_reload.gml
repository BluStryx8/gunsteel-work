/// @desc Reloads

var _success = false;
switch (type)
{
	case "Pistol":
		_success = true;
		ammo = 0;
		break;
	case "Assault Rifle":
		if (global.ammo_rifle > 0 or ammo > 0) _success = true;
		global.ammo_rifle += ammo;
		ammo = 0;
		break;
	case "Sniper Rifle":
		if (global.ammo_sniper > 0 or ammo > 0) _success = true;
		global.ammo_sniper += ammo;
		ammo = 0;
		break;
	case "Minigun":
		if (ammo == max_ammo) global.ammo_special += 1;
		if (global.ammo_special > 0)
		{
			_success = true;
			ammo = 0;
		}
		break;
	case "Shotgun":
		if (global.ammo_shotgun > 0 or ammo > 0) _success = true;
		break;
}
if (_success)
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_reload_eject_clip, 1, false);
	reloading = reload_time;
	if (global.class == "Scout")
	{
		if (floor(reloading * 4 / 5) > 30) reloading = floor(reloading * 4 / 5);
			else reloading = 31;
	}
	fire_cooldown = reloading;
	if (atk_type == "Pump Action") pump = 1;
}
else
{
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_dry_fire, 1, false);
}