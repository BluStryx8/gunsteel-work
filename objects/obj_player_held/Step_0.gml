/// @description Go to player
x = obj_player.x;
y = obj_player.y;

sprite = spr_gui_empty;

if obj_player.hands == 2
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	if _dir <= 90 or _dir >= 270 x = x - 7 + obj_player.hand_offset else x = x + 7 - obj_player.hand_offset;
	y += 7;

	if _dir <= 90 or _dir >= 270
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
		var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
	}
	else
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
		var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
	}
	direction = _pdir + point_direction(x, y, mouse_x, mouse_y);
	speed = _pdist;
}
else
{
	direction = 0;
	speed = 0;
}