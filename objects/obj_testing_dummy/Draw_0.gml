/// @description Draws damage
draw_self()
draw_set_halign(fa_center);
draw_set_font(fnt_inventory);
draw_set_color(c_white);
draw_text(x, y + 20, current_damage);