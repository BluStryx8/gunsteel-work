/// @description Draw Damage
draw_set_halign(fa_center);
draw_set_alpha(fade);
draw_set_font(fnt_inventory);
draw_set_color(c_black);
draw_text(x, y + (sin(anim_y) * y_move), damage);
draw_set_color(c_blue);
draw_text(x, y + (sin(anim_y) * y_move) - 1, damage);