/// @description Decay
decay -= 1;
if decay < 0 image_alpha -= 0.1;
if image_alpha < 0 instance_destroy();

if place_meeting(x, y, obj_filler) instance_destroy();