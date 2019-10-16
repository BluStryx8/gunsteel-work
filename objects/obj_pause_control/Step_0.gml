/// @description Checks if key is pressed then pauses everything
if keyboard_check_pressed(vk_escape) {
	if pause = false{
		sprite = sprite_create_from_surface(application_surface,0,0,view_get_wport(0),view_get_hport(0), false,false,0,0)
		pause = true
		instance_deactivate_all(true)
		
	}
	else {
		pause = false
		instance_activate_all();
	}
}

