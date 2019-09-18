//@description Adds items to the visual inventory
//@function scr_gain_item(item_ID, amount);
//@param item_ID
//@param amount 

var iid = argument0;
var amount = argument1;

var slot = 0
var inventory_width = ds_grid_width(global.inventory);

while (slot < inventory_width)
{
	if global.inventory[# slot, 0] == iid 
	{
		global.inventory[# slot, 0] += amount;
		return true; 
		exit;
	}
	slot ++;
	
}

slot = 0;
while (slot < inventory_width)
{
	if global.inventory[# slot, 0] == item.none)     /// if item does not exist
	{
		global.inventory[# slot, 0] = iid;
		global.inventory[# slot, 1] = += amount;
		return true;
		exit;
	}
	slot ++
}
return false;