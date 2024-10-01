image_index = clamp(
	floor(global.control.c_pressure / (100.0 / 7.0)),
	0, 6);

draw_self();

if (hovered) {
	global.control.set_holo(description, HOLO_STATE.SHORT);
}