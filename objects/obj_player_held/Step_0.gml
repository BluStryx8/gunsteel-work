/// @description Go to player
// Set position to player position
x = obj_player.x;
y = obj_player.y;
dir = obj_player.dir;

// if (global.paused) exit;	// Exits if paused

// Two Handed Offset
if (obj_player.hands == 2)
{
	if (dir <= 90 or dir >= 270) x += obj_player.offset[0] * global.p_scale else x -= obj_player.offset[0] * global.p_scale;
	y += obj_player.offset[1] * global.p_scale;
}
// One Handed Offset
else if (obj_player.hands == 1)
{
	x += obj_player.offset[0] * global.p_scale;
	if not (dir <= 90 or dir >= 270) x += obj_player.offset[2] * global.p_scale;
	y += obj_player.offset[1] * global.p_scale;
}

// Second Hand
if (hand == 1)
{
	// Rotation
	if (dir <= 90 or dir >= 270)
	{			
		// Facing Right
		var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
		var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y + obj_player.hand_two[1]);
	}
	else
	{
		// Facing Left
		var _pdir = point_direction(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
		var _pdist = point_distance(x, y, x + obj_player.hand_two[0], y - obj_player.hand_two[1] - 1);
	}
	direction = _pdir + dir;
	speed = _pdist * global.p_scale;
}
// First Hand
else if (hand == 0)
{
	// Rotation
	if (dir <= 90 or dir >= 270)
	{
		// Facing Right
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y + obj_player.hand_one[1]);
	}
	else
	{
		// Facing Left
		var _pdir = point_direction(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
		var _pdist = point_distance(x, y, x + obj_player.hand_one[0], y - obj_player.hand_one[1] - 1);
	}
	direction = _pdir + dir;
	speed = _pdist * global.p_scale;
}
else
{
	direction = 0;
	speed = 0;
}