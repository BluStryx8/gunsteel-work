/// @desc Generates loot
/// @param loot_table The loot table to pull from
var _loot_table = argument0;

switch (_loot_table)
{
	case "standard":
		// Weapon
		var _x = x + 32;
		var _y = y + 16;
		var _item = irandom_range(1, item_type.w_length - 1);
		switch (_item)
		{
			case item_type.pistol_1911:
				instance_create_layer(_x, _y, "items", obj_item_pickup_1911);
				break;
			case item_type.glock:
				instance_create_layer(_x, _y, "items", obj_item_pickup_glock);
				break;
			case item_type.uzi:
				instance_create_layer(_x, _y, "items", obj_item_pickup_uzi);
				break;
			case item_type.mad_taurus:
				instance_create_layer(_x, _y, "items", obj_item_pickup_mad_taurus);
				break;
			case item_type.ak47:
				instance_create_layer(_x, _y, "items", obj_item_pickup_ak47);
				break;
			case item_type.m4:
				instance_create_layer(_x, _y, "items", obj_item_pickup_m4);
				break;
			case item_type.p90:
				instance_create_layer(_x, _y, "items", obj_item_pickup_p90);
				break;
			case item_type.remington_870:
				instance_create_layer(_x, _y, "items", obj_item_pickup_remington_870);
				break;
			case item_type.mossberg_500:
				instance_create_layer(_x, _y, "items", obj_item_pickup_mossberg_500);
				break;
			case item_type.omark_44:
				instance_create_layer(_x, _y, "items", obj_item_pickup_omark_44);
				break;
			case item_type.tesro:
				instance_create_layer(_x, _y, "items", obj_item_pickup_tesro);
				break;
			case item_type.minigun:
				instance_create_layer(_x, _y, "items", obj_item_pickup_minigun);
				break;
		}
		var _x = x - 32;
		var _y = y + 16;
		var _item = irandom_range(item_type.w_length + 1, item_type.c_length - 1);
		switch (_item)
		{
			case item_type.potion:
				instance_create_layer(_x, _y, "items", obj_item_pickup_potion);
				break;
			case item_type.ammo_crate:
				instance_create_layer(_x, _y, "items", obj_item_pickup_ammo_crate);
				break;
		}
		break;
}