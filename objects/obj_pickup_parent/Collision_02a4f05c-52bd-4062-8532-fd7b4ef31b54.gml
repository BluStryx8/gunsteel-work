/// @description Collect Item
if (global.paused) exit;

if keyboard_check(ord("E"))
{
	var _success = inv_additem(p_item_type);
	if (_success)
	{
		obj_inventory_manager.change_check = -1;
		instance_destroy();
	}
}