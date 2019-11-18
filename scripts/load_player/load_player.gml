with (obj_player)
{
	ini_open("player.ini");
	score			  = ini_read_real("dungeon", "score", 0);
	global.level	  = ini_read_real("dungeon", "level", 1);
	global.difficulty = 98 + 2 * global.level;
	global.seed		  = ini_read_real("dungeon", "seed", -1);

	// Player
	global.class		 = ini_read_string("player","class", obj_creator_manager.p_class);
	global.starter		 = ini_read_string("player", "starter", obj_creator_manager.p_weapon);

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

	p_health  = ini_read_real("player", "health", p_max_health);
	p_defense = p_max_defense;
	if (global.class == "Scout")
		base_speed = 6;
	else base_speed = 5;		// Base speed of player
	if (global.class == "Scout")
		dodge_cooldown = 10;
	else dodge_cooldown = 20;
	ini_close();
}