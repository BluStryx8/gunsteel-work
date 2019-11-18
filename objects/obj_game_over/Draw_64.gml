/// @description Insert description here
var _x = camera_get_view_width(0) / 2;
var _y = camera_get_view_height(0) / 2;
var _alpha = alpha;
if (alpha < 1) alpha += 0.02;
draw_set_halign(fa_center);
draw_set_font(fnt_room);
draw_set_alpha(_alpha / 3);
draw_set_color(c_black);
draw_rectangle(0, 0, camera_get_view_width(0), camera_get_view_height(0), false);
draw_set_alpha(_alpha);
draw_set_color(c_white);
draw_sprite_ext(spr_gameover, -1, _x, _y - 60, 2, 2, 0, c_white, _alpha);
draw_text(_x, _y + 60, "Final Score: " + string(score));