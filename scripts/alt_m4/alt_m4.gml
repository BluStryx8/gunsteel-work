if mouse_check_button_pressed(mb_right) with obj_player
{
	if mode_m4 == "semi_auto" mode_m4 = "auto" else mode_m4 = "semi_auto";
	atk_type = mode_m4;
}