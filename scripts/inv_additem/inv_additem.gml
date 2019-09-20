/// @desc Attempt to add an item to inventory.
/// @param item Item to add

var _type = argument0;
var _index_added_at = -2;

// Check if item is not already in inventory
if (array_find_index(obj_inventory_manager.inventory, _type) == -1)
{
	_index_added_at = array_replace_value(obj_inventory_manager.inventory, item_type.none, _type)
}

// If inventory is not full, add stack
if (_index_added_at != -1)
	obj_inventory_manager.item_definitions[_type, item_properties.amount] += 1;

return (_index_added_at != 1);