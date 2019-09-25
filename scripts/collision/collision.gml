/// @description Collision
/// @param direction Which way to detect collision for
/// @param speed What is used for movement calculation
/// @param action What action to take

// Declare Variables
var _bbox_side;
var _collision = 0;
var _movement  = argument0;
var _speed     = argument1;
var _action    = argument2;

// Horizontal Colision
if _movement == "x"
{
	if _speed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
	if (tilemap_get_at_pixel(global.tilemap, _bbox_side + _speed, bbox_top) != 0) ||
	   (tilemap_get_at_pixel(global.tilemap, _bbox_side + _speed, bbox_bottom) != 0 )
	{
		if _speed > 0 x = x - (x mod 32) + 31 - (bbox_right - x);
		else x = x - (x mod 32) - (bbox_left - x);
		_speed = 0;
		_collision = 1;
	}
	if _action == "move"
	{
		x += _speed;
		return _speed;
	}
}

// Vertical Colision
if _movement == "y"
{
	if _speed > 0 _bbox_side = bbox_bottom else _bbox_side = bbox_top;
	if (tilemap_get_at_pixel(global.tilemap, bbox_left, _bbox_side + _speed) != 0) ||
	   (tilemap_get_at_pixel(global.tilemap, bbox_right, _bbox_side + _speed) != 0 )
	{
		if _speed > 0 y = y - (y mod 32) + 31 - (bbox_bottom - y);
		else y = y - (y mod 32) - (bbox_top - y);
		_speed = 0;
		_collision = 1;
	}
	if _action == "move"
	{
		y += _speed;
		return _speed;
	}
}

if _action == "destroy" return _collision;