/// @description Cursor
draw_self();
x = obj_player.x;
y = obj_player.y;
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