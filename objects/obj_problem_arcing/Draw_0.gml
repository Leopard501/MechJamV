event_inherited();

if (!discharged && random(6) < 1) {
	part_particles_create(global.ps_mechs, x, y, global.pt_arcs, 1);
}

if (random(6) < 1) {
	part_particles_create(global.ps_tools, x, y, global.pt_sparks, 1);
}