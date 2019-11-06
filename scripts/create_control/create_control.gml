/// @desc Create Control sprite
/// @param x The x section to reference
/// @param y The y section to reference

var _x = argument0;
var _y = argument1;

var _control = instance_create_layer((_x * section_width), (_y * section_height), "control", obj_room_control);
// Define Section
_control.section_x = _x;
_control.section_y = _y;
_control.section_id = s_id;
if (_x == section_start[0] and _y == section_start[1]) _control.special_id = "start";
	else if (_x == section_end[0] and _y == section_end[1]) _control.special_id = "end";
	else _control.special_id = "null";
if (_control.special_id == "start")
{
	start_x = _x * section_width + (section_tiles_x / 2) * grid_size;
	start_y = _y * section_height + (section_tiles_y / 2) * grid_size;
}
_control.grid_size = grid_size;
_control.x_offset = _x * section_width;
_control.y_offset = _y * section_height;
_control.alarm[0] = 1;
_control.active = 0;
_control.enemy_count = 0;
_control.waves = 0;
_control.biome = "basic";