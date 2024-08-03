var _part = 0;
var _do_part = true;
if (global.control.c_pressure > 80) {
	// disable particles if cooling
	if (collision_rectangle(
			bbox_left, bbox_top, bbox_right, bbox_bottom, 
			obj_problem_low_coolent, false, false) != noone) {
		_do_part = false;
	}
	_part = global.pt_coolent;	
} else if (global.control.o_pressure > 80) {
	// disable particles if oiling
	if (collision_rectangle(
			bbox_left, bbox_top, bbox_right, bbox_bottom, 
			obj_problem_low_oil, false, false) != noone) {
		_do_part = false;
	}
	_part = global.pt_oil;	
} else {
	exit;	
}

if (_do_part) {
	var _off = particle_offset_y;
	if (grabber != -1 && grabber.mirrored) {
		_off = particle_offset_ym;	
	}
	part_particles_create(global.ps_tools, x + 1, y + _off, _part, 1);
}

if (!audio_is_playing(global.control.tool_sound)) {
	global.control.tool_sound = audio_play_sound(sound, 1, true);
	audio_play_sound(snd_pump_start, 1, false);
}