/// @description Reads Settings Inis
ini_open("settings.ini");
global.sound_value = ini_read_real("volume", "snd_volume", 0.5);
global.music_value = ini_read_real("volume", "msc_volume", 0.5);
global.settings_shake = ini_read_real("settings", "shake", 0.5);
ini_close();

// Load Sounds and Music
audio_group_load(audiogrp_sounds);
audio_group_load(audiogrp_music);