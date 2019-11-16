if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
{
	with (obj_player)
	{
		var _heal = 3;
		if (p_health + _heal < p_max_health)
			p_health += _heal;
		else p_health = p_max_health;
		death_check();
	}
	inv_removeitem(item_type.potion);
}