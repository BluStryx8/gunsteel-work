/// @description Check for wave clear
if (waves == enemy_count and waves > 0)
{
	spawn_wave(biome, waves * 2, wave_count);
	enemy_count -= 1;
	waves -= 1;
	wave_count -= 1;
}
if (combat and enemy_count == 0)
{
	combat = false;
	with (obj_player)
	{
		if (p_defense < p_max_defense) p_defense += 1;
		if (global.class == "Soldier")
			if (p_defense < p_max_defense) p_defense += 1;
		if (global.class == "Tinkerer")
		{
			audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
			audio_play_sound(snd_reload_clip, 1, false);
			global.ammo_rifle   += irandom_range(5, 10) * 10;
			global.ammo_sniper  += irandom_range(1, 2) * 5;
			global.ammo_shotgun += irandom_range(3, 6) * 5;
			global.ammo_minigun += irandom_range(1, 2) * 100;
			
		}
	}
	if biome == "elite"
	{
		biome = "chest";
		alarm[0] = 1;
	}
}