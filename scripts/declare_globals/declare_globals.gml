///@desc Declare all Globals

// Player Globals, defined with p_

// Draw Variables (Temporary)
global.p_skin_colour = make_colour_hsv(26, 97, 240);
global.p_hair_colour = make_colour_hsv(0, 0, 25);
global.p_shirt_colour = make_colour_hsv(0, 0, 148);
global.p_pants_colour = make_colour_hsv(0, 0, 50);
global.p_dash_colour = make_colour_hsv(0, 0, 255);

global.p_inv_1 = ord("1");
global.p_inv_2 = ord("2");
global.p_inv_3 = ord("3");
global.p_inv_4 = ord("4");
global.p_inv_5 = ord("5");

global.p_inv_open = ord("I");

// Shake (Temporary)
global.settings_shake = 0.5;

// Character Restriction
global.paused = false;
global.holstered = false;
global.truepause = false;

// Weapons
declare_weapons();