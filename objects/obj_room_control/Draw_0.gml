/// @description Draw ID
draw_set_font(fnt_room_debug);
draw_text(x, y, section_id);
draw_text(x, y + 30, "[" + string(section_x) + ", " + string(section_y) + "]");
if (special_id != "null") draw_text(x, y + 60, special_id);
if (enemy_count > 0) draw_text(x, y + 60, string(enemy_count) + " enemies");