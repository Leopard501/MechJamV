if (random(50) < 1) {
	// todo: play sound
	repeat (random_range(5, 8)) {
		part_particles_create(global.ps_mechs, x, y, global.pt_rust, 1);
	}
}