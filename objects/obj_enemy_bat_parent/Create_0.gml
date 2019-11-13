/// @description Declareation
state = 0;			// Current action of bat
dont_run = false;	// Single use check when escaping
time = 0;			// Time after escaping before attacking again
anim = 0;			// Animation
hurt_flash = 0;		// Flashes when damaged

spd = 0;	// Remember speed
hspd = 0;	// Used in collision
vspd = 0;	// Used in collision
speed = 0;

image_xscale = scale * 2;
image_yscale = scale * 2;

// Difficulty Scaling
hp = floor(hp * (global.difficulty / 100));
max_speed = min(floor(max_speed * 1.5), floor(max_speed * ((global.difficulty + 300) / 400)));
min_escape_time = max(floor(min_escape_time / 1.5), ceil(min_escape_time / ((global.difficulty + 300) / 400)));
max_escape_time = max(floor(max_escape_time / 1.5), ceil(max_escape_time / ((global.difficulty + 300) / 400)));
detect_distance = floor(min(detect_distance * 1.5, detect_distance * ((global.difficulty + 300) / 400)));
anim_speed = max(anim_speed - 2, anim_speed + 1 - floor(global.difficulty / 100));