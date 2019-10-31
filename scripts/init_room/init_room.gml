/// @desc Initialise the room
randomise();
show_debug_message("Seed: " + string(random_get_seed()));

grid_size = 16; // Size of blocks & objects in game

x_sections = 4;  // Rooms along x axis
y_sections = 4;  // Rooms along y axis
sections   = []; // Declare room array

section_tiles_x = 60; // Number of x tiles in section
section_tiles_y = 40; // Number of y tiles in section

section_width  = section_tiles_x * grid_size; // Width in pixels of a section
section_height = section_tiles_y * grid_size; // Height in pixels of a section

room_width  = section_width * x_sections;
room_height = section_height * y_sections;

for (var _y = 0; _y < y_sections; _y++)
	for (var _x = 0; _x < x_sections; _x++)
		sections [_x, _y] = 0;

// Create Main Path
create_main_path();
create_sub_path();

// Init Tilemaps
var _room_tile_width  = section_tiles_x * x_sections;
var _room_tile_height = section_tiles_y * y_sections;

room_tile = layer_tilemap_create("room_tile", 0, 0, tile_brick, _room_tile_width, _room_tile_height);
global.tilemap = layer_tilemap_create("collision", 0, 0, tile_collision, _room_tile_width, _room_tile_height);
global.bulletmap = layer_tilemap_create("bullet_collision", 0, 0, tile_collision, _room_tile_width, _room_tile_height);

// Debug
for (_y = 0; _y < y_sections; _y++)
	show_debug_message(string(sections[0, _y]) + string(sections[1, _y]) + string(sections[2, _y]) + string(sections[3, _y]))

// Initialise sections (loading sections as strings to memory)
init_all_sections();