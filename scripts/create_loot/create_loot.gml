/// @desc Generates loot
/// @param loot_table The loot table to pull from
var _loot_table = argument0;

if (variable_instance_exists(id, "master_id")) var _master = true
	else var _master = false;

switch (_loot_table)
{
	case "standard":
		// Weapon
		var _x = x + 32;
		var _y = y + 16;
		if (_master)
			var _item = master_id.chest_weapon;
		else
			var _item = irandom_range(1, item_type.w_length - 1);
		var _item_to_create = obj_inventory_manager.item_definitions[_item, item_properties.drop_item];
		instance_create_layer(_x, _y, "items", _item_to_create);
		
		// Item
		var _x = x - 32;
		var _y = y + 16;
		if (_master)
			var _item = master_id.chest_consume;
		else
			var _item = irandom_range(item_type.w_length + 1, item_type.c_length - 1);
		var _item_to_create = obj_inventory_manager.item_definitions[_item, item_properties.drop_item];
		instance_create_layer(_x, _y, "items", _item_to_create);
		break;
}