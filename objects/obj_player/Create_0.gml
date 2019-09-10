/// @description Set Global Controls
// Draw Variables (Temporary)
global.p_skin_colour = make_colour_hsv(26, 97, 240);
global.p_hair_colour = make_colour_hsv(0, 0, 18);
global.p_shirt_colour = make_colour_hsv(0, 0, 148);
global.p_pants_colour = make_colour_hsv(0, 0, 0);

// Control Variables (Temporary)
global.p_left = ord("A");
global.p_right = ord("D");
global.p_up = ord("W");
global.p_down = ord("S");

// Move Speed (Temporary)
global.p_speed = 5;
move_speed = global.p_speed;

// Declare Variables
h_move = 0;
v_move = 0;

// Camera
camera_pan = 1024
camera_width = 540
camera_height = 360
view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);

// Create Cursor (Temp)
instance_create_layer(x, y, "HUD", obj_cursor);
instance_create_layer(x, y, "player_hand", obj_player_hand);