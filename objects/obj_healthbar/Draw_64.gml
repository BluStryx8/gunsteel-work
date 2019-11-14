/// @description Draw Healthbars
if (global.truepause) or (global.holstered) exit;
var _max_health	 = obj_player.p_max_health;
var _health		 = obj_player.p_health;
var _max_defense = obj_player.p_max_defense;
var _defense	 = obj_player.p_defense;

var _x_offset = 32;
var _y_offset = 32;
var _padding = 16;
var _scale = 2;

var _width = sprite_get_width(spr_healthbar) * _scale;
var _height = sprite_get_height(spr_healthbar) * _scale;

var _x = _x_offset;
var _y = _y_offset;

// Draw Healthbar
if (_max_health <= 0)
{
	draw_sprite_ext(spr_healthbar,hpbar.onehit, _x, _y, _scale, _scale, 0, c_white, 1);
	exit;
}
draw_sprite_ext(spr_healthbar,hpbar.hp_icon, _x, _y, _scale, _scale, 0, c_white, 1);
_x += _width;
if (_max_health > 1)
{
	// Draw HP Slots
	draw_sprite_ext(spr_healthbar,hpbar.slot_left, _x, _y, _scale, _scale, 0, c_white, 1);
	var _prev_x = _x;
	_x += _width;
	for (var _n = 1; _n < _max_health - 1; _n++)
	{
		draw_sprite_ext(spr_healthbar,hpbar.slot_middle, _x, _y, _scale, _scale, 0, c_white, 1);
		_x += _width;
	}
	draw_sprite_ext(spr_healthbar,hpbar.slot_right, _x, _y, _scale, _scale, 0, c_white, 1);
	_x = _prev_x;
	// Draw HP Bar
	if (_health > 1)
	{
		draw_sprite_ext(spr_healthbar,hpbar.hp_left, _x, _y, _scale, _scale, 0, c_white, 1);
		_x += _width;
		for (var _n = 1; _n < _health - 1; _n++)
		{
			draw_sprite_ext(spr_healthbar,hpbar.hp_middle, _x, _y, _scale, _scale, 0, c_white, 1);
			_x += _width;
		}
		draw_sprite_ext(spr_healthbar,hpbar.hp_right, _x, _y, _scale, _scale, 0, c_white, 1);
	}
	else if (_health > 0) draw_sprite_ext(spr_healthbar,hpbar.hp_single, _x, _y, _scale, _scale, 0, c_white, 1);
}
else
{
	// Draw Single Slot and Bar
	draw_sprite_ext(spr_healthbar,hpbar.slot_single, _x, _y, _scale, _scale, 0, c_white, 1);
	if (_health > 0) draw_sprite_ext(spr_healthbar,hpbar.hp_single, _x, _y, _scale, _scale, 0, c_white, 1);
}

_x = _x_offset;
_y += _height + _padding;

// Draw Defense Bar
if (_max_defense > 0)
{
	draw_sprite_ext(spr_healthbar,hpbar.def_icon, _x, _y, _scale, _scale, 0, c_white, 1);
	_x += _width;
	if (_max_defense > 1)
	{
		// Draw Def Slots
		draw_sprite_ext(spr_healthbar,hpbar.slot_left, _x, _y, _scale, _scale, 0, c_white, 1);
		var _prev_x = _x;
		_x += _width;
		for (var _n = 1; _n < _max_defense - 1; _n++)
		{
			draw_sprite_ext(spr_healthbar,hpbar.slot_middle, _x, _y, _scale, _scale, 0, c_white, 1);
			_x += _width;
		}
		draw_sprite_ext(spr_healthbar,hpbar.slot_right, _x, _y, _scale, _scale, 0, c_white, 1);
		_x = _prev_x;
		// Draw Def Bar
		if (_defense > 1)
		{
			draw_sprite_ext(spr_healthbar,hpbar.def_left, _x, _y, _scale, _scale, 0, c_white, 1);
			_x += _width;
			for (var _n = 1; _n < _defense - 1; _n++)
			{
				draw_sprite_ext(spr_healthbar,hpbar.def_middle, _x, _y, _scale, _scale, 0, c_white, 1);
				_x += _width;
			}
			draw_sprite_ext(spr_healthbar,hpbar.def_right, _x, _y, _scale, _scale, 0, c_white, 1);
		}
		else if (_defense > 0) draw_sprite_ext(spr_healthbar,hpbar.def_single, _x, _y, _scale, _scale, 0, c_white, 1);
	}
	else
	{
		// Draw Single Slot and Bar
		draw_sprite_ext(spr_healthbar,hpbar.slot_single, _x, _y, _scale, _scale, 0, c_white, 1);
		if (_defense > 0) draw_sprite_ext(spr_healthbar,hpbar.def_single, _x, _y, _scale, _scale, 0, c_white, 1);
	}
}