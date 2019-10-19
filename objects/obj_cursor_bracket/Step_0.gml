/// @description Cursor
x = obj_player.x;
y = obj_player.y;

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

// Rotation
if image_index == 0
{
	direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) + obj_player.accuracy;
}
else if image_index == 1
{
	direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - obj_player.accuracy;
}
image_angle = direction;
speed = point_distance(x, y, mouse_x, mouse_y);