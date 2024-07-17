var _part = 0;
if (global.control.c_pressure > 80) {
	if (collision_rectangle(
			bbox_left, bbox_top, bbox_right, bbox_bottom, 
			obj_problem_low_coolent, false, false) != noone) {
		exit;
	}
	_part = global.pt_coolent;	
} else if (global.control.o_pressure > 80) {
	_part = global.pt_oil;	
} else {
	exit;	
}

var _off = particle_offset_y;
if (grabber != -1 && grabber.mirrored) {
	_off = particle_offset_ym;	
}

part_particles_create(global.ps_tools, x + 1, y + _off, _part, 1);