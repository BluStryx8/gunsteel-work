//@description Adds items to the visual inventory
//@function scr_gain_item(item_ID, amount);
//@param item_ID
//@param amount 

var iid = argument0;
var amount = argument1;

var slot = 0
var inventory_width = ds_grid_width(global.inventory);

while (slot< inventory_width)
{
	