/// @description Draw Damage
draw_set_halign(fa_center);
draw_set_alpha(fade);
draw_set_font(fnt_damage);
draw_set_color(c_black);
var _scale = (70 + sqrt(damage) * 5) / 100;
draw_text_transformed(x, y + (sin(anim_y) * y_move) + 1, damage, _scale, _scale, 0);
draw_text_transformed(x, y + (sin(anim_y) * y_move) - 1, damage, _scale, _scale, 0);
draw_text_transformed(x + 1, y + (sin(anim_y) * y_move), damage, _scale, _scale, 0);
draw_text_transformed(x - 1, y + (sin(anim_y) * y_move), damage, _scale, _scale, 0);
if global.paused var _col = make_colour_hsv(0, 0, 150) else var _col = c_white;
draw_set_color(_col);
draw_text_transformed(x, y + (sin(anim_y) * y_move), damage, _scale, _scale, 0);