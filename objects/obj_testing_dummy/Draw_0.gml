/// @description Draws damage
draw_set_halign(fa_center);
draw_set_font(fnt_damage);
draw_set_color(c_white);
draw_set_alpha(1);
draw_self();
draw_text(x, y + 20, current_damage);