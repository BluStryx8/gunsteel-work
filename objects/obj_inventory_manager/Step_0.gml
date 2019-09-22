/// @description Check for key input

// Active Item
if keyboard_check(ord("1")) active_item = 0;
if keyboard_check(ord("2")) active_item = 1;
if keyboard_check(ord("3")) active_item = 2;
if keyboard_check(ord("4")) active_item = 3;
if keyboard_check(ord("5")) active_item = 4;

global.p_active = inventory[active_item]

obj_player_held.sprite = inv_get_sprite(global.p_active);

// Check for Change
if active_item != change_check
{
	change_check = active_item
	inv_use_script(global.p_active, "change")
}

// Click
if mouse_check_button(mb_left) inv_use_script(global.p_active, "left");
if mouse_check_button(mb_right) inv_use_script(global.p_active, "right");