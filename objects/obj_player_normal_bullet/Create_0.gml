/// @description Shoot
// Declare Variables
draw_delay = obj_player.bullet_dd;		// Delays drawing so the bullet is positioned properly
decay = obj_player.decay;				// Sets time before bullet eventually fades and deletes self

speed = obj_player.bullet_speed + irandom_range(-obj_player.bullet_speed_var, obj_player.bullet_speed_var);
spd = speed;							// Saves speed for later

damage = floor(irandom_range(obj_player.min_damage, obj_player.max_damage) * (obj_player.upgrades + 20) / 20);
damage -= round((obj_player.accuracy - obj_player.base_accuracy) * obj_player.recoil_mult);
// Decreases damage by the weapon's inaccuracy

// Piercing
pierce = obj_player.pierce;
last_hit = noone;

// Accuracy
var _acc = obj_player.accuracy;
direction = obj_player.dir + irandom_range(-_acc, _acc);
image_angle = direction;

// Offset
if (obj_player.hands == 2)
{
	var _dir = obj_player.dir;
	if (_dir <= 90 or _dir >= 270) x += obj_player.offset[0] else x -= obj_player.offset[0];
	y += obj_player.offset[1];
}
else if (obj_player.hands == 1)
{
	var _dir = obj_player.dir;
	x += obj_player.offset[0];
	if not (_dir <= 90 or _dir >= 270) x += obj_player.offset[2];
	y += obj_player.offset[1];
}