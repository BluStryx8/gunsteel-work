with obj_player
{
	// Check Firing
	if mouse_check_button(mb_left) == true and fire_cooldown == 0
	{
		fire = 1;
		fire_cooldown = reload;
	}
	else if fire_cooldown > 0 fire_cooldown -= 1;
	if fire_cooldown <= 0
	{
		fire_cooldown = 0;
		if accuracy > base_accuracy accuracy -= 0.1;
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
	if shake > 0
	{
		shake -= 1;
		shake_x = irandom_range(-shake, shake);
		shake_y = irandom_range(-shake, shake);
	}
	else
	{
		shake_x = 0
		shake_y = 0
	}
}