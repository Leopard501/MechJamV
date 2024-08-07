if (!held) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			global.control.monitor_power = !global.control.monitor_power;
			audio_play_sound(snd_button, 1, false);
			break;	
		case MONITOR_SEL.LEFT:
			if (global.control.monitor_line > 0) {
				global.control.monitor_line -= 1;
				global.mech.update_dialog(-1);
			}
			audio_play_sound(snd_button, 1, false);
			break;
		case MONITOR_SEL.RIGHT:
			if (global.control.monitor_line < ds_list_size(global.mech.dialog) - 1) {
				global.control.monitor_line += 1;
				global.mech.update_dialog(-1);
			}
			audio_play_sound(snd_button, 1, false);
			break;
	}	
}

held = true;