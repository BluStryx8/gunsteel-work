/// @description Reads initial saved inis

ini_open("settings.ini")
global.sound_value = ini_read_real("volume","snd_volume",0.5)
global.music_value = ini_read_real("volume", "msc_volume", 0.5)
ini_close()

