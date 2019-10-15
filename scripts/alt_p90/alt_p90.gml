if mouse_check_button_pressed(mb_right) with obj_player
{
	if mode_p90 == "semi_auto" mode_p90 = "auto" else mode_p90 = "semi_auto";
	atk_type = mode_p90;
}