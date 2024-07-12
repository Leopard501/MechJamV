image_index = clamp(
	floor(global.mech.temperature / (100.0 / 7.0)),
	0, 6);

draw_self();

if (hovered) {
	global.control.draw_holo(description);
}