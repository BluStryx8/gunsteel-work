/// @description Go to player
if (global.paused) exit;
if global.in_inv = true exit;

x = obj_player.x;
y = obj_player.y;
dir = point_direction(x, y, mouse_x, mouse_y);

// Two Handed Offset
if obj_player.hands == 2
{
	if dir <= 90 or dir >= 270 x += obj_player.offset[0] else x -= obj_player.offset[0];
	y += obj_player.offset[1];
}
// One Handed Offset
else if obj_player.hands == 1
{
	x += obj_player.offset[0];
	if not (dir <= 90 or dir >= 270) x += obj_player.offset[2];
	y += obj_player.offset[1];
}

// Second Hand
if hand == 1
{
	{
		// Rotation
		if dir <= 90 or dir >= 270
		{			
			var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
			var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
		}
		else
		{
			var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
			var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
		}
		direction = _pdir + dir;
		speed = _pdist;
	}
}
// First Hand
else if hand == 0
{
	// Rotation
	if dir <= 90 or dir >= 270
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
	}
	else
	{
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
	}
	direction = _pdir + dir;
	speed = _pdist;
}
else
{
	direction = 0;
	speed = 0;
}