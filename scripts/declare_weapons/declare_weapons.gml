/// @desc Declare all global.weapons

// Empty
global.weapons[0] = ds_map_create();
ds_map_add(global.weapons[0], "weapon", "none");		// Name of weapon
ds_map_add(global.weapons[0], "type", "none");			// Type of weapon
ds_map_add(global.weapons[0], "atk_type", "none");		// How gun functions when firing
ds_map_add(global.weapons[0], "upgrades", 0);			// How many upgrades have been added to weapon
ds_map_add(global.weapons[0], "hands", 0);				// How many hands used
ds_map_add(global.weapons[0], "hand_one", [0, 0]);		// Offset of main hand		[x, y]
ds_map_add(global.weapons[0], "hand_two", [0, 0]);		// Offset of grip hand		[x, y]
ds_map_add(global.weapons[0], "offset", [0, 0, 0]);		// Offset from body centre	[x, y, left_hand]
ds_map_add(global.weapons[0], "min_damage", 0);			// Minimum damage
ds_map_add(global.weapons[0], "max_damage", 0);			// Maximum damage
ds_map_add(global.weapons[0], "bullet_speed", 0);		// Speed of bullet
ds_map_add(global.weapons[0], "bullet_speed_var", 0);	// Variation of bullet speed
ds_map_add(global.weapons[0], "decay", 0);				// Frames before bullets disappear
ds_map_add(global.weapons[0], "reload", 0);				// Frames between shots
ds_map_add(global.weapons[0], "burst", 0);				// How many times it fires
ds_map_add(global.weapons[0], "bullets", 0);			// How many bullets it makes
ds_map_add(global.weapons[0], "pierce", -1);			// Damage reduction after pierce (-1 to cancel)
ds_map_add(global.weapons[0], "bullet_dd", 0);			// Frames before bullets are drawn
ds_map_add(global.weapons[0], "base_accuracy", 0);		// Minimum accuracy variation
ds_map_add(global.weapons[0], "recoil", 0);				// Increases accuracy variation
ds_map_add(global.weapons[0], "max_recoil", 0);			// Maximum accuracy variation
ds_map_add(global.weapons[0], "recoil_mult", 0);		// Multiplier for damage reduction due to recoil
ds_map_add(global.weapons[0], "shake_dur", 0);			// Frames of screenshake
ds_map_add(global.weapons[0], "max_ammo", 0);			// Maximum ammo per clip
ds_map_add(global.weapons[0], "ammo", 0);				// Current ammo
ds_map_add(global.weapons[0], "draw_time", 0);			// Frames it takes to draw weapon
ds_map_add(global.weapons[0], "reload_time", 0);		// Frames it takes to reload weapon
ds_map_add(global.weapons[0], "windup_time", 0);		// Frames it takes before firing
ds_map_add(global.weapons[0], "weight", 0);				// The decrease in speed the weapon causes
ds_map_add(global.weapons[0], "pump", 0);				// (For pump-action) Checks if pump needed
ds_map_add(global.weapons[0], "pump_time", 0);			// (For pump-action) Time to pump

/// Pistols
// 1911
global.weapons[1] = ds_map_create();
ds_map_add(global.weapons[1], "weapon", "1911");
ds_map_add(global.weapons[1], "type", "Pistol");
ds_map_add(global.weapons[1], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[1], "upgrades", 0);
ds_map_add(global.weapons[1], "hands", 1);
ds_map_add(global.weapons[1], "hand_one", [-1, 7]);
ds_map_add(global.weapons[1], "hand_two", [0, 0]);
ds_map_add(global.weapons[1], "offset", [-6, 0, -4]);
ds_map_add(global.weapons[1], "min_damage", 46);
ds_map_add(global.weapons[1], "max_damage", 50);
ds_map_add(global.weapons[1], "bullet_speed", 22);
ds_map_add(global.weapons[1], "bullet_speed_var", 1);
ds_map_add(global.weapons[1], "decay", 30);
ds_map_add(global.weapons[1], "reload", 10);
ds_map_add(global.weapons[1], "burst", 1);
ds_map_add(global.weapons[1], "bullets", 1);
ds_map_add(global.weapons[1], "pierce", -1);
ds_map_add(global.weapons[1], "bullet_dd", 0);
ds_map_add(global.weapons[1], "base_accuracy", 1);
ds_map_add(global.weapons[1], "recoil", 2);
ds_map_add(global.weapons[1], "max_recoil", 6);
ds_map_add(global.weapons[1], "recoil_mult", 2.5);
ds_map_add(global.weapons[1], "shake_dur", 8);
ds_map_add(global.weapons[1], "max_ammo", 7);
ds_map_add(global.weapons[1], "ammo", 7);
ds_map_add(global.weapons[1], "draw_time", 10);
ds_map_add(global.weapons[1], "reload_time", 60);
ds_map_add(global.weapons[1], "windup_time", 0);
ds_map_add(global.weapons[1], "weight", 0);
ds_map_add(global.weapons[1], "pump", 0);
ds_map_add(global.weapons[1], "pump_time", 0);

// Glock 17
global.weapons[2] = ds_map_create();
ds_map_add(global.weapons[2], "weapon", "Glock 17");
ds_map_add(global.weapons[2], "type", "Pistol");
ds_map_add(global.weapons[2], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[2], "upgrades", 0);
ds_map_add(global.weapons[2], "hands", 1);
ds_map_add(global.weapons[2], "hand_one", [0, 6]);
ds_map_add(global.weapons[2], "hand_two", [0, 0]);
ds_map_add(global.weapons[2], "offset", [-7, 1, -2]);
ds_map_add(global.weapons[2], "min_damage", 29);
ds_map_add(global.weapons[2], "max_damage", 33);
ds_map_add(global.weapons[2], "bullet_speed", 20);
ds_map_add(global.weapons[2], "bullet_speed_var", 1);
ds_map_add(global.weapons[2], "decay", 30);
ds_map_add(global.weapons[2], "reload", 3);
ds_map_add(global.weapons[2], "burst", 1);
ds_map_add(global.weapons[2], "bullets", 1);
ds_map_add(global.weapons[2], "bullet_dd", 0);
ds_map_add(global.weapons[2], "pierce", -1);
ds_map_add(global.weapons[2], "base_accuracy", 1);
ds_map_add(global.weapons[2], "recoil", 1.5);
ds_map_add(global.weapons[2], "max_recoil", 10);
ds_map_add(global.weapons[2], "recoil_mult", 2);
ds_map_add(global.weapons[2], "shake_dur", 7);
ds_map_add(global.weapons[2], "max_ammo", 17);
ds_map_add(global.weapons[2], "ammo", 17);
ds_map_add(global.weapons[2], "draw_time", 10);
ds_map_add(global.weapons[2], "reload_time", 60);
ds_map_add(global.weapons[2], "windup_time", 0);
ds_map_add(global.weapons[2], "weight", 0);
ds_map_add(global.weapons[2], "pump", 0);
ds_map_add(global.weapons[2], "pump_time", 0);

// Uzi
global.weapons[3] = ds_map_create();
ds_map_add(global.weapons[3], "weapon", "Uzi");
ds_map_add(global.weapons[3], "type", "Pistol");
ds_map_add(global.weapons[3], "atk_type", "Automatic");
ds_map_add(global.weapons[3], "upgrades", 0);
ds_map_add(global.weapons[3], "hands", 1);
ds_map_add(global.weapons[3], "hand_one", [0, 4]);
ds_map_add(global.weapons[3], "hand_two", [0, 0]);
ds_map_add(global.weapons[3], "offset", [-7, 3, -2]);
ds_map_add(global.weapons[3], "min_damage", 20);
ds_map_add(global.weapons[3], "max_damage", 24);
ds_map_add(global.weapons[3], "bullet_speed", 21);
ds_map_add(global.weapons[3], "bullet_speed_var", 2);
ds_map_add(global.weapons[3], "decay", 90);
ds_map_add(global.weapons[3], "reload", 6);
ds_map_add(global.weapons[3], "burst", 1);
ds_map_add(global.weapons[3], "bullets", 1);
ds_map_add(global.weapons[3], "pierce", -1);
ds_map_add(global.weapons[3], "bullet_dd", 0);
ds_map_add(global.weapons[3], "base_accuracy", 2.5);
ds_map_add(global.weapons[3], "recoil", 1);
ds_map_add(global.weapons[3], "max_recoil", 7.5);
ds_map_add(global.weapons[3], "recoil_mult", 0.75);
ds_map_add(global.weapons[3], "shake_dur", 6);
ds_map_add(global.weapons[3], "max_ammo", 32);
ds_map_add(global.weapons[3], "ammo", 32);
ds_map_add(global.weapons[3], "draw_time", 10);
ds_map_add(global.weapons[3], "reload_time", 90);
ds_map_add(global.weapons[3], "windup_time", 0);
ds_map_add(global.weapons[3], "weight", 0);
ds_map_add(global.weapons[3], "pump", 0);
ds_map_add(global.weapons[3], "pump_time", 0);

// Mad Taurus
global.weapons[4] = ds_map_create();
ds_map_add(global.weapons[4], "weapon", "Mad Taurus");
ds_map_add(global.weapons[4], "type", "Pistol");
ds_map_add(global.weapons[4], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[4], "upgrades", 0);
ds_map_add(global.weapons[4], "hands", 1);
ds_map_add(global.weapons[4], "hand_one", [-7, 7]);
ds_map_add(global.weapons[4], "hand_two", [0, 0]);
ds_map_add(global.weapons[4], "offset", [0, 0, -16]);
ds_map_add(global.weapons[4], "min_damage", 67);
ds_map_add(global.weapons[4], "max_damage", 72);
ds_map_add(global.weapons[4], "bullet_speed", 23);
ds_map_add(global.weapons[4], "bullet_speed_var", 1);
ds_map_add(global.weapons[4], "decay", 60);
ds_map_add(global.weapons[4], "reload", 20);
ds_map_add(global.weapons[4], "burst", 1);
ds_map_add(global.weapons[4], "bullets", 1);
ds_map_add(global.weapons[4], "pierce", -1);
ds_map_add(global.weapons[4], "bullet_dd", 0);
ds_map_add(global.weapons[4], "base_accuracy", 1);
ds_map_add(global.weapons[4], "recoil", 3);
ds_map_add(global.weapons[4], "max_recoil", 7);
ds_map_add(global.weapons[4], "recoil_mult", 2);
ds_map_add(global.weapons[4], "shake_dur", 6);
ds_map_add(global.weapons[4], "max_ammo", 6);
ds_map_add(global.weapons[4], "ammo", 6);
ds_map_add(global.weapons[4], "draw_time", 10);
ds_map_add(global.weapons[4], "reload_time", 60);
ds_map_add(global.weapons[4], "windup_time", 0);
ds_map_add(global.weapons[4], "weight", 0);
ds_map_add(global.weapons[4], "pump", 0);
ds_map_add(global.weapons[4], "pump_time", 0);

// Desert Eagle
global.weapons[5] = ds_map_create();
ds_map_add(global.weapons[5], "weapon", "Desert Eagle");
ds_map_add(global.weapons[5], "type", "Pistol");
ds_map_add(global.weapons[5], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[5], "upgrades", 0);
ds_map_add(global.weapons[5], "hands", 1);
ds_map_add(global.weapons[5], "hand_one", [0, 6]);
ds_map_add(global.weapons[5], "hand_two", [0, 0]);
ds_map_add(global.weapons[5], "offset", [-7, 1, -2]);
ds_map_add(global.weapons[5], "min_damage", 71);
ds_map_add(global.weapons[5], "max_damage", 77);
ds_map_add(global.weapons[5], "bullet_speed", 26);
ds_map_add(global.weapons[5], "bullet_speed_var", 1);
ds_map_add(global.weapons[5], "decay", 25);
ds_map_add(global.weapons[5], "reload", 12);
ds_map_add(global.weapons[5], "burst", 1);
ds_map_add(global.weapons[5], "bullets", 1);
ds_map_add(global.weapons[5], "bullet_dd", 0);
ds_map_add(global.weapons[5], "pierce", -1);
ds_map_add(global.weapons[5], "base_accuracy", 1);
ds_map_add(global.weapons[5], "recoil", 3);
ds_map_add(global.weapons[5], "max_recoil", 10);
ds_map_add(global.weapons[5], "recoil_mult", 2.5);
ds_map_add(global.weapons[5], "shake_dur", 9);
ds_map_add(global.weapons[5], "max_ammo", 7);
ds_map_add(global.weapons[5], "ammo", 7);
ds_map_add(global.weapons[5], "draw_time", 10);
ds_map_add(global.weapons[5], "reload_time", 90);
ds_map_add(global.weapons[5], "windup_time", 0);
ds_map_add(global.weapons[5], "weight", 0);
ds_map_add(global.weapons[5], "pump", 0);
ds_map_add(global.weapons[5], "pump_time", 0);

/// SMGs
//AK-47
global.weapons[11] = ds_map_create();
ds_map_add(global.weapons[11], "weapon", "AK-47");
ds_map_add(global.weapons[11], "type", "Assault Rifle");
ds_map_add(global.weapons[11], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[11], "upgrades", 0);
ds_map_add(global.weapons[11], "hands", 2);
ds_map_add(global.weapons[11], "hand_one", [0, 5]);
ds_map_add(global.weapons[11], "hand_two", [17, 1]);
ds_map_add(global.weapons[11], "offset", [-6, 2, 0]);
ds_map_add(global.weapons[11], "min_damage", 30);
ds_map_add(global.weapons[11], "max_damage", 36);
ds_map_add(global.weapons[11], "bullet_speed", 22);
ds_map_add(global.weapons[11], "bullet_speed_var", 1);
ds_map_add(global.weapons[11], "decay", 180);
ds_map_add(global.weapons[11], "reload", 6);
ds_map_add(global.weapons[11], "burst", 1);
ds_map_add(global.weapons[11], "bullets", 1);
ds_map_add(global.weapons[11], "pierce", -1);
ds_map_add(global.weapons[11], "bullet_dd", 1);
ds_map_add(global.weapons[11], "base_accuracy", 2);
ds_map_add(global.weapons[11], "recoil", 0.9);
ds_map_add(global.weapons[11], "max_recoil", 7);
ds_map_add(global.weapons[11], "recoil_mult", 0.75);
ds_map_add(global.weapons[11], "shake_dur", 5);
ds_map_add(global.weapons[11], "max_ammo", 30);
ds_map_add(global.weapons[11], "ammo", 30);
ds_map_add(global.weapons[11], "draw_time", 30);
ds_map_add(global.weapons[11], "reload_time", 120);
ds_map_add(global.weapons[11], "windup_time", 0);
ds_map_add(global.weapons[11], "weight", 0);
ds_map_add(global.weapons[11], "pump", 0);
ds_map_add(global.weapons[11], "pump_time", 0);

//M4
global.weapons[12] = ds_map_create();
ds_map_add(global.weapons[12], "weapon", "M4");
ds_map_add(global.weapons[12], "type", "Assault Rifle");
ds_map_add(global.weapons[12], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[12], "upgrades", 0);
ds_map_add(global.weapons[12], "hands", 2);
ds_map_add(global.weapons[12], "hand_one", [0, 5]);
ds_map_add(global.weapons[12], "hand_two", [17, 3]);
ds_map_add(global.weapons[12], "offset", [-6, 2, 0]);
ds_map_add(global.weapons[12], "min_damage", 26);
ds_map_add(global.weapons[12], "max_damage", 31);
ds_map_add(global.weapons[12], "bullet_speed", 24);
ds_map_add(global.weapons[12], "bullet_speed_var", 1);
ds_map_add(global.weapons[12], "decay", 180);
ds_map_add(global.weapons[12], "reload", 5);
ds_map_add(global.weapons[12], "burst", 1);
ds_map_add(global.weapons[12], "bullets", 1);
ds_map_add(global.weapons[12], "pierce", -1);
ds_map_add(global.weapons[12], "bullet_dd", 1);
ds_map_add(global.weapons[12], "base_accuracy", 2.5);
ds_map_add(global.weapons[12], "recoil", 0.7);
ds_map_add(global.weapons[12], "max_recoil", 7.5);
ds_map_add(global.weapons[12], "recoil_mult", 0.5);
ds_map_add(global.weapons[12], "shake_dur", 5);
ds_map_add(global.weapons[12], "max_ammo", 30);
ds_map_add(global.weapons[12], "ammo", 30);
ds_map_add(global.weapons[12], "draw_time", 30);
ds_map_add(global.weapons[12], "reload_time", 120);
ds_map_add(global.weapons[12], "windup_time", 0);
ds_map_add(global.weapons[12], "weight", 0);
ds_map_add(global.weapons[12], "pump", 0);
ds_map_add(global.weapons[12], "pump_time", 0);

//P90
global.weapons[13] = ds_map_create();
ds_map_add(global.weapons[13], "weapon", "P90");
ds_map_add(global.weapons[13], "type", "Assault Rifle");
ds_map_add(global.weapons[13], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[13], "upgrades", 0);
ds_map_add(global.weapons[13], "hands", 2);
ds_map_add(global.weapons[13], "hand_one", [4, 4]);
ds_map_add(global.weapons[13], "hand_two", [12, 4]);
ds_map_add(global.weapons[13], "offset", [0, 3, 0]);
ds_map_add(global.weapons[13], "min_damage", 22);
ds_map_add(global.weapons[13], "max_damage", 26);
ds_map_add(global.weapons[13], "bullet_speed", 25);
ds_map_add(global.weapons[13], "bullet_speed_var", 1);
ds_map_add(global.weapons[13], "decay", 60);
ds_map_add(global.weapons[13], "reload", 4);
ds_map_add(global.weapons[13], "burst", 1);
ds_map_add(global.weapons[13], "bullets", 1);
ds_map_add(global.weapons[13], "pierce", -1);
ds_map_add(global.weapons[13], "bullet_dd", 0);
ds_map_add(global.weapons[13], "base_accuracy", 2);
ds_map_add(global.weapons[13], "recoil", 0.6);
ds_map_add(global.weapons[13], "max_recoil", 6);
ds_map_add(global.weapons[13], "recoil_mult", 0.75);
ds_map_add(global.weapons[13], "shake_dur", 5);
ds_map_add(global.weapons[13], "max_ammo", 50);
ds_map_add(global.weapons[13], "ammo", 50);
ds_map_add(global.weapons[13], "draw_time", 30);
ds_map_add(global.weapons[13], "reload_time", 150);
ds_map_add(global.weapons[13], "windup_time", 0);
ds_map_add(global.weapons[13], "weight", 0);
ds_map_add(global.weapons[13], "pump", 0);
ds_map_add(global.weapons[13], "pump_time", 0);

/// Shotguns
//Remington 870
global.weapons[21] = ds_map_create();
ds_map_add(global.weapons[21], "weapon", "Remington 870");
ds_map_add(global.weapons[21], "type", "Shotgun");
ds_map_add(global.weapons[21], "atk_type", "Pump Action");
ds_map_add(global.weapons[21], "upgrades", 0);
ds_map_add(global.weapons[21], "hands", 2);
ds_map_add(global.weapons[21], "hand_one", [0, 2]);
ds_map_add(global.weapons[21], "hand_two", [17, 2]);
ds_map_add(global.weapons[21], "offset", [-4, 3, 0]);
ds_map_add(global.weapons[21], "min_damage", 14);
ds_map_add(global.weapons[21], "max_damage", 26);
ds_map_add(global.weapons[21], "bullet_speed", 24);
ds_map_add(global.weapons[21], "bullet_speed_var", 2);
ds_map_add(global.weapons[21], "decay", 15);
ds_map_add(global.weapons[21], "reload", 15);
ds_map_add(global.weapons[21], "burst", 1);
ds_map_add(global.weapons[21], "bullets", 12);
ds_map_add(global.weapons[21], "pierce", 16);
ds_map_add(global.weapons[21], "bullet_dd", 1);
ds_map_add(global.weapons[21], "base_accuracy", 12);
ds_map_add(global.weapons[21], "recoil", 6);
ds_map_add(global.weapons[21], "max_recoil", 21);
ds_map_add(global.weapons[21], "recoil_mult", 0.75);
ds_map_add(global.weapons[21], "shake_dur", 20);
ds_map_add(global.weapons[21], "max_ammo", 7);
ds_map_add(global.weapons[21], "ammo", 7);
ds_map_add(global.weapons[21], "draw_time", 30);
ds_map_add(global.weapons[21], "reload_time", 60);
ds_map_add(global.weapons[21], "windup_time", 0);
ds_map_add(global.weapons[21], "weight", 1);
ds_map_add(global.weapons[21], "pump", 0);
ds_map_add(global.weapons[21], "pump_time", 15);

//Mossberg 500
global.weapons[22] = ds_map_create();
ds_map_add(global.weapons[22], "weapon", "Mossberg 500");
ds_map_add(global.weapons[22], "type", "Shotgun");
ds_map_add(global.weapons[22], "atk_type", "Pump Action");
ds_map_add(global.weapons[22], "upgrades", 0);
ds_map_add(global.weapons[22], "hands", 2);
ds_map_add(global.weapons[22], "hand_one", [0, 3]);
ds_map_add(global.weapons[22], "hand_two", [17, 3]);
ds_map_add(global.weapons[22], "offset", [-4, 3, 0]);
ds_map_add(global.weapons[22], "min_damage", 18);
ds_map_add(global.weapons[22], "max_damage", 26);
ds_map_add(global.weapons[22], "bullet_speed", 23);
ds_map_add(global.weapons[22], "bullet_speed_var", 2);
ds_map_add(global.weapons[22], "decay", 15);
ds_map_add(global.weapons[22], "reload", 30);
ds_map_add(global.weapons[22], "burst", 1);
ds_map_add(global.weapons[22], "bullets", 12);
ds_map_add(global.weapons[22], "pierce", 18);
ds_map_add(global.weapons[22], "bullet_dd", 1);
ds_map_add(global.weapons[22], "base_accuracy", 10);
ds_map_add(global.weapons[22], "recoil", 7.5);
ds_map_add(global.weapons[22], "max_recoil", 17.5);
ds_map_add(global.weapons[22], "recoil_mult", 0.5);
ds_map_add(global.weapons[22], "shake_dur", 22);
ds_map_add(global.weapons[22], "max_ammo", 6);
ds_map_add(global.weapons[22], "ammo", 6);
ds_map_add(global.weapons[22], "draw_time", 30);
ds_map_add(global.weapons[22], "reload_time", 60);
ds_map_add(global.weapons[22], "windup_time", 0);
ds_map_add(global.weapons[22], "weight", 1);
ds_map_add(global.weapons[22], "pump", 0);
ds_map_add(global.weapons[22], "pump_time", 15);

/// Snipers
//Omark Model 44
global.weapons[31] = ds_map_create();
ds_map_add(global.weapons[31], "weapon", "Omark Model 44");
ds_map_add(global.weapons[31], "type", "Sniper Rifle");
ds_map_add(global.weapons[31], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[31], "upgrades", 0);
ds_map_add(global.weapons[31], "hands", 2);
ds_map_add(global.weapons[31], "hand_one", [-1, 4]);
ds_map_add(global.weapons[31], "hand_two", [15, 4]);
ds_map_add(global.weapons[31], "offset", [3, -2, 0]);
ds_map_add(global.weapons[31], "min_damage", 245);
ds_map_add(global.weapons[31], "max_damage", 255);
ds_map_add(global.weapons[31], "bullet_speed", 32);
ds_map_add(global.weapons[31], "bullet_speed_var", 1);
ds_map_add(global.weapons[31], "decay", 240);
ds_map_add(global.weapons[31], "reload", 30);
ds_map_add(global.weapons[31], "burst", 1);
ds_map_add(global.weapons[31], "bullets", 1);
ds_map_add(global.weapons[31], "pierce", 30);
ds_map_add(global.weapons[31], "bullet_dd", 1);
ds_map_add(global.weapons[31], "base_accuracy", 0.5);
ds_map_add(global.weapons[31], "recoil", 4.5);
ds_map_add(global.weapons[31], "max_recoil", 5);
ds_map_add(global.weapons[31], "recoil_mult", 10);
ds_map_add(global.weapons[31], "shake_dur", 20);
ds_map_add(global.weapons[31], "max_ammo", 1);
ds_map_add(global.weapons[31], "ammo", 1);
ds_map_add(global.weapons[31], "draw_time", 30);
ds_map_add(global.weapons[31], "reload_time", 60);
ds_map_add(global.weapons[31], "windup_time", 0);
ds_map_add(global.weapons[31], "weight", 1);
ds_map_add(global.weapons[31], "pump", 0);
ds_map_add(global.weapons[31], "pump_time", 0);

// Tesro
global.weapons[32] = ds_map_create();
ds_map_add(global.weapons[32], "weapon", "Tesro");
ds_map_add(global.weapons[32], "type", "Sniper Rifle");
ds_map_add(global.weapons[32], "atk_type", "Semi-automatic");
ds_map_add(global.weapons[32], "upgrades", 0);
ds_map_add(global.weapons[32], "hands", 2);
ds_map_add(global.weapons[32], "hand_one", [-1, 5]);
ds_map_add(global.weapons[32], "hand_two", [16, 4]);
ds_map_add(global.weapons[32], "offset", [3, -2, 0]);
ds_map_add(global.weapons[32], "min_damage", 150);
ds_map_add(global.weapons[32], "max_damage", 180);
ds_map_add(global.weapons[32], "bullet_speed", 30);
ds_map_add(global.weapons[32], "bullet_speed_var", 1);
ds_map_add(global.weapons[32], "decay", 120);
ds_map_add(global.weapons[32], "reload", 15);
ds_map_add(global.weapons[32], "burst", 1);
ds_map_add(global.weapons[32], "bullets", 1);
ds_map_add(global.weapons[32], "pierce", 40);
ds_map_add(global.weapons[32], "bullet_dd", 1);
ds_map_add(global.weapons[32], "base_accuracy", 0.5);
ds_map_add(global.weapons[32], "recoil", 4);
ds_map_add(global.weapons[32], "max_recoil", 4.5);
ds_map_add(global.weapons[32], "recoil_mult", 5);
ds_map_add(global.weapons[32], "shake_dur", 8);
ds_map_add(global.weapons[32], "max_ammo", 1);
ds_map_add(global.weapons[32], "ammo", 1);
ds_map_add(global.weapons[32], "draw_time", 30);
ds_map_add(global.weapons[32], "reload_time", 45);
ds_map_add(global.weapons[32], "windup_time", 0);
ds_map_add(global.weapons[32], "weight", 1);
ds_map_add(global.weapons[32], "pump", 0);
ds_map_add(global.weapons[32], "pump_time", 0);

/// Special
//Minigun
global.weapons[41] = ds_map_create();
ds_map_add(global.weapons[41], "weapon", "Minigun");
ds_map_add(global.weapons[41], "type", "Minigun");
ds_map_add(global.weapons[41], "atk_type", "Automatic");
ds_map_add(global.weapons[41], "upgrades", 0);
ds_map_add(global.weapons[41], "hands", 2);
ds_map_add(global.weapons[41], "hand_one", [8, -6]);
ds_map_add(global.weapons[41], "hand_two", [-12, -7]);
ds_map_add(global.weapons[41], "offset", [1, 10, 0]);
ds_map_add(global.weapons[41], "min_damage", 6);
ds_map_add(global.weapons[41], "max_damage", 12);
ds_map_add(global.weapons[41], "bullet_speed", 26);
ds_map_add(global.weapons[41], "bullet_speed_var", 4);
ds_map_add(global.weapons[41], "decay", 240);
ds_map_add(global.weapons[41], "reload", 3);
ds_map_add(global.weapons[41], "burst", 1);
ds_map_add(global.weapons[41], "bullets", 2);
ds_map_add(global.weapons[41], "pierce", 5);
ds_map_add(global.weapons[41], "bullet_dd", 1);
ds_map_add(global.weapons[41], "base_accuracy", 2);
ds_map_add(global.weapons[41], "recoil", 0.5);
ds_map_add(global.weapons[41], "max_recoil", 7);
ds_map_add(global.weapons[41], "recoil_mult", 0.25);
ds_map_add(global.weapons[41], "shake_dur", 5);
ds_map_add(global.weapons[41], "max_ammo", 1000);
ds_map_add(global.weapons[41], "ammo", 1000);
ds_map_add(global.weapons[41], "draw_time", 60);
ds_map_add(global.weapons[41], "reload_time", 300);
ds_map_add(global.weapons[41], "windup_time", 45);
ds_map_add(global.weapons[41], "weight", 2);
ds_map_add(global.weapons[41], "pump", 0);
ds_map_add(global.weapons[41], "pump_time", 0);