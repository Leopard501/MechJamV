if (mouse_x < 174) {
	global.control.sel_grab = 0;
} else if (mouse_x < 191) {
	global.control.sel_grab = 1;	
} else if (mouse_x < 208) {
	global.control.sel_grab = 2;
} else {
	global.control.sel_grab = 3;
}

audio_play_sound(snd_button, 1, false);
global.control.tutorial[1] = true;