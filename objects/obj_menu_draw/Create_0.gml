/// @description Create Buttons
global.menu_follow = 2;
clicked = false;
camera_width = view_get_wport(0);
camera_height = view_get_hport(0);
var _x = floor(view_get_wport(0) * 1);
var _y = 0;
view_camera[0] = camera_create_view(_x, _y, camera_width, camera_height);

/// Middle page (main menu)

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.6);

var _start = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_start.image_index = 0;
_start.master = id;

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.7);
var _options = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_options.image_index = 1;
_options.master = id;

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.8);
var _help = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_help.image_index = 9;
_help.master = id;

_x = floor(view_get_wport(0) * 1.5);
_y = floor(view_get_hport(0) * 0.9);
var _quit = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_quit.image_index = 2;
_quit.master = id;

_x = floor(view_get_wport(0) * 0.8);
_y = floor(view_get_hport(0) * 0.9);
//Left page (settings page)
var _back = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_back.image_index = 4;
_back.master = id;

_x = floor(view_get_wport(0) * 0.5);
_y = floor(view_get_hport(0) * 0.3);
var _sound = instance_create_layer(_x, _y, "buttons", obj_menu_buttons)
_sound.image_index = 5;
_sound.master = id;


//Right page (continue game page)
//continue button
{
	if file_exists("player.ini")
	{
		_x = floor(view_get_wport(0) * 2.5);
		_y = floor(view_get_hport(0) * 0.25);
		var _continue = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
		_continue.image_index = 3;
		_continue.master = id;
	}
}

_x = floor(view_get_wport(0) * 2.2);
_y = floor(view_get_hport(0) * 0.9);
var _back_cont = instance_create_layer(_x, _y,"buttons", obj_menu_buttons);
_back_cont.image_index = 4;
_back_cont.master = id;

//character
_x = floor(view_get_wport(0) * 2.8);
_y = floor(view_get_hport(0) * 0.9);
var _character = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
_character.image_index = 6;
_character.master = id;


//back in character
_x = floor(view_get_wport(0) * 3.2);
_y = floor(view_get_hport(0) * 0.9);
var _back_char = instance_create_layer(_x, _y,"buttons",obj_menu_buttons)
_back_char.image_index = 7;
_back_char.master = id;

_x = floor(view_get_wport(0) * 3.8);
_y = floor(view_get_hport(0) * 0.9);
var _new_char_start = instance_create_layer(_x, _y,"buttons",obj_menu_buttons)
_new_char_start.image_index = 8;
_new_char_start.master = id;

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