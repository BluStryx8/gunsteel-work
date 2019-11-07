/// @description Collision
/// @param direction Which way to detect collision for
/// @param speed What is used for movement calculation
/// @param offset The offset of the origin from the centre of the bounding box

// Declare Variables
var _bbox_side;
var _movement  = argument0;
var _speed     = argument1;
var _offset    = argument2;

// Horizontal Colision
if (_movement == "x")
{
	// Divide checks into fragments of speed
	var _h_checks = -1;
	var _tester = 0;
	if (_speed > 0)
	{
		var _bbox_dist	= floor((bbox_right - x) / 2);
		_h_checks		= _speed div _bbox_dist;
		var _h_temp		= _speed - _h_checks * _bbox_dist;
		_tester			= _speed;
	}
	else if (_speed < 0)
	{
		var _bbox_dist	= floor((bbox_left - x) / 2);
		_h_checks		= abs(_speed) div abs(_bbox_dist);
		var _h_temp		= _speed - _h_checks * _bbox_dist;
		_tester			= _speed;
	}
	else return _speed;
	// Check
	var _to_check;
	while (_h_checks >= 0 and _tester != 0)
	{
		if (_h_checks > 0) _to_check = _bbox_dist
			else _to_check = _h_temp;
		if (_to_check == 0) return _speed;	// Escape if there is no more speed to check
		if (_speed > 0) _bbox_side = bbox_right else _bbox_side = bbox_left;
		if (tilemap_get_at_pixel(global.tilemap, _bbox_side + _to_check, bbox_top) != 0) ||
			(tilemap_get_at_pixel(global.tilemap, _bbox_side + _to_check, bbox_bottom) != 0) or
			(position_meeting(_bbox_side + _to_check, bbox_top, obj_collision_parent) ||
			position_meeting(_bbox_side + _to_check, bbox_bottom, obj_collision_parent))
		{
			if (_speed > 0) x = x - (x mod 16) + 15 - ((bbox_right - x) mod 16);
			else
			{
				x += _offset; // Offset
				x = x - (x mod 16) - ((bbox_left - x) mod 16);
			}
			_to_check = 0;
		}
		if (_to_check == 0) return _to_check;
		x += _to_check;
		_h_checks -= 1;
	}
	return _speed;
}

// Vertical Colision
if (_movement == "y")
{
	if (_speed > 0) _bbox_side = bbox_bottom else _bbox_side = bbox_top;
	if (tilemap_get_at_pixel(global.tilemap, bbox_left, _bbox_side + _speed) != 0) ||
	   (tilemap_get_at_pixel(global.tilemap, bbox_right, _bbox_side + _speed) != 0) or
	   (position_meeting(bbox_left, _bbox_side + _speed, obj_collision_parent) ||
	   position_meeting(bbox_right, _bbox_side + _speed, obj_collision_parent))
	{
		if (_speed > 0) y = y - (y mod 16) + 15 - ((bbox_bottom - y)) mod 16;
		else
		{
			y += _offset; // Offset
			y = y - (y mod 16) - ((bbox_top - y) mod 16);
		}
		_speed = 0;
	}
	y += _speed;
	return _speed;
}