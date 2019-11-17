///@desc Declares all item definitions
item_definitions[item_type.length, item_properties.length] = noone;

inv_add_itemdef(item_type.none, spr_gui_empty, spr_gui_empty, "", 0, "other", set_empty, use_empty, use_empty,
@"This shouldn't appear!", 
				0);
inv_add_itemdef(item_type.pistol_1911, spr_gui_1911, spr_held_1911, "1911", 0, "firearm", set_weapon, weapon_shoot, use_empty,
@"'A simple pistol with good damage.'
Left Click: Fire", 
				2);
inv_add_itemdef(item_type.glock, spr_gui_glock, spr_held_glock, "Glock 17", 0, "firearm", set_weapon, weapon_shoot, fire_mode,
@"'Just... Don't use the automatic mode.'
Left Click: Fire
Right Click: Switch Fire Mode'", 
				3);
inv_add_itemdef(item_type.uzi, spr_gui_uzi, spr_held_uzi, "Uzi", 0, "firearm", set_weapon, weapon_shoot, use_empty,
@"'Basically a budget assault rifle. Change my mind.'
Left Click: Fire", 
				2);
inv_add_itemdef(item_type.mad_taurus, spr_gui_mad_taurus, spr_held_mad_taurus, "Mad Taurus", 0, "firearm", set_weapon, weapon_shoot, use_empty,
@"'Well, we had to get past copyright somehow.'
Left Click: Fire", 
				2);
inv_add_itemdef(item_type.ak47, spr_gui_ak47, spr_held_ak47, "AK-47", 0, "firearm", set_weapon, weapon_shoot, fire_mode,
@"'Ah, yes, that one go-to generic rifle.'
Left Click: Fire
Right Click: Switch Fire Mode", 
				3);
inv_add_itemdef(item_type.m4, spr_gui_m4, spr_held_m4, "M4", 0, "firearm", set_weapon, weapon_shoot, fire_mode,
@"'A generic, sleek black rifle.'
Left Click: Fire
Right Click: Switch Fire Mode", 
				3);
inv_add_itemdef(item_type.p90, spr_gui_p90, spr_held_p90, "P90", 0, "firearm", set_weapon, weapon_shoot, fire_mode,
@"'A sleek rifle with a rapid fire rate.'
Left Click: Fire
Right Click: Switch Fire Mode", 
				3);
inv_add_itemdef(item_type.remington_870, spr_gui_remington_870, spr_held_remington_870, "Remington 870", 0, "firearm", set_weapon, weapon_shoot, weapon_pump,
@"'A shotgun that can fire rapidly.
Make sure you pump between shots.'
Left Click: Fire
Right Click: Pump Weapon", 
				4);
inv_add_itemdef(item_type.mossberg_500, spr_gui_mossberg_500, spr_held_mossberg_500, "Mossberg 500", 0, "firearm", set_weapon, weapon_shoot, weapon_pump,
@"'A powerful shotgun.
Make sure you pump between shots.'
Left Click: Fire
Right Click: Pump Weapon", 
				4);
inv_add_itemdef(item_type.omark_44, spr_gui_omark_44, spr_held_omark_44, "Omark Model 44", 0, "firearm", set_weapon, weapon_shoot, scope,
@"'Fullbore time.'
Left Click: Fire
Right Click: Scope", 
				3);
inv_add_itemdef(item_type.tesro, spr_gui_tesro, spr_held_tesro, "Tesro", 0, "firearm", set_weapon, weapon_shoot, scope,
@"'A low recoil, high fire-rate rifle.'
Left Click: Fire
Right Click: Scope", 
				3);
inv_add_itemdef(item_type.minigun, spr_gui_minigun, spr_held_minigun, "Minigun", 0, "firearm", set_weapon, weapon_shoot, use_empty,
@"'Say hello to my little friend.'
Left Click: Fire", 
				2);
inv_add_itemdef(item_type.potion, spr_gui_potion, spr_gui_empty, "Potion", 0, "Consumable", set_empty, use_potion, use_potion,
@"A standard health potion.
Use it to restore 3 HP.",
				2);
inv_add_itemdef(item_type.ammo_crate, spr_gui_ammo_crate, spr_gui_empty, "Ammo Crate", 0, "Consumable", set_empty, use_ammo_crate, use_ammo_crate,
@"An ammo crate with a variety of ammunition.
Use it to gain ammunition.
+ 100-200 Assault Rifle Ammo
+ 10-20 Sniper Rifle Ammo
+ 60-120 Shotgun Ammo
+ 750-1250 Minigun Ammo",
				6);
inv_add_itemdef(item_type.ore_iron, spr_gui_ore_iron, spr_gui_empty, "Iron Ore", 0, "Ore", set_empty, use_empty, use_empty,
				"none", 1);
inv_add_itemdef(item_type.bar_iron, spr_gui_bar_iron, spr_gui_empty, "Iron Bar", 0, "Bar", set_empty, use_empty, use_empty,
				"none", 1);
