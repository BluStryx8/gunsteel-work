/// @description Draw Damage
draw_set_halign(fa_center);
draw_set_alpha(fade);
draw_set_font(fnt_inventory);
draw_set_color(c_black);
draw_text(x + 1, y + (sin(anim_y) * y_move) + 1, damage);
draw_text(x + 1, y + (sin(anim_y) * y_move) - 1, damage);
draw_text(x - 1, y + (sin(anim_y) * y_move) + 1, damage);
draw_text(x - 1, y + (sin(anim_y) * y_move) - 1, damage);
if global.paused var _col = make_colour_hsv(0, 0, 150) else var _col = c_white;
draw_set_color(_col);
draw_text(x, y + (sin(anim_y) * y_move), damage);