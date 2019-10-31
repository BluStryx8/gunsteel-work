/// @description Collision
/// @param direction Which way to detect collision for
/// @param speed What is used for movement calculation

// Declare Variables
var _bbox_side;
var _collision = 0;
var _movement  = argument0;
var _speed     = argument1;
var _check     = _speed div 16;
var _detect    = 0;
var _shift     = 0;

// Horizontal Colision
if (_movement == "x")
{
	if (_speed > 0) _bbox_side = bbox_right else _bbox_side = bbox_left;
	while (_check >= 0)
	{
		// Checks if bullet collides with wall at every 16 pixels to discern distance to wall
		if (tilemap_get_at_pixel(global.bulletmap, _bbox_side + _speed, bbox_top) != 0) ||
	   (tilemap_get_at_pixel(global.bulletmap, _bbox_side + _speed, bbox_bottom) != 0) or
	   (position_meeting(_bbox_side + _speed, bbox_top, obj_v_gate_collision) ||
	   position_meeting(_bbox_side + _speed, bbox_bottom, obj_v_gate_collision)) or
	   (position_meeting(_bbox_side + _speed, bbox_top, obj_h_gate_collision) ||
	   position_meeting(_bbox_side + _speed, bbox_bottom, obj_h_gate_collision)) _detect += 1;
		if (_speed > 0) _speed -= 16 else _speed += 16;
		_check -= 1;
		_shift += 1;
	}
	if (_detect > 0)
	{
		// Returns speed to the correct positive/negative
		if (_bbox_side == bbox_right) _speed += 16 else _speed -= 16;
		_shift -= _detect;
		// Shifts bullet closer to wall for alignment
		while (_shift > 0)
		{
			if (_speed > 0) x += 16 else x -= 16;
			_shift -= 1;
		}
		// Clamps to the grid
		if (_speed > 0) x = x - (x mod 16) + 15 - ((bbox_right - x) mod 16)
		else x = x - (x mod 16) - ((bbox_left - x) mod 16);
		_collision = 1;
	}
}

// Vertical Colision
if (_movement == "y")
{
	if (_speed > 0) _bbox_side = bbox_bottom else _bbox_side = bbox_top;
	while (_check >= 0)
	{
		if (tilemap_get_at_pixel(global.bulletmap, bbox_left, _bbox_side + _speed) != 0) ||
		  (tilemap_get_at_pixel(global.bulletmap, bbox_right, _bbox_side + _speed) != 0) or
	   (position_meeting(bbox_left, _bbox_side + _speed, obj_v_gate_collision) ||
	   position_meeting(bbox_right, _bbox_side + _speed, obj_v_gate_collision)) or
	   (position_meeting(bbox_left, _bbox_side + _speed, obj_h_gate_collision) ||
	   position_meeting(bbox_right, _bbox_side + _speed, obj_h_gate_collision)) _detect += 1;
		if (_speed > 0) _speed -= 16 else _speed += 16;
		_check -= 1;
		_shift += 1;
	}
	if (_detect > 0)
	{
		// Returns speed to the correct positive/negative
		if (_bbox_side == bbox_bottom) _speed += 16 else _speed -= 16;
		_shift -= _detect;
		// Shifts bullet closer to wall for alignment
		while (_shift > 0)
		{
			if (_speed > 0) y += 16 else y -= 16;
			_shift -= 1;
		}
		// Clamps to the grid
		if (_speed > 0) y = y - (y mod 16) + 15 - ((bbox_bottom - y)) mod 16
		else y = y - (y mod 16) - ((bbox_top - y) mod 16);
		_collision = 1;
	}
}
return _collision;