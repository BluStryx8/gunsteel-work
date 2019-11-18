/// @description Create Buttons
/// Middle page (main menu)

var _x = floor(view_get_wport(0) * 1.5);
var _y = floor(view_get_hport(0) * 0.6);

start = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
start.image_index = 0;

_y = floor(view_get_hport(0) * 0.7);
options = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
options.image_index = 1;

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
_x = floor(view_get_wport(0) * 2.5);
_y = floor(view_get_hport(0) * 0.3);
continue_ = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
continue_.image_index = 3;
_x = floor(view_get_wport(0) * 2.2);
_y = floor(view_get_hport(0) * 0.9);
back_cont = instance_create_layer(_x, _y,"buttons", obj_menu_buttons);
back_cont.image_index = 4;

//character
_x = floor(view_get_wport(0) * 2.8);
character = instance_create_layer(_x, _y, "buttons", obj_menu_buttons);
character.image_index = 6;


//back in character
_x = floor(view_get_wport(0) * 3.2);
back_char = instance_create_layer(_x, _y,"buttons",obj_menu_buttons)
back_char.image_index = 7;

