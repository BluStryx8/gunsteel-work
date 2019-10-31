/// @desc Loads tiles at a specified point
/// @param x grid cell on x-axis to place tile
/// @param y grid cell on y-axis to place tile
/// @param tile Which tile to load

var _x				= argument0;
var _y				= argument1;
var _obj_to_create	= argument2;

var _tile = instance_create_layer(x_offset + (_x * grid_size), y_offset + (_y * grid_size),
								"tiles", _obj_to_create);
_tile.master_id = id;