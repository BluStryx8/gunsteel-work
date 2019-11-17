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

// Draw level
if (global.level > 0)
{
	draw_set_font(fnt_room);
	draw_text(camera_get_view_width(0) - 32, 32, "- " + string(global.level) + " -");
	draw_set_font(fnt_inventory);
}

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
	draw_sprite_ext(spr_hotbar, 1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height, 1, 1, 0, _col, 1);
	draw_sprite_ext(spr_hotbar, 1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height * 2, 1, 1, 0, _col, 1);
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
	// Draw Ammo Counts
	var _x = gui_holder_pos_x - 32;
	var _y = hotbar_height - 16;
	draw_set_halign(fa_right);
	draw_text(_x + 16, _y, "Ammo Count");
	_y += 16;
	draw_sprite_ext(spr_ammo_riflebullet, -1, _x + 16, _y + 16, 1, 1, 270, c_white, 1);
	draw_text(_x, _y + 8, string(global.ammo_rifle));
	_y += 32;
	draw_sprite_ext(spr_ammo_sniperbullet, -1, _x + 16, _y + 16, 1, 1, 270, c_white, 1);
	draw_text(_x, _y + 8, string(global.ammo_sniper));
	_y += 32;
	draw_sprite_ext(spr_ammo_shotgunbullet, -1, _x + 16, _y + 16, 1, 1, 270, c_white, 1);
	draw_text(_x, _y + 8, string(global.ammo_shotgun));
	_y += 32;
	draw_sprite_ext(spr_gui_ammo_crate, -1, _x + 16, _y + 16, 0.5, 0.5, 0, c_white, 1);
	draw_text(_x, _y + 8, string(global.ammo_minigun));
	draw_set_halign(fa_right);
}

if selected_cell > -1
	if (inventory[selected_cell] != item_type.none and mousey > camera_get_view_height(0) - spr_hotbar_height*3)
	{
		var _inv    = inventory[selected_cell];
		draw_stats(_inv, gui_holder_pos_x + gui_holder_width + 16, hotbar_height - 16);
		draw_set_font(fnt_inventory);
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
var _total_ammo = 0;
switch (obj_player.type)
{
	case "Pistol":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 1, 1, 0, _col, 1);
		_weapon = true;
		_total_ammo = "Infinite";
		break;
	case "Assault Rifle":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		_weapon = true;
		_total_ammo = global.ammo_rifle;
		break;
	case "Shotgun":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		_weapon = true;
		_total_ammo = global.ammo_shotgun;
		break;
	case "Sniper Rifle":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		_weapon = true;
		_total_ammo = global.ammo_sniper;
		break;
	case "Minigun":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		_weapon = true;
		_total_ammo = global.ammo_minigun;
		break;
}
if (_weapon)
{
	if (obj_player.reloading > 0)
		draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					"Reloading...")
	else draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
	draw_set_halign(fa_right);
	if (_total_ammo != "Infinite")
		draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y + 16,
					string(_total_ammo));
	draw_set_halign(fa_center);
}

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
		_draw = spr_ammo_riflebullet;
		break;
	case "Sniper Rifle":
		_draw = spr_ammo_sniperbullet;
		break;
	case "Shotgun":
		_draw = spr_ammo_shotgunbullet;
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
var _mode_x_offset = _weap_offset_x + 32; // x offset of bullets to draw
var _mode_y_offset = _weap_offset_y + 24; // y offset of bullets to draw

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
if obj_player.type = "Minigun"
{
	_draw = spr_gui_ammo_crate;
	draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 2,
					view_get_hport(0) + _mode_y_offset, 0.5, 0.5, 0, _col, 1);
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
if global.paused and !global.settings
{
	pmousex = device_mouse_x_to_gui(0)
	pmousey = device_mouse_y_to_gui(0)
	if pmousex >= camera_get_view_width(0)/2 - 120 and pmousex <= camera_get_view_width(0)/2 + 120
	{
		if pmousey >= camera_get_view_height(0)/2-100 and pmousey < camera_get_view_height(0)/2- 60 and mouse_check_button_pressed(mb_left)
		{
			global.paused = false
			global.settings = false
		}
		
		if pmousey >= camera_get_view_height(0)/2-35 and pmousey < camera_get_view_height(0)/2 + 5 and mouse_check_button_pressed(mb_left)
		{
			global.settings = true
			
		}
		
		if pmousey >= camera_get_view_height(0)/2+ 30 and pmousey < camera_get_view_height(0)/2 + 60 and mouse_check_button_pressed(mb_left)
		{
			//save inventory
			
			save_game();
			global.truepause = true;
			instance_create_layer(x,y,"fade",obj_fade_out_to_menu)
			global.settings = false
			global.holstered = true
			
		}
		
		
	}
}

// pause menu

if global.settings = true and (!room = rm_mainmenu)
{
	//declaratiion of position
	xx_vslider = (camera_get_view_x(view_camera[0])) + 5;
	yy_vslider = (camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2));
	xx_center = (camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2));
	
	//creating settings text and slider
	instance_create_layer(xx_vslider,yy_vslider - 50,"control",obj_slider_sounds_volume)
	instance_create_layer(xx_vslider,yy_vslider + 75 ,"control",obj_slider_music_volume)
	settings = instance_create_layer(xx_center,yy_vslider - 150, "control",obj_menu_buttons)
	settings.image_index = 1
	
	//creating sound text
	sound = instance_create_layer(xx_center,yy_vslider - 75, "control",obj_menu_buttons)
	sound.image_index = 5
	
	//create back button
	back = instance_create_layer(xx_center + 200 ,yy_vslider + 160, "control",obj_menu_buttons)
	back.image_index = 4

}




	
