/// @description Deletes all inis

if file_exists("settings.ini")
{
	file_delete("setting.ini")
}

if file_exists("inventory_save.ini")
{
	file_delete("inventory_save.ini")
}

if file_exists("save_play_time.ini")
{
	file_delete("save_play_time.ini")
}