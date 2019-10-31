/// @description Declare Variables
anim = 0;
spd = 0;
bounce = 0;
hurt_flash = 0;
action = "idle";
action_timer = idle_max_time;

// Random Direction
direction = irandom_range(0, 359);
if (direction <= 45 or direction > 315)
	dir = "right";
else if (direction <= 135 and direction > 45)
	dir = "up";
else if (direction <= 225 and direction > 135)
	dir = "left";
else if (direction <= 315 and direction > 225)
	dir = "down";


// Slime Specific Stats are in variable definitions