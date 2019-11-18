/// @description Draw Self
var _sprite = obj_inventory_manager.item_definitions[weapon_id, item_properties.sprite_gui];
draw_sprite_ext(_sprite, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
if (highlight)
{
	// Set Shader
	shader_set(shd_flash);
	var _shd_alpha = shader_get_uniform(shd_flash, "_alpha");	// Finds the variable inside the shader
	shader_set_uniform_f(_shd_alpha, 0.2);						// Changes the alpha of shader
	draw_sprite_ext(_sprite, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);

	// Reset
	shader_reset();
}