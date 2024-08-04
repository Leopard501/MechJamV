if (held) {
	if (mouse_x > 285) {
		if (global.control.sel_fluid != FLUID.OIL) {
			if (global.control.c_pressure > 50) {
				audio_play_sound(snd_pressure_release, 1, false);	
			}
			audio_play_sound(snd_lever, 1, false);	
		}
		global.control.sel_fluid = FLUID.OIL;	
	} else {
		if (global.control.sel_fluid != FLUID.COOLANT) {
			audio_play_sound(snd_lever_out, 1, false);	
			if (global.control.o_pressure > 50) {
				audio_play_sound(snd_pressure_release, 1, false);	
			}
		}
		global.control.sel_fluid = FLUID.COOLANT;	
	}
}