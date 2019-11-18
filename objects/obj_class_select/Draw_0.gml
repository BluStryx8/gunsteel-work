/// @description Draw Self
draw_self();
if (highlight)
{
	// Set Shader
	shader_set(shd_flash);
	var _shd_alpha = shader_get_uniform(shd_flash, "_alpha");	// Finds the variable inside the shader
	shader_set_uniform_f(_shd_alpha, 0.2);						// Changes the alpha of shader
	draw_self();

	// Reset
	shader_reset();
}