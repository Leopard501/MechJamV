/// @description Set held

held = global.control.try_hold(self);
global.control.set_activated(true);
audio_play_sound(snd_button, 1, false);