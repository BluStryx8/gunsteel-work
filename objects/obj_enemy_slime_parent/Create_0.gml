/// @description Declare Variables
hspd = 0;
vspd = 0;
anim = 0;
spd = 0;
bounce = 0;
hurt_flash = 1;
aggro = false;
action = "idle";
action_timer = idle_max_time;
image_xscale = scale;
image_yscale = scale;

// Random Direction
direction = irandom_range(0, 359);
if (direction <= 45 or direction > 315)
	dir = "right";
else if (direction <= 135 and direction > 45)
	dir = "up";
else if (direction <= 225 and direction > 135)
	dir = "left";
else if (direction <= 315 and direction > 225)
	dir = "down";


// Difficulty Scaling
hp = floor(hp * (global.difficulty / 100));
max_hp = hp;
idle_min_time = max(0, ceil(idle_min_time / (global.difficulty / 100)));
idle_max_time = max(0, ceil(idle_max_time / (global.difficulty / 100)));
jump_min_speed = floor(min(jump_min_speed * 1.5, jump_min_speed * ((global.difficulty + 300) / 400)));
jump_max_speed = floor(min(jump_max_speed * 1.5, jump_max_speed * ((global.difficulty + 300) / 400)));
detect_distance = floor(min(detect_distance * 1.5, detect_distance * ((global.difficulty + 300) / 400)));
undetect_distance = floor(min(undetect_distance * 1.5, undetect_distance * ((global.difficulty + 300) / 400)));
anim_speed = max(anim_speed - 2, anim_speed + 1 - floor(global.difficulty / 100));