/// @desc Sets start point at a specified point
/// @param x grid cell on x-axis to spawn
/// @param y grid cell on y-axis to spawn

var _x				= argument0;
var _y				= argument1;

obj_level_creator.start_x = (x_offset + (_x * grid_size));
obj_level_creator.start_y = (y_offset + (_y * grid_size));