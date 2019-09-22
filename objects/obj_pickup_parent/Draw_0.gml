/// @description Draw Self
if p_item_size = 0
{
	draw_sprite_ext(sprite_index, -1, x, y, 0.5, 0.5, 0, c_white, 1)
}
else if p_item_size = 1
{
	draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1)
}