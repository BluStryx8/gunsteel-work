/// @desc Makes sprite flash when hit
/// @param flash Variable to take flash effect for
var _flash = argument0;

if (_flash > 0)
{
	// Decrement flash
	_flash -= 0.05;
	
	// Set Shader
	shader_set(shd_flash);
	var _shd_alpha = shader_get_uniform(shd_flash, "_alpha");	// Finds the variable inside the shader
	shader_set_uniform_f(_shd_alpha, _flash);					// Changes the alpha of shader
	draw_self();
	
	// Reset
	shader_reset();
}
if (_flash < 0) _flash = 0;

return _flash;