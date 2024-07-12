if (held) {
	var _new_angle = point_direction(x, y, mouse_x, mouse_y);
	if (old_angle < _new_angle) {
		//rotation = (rotation + 20) % 360;
	} else if (old_angle > _new_angle) {
		rotation = (rotation - 20) % 360;
		if (global.control.sel_fluid = FLUID.COOLANT) {
			global.control.c_pressure = clamp(global.control.c_pressure + 0.5, 0, 100);	
		} else if (global.control.sel_fluid = FLUID.OIL) {
			global.control.o_pressure = clamp(global.control.o_pressure + 0.5, 0, 100);	
		}
	}
	old_angle = _new_angle;
}
