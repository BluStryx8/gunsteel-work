/// @description Set Constants

x = floor(view_get_wport(0) * 3.2);
y = floor(view_get_hport(0) * 0.4);

skin_colour  = global.p_skin_colour;
hair_colour  = global.p_hair_colour;
shirt_colour = global.p_shirt_colour;
pants_colour = global.p_pants_colour;
// dash_colour  = global.p_dash_colour;
p_class		 = global.class;


// Create Other Things
var _x = floor(view_get_wport(0) * 3.35);
var _y = floor(view_get_hport(0) * 0.6);
var _soldier = instance_create_layer(_x, _y, "creator", obj_class_select);
_soldier.master_id	= id;
_soldier.class		= "Soldier";
var _x = floor(view_get_wport(0) * 3.5);
var _scout = instance_create_layer(_x, _y, "creator", obj_class_select);
_scout.master_id	= id;
_scout.class		= "Scout";
var _x = floor(view_get_wport(0) * 3.65);
var _tinkerer = instance_create_layer(_x, _y, "creator", obj_class_select);
_tinkerer.master_id	= id;
_tinkerer.class		= "Tinkerer";
