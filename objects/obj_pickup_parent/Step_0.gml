/// @description Bobbing Animation
if (global.paused) exit;
anim_y += 0.1;
if anim_y >= 360 anim_y = 0;