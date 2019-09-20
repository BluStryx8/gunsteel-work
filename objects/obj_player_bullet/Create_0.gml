/// @description Shoot
decay = room_speed * obj_player.decay;
speed = obj_player.bullet_speed + irandom_range(-obj_player.bullet_speed_var, obj_player.bullet_speed_var);
damage = obj_player.damage;

// Accuracy
var acc = obj_player.accuracy
direction = point_direction(x, y, mouse_x, mouse_y) + irandom_range(-acc, acc);
image_angle = direction;