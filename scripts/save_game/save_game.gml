/// @desc Saves the game
with (obj_inventory_manager)
{
	ini_open("inventory_save.ini")
	//writes what item
	ini_write_string("item", "item1", inventory[0])
	ini_write_string("item", "item2", inventory[1])
	ini_write_string("item", "item3", inventory[2])
	ini_write_string("item", "item4", inventory[3])
	ini_write_string("item", "item5", inventory[4])
	ini_write_string("item", "item6", inventory[5])
	ini_write_string("item", "item7", inventory[6])
	ini_write_string("item", "item8", inventory[7])
	ini_write_string("item", "item9", inventory[8])
	ini_write_string("item", "item10", inventory[9])
	ini_write_string("item", "item11", inventory[10])
	ini_write_string("item", "item12", inventory[11])
	ini_write_string("item", "item13", inventory[12])
	ini_write_string("item", "item14", inventory[13])
	ini_write_string("item", "item15", inventory[14])

	//writes amount
	for (var _n = 0; _n < item_type.length; _n++)
	{
		ini_write_real("amount", "item" + string(_n), item_definitions[_n, item_properties.amount])
	}


	//save upgrades
	//pistols
	ini_write_real("upgrades", "1911", ds_map_find_value(global.weapons[1], "upgrades"))
	ini_write_real("upgrades", "glock 17", ds_map_find_value(global.weapons[2], "upgrades"))
	ini_write_real("upgrades", "uzi", ds_map_find_value(global.weapons[3], "upgrades"))
	ini_write_real("upgrades", "mad taurus", ds_map_find_value(global.weapons[4], "upgrades"))

	//rifles
	ini_write_real("upgrades", "ak47", ds_map_find_value(global.weapons[11], "upgrades"))
	ini_write_real("upgrades", "m4", ds_map_find_value(global.weapons[12], "upgrades"))
	ini_write_real("upgrades", "p90", ds_map_find_value(global.weapons[13], "upgrades"))

	//shotguns
	ini_write_real("upgrades", "remington 870", ds_map_find_value(global.weapons[21], "upgrades"))
	ini_write_real("upgrades", "mossberg 500", ds_map_find_value(global.weapons[22], "upgrades"))

	//snipers
	ini_write_real("upgrades", "omark", ds_map_find_value(global.weapons[31], "upgrades"))
	ini_write_real("upgrades", "tesro", ds_map_find_value(global.weapons[32], "upgrades"))

	//special
	ini_write_real("upgrades", "minigun", ds_map_find_value(global.weapons[41], "upgrades"))

	//magazine
	ini_write_real("mag", "1911", ds_map_find_value(global.weapons[1], "ammo"))
	ini_write_real("mag", "glock 17", ds_map_find_value(global.weapons[2], "ammo"))
	ini_write_real("mag", "uzi", ds_map_find_value(global.weapons[3], "ammo"))
	ini_write_real("mag", "mad taurus", ds_map_find_value(global.weapons[4], "ammo"))
	ini_write_real("mag", "ak47", ds_map_find_value(global.weapons[11], "ammo"))
	ini_write_real("mag", "m4", ds_map_find_value(global.weapons[12], "ammo"))
	ini_write_real("mag", "p90", ds_map_find_value(global.weapons[13], "ammo"))
	ini_write_real("mag", "remington 870", ds_map_find_value(global.weapons[21], "ammo"))
	ini_write_real("mag", "mossberg 500", ds_map_find_value(global.weapons[22], "ammo"))
	ini_write_real("mag", "omark", ds_map_find_value(global.weapons[31], "ammo"))
	ini_write_real("mag", "tesro", ds_map_find_value(global.weapons[32], "ammo"))
	ini_write_real("mag", "minigun", ds_map_find_value(global.weapons[41], "ammo"))
	

	//ammo
	ini_write_real("ammo", "rifle", global.ammo_rifle)
	ini_write_real("ammo", "shotgun", global.ammo_shotgun)
	ini_write_real("ammo", "sniper", global.ammo_sniper)
	ini_write_real("ammo", "minigun", global.ammo_minigun)
	ini_close()
}

//player values
//class
ini_open("player.ini")
ini_write_real("dungeon", "score", score)
ini_write_real("dungeon", "level", global.level)
ini_write_real("dungeon", "seed", global.seed)
ini_write_string("player", "class", global.class)
ini_write_string("player", "starter", global.starter)
ini_write_real("player", "health",obj_player.p_health)
ini_close()