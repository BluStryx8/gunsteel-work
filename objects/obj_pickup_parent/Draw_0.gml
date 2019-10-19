/// @description Draw Self
if p_item_size = 0
{
	draw_sprite_ext(sprite_index, -1, x, y + 5, 0.5, 0.5, 0, c_black, 0.25);
	draw_sprite_ext(sprite_index, -1, x, y + sin(anim_y), 0.5, 0.5, 0, c_white, 1);
}
else if p_item_size = 1
{
	draw_sprite_ext(sprite_index, -1, x, y + 5, 1, 1, 0, c_black, 0.25);
	draw_sprite_ext(sprite_index, -1, x, y + sin(anim_y), 1, 1, 0, c_white, 1);
}