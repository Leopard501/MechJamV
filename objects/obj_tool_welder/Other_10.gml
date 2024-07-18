var _offy = particle_offset_y;
var _offx = -1;

if (grabber != -1 && grabber.mirrored) {
	_offy = particle_offset_ym;	
	_offx = 1;
}

if (!audio_is_playing(global.control.tool_sound)) {
	global.control.tool_sound = audio_play_sound(sound, 1, true);
}

part_particles_create(global.ps_tools, x + _offx, y + _offy, global.pt_sparks, 1);