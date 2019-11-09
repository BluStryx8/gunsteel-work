/// @description Check Collision to prime
if master_id.active exit;
obj_player.mask_index = spr_player_collision;
switch (prime_dir)
{
	// Check priming direction
	case "up":		// i.e. Player enters from top
		var _bbox_side = obj_player.bbox_top;
		var _bbox_other = obj_player.bbox_bottom + 5;
		break;
	case "down":	// i.e. Player enters from bottom
		var _bbox_side = obj_player.bbox_bottom;
		var _bbox_other = obj_player.bbox_top - 5;
		break;
}
// Check bbox to prime it
if (position_meeting(obj_player.bbox_left, _bbox_other, id) ||
	position_meeting(obj_player.bbox_right, _bbox_other, id))
		prime = false;			// If the opposite side is touching
else if (position_meeting(obj_player.bbox_left, _bbox_side, id) ||
	position_meeting(obj_player.bbox_right, _bbox_side, id))
		prime = true;			// If correct side is touching
else if (prime)
	master_id.active = true;	// If leaving correct side
obj_player.mask_index = obj_player.sprite_index;