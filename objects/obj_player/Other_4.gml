/// @description Set room constants
// Camera
// Temporary
if (room == rm_mainmenu)
{
	global.truepause = true;
	starting = true;
	dir = 0;
	global.player_setx = 2272;	// Starting x position
	global.player_sety = 416;	// Starting y position
	
}
else
{
	global.truepause = false
	global.paused = false
	focus = 0;
	camera_pan = 1024;
	camera_width = 512;
	camera_height = 384;
	view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);
}
if (room == rm_game)
{
	global.holstered = false;
	if (starting)
	{
		starting = false;
		global.player_setx = 270;	// Starting x position
		global.player_sety = 200;	// Starting y position
	}
}
if (room == rm_game2) global.holstered = true;

// Goes to the right place in room
x = global.player_setx;
y = global.player_sety;

// Regenerate
p_defense = p_max_defense;

// Classes
if (global.class == "Tinkerer")
{
	if ((global.level + 1) mod 5 == 0)
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
	if ((global.level + 1) mod 10 == 0)
	{
		var _starter = global.starter;
		var _w = weapon_find(global.weapons, "weapon", obj_inventory_manager.item_definitions[_starter, item_properties.name]);
		var _upgrades = ds_map_find_value(global.weapons[_w], "upgrades");
		ds_map_replace(global.weapons[_w], "upgrades", _upgrades + 1);
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_play_sound(snd_upgrade, 1, false);
	}
	if (global.class == "Soldier")
		if (p_health < p_max_health) and ((global.level + 1) mod 5 == 0) p_health += 1;
}