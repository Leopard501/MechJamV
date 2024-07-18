var _off = particle_offset_y;

if (grabber != -1 && grabber.mirrored) {
	_off = particle_offset_ym;	
}

part_particles_create(global.ps_tools, random_range(x - 3, x + 3), y + _off, global.pt_rust, 1);
if (!audio_is_playing(sound)) {
	sound = audio_play_sound(snd_scrape, 1, fasle);	
}