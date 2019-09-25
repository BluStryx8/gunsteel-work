/// @description Decay
decay -= 1;
if decay < 0 image_alpha -= 0.1;
if image_alpha < 0 instance_destroy();

var _bbox_side;
var _destroy = 0;

// Horizontal Colision
if hspeed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
if (tilemap_get_at_pixel(global.tilemap, _bbox_side + hspeed, bbox_top) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, _bbox_side + hspeed, bbox_bottom) != 0 )
{
	if hspeed > 0 x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x);
	_destroy = 1
}

// Vertical Colision
if vspeed > 0 _bbox_side = bbox_bottom else _bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, _bbox_side + vspeed) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_right, _bbox_side + vspeed) != 0 )
{
	if vspeed > 0 y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	_destroy = 1
}

if _destroy == 1
{
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit)
	instance_destroy();
}