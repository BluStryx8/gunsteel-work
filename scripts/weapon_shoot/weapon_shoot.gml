with obj_player
{
	// Check Firing
	if (atk_type == "auto" and mouse_check_button(mb_left) and fire_cooldown == 0)
		or (atk_type == "semi_auto" and mouse_check_button_pressed(mb_left) and fire_cooldown == 0)
	{
		fire = 1;
		fire_cooldown = reload;
	}	
	// Calculate Fire
	if fire = 1
	{
		if accuracy < base_accuracy accuracy = base_accuracy
		burst_count = 0;
		if burst != 0 do
		{
			instance_create_layer(x, y, "bullets", obj_player_bullet);
			burst_count += 1;
		}
		until burst_count >= burst;
		accuracy += recoil
		if accuracy > max_recoil accuracy = max_recoil
		shake = shake_dur;
	}
}