/// @description Collision
/// @param xspeed What x speed is used for movement calculation
/// @param yspeed What y speed is used for movement calculation

// Declare Variables
var _bbox_hside;
var _bbox_vside;
var _collision = false;
var _speed_x   = argument0;
var _speed_y   = argument1;
var _check_x   = round(abs(_speed_x)) div 16;
var _check_y   = round(abs(_speed_y)) div 16;
var _checks	   = max(_check_x, _check_y) + 1;

_speed_x = _speed_x / _checks;
_speed_y = _speed_y / _checks;

repeat (_checks)
{
	if (_speed_x > 0) _bbox_hside = bbox_right else _bbox_hside = bbox_left;
	if (_speed_y > 0) _bbox_vside = bbox_bottom else _bbox_vside = bbox_top;
	if (tilemap_get_at_pixel(global.bulletmap, _bbox_hside + _speed_x, _bbox_vside) != 0) or
	(position_meeting(_bbox_hside + _speed_x, _bbox_vside, obj_v_gate_collision) ||
	position_meeting(_bbox_hside + _speed_x, _bbox_vside, obj_h_gate_collision)) _check_x = -1;
	if (tilemap_get_at_pixel(global.bulletmap, _bbox_hside, _bbox_vside + _speed_y) != 0) or
	(position_meeting(_bbox_hside, _bbox_vside + _speed_y, obj_v_gate_collision) ||
	position_meeting(_bbox_hside, _bbox_vside + _speed_y, obj_h_gate_collision)) _check_y = -1;
	if (_check_x == -1)
	{
		if (_speed_x > 0) x = x - (x mod 16) + 15 - ((bbox_right - x) mod 16);
			else x = x - (x mod 16) - ((bbox_left - x) mod 16);
		_collision = true;
	}
	if (_check_y == -1)
	{
		if (_speed_y > 0) y = y - (y mod 16) + 15 - ((bbox_bottom - y)) mod 16;
			else y = y - (y mod 16) - ((bbox_top - y) mod 16);
		_collision = true;
	}
	if (_collision) return _collision;
	x += _speed_x;
	y += _speed_y;
}
return _collision;