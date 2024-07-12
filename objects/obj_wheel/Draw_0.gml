image_index = floor((360 - rotation) / 60);

draw_self();

if (held || hovered) {
	global.control.draw_holo(description);	
}