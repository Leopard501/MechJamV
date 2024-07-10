if (random(3) < 1) {
	part_particles_create(global.ps, x, y, global.pt_fire, 1);
}

if (progress > 0) {
	if (random(5) < 1) {
		part_particles_create(global.ps, x, y, global.pt_steam, 1);
	}
}