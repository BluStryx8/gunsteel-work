/// @description Left click function
/// @param item Item to use
/// @param type Which use script to pull

var _type = argument0;
var _to_pull = argument1;

if _to_pull = "change"
{
	var _item_script = obj_inventory_manager.item_definitions[_type, item_properties.set]
}
if _to_pull = "left"
{
	var _item_script = obj_inventory_manager.item_definitions[_type, item_properties.use_left]
}
if _to_pull = "right"
{
	var _item_script = obj_inventory_manager.item_definitions[_type, item_properties.use_right]
}

script_execute(_item_script);