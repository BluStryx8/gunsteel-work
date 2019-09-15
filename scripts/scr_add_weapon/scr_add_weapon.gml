/// @description adds weapons to the array along with its corresponding stats
/// @function scr_add_weapon
/// @param item_ID
/// @param name
/// @param description
/// @param damage
/// @param range
/// @param ammo

var iid = argument0;
global.item_index[# iid, item_stat.name] = argument1;
global.item_index[# iid, item_stat.description] = argument2;
global.item_index[# iid, item_stat.damage] = argument3;
global.item_index[# iid, item_stat.range] = argument4;
global.item_index[# iid, item_stat.ammo] = argument5;

global.item_index[# iid, item_stat.type] = item_type.weapon