/// @desc Generate border for sections

var _room_tile_width  = section_tiles_x * x_sections;
var _random_tile;

// Block Doors
// Visual
for (var _room = 0; _room < y_sections; _room++)
	for (var _y = 15 + (section_tiles_y * _room); _y < 25 + (section_tiles_y * _room); _y++)
	{
		if sections[0, _room] != 0 and sections[0, _room] != 5 and sections[0, _room] != 6
		{
			for (var _x = 0; _x < 4; _x++)
				tilemap_set(room_tile, 8, _x, _y);
			_random_tile = choose(5, 13);
			tilemap_set(room_tile, _random_tile, _x, _y);
		}
		if sections[x_sections - 1, _room] != 0 and sections[x_sections - 1, _room] != 5 and sections[x_sections - 1, _room] != 6
		{
			for (var _x = _room_tile_width - 1; _x > _room_tile_width - 5; _x--)
				tilemap_set(room_tile, 8, _x, _y);
			_random_tile = choose(4, 12);
			tilemap_set(room_tile, _random_tile, _x, _y);
		}
	}

// Collision
for (var _room = 0; _room < y_sections; _room++)
	for (var _y = 15 + (section_tiles_y * _room); _y < 25 + (section_tiles_y * _room); _y++)
	{
		for (var _x = 3; _x < 5; _x++)
		{
			tilemap_set(global.tilemap, 1, _x, _y);
			tilemap_set(global.bulletmap, 2, _x, _y);
		}
		for (var _x = _room_tile_width - 4; _x > _room_tile_width - 6; _x--)
		{
			tilemap_set(global.tilemap, 1, _x, _y);
			tilemap_set(global.bulletmap, 2, _x, _y);
		}
	}