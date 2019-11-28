/// @description Edits sound volume
value = clamp((mouse_x - x) / sprite_width, 0, max_value);
global.music_value = value;