/// @description Declaration
state = 0;			// Current action of necroamncer
dont_run = false;	// Single use check when escaping
time = 0;			// Time after escaping before attacking again
anim = 0;			// Animation
anim_speed = 10;	// Frames before animating
hurt_flash = 0;		// Flashes when damaged
// Random Direction
direction = irandom_range(0, 359);
if (direction <= 90 or direction > 270)
	dir = "right";
else if (direction <= 270 and direction > 90)
	dir = "left";


spd = 0;	// Remember speed
hspd = 0;	// Used in collision
vspd = 0;	// Used in collision

var _rate = 150;
attack_1_rate_min = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Homing Bullets min tba
var _rate = 180;
attack_1_rate_max = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Homing Bullets max tba
var _rate = 90;
attack_2_rate_min = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Spread Bullets min tba
var _rate = 120;
attack_2_rate_max = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Spread Bullets max tba
var _rate = 30;
attack_3_rate_min = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Trail Bullets min tba
var _rate = 45;
attack_3_rate_max = max(floor(_rate / 1.5), ceil(_rate / ((global.difficulty + 300) / 400)));
							// Trail Bullets max tba

attack_timer_1 = irandom_range(attack_1_rate_min, attack_1_rate_max);
attack_timer_2 = irandom_range(attack_2_rate_min, attack_2_rate_max);
attack_timer_3 = 0;

close_distance = 96;	// Distance before escaping
far_distance = 320;		// Distance to stand out of range at

min_move = 60;
max_move = 120;
min_move_cd = 45;
max_move_cd = 60;
move_timer = -irandom_range(min_move_cd, max_move_cd);

color = c_white;
scale = 1;
hp = floor(100 * (global.difficulty / 100));
max_hp = hp;