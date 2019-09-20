/// @desc Looks through a given array to find an index
/// @param array Array to reference
/// @param item Item to find index for

var _array = argument0;
var _value = argument1;

for (var _g = 0; _g < array_length_1d(_array); _g++)
{
	if (_array[_g] == _value)
		return _g;
}

// If not found
return -1;