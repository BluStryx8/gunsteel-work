/// @description Debug
draw_set_font(fnt_room_debug);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(x, y, string(enemy_count) + " enemies");
draw_text(x, y + 20, string(waves) + " waves");