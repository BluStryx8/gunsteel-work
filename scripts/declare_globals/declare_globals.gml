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

// Difficulty Scaling
ini_open("player.ini");
score			  = ini_read_real("dungeon", "score", 0);
global.level	  = ini_read_real("dungeon", "level", 0);
global.difficulty = 98 + 2 * global.level;
global.seed		  = ini_read_real("dungeon", "seed", -1);

// Player
global.class		 = ini_read_string("player","class", "Scout");
global.starter		 = ini_read_string("player", "starter", item_type.pistol_1911);

// Hit Points
switch (global.class)
{
	case "Soldier":
		p_max_health  = 5;	// Max HP
		p_max_defense = 3;	// Max Defense
		break;
	case "Scout":
		p_max_health  = 3;	// Max HP
		p_max_defense = 2;	// Max Defense
		break;
	case "Tinkerer":
		p_max_health  = 2;	// Max HP
		p_max_defense = 4;	// Max Defense
		break;
}

obj_player.p_health  = ini_read_real("player", "health", obj_player.p_max_health);
obj_player.p_defense = ini_read_real("player", "health",obj_player.p_max_defense);

ini_close();
// Weapons
declare_weapons();
