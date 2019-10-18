/// @description Go to player
x = obj_player.x;
y = obj_player.y;

if obj_player.hands == 2
{
	{
		var _dir = point_direction(x, y, mouse_x, mouse_y)
		if _dir <= 90 or _dir >= 270 x = x + obj_player.offset_x else x = x + obj_player.offset_y;
		y += 7;
		
		if hand == 0
		{
			if _dir <= 90 or _dir >= 270
			{			
				var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
				var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
			}
			else
			{
				var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
				var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
			}
		}
		else if hand == 1
		{
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
		}
		direction = _pdir + point_direction(x, y, mouse_x, mouse_y);
		speed = _pdist;
	}
}
else if obj_player.hands >= 1 and hand == 0
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	if _dir <= 90 or _dir >= 270 x = x - obj_player.offset_x else x = x + obj_player.offset_y;
	y += 7;

	if _dir <= 90 or _dir >= 270
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
	}
	else
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
	}
	direction = _pdir + point_direction(x, y, mouse_x, mouse_y);
	speed = _pdist;
}
else
{
	direction = 0;
	speed = 0;
}