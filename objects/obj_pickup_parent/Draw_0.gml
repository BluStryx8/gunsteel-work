/// @description Draw Self
if (!p_item_size) var _scale = global.p_scale / 2;
else var _scale = global.p_scale;
image_xscale = _scale;
image_yscale = _scale;
draw_sprite_ext(sprite_index, -1, x, y + 5, _scale, _scale, 0, c_black, 0.25);
draw_sprite_ext(sprite_index, -1, x, y + sin(anim_y), _scale, _scale, 0, c_white, 1);