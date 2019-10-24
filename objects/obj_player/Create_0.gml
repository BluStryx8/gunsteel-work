/// @description Set Variables
// Global Controls
declare_globals();

// Movement
global.moveable = true;	// If player can move or not
move_speed = 5;			// Speed of player
h_move = 0;				// Horizontal speed
v_move = 0;				// Vertical speed
sneak = false;			// Sneaking
dodge = 0;				// Dodge distance
h_dodge = 0;			// Horizontal speed of player when init dodge
v_dodge = 0;			// Vertical speed of player when init dodge

// Records previous 3 positions
xprev[2] = 0;
yprev[2] = 0;

// Animation
still = 1;				// Whether the player is still, also affects positions of some parts
anim = 0;				// How far a player has moved
anim_frame = 0;			// Transfers distance a player has moved into subframes
frame = 0;				// Transfers subframes into frames depending on room speed
anim_x = 0;				// x offset for animating
anim_y = 0;				// y offset for animating

// Weapon Constants
prev_weap = 0;			// Last selected weapon
ammo = 0;				// Current weapon ammo
weapon = "";			// Current weapon selected
set_empty();			// Declares all weapon variables

// Weapon Vars
fire = 0;					// How many shots to fire
fire_cooldown = 0;			// Frames before shooting again
shake = 0;					// Frames of screenshake
shake_x = 0;				// x offset for screenshake
shake_y = 0;				// y offset for screenshake
accuracy = base_accuracy;	// Inaccuracy of weapon
dir = 0;					// Direction facing

// Create Others (Temp)
// Cursor
instance_create_layer(x, y, "HUD", obj_cursor);
centre = instance_create_layer(x, y, "HUD", obj_cursor_bracket);		// Centre firing cursor
centre.image_index = 0;
left = instance_create_layer(x, y, "HUD", obj_cursor_bracket);			// Left firing cursor
left.image_index = 1;
right = instance_create_layer(x, y, "HUD", obj_cursor_bracket);			// Right firing cursor
right.image_index = 2;

// Hands
lhand = instance_create_layer(x, y, "player_hand", obj_player_held);	// Left hand
lhand.hand = 0;
rhand = instance_create_layer(x, y, "player_hand", obj_player_held);	// Right hand
rhand.hand = 1;

// Item Management
instance_create_layer(x, y, "player", obj_player_collision);			// Collision for item pickup and enemies
instance_create_layer(x, y, "HUD", obj_inventory_manager);				// Manages inventory

global.player_setx = 270;	// Starting x position
global.player_sety = 170;	// Starting y position