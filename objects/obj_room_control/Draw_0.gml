/// @description Debug
exit;	// Disables debug
draw_set_font(fnt_room);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(x, y, string(enemy_count - waves) + " enemies");
draw_text(x, y + 20, string(waves) + " waves");
if (special_id == "null") draw_text(x, y + 40, string(biome));
	else draw_text(x, y + 40, special_id);