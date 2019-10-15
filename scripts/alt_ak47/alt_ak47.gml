if mouse_check_button_pressed(mb_right) with obj_player
{
	if mode_ak47 == "semi_auto" mode_ak47 = "auto" else mode_ak47 = "semi_auto";
	atk_type = mode_ak47;
}