/// @description Checks if key is pressed then pauses everything
if keyboard_check_pressed(vk_escape) {
	if pause = false {
		pause = true
		instance_deactivate_all(true);
	}
	else {
		pause = false
		instance_activate_all();
	}
}