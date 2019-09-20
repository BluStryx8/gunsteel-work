/// @description Set Global Controls
declare_globals();

move_speed = global.p_speed;

// Declare Variables
h_move = 0;
v_move = 0;

// Animation
anim = 0;
anim_frame = 0;
still = 0;
frame = 0;
anim_x = 0;
anim_y = 0;

// Weapon Constants
weapon = "none";
damage = 0;
bullet_speed = 0;
bullet_speed_var = 0;
decay = 0;
reload = 0;
burst = 0;
base_accuracy = 0;
recoil = 0;
max_recoil = 0;
shake_dur = 0;

// Weapon Vars
fire = 0;
fire_cooldown = 0;
burst_count = 0;
shake = 0;
shake_x = 0;
shake_y = 0;
accuracy = base_accuracy;

// Camera
camera_pan = 1024
camera_width = 540
camera_height = 360
view_camera[0] = camera_create_view(0, 0, camera_width, camera_height);

// Create Others (Temp)
instance_create_layer(x, y, "HUD", obj_cursor);
instance_create_layer(x, y, "player_hand", obj_player_held);
instance_create_layer(x, y, "player", obj_player_collision);
instance_create_layer(x, y, "HUD", obj_inventory_manager);