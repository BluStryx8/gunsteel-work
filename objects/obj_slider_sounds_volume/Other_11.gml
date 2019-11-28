/// @description Extra Checks
if (value != global.sound_value) value = global.sound_value;

if !global.paused and (room != rm_mainmenu)
{
	global.settings = false;
	instance_destroy();
}

if !global.settings and (room != rm_mainmenu)
{
	instance_destroy();
}

ini_open("settings.ini");
ini_write_real("volume", "snd_volume", global.sound_value);
ini_close();