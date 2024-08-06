if (random(500) < 1 && mech.state != MECH_STATE.WAITING) {
	audio_play_sound(creak_sounds[random(4)], 1, false);
	part_particles_create(global.ps_mechs, x, y, global.pt_rust, 16);
}
if (random(50) < 1) {
	part_particles_create(global.ps_mechs, x, y, global.pt_rust, random_range(1, 3));
}