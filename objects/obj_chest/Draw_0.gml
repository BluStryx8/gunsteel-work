/// @description Draw Self and Text
draw_set_alpha(1 - flash);
draw_self();
flash = flash_effect(flash);
if (text_alpha > 0)
{
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(text_alpha);
	draw_set_font(fnt_item_tip);
	draw_text(x, y - 48, "[E] to open");
	draw_set_font(fnt_stat);
	draw_text(x, y - 32, "Chest");
	draw_sprite(spr_item_arrow, -1, x, y - 16);
}
if (global.paused) exit;
if (detect)
{
	if text_alpha < 1 text_alpha += 0.05;
}
else
{
	if text_alpha > 0 text_alpha -= 0.05;
}