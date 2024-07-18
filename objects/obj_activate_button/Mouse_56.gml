/// @description Set not held

if (held) {
	audio_play_sound(snd_button_out, 1, false);
}
held = false;
global.control.set_activated(false);
