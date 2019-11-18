/// @description Set Constants

x = floor(view_get_wport(0) * 3.2);
y = floor(view_get_hport(0) * 0.2);

skin_colour  = global.p_skin_colour;
hair_colour  = global.p_hair_colour;
shirt_colour = global.p_shirt_colour;
pants_colour = global.p_pants_colour;
// dash_colour  = global.p_dash_colour;
p_class		 = global.class;
p_weapon	 = global.starter;


// Create Other Things
var _x = floor(view_get_wport(0) * 3.4);
var _y = floor(view_get_hport(0) * 0.45);
var _soldier = instance_create_layer(_x, _y, "creator", obj_class_select);
_soldier.master_id	= id;
_soldier.class		= "Soldier";
_x = floor(view_get_wport(0) * 3.5);
var _scout = instance_create_layer(_x, _y, "creator", obj_class_select);
_scout.master_id	= id;
_scout.class		= "Scout";
_x = floor(view_get_wport(0) * 3.6);
var _tinkerer = instance_create_layer(_x, _y, "creator", obj_class_select);
_tinkerer.master_id	= id;
_tinkerer.class		= "Tinkerer";

_x = floor(view_get_wport(0) * 3.2);
_y = floor(view_get_hport(0) * 0.6);
var _1911 = instance_create_layer(_x, _y, "creator", obj_weapon_select);
_1911.master_id			= id;
_1911.weapon_id			= item_type.pistol_1911;
_x = floor(view_get_wport(0) * 3.3);
var _glock = instance_create_layer(_x, _y, "creator", obj_weapon_select);
_glock.master_id		= id;
_glock.weapon_id		= item_type.glock;
_x = floor(view_get_wport(0) * 3.4);
var _uzi = instance_create_layer(_x, _y, "creator", obj_weapon_select);
_uzi.master_id			= id;
_uzi.weapon_id			= item_type.uzi;
_x = floor(view_get_wport(0) * 3.5);
var _mad_taurus = instance_create_layer(_x, _y, "creator", obj_weapon_select);
_mad_taurus.master_id	= id;
_mad_taurus.weapon_id	= item_type.mad_taurus;

_x = floor(view_get_wport(0) * 3.8);
_y = floor(view_get_hport(0) * 0.9);