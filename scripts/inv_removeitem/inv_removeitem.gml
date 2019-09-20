/// @desc Removes an item from the inventory
/// @param item The item to remove.

var _type = argument0;

var _index_of_given_type = array_find_index(inventory, _type);

if (_index_of_given_type != -1)
{
	item_definitions[_type, item_properties.amount] -= 1;
	
	// Check if no more of an item
	if item_definitions[_type, item_properties.amount] <= 0
	{
		inventory[_index_of_given_type] = item_type.none;
	}
}