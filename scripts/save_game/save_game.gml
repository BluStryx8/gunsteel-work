/// @desc Saves the game

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
ini_write_real("amount", "item1", item_definitions[inventory[0], item_properties.amount])
ini_write_real("amount", "item2", item_definitions[inventory[1], item_properties.amount])
ini_write_real("amount", "item3", item_definitions[inventory[2], item_properties.amount])
ini_write_real("amount", "item4", item_definitions[inventory[3], item_properties.amount])
ini_write_real("amount", "item5", item_definitions[inventory[4], item_properties.amount])
ini_write_real("amount", "item6", item_definitions[inventory[5], item_properties.amount])
ini_write_real("amount", "item7", item_definitions[inventory[6], item_properties.amount])
ini_write_real("amount", "item8", item_definitions[inventory[7], item_properties.amount])
ini_write_real("amount", "item9", item_definitions[inventory[8], item_properties.amount])
ini_write_real("amount", "item10", item_definitions[inventory[9], item_properties.amount])
ini_write_real("amount", "item11", item_definitions[inventory[10], item_properties.amount])
ini_write_real("amount", "item12", item_definitions[inventory[11], item_properties.amount])
ini_write_real("amount", "item13", item_definitions[inventory[12], item_properties.amount])
ini_write_real("amount", "item14", item_definitions[inventory[13], item_properties.amount])
ini_write_real("amount", "item15", item_definitions[inventory[14], item_properties.amount])


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
ini_close()