/// @description Draw Inventory
if (global.truepause) exit;

// Set Variables
gui_holder_width = sprite_get_width(spr_hotbar);
gui_holder_height = sprite_get_height(spr_hotbar);
gui_holder_pos_x = (camera_get_view_width(0) / 2) - (gui_holder_width / 2);
gui_holder_pad   = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;
display_set_gui_size(camera_get_view_width(0), camera_get_view_height(0));
if (global.in_inv) hotbar_height = view_get_hport(0) - gui_holder_height * 3
	else hotbar_height = view_get_hport(0) - gui_holder_height;
gui_holder_pos_y = 32 + hotbar_height;


// Declare Draw Constants
draw_set_halign(fa_right);
draw_set_font(fnt_inventory);
draw_set_alpha(1);
if global.paused var _col = make_colour_hsv(0, 0, 150) else var _col = c_white;
draw_set_color(_col);


// Draw Hotbar
if (!global.settings)
{
	draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, hotbar_height, 1, 1, 0, _col, 1);
	draw_sprite_ext(spr_active, -1, gui_holder_pos_x + (gui_holder_slot_offset_x * active_item) + 38,
					gui_holder_pos_y + gui_holder_pad, 1, 1, 0, _col, 1);
	for (var _inv = 0; _inv <= HOTBAR; _inv++)
	{
		item_define_index = inventory[_inv];
		if (item_define_index != item_type.none)
		{
			draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
						(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 32,
						(gui_holder_pos_y + gui_holder_pad), 1, 1, 0, _col, 1);
			if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
			{
				draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 57,
							(gui_holder_pos_y + gui_holder_pad) + 10,
							string(item_definitions[item_define_index, item_properties.amount]));
			}
		}
	}
}

// Draw extended inventory
if (global.in_inv) and (!global.settings)
{
	draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height, 1, 1, 0, _col, 1);
	draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height * 2, 1, 1, 0, _col, 1);
	var _offset = gui_holder_height;
	for (var _inv = HOTBAR + 1; _inv <= INVENTORY; _inv++)
	{
		item_define_index = inventory[_inv];
		if (item_define_index != item_type.none)
		{
			if (_inv < (HOTBAR + 1) * 2)
			{
				_offset = gui_holder_height;
				draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
							(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 5)) + 32,
							(gui_holder_pos_y + gui_holder_pad + _offset), 1, 1, 0, _col, 1);
				if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
				{
					draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 5)) + 57,
								(gui_holder_pos_y + gui_holder_pad + _offset) + 10,
								string(item_definitions[item_define_index, item_properties.amount]));
				}
			}
			else
			{
				_offset = 2 * gui_holder_height;
				draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
							(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 10)) + 32,
							(gui_holder_pos_y + gui_holder_pad + _offset), 1, 1, 0, _col, 1);
				if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
				{
					draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 10)) + 57,
								(gui_holder_pos_y + gui_holder_pad + _offset) + 10,
								string(item_definitions[item_define_index, item_properties.amount]));
				}
			}
		}
	}
}

if selected_cell > -1
	if (inventory[selected_cell] != item_type.none and mousey > camera_get_view_height(0) - spr_hotbar_height*3)
	{
		var _inv    = inventory[selected_cell];
		draw_stats(_inv, gui_holder_pos_x + gui_holder_width + 32, hotbar_height);
	}
	
/// if you are holding something draw it
if (item_in_hand)
{
	if (pickup_item != -1)
	{
		var draw_item = inventory[pickup_item]
		draw_sprite_ext(item_definitions[draw_item, item_properties.sprite_gui], -1, mousex,mousey, 1, 1, 0, _col, 1);
	}
}

if (global.in_furnace and  item_in_slot and furnace_slot != -1)
{
	var draw_furnace = inventory[furnace_slot]
	draw_sprite_ext(item_definitions[draw_furnace, item_properties.sprite_gui], -1, gui_holder_pos_x +40 ,display_get_gui_height()/3 +37, 1, 1, 0, _col, 1);
}

if (global.in_inv) exit;

// Draw Weapon
var _weap_offset_x = -48;	// x offset from the bottom right hand corner
var _weap_offset_y = -48;	// y offset from the bottom right hand corner

if (global.holstered) or (global.settings) exit;
draw_set_halign(fa_center);
var _sprite = obj_inventory_manager.item_definitions[inventory[active_item], item_properties.sprite_gui];
var _weapon = false;
switch (obj_player.type)
{
	case "Pistol":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 1, 1, 0, _col, 1);
		_weapon = true;
		break;
	case "Assault Rifle":
	case "Shotgun":
	case "Sniper Rifle":
	case "Minigun":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		_weapon = true;
		break;
}
if (_weapon)
	if (obj_player.reloading > 0)
		draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					"Reloading...")
	else draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					string(obj_player.ammo) + " / " + string(obj_player.max_ammo));


// Draw Ammo
var _x = _weap_offset_x;		// x offset from the bottom right hand corner
var _y = _weap_offset_y - 80;	// y offset from the bottom right hand corner plus 80 above the weapon
var _top_pad = 80;				// Height from top when to move to next row

// Set which bullet to draw
var _draw = spr_gui_empty;
switch (obj_player.type)
{
	case "Pistol":
		_draw = spr_ammo_pistolbullet;
		break;
	case "Assault Rifle":
	case "Sniper Rifle":
		_draw = spr_ammo_riflebullet;
		break;
	case "Shotgun":
		_draw = spr_ammo_shotgunbullet;
		break;
}
// Draw bullets
if (_draw != spr_gui_empty)
	for (var _ammo = obj_player.ammo; _ammo > 0; _ammo--)
	{
		draw_sprite_ext(_draw, -1, view_get_wport(0) + _x, view_get_hport(0) + _y, 1, 1, 0, _col, 1);
		_y -= 10;
		if ((view_get_hport(0) + _y - _top_pad) <= 0)
		{
			_x += _weap_offset_x;
			_y = _weap_offset_y - 80;
		}
	}

// Draw Fire Mode
var _mode_x_offset = -15; // x offset of bullets to draw
var _mode_y_offset = -20; // y offset of bullets to draw

// Bullets to draw representative of atk modes
var _bullets = 1;
if (obj_player.atk_type == "Semi-automatic" and obj_player.burst > 1) _bullets = 2;
if (obj_player.atk_type == "Automatic") _bullets = 3;

if (_draw != spr_gui_empty)
{
	draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 2,
					view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, 1);
	if (_bullets >= 2) draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset,
									view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, 1);
	if (_bullets >= 3) draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 3,
									view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, 1);
}

if global.paused = true and (!global.settings) 
{
	if logo_alpha < 1
	{
		logo_alpha = logo_alpha + 0.015
	}
	
	draw_sprite_ext(spr_main_icon,0,display_get_gui_width()/2 ,display_get_gui_height()/2-190,0.8,0.8,0,c_white,logo_alpha)
	draw_sprite_ext(spr_main_menu_buttons,3,display_get_gui_width()/2, display_get_gui_height()/2-75,0.8,0.8,0,c_ltgray,1)
	draw_sprite_ext(spr_main_menu_buttons,1,display_get_gui_width()/2, display_get_gui_height()/2-10,0.8,0.8,0,c_ltgray,1)
	draw_sprite_ext(spr_main_menu_buttons,2,display_get_gui_width()/2, display_get_gui_height()/2+55,0.8,0.8,0,c_ltgray,1)
}
else
{
	logo_alpha = 0
}


//Pause menu code
if global.paused = true and global.settings = false
{
	pmousex = device_mouse_x_to_gui(0)
	pmousey = device_mouse_y_to_gui(0)
	if pmousex >= camera_get_view_width(0)/2 - 120 and pmousex <= camera_get_view_width(0)/2 + 120
	{
		if pmousey >= camera_get_view_height(0)/2-100 and pmousey < camera_get_view_height(0)/2- 60 and mouse_check_button_pressed(mb_left)
		{
			global.paused = false
		}
		
		if pmousey >= camera_get_view_height(0)/2-35 and pmousey < camera_get_view_height(0)/2 + 5 and mouse_check_button_pressed(mb_left)
		{
			global.settings = true
			room_goto(rm_settings)
			
		}
		
		if pmousey >= camera_get_view_height(0)/2+ 30 and pmousey < camera_get_view_height(0)/2 + 60 and mouse_check_button_pressed(mb_left)
		{
			global.paused = false
			global.truepause = false
			instance_create_layer(x,y,"fade",obj_fade_out_to_menu)
			
		}
		
		
	}
}

