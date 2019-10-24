/// @description Check for key input
if (global.paused) exit;

// Active Item
if keyboard_check(global.p_inv_1) active_item = 0;
if keyboard_check(global.p_inv_2) active_item = 1;
if keyboard_check(global.p_inv_3) active_item = 2;
if keyboard_check(global.p_inv_4) active_item = 3;
if keyboard_check(global.p_inv_5) active_item = 4;

if mouse_wheel_up()
{
	if active_item <= 0 active_item = 4 else active_item -= 1;
}
if mouse_wheel_down()
{
	if active_item >= 4 active_item = 0 else active_item += 1;
}

if !global.holstered
{
	global.p_active = inventory[active_item];
}
else global.p_active = item_type.none;

obj_player.sprite = inv_get_sprite(global.p_active);

// Check for Change
if !global.holstered
{
	if active_item != change_check
	{
		change_check = active_item;
		obj_player.fire = 0;
		obj_player.focus = 0;
		inv_use_script(global.p_active, "change");
	}
}
else if change_check != -1
{
	change_check = -1;
	obj_player.fire = 0;
	obj_player.focus = 0;
	inv_use_script(global.p_active, "change");
}

// Click
if mouse_check_button(mb_left) inv_use_script(global.p_active, "left");
if mouse_check_button(mb_right) inv_use_script(global.p_active, "right");

// Reload
if keyboard_check(global.p_reload)
{
	with obj_player ammo = max_ammo;
}

// Opens full inventory

if keyboard_check_pressed(global.p_inv_open){
	if global.in_inv = false{
		global.moveable = false
		global.in_inv = true}
	else{global.moveable = true
		global.in_inv = false}
}

// at this point, the player cannot move or turn and the camera is locked





