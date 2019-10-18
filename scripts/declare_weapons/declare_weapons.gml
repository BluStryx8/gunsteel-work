/// @desc Declare all Weapons

// Empty
weapons[0] = ds_map_create();
ds_map_add(weapons[0], "weapon", "none");
ds_map_add(weapons[0], "atk_type", "none");
ds_map_add(weapons[0], "hands", 0);
ds_map_add(weapons[0], "hand_one", [0, 0]);
ds_map_add(weapons[0], "hand_two", [0, 0]);
ds_map_add(weapons[0], "offset", 0);
ds_map_add(weapons[0], "min_damage", 0);
ds_map_add(weapons[0], "max_damage", 0);
ds_map_add(weapons[0], "bullet_speed", 0);
ds_map_add(weapons[0], "bullet_speed_var", 0);
ds_map_add(weapons[0], "decay", 0);
ds_map_add(weapons[0], "reload", 0);
ds_map_add(weapons[0], "burst", 0);
ds_map_add(weapons[0], "bullets", 0);
ds_map_add(weapons[0], "base_accuracy", 0);
ds_map_add(weapons[0], "recoil", 0);
ds_map_add(weapons[0], "max_recoil", 0);
ds_map_add(weapons[0], "recoil_mult", 0);
ds_map_add(weapons[0], "shake_dur", 0);
ds_map_add(weapons[0], "max_ammo", 0);

// 1911
weapons[1] = ds_map_create();
ds_map_add(weapons[1], "weapon", "1911");
ds_map_add(weapons[1], "atk_type", "semi_auto");
ds_map_add(weapons[1], "hands", 1);
ds_map_add(weapons[1], "hand_one", [0, 0]);
ds_map_add(weapons[1], "hand_two", [0, 0]);
ds_map_add(weapons[1], "offset", 0);
ds_map_add(weapons[1], "min_damage", 48);
ds_map_add(weapons[1], "max_damage", 52);
ds_map_add(weapons[1], "bullet_speed", 20);
ds_map_add(weapons[1], "bullet_speed_var", 1);
ds_map_add(weapons[1], "decay", 0.5);
ds_map_add(weapons[1], "reload", 10);
ds_map_add(weapons[1], "burst", 1);
ds_map_add(weapons[1], "bullets", 1);
ds_map_add(weapons[1], "base_accuracy", 2);
ds_map_add(weapons[1], "recoil", 2);
ds_map_add(weapons[1], "max_recoil", 6);
ds_map_add(weapons[1], "recoil_mult", 3);
ds_map_add(weapons[1], "shake_dur", 8);
ds_map_add(weapons[1], "max_ammo", 7);


