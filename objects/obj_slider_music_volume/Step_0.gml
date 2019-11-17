/// @description Check for movement of bar
if mouse_check_button_pressed(mb_left){
	var button_xpos = x+sprite_width*global.music_value
	var button_ypos = y
	var button_width = sprite_get_width(spr_slider_button)
	var_button_height = sprite_get_height(spr_slider_button)
	if point_in_circle(mouse_x,mouse_y, button_xpos, button_ypos, button_width/2){
		selected = true}
}

if !mouse_check_button(mb_left) {
	selected = false
}

if selected{
	global.music_value = clamp((mouse_x -x)/sprite_width, 0, max_value);
	event_user(0)
}



if global.paused = false and (!room = rm_mainmenu)
{
	global.settings = false
	instance_destroy()
}

if global.settings = false and (!room = rm_mainmenu)
{
	instance_destroy()
}

ini_open("settings.ini")
ini_write_real("volume", "msc_volume", global.music_value)
ini_close()