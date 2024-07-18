if (held) {
	var _new_angle = point_direction(x, y, mouse_x, mouse_y);
	if (old_angle > _new_angle) {
		//if (!audio_is_playing(sound)) {
		//	sound = audio_play_sound(snd_lp_wheel, 1, true);
		//}
		rotation = (rotation - 20) % 360;
		if (global.control.sel_fluid = FLUID.COOLANT) {
			global.control.c_pressure = clamp(global.control.c_pressure + 0.5, 0, 100);	
		} else if (global.control.sel_fluid = FLUID.OIL) {
			global.control.o_pressure = clamp(global.control.o_pressure + 0.5, 0, 100);	
		}
	} else {
		//snd_delay++;
		//if (audio_is_playing(sound)) {
		//	if (snd_delay > 30) {
		//		audio_stop_sound(sound);
		//	}
		//}
	}
	old_angle = _new_angle;
}
