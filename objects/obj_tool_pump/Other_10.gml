var _part = 0;
if (global.control.c_pressure > 80) {
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

part_particles_create(global.ps_tools, x, y + _off, _part, 1);