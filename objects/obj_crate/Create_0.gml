/// @description Create Crate
hp = 50;
max_hp = hp;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_bottom) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_bottom) != 0)
	image_index = 1 else image_index = 0;
stored = -1;
if (irandom_range(1, 50) == 1)
{
	var _item = irandom_range(item_type.w_length + 1, item_type.c_length - 1);
	stored = obj_inventory_manager.item_definitions[_item, item_properties.drop_item];
}