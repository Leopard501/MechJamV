event_inherited();

if (random(500) < 1 && mech.state != MECH_STATE.WAITING) {
	audio_play_sound(creak_sounds[random(4)], 1, false, 
		1 - clamp((mech.x - (room_width / 2)) / (room_width / 2 + 100), 0, 1));
	part_particles_create(global.ps_mechs, x, y, global.pt_rust_nograv, random_range(2, 5));
	part_particles_create(global.ps_mechs, x, y, global.pt_rust, 16);
}
if (random(50) < 1) {
	part_particles_create(global.ps_mechs, x, y, global.pt_rust_nograv, random_range(1, 3));
	part_particles_create(global.ps_mechs, x, y, global.pt_rust, random_range(1, 3));
}
if (random(30) < 1) {
	part_particles_create(global.ps_mechs, x, y, global.pt_rust_nograv, 1);
}