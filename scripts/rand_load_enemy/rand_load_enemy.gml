/// @desc Loads an enemy at a random point
/// @param enemy Which enemy to load

var _obj_to_create = argument0;
var _tiles_x = obj_level_creator.section_tiles_x;
var _tiles_y = obj_level_creator.section_tiles_y;
var _x;
var _y;
var _tile;
do
{
	_x = irandom_range(0, _tiles_x);
	_y = irandom_range(0, _tiles_y);
	_tile = tilemap_get(obj_level_creator.room_tile, (section_x * _tiles_x) + _x, (section_y * _tiles_y) + _y);
}
until (_tile == 32 or _tile == 33 or _tile == 40 or _tile == 41)	// Until on blue large tile
var _enemy = instance_create_layer((x_offset + (_x * grid_size)), (y_offset + (_y * grid_size)),
									"bullets", obj_enemy_spawner);
_enemy.spawn = _obj_to_create;
_enemy.master_id = id;