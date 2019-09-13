/// @description Set Global Controls
declare_globals();

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