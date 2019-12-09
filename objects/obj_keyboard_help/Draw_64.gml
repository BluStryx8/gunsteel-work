/// @description Draw Keyboard
var _x = floor(view_get_wport(0));
var _y = floor(view_get_hport(0));
draw_set_alpha(fade / 3);
draw_set_color(c_black);
draw_rectangle(0, 0, _x, _y, false);

_x = floor(view_get_wport(0) * 0.5);
_y = floor(view_get_hport(0) * 0.5);
draw_sprite_ext(spr_keyboard_help, -1, _x, _y, 1, 1, 0, c_white, fade);

_x = 32;
_y = floor(view_get_hport(0) - 32);
draw_set_font(fnt_class_stat);
draw_set_color(c_white);
draw_set_alpha(fade);
draw_set_halign(fa_left);
draw_text(_x, _y, "Click to Return.");