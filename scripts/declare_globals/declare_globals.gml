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

// Character Restriction
global.death	 = false;
global.paused    = false;
global.holstered = false;
global.truepause = false;
global.invupdate = false;

global.class	 = "Soldier";
global.starter	 = item_type.pistol_1911;
p_max_health	 = 0;
p_max_defense	 = 0;
p_health		 = 0;
p_defense		 = 0;

// Weapons
declare_weapons();
