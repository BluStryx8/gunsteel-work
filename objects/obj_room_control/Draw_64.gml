/// @description Room Clear
if (active and combat)
{
	if (alpha < 2) alpha += 0.05;
}
if (active and alpha > 0)
{
	draw_set_font(fnt_room);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_set_alpha(alpha);
	var _x = camera_get_view_width(0) - 32;
	var _y = 96;
	if (enemy_count - waves == 1)
		draw_text_transformed(_x, _y, string(enemy_count - waves) + " enemy remaining", 0.5, 0.5, 0);
	else draw_text_transformed(_x, _y, string(enemy_count - waves) + " enemies remaining", 0.5, 0.5, 0);
	if (total_waves > 1) draw_text_transformed(_x, _y + 20,
			"Wave " + string(total_waves - waves) + " / " + string(total_waves), 0.5, 0.5, 0);
}
if ((active and !combat) and alpha > 0)
{
	if (alpha > 1) var _alpha = 9 - alpha * 5;
		else _alpha = alpha;
	if (alpha > 0) alpha -= 0.02;
	draw_sprite_ext(spr_clear, -1, camera_get_view_width(0) / 2, camera_get_view_height(0) / 2, 1, 1, 0, c_white, _alpha);
}