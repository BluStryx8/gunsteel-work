/// @desc Creates buttons and sliders in the settings pause menu

// Declaratiion of position
var _x_top = camera_get_view_x(view_camera[0]);
var _y_top = camera_get_view_y(view_camera[0]);
var _width = camera_get_view_width(view_camera[0]);
var _height = camera_get_view_height(view_camera[0]);

// Back Button
_x = floor(_x_top + _width * 0.8);
_y = floor(_y_top + _height * 0.9);
var _back = instance_create_layer(_x, _y, "control", obj_menu_buttons);
_back.image_index = 4;
_back.master = id;

// Options Text
_x = floor(_x_top + _width * 0.5);
_y = floor(_y_top + _height * 0.2);
var _back = instance_create_layer(_x, _y, "control", obj_menu_buttons);
_back.image_index = 1;
_back.master = id;

/// Menu Sliders
// Sounds Text
_x = floor(_x_top + _width * 0.1);
_y = floor(_y_top + _height * 0.4);
var _sound = instance_create_layer(_x, _y, "control", obj_menu_buttons)
_sound.image_index = 5;
_sound.master = id;
// Sounds
_x = floor(_x_top + _width * 0.25);
_y = floor(_y_top + _height * 0.4);
instance_create_layer(_x, _y, "control", obj_slider_sounds_volume);

// Music Text
_x = floor(_x_top + _width * 0.1);
_y = floor(_y_top + _height * 0.6);
var _music = instance_create_layer(_x, _y, "control", obj_menu_buttons)
_music.image_index = 10;
_music.master = id;
// Music
_x = floor(_x_top + _width * 0.25);
_y = floor(_y_top + _height * 0.6);
instance_create_layer(_x, _y, "control", obj_slider_music_volume);