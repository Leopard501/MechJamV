event_inherited();

if (random(3) < 1) {
	part_particles_create(global.ps_mechs, x, y, global.pt_fire, 1);
}

if (progress > 0) {
	if (random(5) < 1) {
		part_particles_create(global.ps_mechs, x, y, global.pt_steam, 1);
	}
}