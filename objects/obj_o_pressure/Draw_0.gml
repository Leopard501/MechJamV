image_index = clamp(
	floor(global.control.o_pressure / (100.0 / 7.0)),
	0, 6);

draw_self();

if (hovered) {
	global.control.draw_holo(description);
}