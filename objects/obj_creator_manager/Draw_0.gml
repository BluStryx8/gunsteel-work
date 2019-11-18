/// @description Draw New Char
var _alpha = 1;

var _classhp   = 0;
var _classdef  = 0;
var _classdesc = "";
var _classbuff = "";
// Draw Class Info
switch(p_class)
{
	case "Soldier":
		_classhp   = 5;
		_classdef  = 3;
		_classdesc = @"
The defender of the realm.
Good for beginners."
		_classbuff = @"
+ Gain 2 DEF, rather than 1, upon clearing a room.
+ Gain 1 HP every 5 floors."
		break;
	case "Scout":
		_classhp   = 3;
		_classdef  = 2;
		_classdesc = @"
Moves fast to stay ahead in the endless dungeon.
Good for skilled players."
		_classbuff = @"
+ Increase your speed and reduce your dodge cooldown.
+ You reload your weapons 20% faster."
		break;
	case "Tinkerer":
		_classhp   = 2;
		_classdef  = 4;
		_classdesc = @"
Tinkers with scraps to keep gear in high function.
Good for those who like weapons."
		_classbuff = @"
+ Gain ammo after clearing a room.
+ Upgrade your starter weapon every 5 floors, rather than every 10."
		break;
}

draw_set_font(fnt_room);
draw_set_halign(fa_center);
var _x = floor(view_get_wport(0) * 3.5);
var _y = floor(view_get_hport(0) * 0.2);
draw_text(_x, _y, p_class);

draw_set_halign(fa_left);
_x = floor(view_get_wport(0) * 3.4);
_y = floor(view_get_hport(0) * 0.25);
draw_text(_x, _y, string(_classhp) + " HP");
_x = floor(view_get_wport(0) * 3.6);
draw_text(_x, _y, string(_classdef) + " DEF");
draw_set_font(fnt_class_info);
_x = floor(view_get_wport(0) * 3.3);
draw_text(_x, _y, _classdesc);
draw_set_font(fnt_class_stat);
_y = floor(view_get_hport(0) * 0.35);
draw_text(_x, _y, _classbuff);


// Draw Player
draw_sprite_ext(spr_player_feet, 0, x + 4 * global.p_scale, y + 15 * global.p_scale,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha)
draw_sprite_ext(spr_player_feet, 0, x - 4 * global.p_scale, y + 15 * global.p_scale,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha)
draw_sprite_ext(spr_player_pants, 0, x, y,
		global.p_scale, global.p_scale, 0, pants_colour, _alpha)
draw_sprite_ext(spr_player_legs, 0, x + 4 * global.p_scale, y + 11 * global.p_scale,
		global.p_scale, global.p_scale, 0, pants_colour, _alpha)
draw_sprite_ext(spr_player_legs, 0, x - 4 * global.p_scale, y + 11 * global.p_scale,
		global.p_scale, global.p_scale, 0, pants_colour, _alpha)
draw_sprite_ext(spr_player_hand, 0, x + 10 * global.p_scale, y + 7 * global.p_scale,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha)
draw_sprite_ext(spr_player_body, 0, x, y,
		global.p_scale, global.p_scale, 0, shirt_colour, _alpha)
draw_sprite_ext(spr_player_bodyupper, 0, x, y,
		global.p_scale, global.p_scale, 0, c_white, _alpha)
draw_sprite_ext(spr_player_hand, 0, x - 7 * global.p_scale, y + 7 * global.p_scale,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha);
draw_sprite_ext(spr_player_head, 0, x, y,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha);
draw_sprite_ext(spr_player_shade, 0, x, y,
		global.p_scale, global.p_scale, 0, skin_colour, _alpha);
draw_sprite_ext(spr_player_eyes, 0, x, y,
		global.p_scale, global.p_scale, 0, hair_colour, _alpha);
draw_sprite_ext(spr_player_hair, 0, x, y,
		global.p_scale, global.p_scale, 0, hair_colour, _alpha);
draw_sprite_ext(spr_player_hat, 0, x, y,
		global.p_scale, global.p_scale, 0, c_white, _alpha);