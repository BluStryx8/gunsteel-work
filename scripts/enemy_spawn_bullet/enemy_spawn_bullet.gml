/// @desc Spawns Bullets
/// @param direction Direction of bullet
/// @param speed Speed of bullet
/// @param decay Decay of bullet
/// @param min_size Minimum size of bullet
/// @param max_size Maximum size of bullet

var _b_dir		= argument0;
var _b_speed	= argument1;
var _b_decay	= argument2;
var _b_min_size	= argument3;
var _b_max_size	= argument4;

var _bullet = instance_create_layer(x, y, "enemy_bullets", obj_enemy_bullet_r);
// Important
_bullet.direction	= _b_dir;
_bullet.image_angle	= _b_dir;
_bullet.spd			= _b_speed;
_bullet.decay		= _b_decay;
// Scale
var _scale = irandom_range(_b_min_size * 100, _b_max_size * 100) / 100;
_bullet.image_xscale = _scale;
_bullet.image_yscale = _scale;
// Constants
_bullet.damage		= round(_scale * 10);
_bullet.pierce		= -1;
_bullet.last_hit	= noone;