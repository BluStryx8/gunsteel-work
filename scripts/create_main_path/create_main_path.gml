/// @desc Create main path from beginning to end
// Select starting room
var _current_x     = irandom(x_sections - 1);	// Init starting x
var _current_y     = 0;							// Init starting y
var _new_direction = 0;							// Keep track of current direction

sections[_current_x, _current_y] = 1;			// Start with room type, exit left/right
section_start = [_current_x, _current_y];		// Start room

while (_current_y < (y_sections - 1))
{
	if (_new_direction == 0) _new_direction = choose(1, 1, 2, 2, 3);	// 1 = Left, 2 = Right, 3 = Down

	if (_new_direction == 1)
	{
		// Attempt to move left
		if (_current_x > 0)
		{
			sections[--_current_x, _current_y] = 1;		// Guarantees an exit left/right
			_new_direction = choose(1, 1, 3);
		}
		// Else attempt to move down
		else if (_current_y < (y_sections - 1))
		{
			if (sections[_current_x, _current_y] == 3)	// Checks if there is exit in ceiling
				sections[_current_x, _current_y] = 4	// Adds exit to floor
			else
				sections[_current_x, _current_y] = 2;	// Guarantees an exit in the floor
			sections[_current_x, ++_current_y] = 3;		// Guarantees an exit in ceiling
			_new_direction = 2;
		}
		else ++_current_y; // Exit Loop
	}
	else if (_new_direction == 2)
	{
		// Attempt to move right
		if (_current_x < x_sections - 1)
		{
			sections[++_current_x, _current_y] = 1;		// Guarantees an exit left/right
			_new_direction = choose(2, 2, 3);
		}
		// Else attempt to move down
		else if (_current_y < (y_sections - 1))
		{
			if (sections[_current_x, _current_y] == 3)	// Checks if there is exit in ceiling
				sections[_current_x, _current_y] = 4	// Adds exit to floor
			else
				sections[_current_x, _current_y] = 2;	// Guarantees an exit in the floor
			sections[_current_x, ++_current_y] = 3;		// Guarantees an exit in ceiling
			_new_direction = 1;
		}
		else ++_current_y; // Exit Loop
	}
	else if (_new_direction == 3)
	{
		// Attempt to move down
		if (_current_y < (y_sections - 1))
		{
			if (sections[_current_x, _current_y] == 3)	// Checks if there is exit in ceiling
				sections[_current_x, _current_y] = 4	// Adds exit to floor
			else
				sections[_current_x, _current_y] = 2;	// Guarantees an exit in the floor
			sections[_current_x, ++_current_y] = 3;		// Guarantees an exit in ceiling
			_new_direction = choose(1, 1, 2, 2);
			if (_current_x == x_sections - 1) _new_direction = 1;
			else if (_current_x == 0) _new_direction = 2;
		}
		else ++_current_y;
	}
}
// Final Move
_new_direction = choose(1, 1, 2, 2, 3);
if (_new_direction == 1)
{
	// Attempt to move left
	if (_current_x > 0)
	{
		sections[--_current_x, _current_y] = 1;		// Guarantees an exit left/right
		_new_direction = choose(1, 2, 3);
		if (_new_direction == 1) and (_current_x > 0)
			sections[--_current_x, _current_y] = 6;	// Stops generating one room over
		if (_new_direction == 2)
			sections[_current_x, _current_y] = 6;	// Stops generating, guarantees exit right
	}
}
else if (_new_direction == 2)
	if (_current_x < x_sections - 1)
	{
		sections[++_current_x, _current_y] = 1;		// Guarantees an exit left/right
		_new_direction = choose(1, 2, 3);
		if (_new_direction == 1) and (_current_x < x_sections - 1)
			sections[++_current_x, _current_y] = 5;	// Stops generating one room over
		if (_new_direction == 2)
			sections[_current_x, _current_y] = 5;	// Stops generating, guarantees exit left
	}
section_end = [_current_x, _current_y]	// End room