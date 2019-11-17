/// @description Draw slider
draw_self();
draw_sprite_part(sprite_index,1,0,0, sprite_width*global.music_value, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_slider_button,0, x+sprite_width*global.music_value,y);

if global.settings = true and (!room = rm_mainmenu)
{
	image_xscale = 0.5
	image_yscale = 0.5
}

