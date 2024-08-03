var _stream_part = -1;
var _splash_part = -1;
var _filling = false;
if (global.control.c_pressure > 80) {
	// disable particles if cooling
	if (collision_rectangle(
			bbox_left, bbox_top, bbox_right, bbox_bottom, 
			obj_problem_low_coolent, false, false) != noone) {
		_filling = true;
	}
	_stream_part = global.pt_coolent;
	_splash_part = global.pt_coolant_splash;
} else if (global.control.o_pressure > 80) {
	// disable particles if oiling
	if (collision_rectangle(
			bbox_left, bbox_top, bbox_right, bbox_bottom, 
			obj_problem_low_oil, false, false) != noone) {
		_filling = true;
	}
	_stream_part = global.pt_oil;	
	_splash_part = global.pt_oil_splash;
} else {
	exit;	
}

var _off = particle_offset_y;
if (grabber != -1 && grabber.mirrored) {
	_off = particle_offset_ym;	
}
if (!_filling) {
	part_particles_create(global.ps_tools, x + 1, y + _off, _stream_part, 1);
} else {
	part_particles_create(global.ps_tools, x + 1, y + _off, _splash_part, 1);
}

if (!audio_is_playing(global.control.tool_sound)) {
	global.control.tool_sound = audio_play_sound(sound, 1, true);
	audio_play_sound(snd_pump_start, 1, false);
}