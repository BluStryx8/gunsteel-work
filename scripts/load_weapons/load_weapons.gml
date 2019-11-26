ini_open("inventory_save.ini")
//pistols
ds_map_replace(global.weapons[1],"upgrades", ini_read_real("upgrades", "1911",0))
ds_map_replace(global.weapons[2],"upgrades", ini_read_real("upgrades", "glock 17",0))
ds_map_replace(global.weapons[3],"upgrades", ini_read_real("upgrades", "uzi",0))
ds_map_replace(global.weapons[4],"upgrades", ini_read_real("upgrades", "mad taurus",0))
ds_map_replace(global.weapons[5],"upgrades", ini_read_real("upgrades", "desert eagle",0))
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
//mag
ds_map_replace(global.weapons[1], "ammo", ini_read_real("mag" , "1911" , 7));
ds_map_replace(global.weapons[2], "ammo", ini_read_real("mag" , "glock 17" , 17));
ds_map_replace(global.weapons[3], "ammo", ini_read_real("mag" , "uzi" , 32));
ds_map_replace(global.weapons[4], "ammo", ini_read_real("mag" , "mad taurus" , 6));
ds_map_replace(global.weapons[5], "ammo", ini_read_real("mag" , "desert eagle" , 6));

ds_map_replace(global.weapons[11], "ammo", ini_read_real("mag" , "ak47" , 30));
ds_map_replace(global.weapons[12], "ammo", ini_read_real("mag" , "m4" , 30));
ds_map_replace(global.weapons[13], "ammo", ini_read_real("mag" , "p90" , 50));

ds_map_replace(global.weapons[21], "ammo", ini_read_real("mag" , "remington 870" , 7));
ds_map_replace(global.weapons[22], "ammo", ini_read_real("mag" , "mossberg 500" , 6));

ds_map_replace(global.weapons[31], "ammo", ini_read_real("mag" , "omark" , 1));
ds_map_replace(global.weapons[32], "ammo", ini_read_real("mag" , "tesro" , 1));

ds_map_replace(global.weapons[41], "ammo", ini_read_real("mag" , "minigun" , 1000));
//ammo
global.ammo_rifle = ini_read_real("ammo","rifle",300)
global.ammo_sniper = ini_read_real("ammo","sniper",30)
global.ammo_shotgun = ini_read_real("ammo","shotgun",180)
global.ammo_special = ini_read_real("ammo","special",1)
ini_close()