/// @description Check Collision to prime
if master_id.active exit;
obj_player.mask_index = spr_player_collision;
switch (prime_dir)
{
	// Check priming direction
	case "left":	// i.e. Player enters from left
		var _bbox_side = obj_player.bbox_left;
		var _bbox_other = obj_player.bbox_right;
		break;
	case "right":	// i.e. Player enters from right
		var _bbox_side = obj_player.bbox_right;
		var _bbox_other = obj_player.bbox_left;
		break;
}
// Check bbox to prime it
if (position_meeting(_bbox_other, obj_player.bbox_top, id) ||
	position_meeting(_bbox_other, obj_player.bbox_bottom, id))
		prime = false;			// If the opposite side is touching
else if (position_meeting(_bbox_side, obj_player.bbox_top, id) ||
	position_meeting(_bbox_side, obj_player.bbox_bottom, id))
		prime = true;			// If the correct side is touching
else if (prime)
	master_id.active = true;	// If leaving correct side
obj_player.mask_index = obj_player.sprite_index;