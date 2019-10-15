if mouse_check_button_pressed(mb_right) with obj_player
{
	if mode_glock == "semi_auto" mode_glock = "auto" else mode_glock = "semi_auto";
	atk_type = mode_glock;
}