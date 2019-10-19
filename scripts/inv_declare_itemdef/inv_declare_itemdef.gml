///@desc Declares all item definitions
item_definitions[item_type.length, item_properties.length] = noone;

inv_add_itemdef(item_type.none, spr_gui_empty, spr_gui_empty, "", 0, "other", set_weapon, use_empty, use_empty);
inv_add_itemdef(item_type.pistol_1911, spr_gui_1911, spr_held_1911, "1911", 0, "firearm", set_weapon, weapon_shoot, use_empty);
inv_add_itemdef(item_type.glock, spr_gui_glock, spr_held_glock, "Glock 17", 0, "firearm", set_weapon, weapon_shoot, alt_glock);
inv_add_itemdef(item_type.uzi, spr_gui_uzi, spr_held_uzi, "Uzi", 0, "firearm", set_weapon, weapon_shoot, use_empty);
inv_add_itemdef(item_type.ak47, spr_gui_ak47, spr_held_ak47, "AK-47", 0, "firearm", set_weapon, weapon_shoot, alt_ak47);
inv_add_itemdef(item_type.m4, spr_gui_m4, spr_held_m4, "M4", 0, "firearm", set_weapon, weapon_shoot, alt_m4);
inv_add_itemdef(item_type.p90, spr_gui_p90, spr_held_p90, "P90", 0, "firearm", set_weapon, weapon_shoot, alt_p90);
inv_add_itemdef(item_type.remington_870, spr_gui_remington_870, spr_held_remington_870, "Remington 870", 0, "firearm", set_weapon, weapon_shoot, use_empty);
inv_add_itemdef(item_type.bar_iron, spr_gui_bar_iron, spr_gui_empty, "Iron Bar", 0, "bar", set_empty, use_empty, use_empty);