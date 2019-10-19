/// @desc Find Map Value
/// @param array Array to reference
/// @param key Key in map array
/// @param value Item to find value for

var _array = argument0;
var _key   = argument1;
var _value = argument2;

for (var _g = 0; _g < array_length_1d(_array); _g++)
{
	if (ds_map_find_value(_array[_g], _key) == _value)
	return _g;
}

// If not found
return 0;