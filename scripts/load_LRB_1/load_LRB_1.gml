/// @desc Loads an LRB_1 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (biome)
		{
			case "basic":
			case "slime":
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(biome, 5, 9);
				// Spawns outliner crates
				spawn_tile_rect(6, 52, 7, 7, 8, 2, 3, obj_crate);
				break;
			case "elite":
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(biome, 5, 7);
				break;
			case "crate":
				// Draws some boxes on top and in mid
				spawn_tile_rect(6, 52, 7, 7, 4, 2, 1, obj_crate);
				spawn_tile_rect(27, 31, 24, 14, 2, 10, 1, obj_crate);	
				break;
			}
			break;
	case "start":
		// Sets Spawn
		set_spawn(29, 10);
		break;
}