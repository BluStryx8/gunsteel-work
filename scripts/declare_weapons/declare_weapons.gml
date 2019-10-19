/// @desc Declare all global.weapons

// Empty
global.weapons[0] = ds_map_create();
ds_map_add(global.weapons[0], "weapon", "none");		// Name of weapon
ds_map_add(global.weapons[0], "atk_type", "none");		// How gun functions when firing
ds_map_add(global.weapons[0], "hands", 0);				// How many hands used
ds_map_add(global.weapons[0], "hand_one", [0, 0]);		// Offset of main hand
ds_map_add(global.weapons[0], "hand_two", [0, 0]);		// Offset of grip hand
ds_map_add(global.weapons[0], "offset", [0, 0, 0]);		// Offset from body centre
ds_map_add(global.weapons[0], "min_damage", 0);			// Minimum damage
ds_map_add(global.weapons[0], "max_damage", 0);			// Maximum damage
ds_map_add(global.weapons[0], "bullet_speed", 0);		// Speed of bullet
ds_map_add(global.weapons[0], "bullet_speed_var", 0);	// Variation of bullet speed
ds_map_add(global.weapons[0], "decay", 0);				// Seconds before bullets disappear
ds_map_add(global.weapons[0], "reload", 0);				// Time between atks
ds_map_add(global.weapons[0], "burst", 0);				// How many times it fires
ds_map_add(global.weapons[0], "bullets", 0);			// How many bullets it makes
ds_map_add(global.weapons[0], "bullet_dd", 0);			// Frames before bullets are drawn
ds_map_add(global.weapons[0], "base_accuracy", 0);		// Minimum accuracy variation
ds_map_add(global.weapons[0], "recoil", 0);				// Increases accuracy variation
ds_map_add(global.weapons[0], "max_recoil", 0);			// Maximum accuracy variation
ds_map_add(global.weapons[0], "recoil_mult", 0);		// Multiplier for damage reduction due to recoil
ds_map_add(global.weapons[0], "shake_dur", 0);			// Frames of screenshake
ds_map_add(global.weapons[0], "max_ammo", 0);			// Maximum ammo per clip
ds_map_add(global.weapons[0], "ammo", 0);				// Current ammo

// 1911
global.weapons[1] = ds_map_create();
ds_map_add(global.weapons[1], "weapon", "1911");
ds_map_add(global.weapons[1], "atk_type", "semi_auto");
ds_map_add(global.weapons[1], "hands", 1);
ds_map_add(global.weapons[1], "hand_one", [-1, 7]);
ds_map_add(global.weapons[1], "hand_two", [0, 0]);
ds_map_add(global.weapons[1], "offset", [-6, 0, -4]);
ds_map_add(global.weapons[1], "min_damage", 48);
ds_map_add(global.weapons[1], "max_damage", 52);
ds_map_add(global.weapons[1], "bullet_speed", 20);
ds_map_add(global.weapons[1], "bullet_speed_var", 1);
ds_map_add(global.weapons[1], "decay", 0.5);
ds_map_add(global.weapons[1], "reload", 10);
ds_map_add(global.weapons[1], "burst", 1);
ds_map_add(global.weapons[1], "bullets", 1);
ds_map_add(global.weapons[1], "bullet_dd", 0);
ds_map_add(global.weapons[1], "base_accuracy", 2);
ds_map_add(global.weapons[1], "recoil", 2);
ds_map_add(global.weapons[1], "max_recoil", 6);
ds_map_add(global.weapons[1], "recoil_mult", 3);
ds_map_add(global.weapons[1], "shake_dur", 8);
ds_map_add(global.weapons[1], "max_ammo", 7);
ds_map_add(global.weapons[1], "ammo", 7);

// Glock 17
global.weapons[2] = ds_map_create();
ds_map_add(global.weapons[2], "weapon", "Glock 17");
ds_map_add(global.weapons[2], "atk_type", "semi_auto");
ds_map_add(global.weapons[2], "hands", 1);
ds_map_add(global.weapons[2], "hand_one", [0, 6]);
ds_map_add(global.weapons[2], "hand_two", [0, 0]);
ds_map_add(global.weapons[2], "offset", [-7, 1, -2]);
ds_map_add(global.weapons[2], "min_damage", 18);
ds_map_add(global.weapons[2], "max_damage", 22);
ds_map_add(global.weapons[2], "bullet_speed", 21);
ds_map_add(global.weapons[2], "bullet_speed_var", 1);
ds_map_add(global.weapons[2], "decay", 0.5);
ds_map_add(global.weapons[2], "reload", 3);
ds_map_add(global.weapons[2], "burst", 1);
ds_map_add(global.weapons[2], "bullets", 1);
ds_map_add(global.weapons[2], "bullet_dd", 0);
ds_map_add(global.weapons[2], "base_accuracy", 2.5);
ds_map_add(global.weapons[2], "recoil", 2.5);
ds_map_add(global.weapons[2], "max_recoil", 7.5);
ds_map_add(global.weapons[2], "recoil_mult", 1.5);
ds_map_add(global.weapons[2], "shake_dur", 7);
ds_map_add(global.weapons[2], "max_ammo", 17);
ds_map_add(global.weapons[2], "ammo", 17);

// Uzi
global.weapons[3] = ds_map_create();
ds_map_add(global.weapons[3], "weapon", "Uzi");
ds_map_add(global.weapons[3], "atk_type", "auto");
ds_map_add(global.weapons[3], "hands", 1);
ds_map_add(global.weapons[3], "hand_one", [0, 4]);
ds_map_add(global.weapons[3], "hand_two", [0, 0]);
ds_map_add(global.weapons[3], "offset", [-6, 3, -3]);
ds_map_add(global.weapons[3], "min_damage", 19);
ds_map_add(global.weapons[3], "max_damage", 23);
ds_map_add(global.weapons[3], "bullet_speed", 23);
ds_map_add(global.weapons[3], "bullet_speed_var", 1);
ds_map_add(global.weapons[3], "decay", 1.5);
ds_map_add(global.weapons[3], "reload", 6);
ds_map_add(global.weapons[3], "burst", 1);
ds_map_add(global.weapons[3], "bullets", 1);
ds_map_add(global.weapons[3], "bullet_dd", 0);
ds_map_add(global.weapons[3], "base_accuracy", 3);
ds_map_add(global.weapons[3], "recoil", 2);
ds_map_add(global.weapons[3], "max_recoil", 8);
ds_map_add(global.weapons[3], "recoil_mult", 1);
ds_map_add(global.weapons[3], "shake_dur", 6);
ds_map_add(global.weapons[3], "max_ammo", 32);
ds_map_add(global.weapons[3], "ammo", 32);

//Ak-47
global.weapons[4] = ds_map_create();
ds_map_add(global.weapons[4], "weapon", "AK-47");
ds_map_add(global.weapons[4], "atk_type", "semi_auto");
ds_map_add(global.weapons[4], "hands", 2);
ds_map_add(global.weapons[4], "hand_one", [0, 5]);
ds_map_add(global.weapons[4], "hand_two", [17, 1]);
ds_map_add(global.weapons[4], "offset", [-6, 2, 0]);
ds_map_add(global.weapons[4], "min_damage", 19);
ds_map_add(global.weapons[4], "max_damage", 25);
ds_map_add(global.weapons[4], "bullet_speed", 22);
ds_map_add(global.weapons[4], "bullet_speed_var", 1);
ds_map_add(global.weapons[4], "decay", 3);
ds_map_add(global.weapons[4], "reload", 6);
ds_map_add(global.weapons[4], "burst", 1);
ds_map_add(global.weapons[4], "bullets", 1);
ds_map_add(global.weapons[4], "bullet_dd", 1);
ds_map_add(global.weapons[4], "base_accuracy", 2);
ds_map_add(global.weapons[4], "recoil", 0.3);
ds_map_add(global.weapons[4], "max_recoil", 7);
ds_map_add(global.weapons[4], "recoil_mult", 0.75);
ds_map_add(global.weapons[4], "shake_dur", 5);
ds_map_add(global.weapons[4], "max_ammo", 30);
ds_map_add(global.weapons[4], "ammo", 30);

//M4
global.weapons[5] = ds_map_create();
ds_map_add(global.weapons[5], "weapon", "M4");
ds_map_add(global.weapons[5], "atk_type", "semi_auto");
ds_map_add(global.weapons[5], "hands", 2);
ds_map_add(global.weapons[5], "hand_one", [0, 5]);
ds_map_add(global.weapons[5], "hand_two", [17, 3]);
ds_map_add(global.weapons[5], "offset", [-6, 2, 0]);
ds_map_add(global.weapons[5], "min_damage", 14);
ds_map_add(global.weapons[5], "max_damage", 22);
ds_map_add(global.weapons[5], "bullet_speed", 24);
ds_map_add(global.weapons[5], "bullet_speed_var", 1);
ds_map_add(global.weapons[5], "decay", 3);
ds_map_add(global.weapons[5], "reload", 5);
ds_map_add(global.weapons[5], "burst", 1);
ds_map_add(global.weapons[5], "bullets", 1);
ds_map_add(global.weapons[5], "bullet_dd", 1);
ds_map_add(global.weapons[5], "base_accuracy", 2.5);
ds_map_add(global.weapons[5], "recoil", 0.2);
ds_map_add(global.weapons[5], "max_recoil", 7.5);
ds_map_add(global.weapons[5], "recoil_mult", 0.75);
ds_map_add(global.weapons[5], "shake_dur", 5);
ds_map_add(global.weapons[5], "max_ammo", 30);
ds_map_add(global.weapons[5], "ammo", 30);

//P90
global.weapons[6] = ds_map_create();
ds_map_add(global.weapons[6], "weapon", "P90");
ds_map_add(global.weapons[6], "atk_type", "semi_auto");
ds_map_add(global.weapons[6], "hands", 2);
ds_map_add(global.weapons[6], "hand_one", [4, 4]);
ds_map_add(global.weapons[6], "hand_two", [12, 4]);
ds_map_add(global.weapons[6], "offset", [0, 3, 0]);
ds_map_add(global.weapons[6], "min_damage", 9);
ds_map_add(global.weapons[6], "max_damage", 13);
ds_map_add(global.weapons[6], "bullet_speed", 25);
ds_map_add(global.weapons[6], "bullet_speed_var", 1);
ds_map_add(global.weapons[6], "decay", 1);
ds_map_add(global.weapons[6], "reload", 4);
ds_map_add(global.weapons[6], "burst", 1);
ds_map_add(global.weapons[6], "bullets", 1);
ds_map_add(global.weapons[6], "bullet_dd", 0);
ds_map_add(global.weapons[6], "base_accuracy", 2);
ds_map_add(global.weapons[6], "recoil", 0.2);
ds_map_add(global.weapons[6], "max_recoil", 6);
ds_map_add(global.weapons[6], "recoil_mult", 0.75);
ds_map_add(global.weapons[6], "shake_dur", 5);
ds_map_add(global.weapons[6], "max_ammo", 50);
ds_map_add(global.weapons[6], "ammo", 50);

//Remington 870
global.weapons[7] = ds_map_create();
ds_map_add(global.weapons[7], "weapon", "Remington 870");
ds_map_add(global.weapons[7], "atk_type", "semi_auto");
ds_map_add(global.weapons[7], "hands", 2);
ds_map_add(global.weapons[7], "hand_one", [0, 2]);
ds_map_add(global.weapons[7], "hand_two", [17, 2]);
ds_map_add(global.weapons[7], "offset", [-4, 3, 0]);
ds_map_add(global.weapons[7], "min_damage", 15);
ds_map_add(global.weapons[7], "max_damage", 35);
ds_map_add(global.weapons[7], "bullet_speed", 24);
ds_map_add(global.weapons[7], "bullet_speed_var", 2);
ds_map_add(global.weapons[7], "decay", 0.5);
ds_map_add(global.weapons[7], "reload", 30);
ds_map_add(global.weapons[7], "burst", 1);
ds_map_add(global.weapons[7], "bullets", 12);
ds_map_add(global.weapons[7], "bullet_dd", 1);
ds_map_add(global.weapons[7], "base_accuracy", 10);
ds_map_add(global.weapons[7], "recoil", 3);
ds_map_add(global.weapons[7], "max_recoil", 16);
ds_map_add(global.weapons[7], "recoil_mult", 0.5);
ds_map_add(global.weapons[7], "shake_dur", 20);
ds_map_add(global.weapons[7], "max_ammo", 5);
ds_map_add(global.weapons[7], "ammo", 5);