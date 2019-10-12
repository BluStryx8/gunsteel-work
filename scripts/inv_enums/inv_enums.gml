///@desc Define enums

// Types of items
enum item_type
{
	none,
	
	// Weapons
	pistol_1911,
	glock_17,
	shotgun,
	ak47,
	m4,
	p90,
	
	// Bars
	bar_iron,
	
	// Length enum for reference
	length
}

// Properties of items
enum item_properties
{
	sprite_gui,
	sprite_held,
	name,
	amount,
	type,
	set,
	use_left,
	use_right,
	
	// Length enum for reference
	length
}