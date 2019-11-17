//@description Declares pre-existing upgrades

ini_open("inventory_save.ini")
//pistols
ds_map_replace(global.weapons[1],"upgrades", ini_read_real("upgrades", "1911",0))
ds_map_replace(global.weapons[2],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[3],"upgrades", ini_read_real("upgrades", "uzi",0))
ds_map_replace(global.weapons[4],"upgrades", ini_read_real("upgrades", "mad taurus",0))

//rifles
ds_map_replace(global.weapons[11],"upgrades", ini_read_real("upgrades", "ak47",0))
ds_map_replace(global.weapons[12],"upgrades", ini_read_real("upgrades", "m4",0))
ds_map_replace(global.weapons[13],"upgrades", ini_read_real("upgrades", "p90",0))

//shotguns
ds_map_replace(global.weapons[21],"upgrades", ini_read_real("upgrades", "remington 870",0))
ds_map_replace(global.weapons[22],"upgrades", ini_read_real("upgrades", "mossberg 500",0))

//rifles
ds_map_replace(global.weapons[31],"upgrades", ini_read_real("upgrades", "omark",0))
ds_map_replace(global.weapons[32],"upgrades", ini_read_real("upgrades", "tesro",0))

//speical
ds_map_replace(global.weapons[41],"upgrades", ini_read_real("upgrades", "minigun",0))


ini_close()