/// @desc Fire
with (obj_player)
{
	// Check Firing
	if ((atk_type == "auto" and mouse_check_button(mb_left) and fire_cooldown == 0 and fire == 0) or
		(atk_type == "semi_auto" and mouse_check_button_pressed(mb_left) and fire_cooldown <= 4 and fire <= 1))
			fire += burst;
}