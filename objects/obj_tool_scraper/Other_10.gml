var _off = particle_offset_y;

if (grabber != -1 && grabber.mirrored) {
	_off = particle_offset_ym;	
}

part_particles_create(global.ps_tools, x, y + _off, global.pt_rust, 1);