/// @description Decay
decay -= 1;
if decay < 0 image_alpha -= 0.1;
if image_alpha < 0 instance_destroy();

var _destroy_x = bullet_collision("x", hspeed);
var _destroy_y = bullet_collision("y", vspeed);

if _destroy_x == 1 or _destroy_y == 1
{
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
	instance_destroy();
}