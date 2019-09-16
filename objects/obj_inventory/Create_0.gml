/// @description Declarion of Item enum
enum item
{
	none,   //0
	total
}



enum item_stat
{
	name,
	description, 
	type,
	damage,
	healthonuse,
	range,
	weapontype,
	ammo, 
	total	
} 


enum item_type
{
	none,
	weapon,
	armour,
	crafting,
	total
}

enum weapon_type
{
	none,
	shotgun,
	pistol,
	sniper,
	assault_rifle,
	special,
	total
}



/// creates ds_grid

global.item_index = ds_grid_create(item.total, item_stat.total);
ds_grid_clear(global.item_index, 0);

//Creates visual inventry array
global.inventory = ds_grid_create(5, 3);
ds_grid_clear(global.inventory, 0)