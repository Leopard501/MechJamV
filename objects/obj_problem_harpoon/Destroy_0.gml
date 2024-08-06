global.mech.problem_count--;
global.mech.image_index++;

for (var _i = 0; _i < 4; _i++) {
	with (global.control.grabbers[_i]) {
		immobilized = false;	
	}
}

audio_play_sound(snd_unstab, 1, false);

var _tool = instance_create_layer(x, y, "tools", obj_tool_harpoon);
grabber.acquire(_tool);