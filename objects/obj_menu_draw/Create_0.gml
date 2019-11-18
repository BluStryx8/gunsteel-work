/// @description Create Buttons
global.menu_follow = 2;
camera_width = view_get_wport(0);
camera_height = view_get_hport(0);
var _x = floor(view_get_wport(0) * 1);
var _y = 0;
view_camera[0] = camera_create_view(_x, _y, camera_width, camera_height);

/// Middle page (main menu)

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.6);

start = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
start.image_index = 0;

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.7);
options = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
options.image_index = 1;

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.8);
quit = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
quit.image_index = 2;

_x = floor(view_get_wport(0) * 0.8);
_y = floor(view_get_hport(0) * 0.9);
//Left page (settings page)
back = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
back.image_index = 4;

_x = floor(view_get_wport(0) * 0.5);
_y = floor(view_get_hport(0) * 0.3);
sound = instance_create_layer(_x, _y, "buttons", obj_menu_buttons)
sound.image_index = 5;


//Right page (continue game page)
//continue button
{
	if file_exists("player.ini")
	{
		_x = floor(view_get_wport(0) * 2.5);
		_y = floor(view_get_hport(0) * 0.25);
		continue_ = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
		continue_.image_index = 3;
	}
}

_x = floor(view_get_wport(0) * 2.2);
_y = floor(view_get_hport(0) * 0.9);
back_cont = instance_create_layer(_x, _y,"buttons", obj_menu_buttons);
back_cont.image_index = 4;

//character
_x = floor(view_get_wport(0) * 2.8);
_y = floor(view_get_hport(0) * 0.9);
character = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
character.image_index = 6;


//back in character
_x = floor(view_get_wport(0) * 3.2);
_y = floor(view_get_hport(0) * 0.9);
back_char = instance_create_layer(_x, _y,"buttons",obj_menu_buttons)
back_char.image_index = 7;

_x = floor(view_get_wport(0) * 3.8);
_y = floor(view_get_hport(0) * 0.9);
new_char_start = instance_create_layer(_x, _y,"buttons",obj_menu_buttons)
new_char_start.image_index = 8;

// Draws Run Info
if file_exists("player.ini")
{
	ini_open("player.ini");
	draw_score	 = ini_read_real("dungeon", "score", 0);
	draw_level	 = ini_read_real("dungeon", "level", 1);
	draw_class	 = ini_read_string("player", "class", "Soldier");
	draw_starter = ini_read_string("player", "starter", item_type.pistol_1911);
	draw_health	 = ini_read_real("player", "health", 0);
	ini_close();
	draw_run	 = "Current Run";
}
else
{
	ini_open("history.ini");
	draw_score	 = ini_read_real("dungeon", "score", 0);
	draw_level	 = ini_read_real("dungeon", "level", 1);
	draw_class	 = ini_read_string("player", "class", "Soldier");
	draw_starter = ini_read_string("player", "starter", item_type.pistol_1911);
	ini_close();
	draw_run	 = "Last Run";
}
ini_open("history.ini");
best_score	 = ini_read_real("best", "score", 0);
best_level	 = ini_read_real("best", "level", 1);
best_class	 = ini_read_string("best", "class", "Soldier");
best_starter = ini_read_string("best", "starter", item_type.pistol_1911);
ini_close();