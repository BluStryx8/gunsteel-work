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
	switch(obj_inventory_manager.item_definitions[_type, item_properties.type])
	{
		case "firearm":
			if obj_inventory_manager.item_definitions[_type, item_properties.amount] < 1
			{
				obj_inventory_manager.item_definitions[_type, item_properties.amount] += 1;
				audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
				audio_play_sound(snd_reload_eject_clip, 1, false);
			}
			else
			{
				// Upgrade Weapon
				var _w = weapon_find(global.weapons, "weapon", obj_inventory_manager.item_definitions[_type, item_properties.name]);
				var _upgrades = ds_map_find_value(global.weapons[_w], "upgrades");
				ds_map_replace(global.weapons[_w], "upgrades", _upgrades + 1);
				audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
				audio_play_sound(snd_upgrade, 1, false);
			}
			break;
		default:
			if obj_inventory_manager.item_definitions[_type, item_properties.amount] < STACK
			{
				obj_inventory_manager.item_definitions[_type, item_properties.amount] += 1;
				audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
				audio_play_sound(snd_reload_eject_clip, 1, false);
			}
			else _index_added_at = -1;
			break;
	}
return (_index_added_at != -1);