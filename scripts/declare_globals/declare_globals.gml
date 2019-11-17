///@desc Declare all Globals

// Player Globals, defined with p_

// Draw Variables (Temporary)
global.p_skin_colour = make_colour_hsv(26, 97, 240);
global.p_hair_colour = make_colour_hsv(0, 0, 25);
global.p_shirt_colour = make_colour_hsv(0, 0, 148);
global.p_pants_colour = make_colour_hsv(0, 0, 50);
global.p_dash_colour = make_colour_hsv(0, 0, 255);
global.p_scale = 1;		// Size of the player

// Shake (Temporary)
global.settings_shake = 0.5;

// Difficulty Scaling (Temporary)
global.level	  = 0;
global.difficulty = 100;
global.seed		  = -1;

// Character Restriction
global.paused    = false;
global.holstered = false;
global.truepause = false;

// Weapons
global.class		= "Scout"; // Soldier, Scout, Tinkerer
global.starter		= item_type.pistol_1911;
global.ammo_rifle   = 300;
global.ammo_sniper  = 30;
global.ammo_shotgun = 180;
global.ammo_minigun = 1000;

declare_weapons();