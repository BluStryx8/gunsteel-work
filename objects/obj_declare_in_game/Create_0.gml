ini_open("inventory_save.ini")
//pistols
ds_map_replace(global.weapons[1],"upgrades", ini_read_real("upgrades", "1911",0))
ds_map_replace(global.weapons[2],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[3],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[4],"upgrades", ini_read_real("upgrades", "glock 17",0))

//rifles
ds_map_replace(global.weapons[11],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[12],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[13],"upgrades", ini_read_real("upgrades", "glock 17",0))

//shotguns
ds_map_replace(global.weapons[21],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[22],"upgrades", ini_read_real("upgrades", "glock 17",0))

//rifles


ini_close()