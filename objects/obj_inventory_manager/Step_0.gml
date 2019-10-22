/// @description Check for key input
if (global.paused) exit;

// Active Item
if global.holstered = false
{
	if keyboard_check(global.p_inv_1) active_item = 0;
	if keyboard_check(global.p_inv_2) active_item = 1;
	if keyboard_check(global.p_inv_3) active_item = 2;
	if keyboard_check(global.p_inv_4) active_item = 3;
	if keyboard_check(global.p_inv_5) active_item = 4;
}
else
{
	active_item = -1;
}

if active_item != -1
{
	global.p_active = inventory[active_item];
}
else global.p_active = item_type.none;

obj_player.sprite = inv_get_sprite(global.p_active);

//Remove starting on inv slot -1 when entering new room
if global.transitioning = true{
	active_item_before = active_item;}
	
if global.just_entered_unholstered = true{
	active_item = active_item_before}
	


// Check for Change
if active_item != change_check
{
	change_check = active_item;
	obj_player.fire = 0;
	obj_player.focus = 0;
	inv_use_script(global.p_active, "change");
}

// Click
if mouse_check_button(mb_left) inv_use_script(global.p_active, "left");
if mouse_check_button(mb_right) inv_use_script(global.p_active, "right");

// Reload
if keyboard_check_pressed(global.p_reload)
{
	with obj_player ammo = max_ammo;
}