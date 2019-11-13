/// @description Set Variables
// Global Controls
declare_globals();

// Movement
global.moveable = true;	// If player can move or not
base_speed = 5;			// Base speed of player
move_speed = base_speed;// Speed of player
h_move = 0;				// Horizontal speed
v_move = 0;				// Vertical speed
sneak = false;			// Sneaking
dodge = 0;				// Dodge distance
h_dodge = 0;			// Horizontal speed of player when init dodge
v_dodge = 0;			// Vertical speed of player when init dodge
dodge_cooldown = 15;	// Frames before dodge can be used again
immune = 0;				// If taken damage recently

// Records previous 3 positions
xprev[2] = 0;
yprev[2] = 0;

// Animation
still = 1;					// Whether the player is still, also affects positions of some parts
anim = 0;					// How far a player has moved
anim_frame = 0;				// Transfers distance a player has moved into subframes
frame = 0;					// Transfers subframes into frames depending on room speed
frametime = room_speed / 4	// Determines animating frames per second
anim_x = 0;					// x offset for animating
anim_y = 0;					// y offset for animating

// Weapon Constants
prev_weap = 0;			// Last selected weapon
ammo = 0;				// Current weapon ammo
pump = 0;				// (For pump-action) Checks if pump needed
weapon = "";			// Current weapon selected
firing = false;			// Detects if player is firing
wind = 0;				// (For windup weapons) adds to wind until it matches windup before firing
set_empty();			// Declares all weapon variables

// Weapon Vars
fire = 0;					// How many shots to fire
fire_cooldown = 0;			// Frames before shooting again
shake = 0;					// Frames of screenshake
shake_x = 0;				// x offset for screenshake
shake_y = 0;				// y offset for screenshake
accuracy = base_accuracy;	// Inaccuracy of weapon
dir = 0;					// Direction facing
reloading = 0;				// Whether the player is reloading or not


starting = true;		// Determines whether player is entering from main menu

// Create Others (Temp)
// Cursor
window_set_cursor(cr_none);
centre = instance_create_layer(x, y, "HUD", obj_cursor_bracket);		// Centre firing cursor
centre.image_index = 0;
centre.rotate = 0;
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
instance_create_layer(x, y, "HUD", obj_inventory_manager);				// Manages inventory