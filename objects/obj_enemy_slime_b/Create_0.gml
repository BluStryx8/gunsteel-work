/// @description Declare Variables
dir = "left";
anim = 0;
spd = 0;
bounce = 0;
hurt_flash = 0;

// Slime Specific Stats
hp				= 250;
color			= make_color_hsv(145, 255, 255);
scale			= 1.25;
idle_min_time	= 45;
idle_max_time	= 120;
jump_prep_time	= 7;
jump_min_time	= 55;
jump_max_time	= 75;
jump_min_speed	= 2;
jump_max_speed	= 2;
jump_height_div	= 8;
anim_speed		= 12;

action = "idle";
action_timer = idle_max_time;