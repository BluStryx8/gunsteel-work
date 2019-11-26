/// @description Set room constants
// Camera
// Temporary
if (room == rm_mainmenu)
{
	global.truepause = true;
	global.holstered = true;
	dir = 0;
	x = 2272;	// Starting x position
	y = 416;	// Starting y position
	
}
else
{
	global.truepause = false;
	global.paused = false;
	focus = 0;
	camera_pan = 1024;
	camera_width = 512;
	camera_height = 384;
	view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);
}
if (room == rm_game)
{
	global.holstered = false;
	if (room_last = rm_game)
	{
		global.player_setx = 270;	// Starting x position
		global.player_sety = 200;	// Starting y position
	}
}
if (room == rm_game2) global.holstered = true;

if (room == rm_dungeon)
{
	// Regenerate
	global.holstered = false;
	p_defense = p_max_defense;

	// Classes
	if (global.class == "Tinkerer")
	{
		if ((global.level) mod 5 == 0 and global.seed == -1)
		{
			var _starter = global.starter;
			var _w = weapon_find(global.weapons, "weapon", obj_inventory_manager.item_definitions[_starter, item_properties.name]);
			var _upgrades = ds_map_find_value(global.weapons[_w], "upgrades");
			ds_map_replace(global.weapons[_w], "upgrades", _upgrades + 1);
			audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
			audio_play_sound(snd_upgrade, 1, false);
		}
	}
	else
	{
		if ((global.level) mod 10 == 0 and global.seed == -1)
		{
			var _starter = global.starter;
			var _w = weapon_find(global.weapons, "weapon", obj_inventory_manager.item_definitions[_starter, item_properties.name]);
			var _upgrades = ds_map_find_value(global.weapons[_w], "upgrades");
			ds_map_replace(global.weapons[_w], "upgrades", _upgrades + 1);
			audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
			audio_play_sound(snd_upgrade, 1, false);
		}
		if (global.class == "Soldier")
			if (p_health < p_max_health) and ((global.level + 1) mod 5 == 0)
			{
				p_health += 1;
				audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
				audio_play_sound(snd_potion, 1, false);
			}
	}
}