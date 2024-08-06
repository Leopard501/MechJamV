var _d = description;
if (global.control.sel_fluid == FLUID.COOLANT) {
	image_index = 0;	
	_d = "Select Oil";
} else if (global.control.sel_fluid = FLUID.OIL) {
	image_index = 1;	
	_d = "Select Coolant";
}

draw_self();

if (held || hovered) {
	global.control.draw_holo(_d);
}