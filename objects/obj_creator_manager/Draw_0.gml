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
+ Double the ammo gained after clearing a room.
+ Upgrade your starter weapon every 3 floors, rather than every 5."
		break;
}

draw_set_font(fnt_room);
draw_set_halign(fa_center);
draw_set_color(c_white);
var _x = floor(view_get_wport(0) * 3.5);
var _y = floor(view_get_hport(0) * 0.05);
draw_text_transformed(_x, _y, p_class, 2, 2, 0);

draw_set_halign(fa_left);
_x = floor(view_get_wport(0) * 3.4);
_y = floor(view_get_hport(0) * 0.15);
draw_text(_x, _y, string(_classhp) + " HP");
_x = floor(view_get_wport(0) * 3.6);
draw_text(_x, _y, string(_classdef) + " DEF");
draw_set_font(fnt_class_info);
_x = floor(view_get_wport(0) * 3.3);
draw_text(_x, _y, _classdesc);
draw_set_font(fnt_class_stat);
_y = floor(view_get_hport(0) * 0.25);
draw_text(_x, _y, _classbuff);

var _w_desc = "";
var _w_stat = "";
switch(p_weapon)
{
	case item_type.pistol_1911:
		_w_desc = @"
A standardized pistol for soldiers.
High damage, but a small clip."
		_w_stat = @"
+ 7 Bullet Mag
+ High Damage
+ Semi-automatic (Fast)"
		break;
	case item_type.glock:
		_w_desc = @"
A well rounded pistol.
Has a very impractical auto mode."
		_w_stat = @"
+ 17 Bullet Mag
+ Decent Damage
+ Semi-automatic / Auto (Very Fast)"
		break;
	case item_type.uzi:
		_w_desc = @"
A fully automatic machine pistol.
More bullets, but less damage."
		_w_stat = @"
+ 32 Bullet Mag
+ Low Damage
+ Automatic (Fast)"
		break;
	case item_type.mad_taurus:
		_w_desc = @"
A very powerful revolver.
Sacrifices fire rate for power."
		_w_stat = @"
+ 6 Bullet Mag
+ Very High Damage
+ Semi-automatic (Slow)"
		break;
}

_x = floor(view_get_wport(0) * 3.6);
_y = floor(view_get_hport(0) * 0.55);
draw_set_font(fnt_class_info);
draw_text(_x, _y, _w_desc);
draw_set_font(fnt_class_stat);
_y = floor(view_get_hport(0) * 0.65);
draw_text(_x, _y, _w_stat);


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