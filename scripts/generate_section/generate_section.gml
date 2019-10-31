/// @desc Generate a section of the level
/// @param x The x section to target
/// @param y The y section to target

var _current_x = argument0;
var _current_y = argument1;
var _section_string_data = "";

// Create Section
_section_string_data = load_random_section(sections[_current_x, _current_y]);
create_section_from_string(_current_x, _current_y, _section_string_data);