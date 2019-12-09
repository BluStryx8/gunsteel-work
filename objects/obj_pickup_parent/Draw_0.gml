/// @description Draw Self
if (!p_item_size) var _scale = global.p_scale / 2;
else var _scale = global.p_scale;
image_xscale = _scale;
image_yscale = _scale;
draw_sprite_ext(sprite_index, -1, x, y + 5, _scale, _scale, 0, c_black, 0.25);
draw_sprite_ext(sprite_index, -1, x, y + sin(anim_y) - created, _scale, _scale, 0, c_white, 1 - created / 10);
if (text_alpha > 0)
{
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(text_alpha);
	draw_set_font(fnt_item_tip);
	draw_text(x, y + sin(anim_y) - created - 48, "[E] to pick up");
	draw_set_font(fnt_stat);
	draw_text(x, y + sin(anim_y) - created - 32,
			obj_inventory_manager.item_definitions[p_item_type, item_properties.name]);
	draw_sprite(spr_item_arrow, -1, x, y + sin(anim_y) - created - 16);
}
if (global.paused) exit;
if (collided)
{
	if text_alpha < 1 text_alpha += 0.05;
}
else
{
	if text_alpha > 0 text_alpha -= 0.05;
}
collided = false;
if (created > 0) created -= 1;