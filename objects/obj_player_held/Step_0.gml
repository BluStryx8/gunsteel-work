/// @description Go to player
x = obj_player.x;
y = obj_player.y;

// Two Hand Weapon
if obj_player.hands == 2 and hand == 1
{
	{
		// Offset
		var _dir = point_direction(x, y, mouse_x, mouse_y)
		if _dir <= 90 or _dir >= 270 x += obj_player.offset_x else x -= obj_player.offset_x;
		y += obj_player.offset_y;
		// Rotation
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
}
// One Hand Weapon
else if obj_player.hands >= 1 and hand == 0
{
	// Offset
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	x += obj_player.offset_x
	if not (_dir <= 90 or _dir >= 270) x -= 7;
	y += obj_player.offset_y;
	// Rotation
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