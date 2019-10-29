/// @description Declare Variables
dir = "left";
anim = 0;
spd = 0;
bounce = 0;
hurt_flash = 0;

// Slime Specific Stats
hp				= 50;
color			= make_color_hsv(5, 255, 255);
scale			= 0.75;
idle_min_time	= 15;
idle_max_time	= 45;
jump_prep_time	= 3;
jump_min_time	= 15;
jump_max_time	= 30;
jump_min_speed	= 4;
jump_max_speed	= 5;
jump_height_div	= 3;
anim_speed		= 6;

action = "idle";
action_timer = idle_max_time;