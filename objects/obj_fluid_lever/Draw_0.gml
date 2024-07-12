if (global.control.sel_fluid == FLUID.COOLANT) {
	image_index = 0;	
} else if (global.control.sel_fluid = FLUID.OIL) {
	image_index = 1;	
}

draw_self();

if (held || hovered) {
	global.control.draw_holo(description);
}