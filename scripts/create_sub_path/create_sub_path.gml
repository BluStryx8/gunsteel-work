/// @desc Scans through path and adds subpaths

// Extending horizontal branches
for (var _y = 0; _y < y_sections; _y++)
	for (var _x = 0; _x < x_sections; _x++)
		if (sections[_x, _y] == 2 or sections[_x, _y] == 4)	// Check if going down
			or (_y == y_sections - 1 and (sections[_x, _y] == 3))		// Check if on bottom
		{
			// Scan Left
			for (var _temp_x = _x; _temp_x >= 1; _temp_x--)
				if (sections[_temp_x - 1, _y] == 0) and not ((sections[_temp_x, _y] == 0) or (sections[_temp_x, _y] == 6))
					sections[_temp_x - 1, _y] = choose (6, 6, 1);
			// Scan Right
			for (var _temp_x = _x; _temp_x <= x_sections - 2; _temp_x++)
				if (sections[_temp_x + 1, _y] == 0) and not ((sections[_temp_x, _y] == 0) or (sections[_temp_x, _y] == 5))
					sections[_temp_x + 1, _y] = choose (5, 5, 1);
		}

// Adding vertical branches
for (var _y = 0; _y < y_sections - 1; _y++)
	for (var _x = 0; _x < x_sections; _x++)
		// Check if top and bottom room are LR, and then random chance
		if ((sections[_x, _y] == 1) or (sections[_x, _y] == 3)) and ((sections[_x, _y + 1] == 1) or (sections[_x, _y + 1] == 2))
			and choose(false, false, false, true) // 25% chance
			{
				if (sections[_x, _y] == 1) sections[_x, _y] = 2 else sections[_x, _y] = 4;
				if (sections[_x, _y + 1] == 1) sections[_x, _y + 1] = 3 else sections[_x, _y + 1] = 4;
			}