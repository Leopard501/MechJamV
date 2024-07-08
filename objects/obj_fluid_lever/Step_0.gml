if (held) {
	if (mouse_x > 285) {
		global.control.sel_fluid = FLUID.OIL;	
	} else {
		global.control.sel_fluid = FLUID.COOLANT;	
	}
}