///@desc Declares all item definitions
item_definitions[item_type.length, item_properties.length] = noone;

inv_add_itemdef(item_type.none, spr_gui_empty, spr_gui_empty, "", 0, "other", set_empty, use_empty, use_empty);
inv_add_itemdef(item_type.pistol, spr_gui_pistol, spr_held_pistol, "Pistol", 0, "firearm", set_pistol, weapon_shoot, use_empty);
inv_add_itemdef(item_type.handgun, spr_gui_handgun, spr_held_handgun, "Handgun", 0, "firearm", set_handgun, weapon_shoot, use_empty);
inv_add_itemdef(item_type.shotgun, spr_gui_shotgun, spr_held_shotgun, "Shotgun", 0, "firearm", set_shotgun, weapon_shoot, use_empty);
inv_add_itemdef(item_type.ak47, spr_gui_ak47, spr_held_ak47, "AK-47", 0, "firearm", set_ak47, weapon_shoot, use_empty);
inv_add_itemdef(item_type.m4, spr_gui_m4, spr_held_m4, "M4", 0, "firearm", set_m4, weapon_shoot, use_empty);
inv_add_itemdef(item_type.p90, spr_gui_p90, spr_held_p90, "P90", 0, "firearm", set_p90, weapon_shoot, use_empty);
inv_add_itemdef(item_type.bar_iron, spr_gui_bar_iron, spr_gui_empty, "Iron Bar", 0, "bar", set_empty, use_empty, use_empty);