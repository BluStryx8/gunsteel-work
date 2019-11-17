/// @desc Loads a door
/// @param x grid cell on x-axis to place door
/// @param y grid cell on y-axis to place door
/// @param direction entry direction of player
var _x   = argument0;
var _y   = argument1;
var _dir = argument2;

switch (_dir)
{
	case "left":
	case "right":
		var _gate = instance_create_layer(x_offset + (_x * grid_size), y_offset + (_y * grid_size),
								"tiles", obj_v_gate);
		break;
	case "up":
	case "down":
		var _gate = instance_create_layer(x_offset + (_x * grid_size), y_offset + (_y * grid_size),
								"tiles", obj_h_gate);
		break;
}

_gate.master_id = id;	// Binds door to the creator object
_gate.prime_dir = _dir;	// Direction player enters room through
_gate.biome = biome;