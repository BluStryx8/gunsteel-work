/// @description Collision
/// @param direction Which way to detect collision for
/// @param speed What is used for movement calculation

// Declare Variables
var _bbox_side;
var _movement  = argument0;
var _speed     = argument1;

// Horizontal Colision
if _movement == "x"
{
	if _speed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
	if (tilemap_get_at_pixel(global.tilemap, _bbox_side + _speed, bbox_top) != 0) ||
	   (tilemap_get_at_pixel(global.tilemap, _bbox_side + _speed, bbox_bottom) != 0 )
	{
		if _speed > 0 x = x - (x mod 16) + 15 - ((bbox_right - x) mod 16);
		else x = x - (x mod 16) - ((bbox_left - x) mod 16);
		_speed = 0;
	}
	x += _speed;
	return _speed;
}

// Vertical Colision
if _movement == "y"
{
	if _speed > 0 _bbox_side = bbox_bottom else _bbox_side = bbox_top;
	if (tilemap_get_at_pixel(global.tilemap, bbox_left, _bbox_side + _speed) != 0) ||
	   (tilemap_get_at_pixel(global.tilemap, bbox_right, _bbox_side + _speed) != 0 )
	{
		if _speed > 0 y = y - (y mod 16) + 15 - ((bbox_bottom - y)) mod 16;
		else
		{
			if (y mod 16) <= 8 y += 16;
			y = y - (y mod 16) - ((bbox_top - y) mod 16);
		}
		_speed = 0;
	}
	y += _speed;
	return _speed;
}