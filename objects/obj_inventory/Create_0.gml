/// @description Declarion of Item enum
enum item
{
	none,   //0
	
	
	
	
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
	
	
} 


enum item_type
{
	none,
	weapon,
	armour,
	crafting,
	
	
}

enum weapon_type
{
	none,
	shotgun,
	pistol,
	sniper,
	assault_rifle,
	special,
}



/// creates ds_grid

global.item_index = ds_grid_create(item.total, item_stat.total);
ds_grid_clear(global.item_index, 0); 