/// @description Extra Checks
if (value != global.music_value) value = global.music_value;

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
ini_write_real("volume", "msc_volume", global.music_value);
ini_close();