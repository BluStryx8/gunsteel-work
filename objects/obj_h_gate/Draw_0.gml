/// @description Check Master ID states and Draw
if (master_id.active and !state)
{
	state = true;
	col = instance_create_layer(x, y, "tiles", obj_h_gate_collision);
}
if (master_id.enemy_count == 0 and state)
{
	// Destroy Collision
	state = false;
	with (col) instance_destroy();
}

// Opens and closes gates
if (!global.paused)
{
	if (state)
	{
		if (image_index < 5) image_index += 0.5;
	}
	else
	{
		if (image_index > 0) image_index -= 0.5;
	}
}

// Draws Self
var _col = c_white;
if biome = "elite" _col = c_red;
draw_sprite_ext(spr_h_gate, image_index, x, y, 1, 1, 0, _col, (image_index + 1 / 6));