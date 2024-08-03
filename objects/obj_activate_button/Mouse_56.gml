/// @description Set not held

if (held) audio_play_sound(snd_button_out, 1, false);
held = false;
global.control.try_release(self)
global.control.set_activated(false);

if (audio_is_playing(global.control.tool_sound)) {
	audio_stop_sound(global.control.tool_sound);
}