if (global.control.is_grab()) {
	image_index = 1;	
} else {
	image_index = 0;	
}

draw_self();

if (held || hovered) {
	global.control.draw_holo(description);
}