/// @description Processes Chest Things
if (global.paused) exit;

// Process if near chest
if (opened)
{
	if (image_index < image_number - 1) image_index += 0.2;
	exit;
}
var _player_x = obj_player.x;
var _player_y = obj_player.y;

if (distance_to_point(_player_x, _player_y) < 45)
{
	detect = true;
	if keyboard_check_pressed(ord("E"))
	{
		opened = true;
		detect = false;
		text_alpha = 0;
		image_index += 1;
		create_loot("standard");
		score += global.difficulty * 10;
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_play_sound(snd_chest_open, 1, false);
	}
}
else detect = false;