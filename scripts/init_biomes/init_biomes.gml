var _rooms = x_sections * y_sections;

biome_list = ds_list_create();
for (var _n = 0; _n < _rooms; _n++)
	ds_list_add(biome_list, "basic");

var _elite = floor(_rooms * min(3, global.difficulty / 100) / irandom_range(8, 10));
var _slime = floor(_rooms / irandom_range(5, 8));
var _chest = floor(_rooms / irandom_range(12, 16) * min(1.5, (global.difficulty + 300) / 400));
var _crate = floor(_rooms / irandom_range(5, 8) * min(3, global.difficulty / 100));

for (var _n = _rooms - 1; _n > _rooms - 1 - _elite; _n--)
	ds_list_replace(biome_list, _n, "elite");
for (var _m = _n; _m > _n - _slime; _m--)
	ds_list_replace(biome_list, _m, "slime");	
for (var _n = _m; _n > _m - _chest; _n--)
	ds_list_replace(biome_list, _n, "chest");
for (var _m = _n; _m > _n - _crate; _m--)
	ds_list_replace(biome_list, _m, "crate");

var _list_size = ds_list_size(biome_list);
for (var _y = 0; _y < y_sections; _y++)
	for (var _x = 0; _x < x_sections; _x++)
	{
		biome [_x, _y] = "basic";
		if (_x == section_start[0] and _y == section_start[1])
			or (_x == section_end[0] and _y == section_end[1])
			or (sections[_x, _y] = 0)
			ds_list_delete(biome_list, 0);	// Remove first in list, as this is start/end/blank room
		else
		{
			var _biome = floor(random(_list_size));
			biome[_x, _y] = ds_list_find_value(biome_list, _biome);
			ds_list_delete(biome_list, _biome);
		}
		_list_size -= 1;
	}
	
ds_list_destroy(biome_list);