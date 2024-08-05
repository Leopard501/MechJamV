global.mech.problem_count--;
global.mech.image_index++;

with (global.control.grabbers[global.control.sel_grab]) {
	immobilized = false;	
}

audio_play_sound(snd_unstab, 1, false);

var _tool = instance_create_layer(x, y, "tools", obj_tool_harpoon);
grabber.acquire(_tool);