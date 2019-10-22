/// @description Shoot
draw_delay = obj_player.bullet_dd;
decay = room_speed * obj_player.decay;
speed = obj_player.bullet_speed + irandom_range(-obj_player.bullet_speed_var, obj_player.bullet_speed_var);
spd = speed;
damage = irandom_range(obj_player.min_damage, obj_player.max_damage);
damage -= round((obj_player.accuracy - obj_player.base_accuracy) * obj_player.recoil_mult);

// Accuracy
var _acc = obj_player.accuracy;
direction = point_direction(x, y, mouse_x, mouse_y) + irandom_range(-_acc, _acc);
image_angle = direction;

// Offset
if obj_player.hands == 2
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	if _dir <= 90 or _dir >= 270 x += obj_player.offset[0] else x -= obj_player.offset[0];
	y += obj_player.offset[1];
}
else if obj_player.hands == 1
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	x += obj_player.offset[0];
	if not (_dir <= 90 or _dir >= 270) x += obj_player.offset[2];
	y += obj_player.offset[1];
}