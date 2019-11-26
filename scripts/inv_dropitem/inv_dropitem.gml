///@desc Drops an item or does an action respective to that item
///@param id The enum id of the item

var _item_id = argument0;

with (obj_inventory_manager)
{
	if (_item_id == global.starter) exit;
	else if (_item_id == item_type.potion) use_potion();
	else if (_item_id == item_type.ammo_crate) use_ammo_crate();
	else if (_item_id != item_type.none)
	{
		var _item_to_create = item_definitions[_item_id, item_properties.drop_item];
		instance_create_layer(obj_player.x, obj_player.y, "items", _item_to_create);
		inv_removeitem(_item_id);
	}
}