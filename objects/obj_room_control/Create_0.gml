/// @description Create instances and bind IDs
active = false;
enemy_count = 0;

var _tile = 16;
var _x = _tile;
var _y = _tile * 12;
var _gate = instance_create_layer(x + _x, y + _y, "tiles", obj_v_gate);
_gate.master_id = id;
_gate.prime_dir = "left";	// Direction player enters room through

_x = _tile * 12;
_y = _tile;
_gate = instance_create_layer(x + _x, y + _y, "tiles", obj_h_gate);
_gate.master_id = id;
_gate.prime_dir = "up";	// Direction player enters room through


var _room_tile	= layer_tilemap_get_id("room_tile");
var _tile_x = tilemap_get_cell_x_at_pixel(_room_tile, x, y);
var _tile_y = tilemap_get_cell_y_at_pixel(_room_tile, x, y);
var _x_extent	= _tile_x + 29;
var _y_extent	= _tile_y + 29;
repeat irandom_range(5, 10)
{
	enemy_count += 1;
	do
	{
		_x = irandom_range(_tile_x, _x_extent);
		_y = irandom_range(_tile_y, _y_extent);
		_tile = tilemap_get(_room_tile, _x, _y);
	}
	until (_tile == 32)
	_x = _x * 16;
	_y = _y * 16;
	switch (irandom_range(0, 2))
	{
		case 0:
			var _slime = instance_create_layer(_x, _y, "enemies", obj_enemy_slime_g);
			break;
		case 1:
			var _slime = instance_create_layer(_x, _y, "enemies", obj_enemy_slime_r);
			break;
		case 2:
			var _slime = instance_create_layer(_x, _y, "enemies", obj_enemy_slime_b);
			break;
	}
	_slime.master_id = id;
}