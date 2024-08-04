if (held) {
	var _new_angle = point_direction(x, y, mouse_x, mouse_y);
	if ((global.control.sel_fluid = FLUID.COOLANT && global.control.c_pressure == 100) ||
		(global.control.sel_fluid = FLUID.OIL && global.control.o_pressure == 100)) {
		exit;	
	}
	if (old_angle > _new_angle) {
		rotation = (rotation - 20) % 360;
		var _pitch = 1;
		if (global.control.sel_fluid = FLUID.COOLANT) {
			global.control.c_pressure = clamp(global.control.c_pressure + 0.5, 0, 100);	
			_pitch = (global.control.c_pressure / 100) * 0.5 + 0.9;
		} else if (global.control.sel_fluid = FLUID.OIL) {
			global.control.o_pressure = clamp(global.control.o_pressure + 0.5, 0, 100);	
			_pitch = (global.control.o_pressure / 100) * 0.5 + 0.9;
		}
		if (!audio_is_playing(sound)) {
			sound = audio_play_sound_ext({ sound: snd_wheel, pitch: _pitch });
		}
	}
	old_angle = _new_angle;
}