/// @param x The x section to generate at
/// @param y The y section to generate at
/// @param string The string to refer to

var _x           = argument0;
var _y           = argument1;
var _string_data = argument2;

var _tile;

// Visual
for (var _c = 1; _c < section_tiles_x * section_tiles_y * 2; _c += 2)
{
	_tile = real(string_char_at(_string_data, _c) + string_char_at(_string_data, _c + 1));
	switch (_tile)
	{
		case 4:
		case 12:
			// Left Wall
			_tile = choose(4, 12);
			break;
		case 5:
		case 13:
			// Right Wall
			_tile = choose(5, 13);
			break;
		case 6:
		case 7:
			// Top Wall
			_tile = choose(6, 7);
			break;
		case 14:
		case 15:
			// Bottom Wall
			_tile = choose(14, 15);
			break;
		case 16:
		case 17:
			// Light Wall
			_tile = choose(16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18);
			break;
		case 24:
		case 25:
			// Dark Wall
			_tile = choose(24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 26);
			break;
	}
	tilemap_set(room_tile, _tile,
				(_x * section_tiles_x) + ((_c / 2) mod section_tiles_x),
				(_y * section_tiles_y) + (floor((_c / 2) / section_tiles_x)));
}

// Colision
for (var _c = 1; _c < section_tiles_x * section_tiles_y * 2; _c += 2)
{
	_tile = real(string_char_at(_string_data, _c + (section_tiles_x * section_tiles_y * 2)));
	tilemap_set(global.tilemap, _tile,
				(_x * section_tiles_x) + ((_c / 2) mod section_tiles_x),
				(_y * section_tiles_y) + (floor((_c / 2) / section_tiles_x)));
	_tile = real(string_char_at(_string_data, _c + 1 + (section_tiles_x * section_tiles_y * 2)));
	tilemap_set(global.bulletmap, _tile,
				(_x * section_tiles_x) + ((_c / 2) mod section_tiles_x),
				(_y * section_tiles_y) + (floor((_c / 2) / section_tiles_x)));
}

// Create Control
create_control(_x, _y);