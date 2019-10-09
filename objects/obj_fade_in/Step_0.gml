/// @description changes opacity of rectangle
if rectangle_opacity < 0 {
	instance_destroy()
}
else
{
	rectangle_opacity = rectangle_opacity - 0.01
}