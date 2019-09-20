/// @desc Replaces a value in the given array
/// @param array Array to reference
/// @param old Old item to replace
/// @param new New item to add

var _array     = argument0;
var _old_value = argument1;
var _new_value = argument2;

var _index_to_replace_at = array_find_index(_array, _old_value);

if (_index_to_replace_at == -1)
	return -1;

_array[@ _index_to_replace_at] = _new_value;