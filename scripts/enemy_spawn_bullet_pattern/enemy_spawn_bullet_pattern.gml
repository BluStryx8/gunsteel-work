/// @desc Spawns Bullet Patterns
/// @param pattern Pattern to spawn bullets into
/// @param number Number of bullets to generate
/// @param direction Direction to shoot
/// @param spread Spread of bullets
/// @param speed Speed of bullets
/// @param decay Decay of bullets
/// @param min_size Minimum size of bullets
/// @param max_size Maximum size of bullets

var _pattern	= argument0;
var _number		= argument1;
var _direction	= argument2;
var _spread		= argument3;

var _b_speed	= argument4;
var _b_decay	= argument5;
var _b_min_size	= argument6;
var _b_max_size	= argument7;

var _b_dir;

switch (_pattern)
{
	case "direct":
		var _offset = -(_spread * (_number - 1) / 2);
		for (var _n = 0; _n < _number; _n++)
		{
			_b_dir = _direction + _offset + (_n * _spread) + (irandom_range(-_spread, _spread) / 2);
			enemy_spawn_bullet(_b_dir, _b_speed, _b_decay, _b_min_size, _b_max_size);
		}
		break;
	case "spread":
		for (var _n = 0; _n < _number; _n++)
		{
			_b_dir = _direction + 360 * (_n / _number) + irandom_range(-_spread, _spread);	// Direction to generate
			enemy_spawn_bullet(_b_dir, _b_speed, _b_decay, _b_min_size, _b_max_size);
		}
		break;
	case "homing":
		var _offset = -(_spread * (_number - 1) / 2);
		for (var _n = 0; _n < _number; _n++)
		{
			_b_dir = _direction + _offset + (_n * _spread) + (irandom_range(-_spread, _spread) / 2);
			enemy_spawn_homing_bullet(_b_dir, _b_speed, _b_decay, _b_min_size, _b_max_size);
		}
		break;
}