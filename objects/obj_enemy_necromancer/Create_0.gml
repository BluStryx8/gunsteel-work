/// @description Declaration
state = 0;			// Current action of necroamncer
dont_run = false;	// Single use check when escaping
time = 0;			// Time after escaping before attacking again
anim = 0;			// Animation
anim_speed = 10;	// Frames before animating
hurt_flash = 0;		// Flashes when damaged
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

spd = 0;	// Remember speed
hspd = 0;	// Used in collision
vspd = 0;	// Used in collision

attack_1_rate_min = 150;	// Homing Bullets min tba
attack_1_rate_max = 180;	// Homing Bullets max tba
attack_2_rate_min = 90;		// Spread Bullets min tba
attack_2_rate_max = 120;	// Spread Bullets max tba
attack_3_rate_min = 30;		// Trail Bullets min tba
attack_3_rate_max = 45;		// Trail Bullets max tba
attack_timer_1 = irandom_range(attack_1_rate_min, attack_1_rate_max);
attack_timer_2 = irandom_range(attack_2_rate_min, attack_2_rate_max);
attack_timer_3 = 0;

close_distance = 128;	// Distance before escaping
far_distance = 320;		// Distance to stand out of range at

min_move = 60;
max_move = 120;
min_move_cd = 30;
max_move_cd = 60;
move_timer = -irandom_range(min_move_cd, max_move_cd);

scale = 1;
hp = 100;