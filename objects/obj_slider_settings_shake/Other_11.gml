/// @description Extra Checks
if (value != global.settings_shake) value = global.settings_shake;

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
ini_write_real("settings", "shake", global.settings_shake);
ini_close();