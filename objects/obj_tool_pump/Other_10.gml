var _off = particle_offset_y;
if (grabber != -1 && grabber.mirrored) {
	_off = particle_offset_ym;	
}

var _part = global.pt_coolent;
if (global.control.sel_fluid == FLUID.OIL) {
	_part = global.pt_oil;	
}

part_particles_create(global.ps_tools, x, y + _off, _part, 1);