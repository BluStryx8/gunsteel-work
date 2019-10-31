/// @desc Spawns a tile outline
/// @param x1 grid cell on x-axis to start placing tile
/// @param x2 grid cell on x-axis to end placing tile
/// @param y1 grid cell on y-axis to start placing tile
/// @param y2 grid cell on y-axis to end placing tile
/// @param xhop grid cells to hop along x-axis
/// @param yhop grid cells to hop along y-axis
/// @param chance 0 for 100%, 1 for 75%, 2 for 50%, 3 for 25%
/// @param tile Which tile to load

var _x1		= argument0;
var _x2		= argument1;
var _y1		= argument2;
var _y2		= argument3;
var _xhop	= argument4;
var _yhop	= argument5;
var _chance	= argument6;
var _tile	= argument7;

for (var _y = _y1; _y >= _y2; _y -= _yhop)
	for (var _x = _x1; _x <= _x2; _x += _xhop)
	{
		switch (_chance)
		{
			case 0:
				load_tile(_x, _y, _tile);
				break;
			case 1:
				if choose(true, true, true, false) load_tile(_x, _y, _tile);
				break;
			case 2:
				if choose(true, false) load_tile(_x, _y, _tile);
				break;
			case 3:
				if choose(true, false, false, false) load_tile(_x, _y, _tile);
				break;
		}
	}