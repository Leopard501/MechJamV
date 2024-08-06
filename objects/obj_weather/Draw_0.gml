var _c1 = #003e80;
var _c2 = #ff8900;

switch (global.control.current_mech) {
	case 0: // sunset
	case 1: { // night
		time++;
		var _cs = transition_color(3000, 5, [
			#4c76a6, #003e80, #0c1c5e, #020b2d, #010516], [
			#4c76a6, #ff8900, #a13e15, #871100, #010516]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		break;
	} case 2: { // fog
		time++;
		var _cs = transition_color(2000, 4, [
			#010516, #2d2832, #646478, #b4bed2], [
			#010516, #010516, #1e2832, #324664]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		break;
	} case 3: { // rain
		// colors
		time++;
		var _cs = transition_color(1500, 2, [
			#b4bed2, #646478], [
			#324664, #1e2832]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		
		// sounds
		if (!audio_is_playing(light_rain)) {
			light_rain = audio_play_sound(snd_lp_lightrain, 1, true, 0);	
		}
		audio_sound_gain(light_rain, clamp(time / 1500, 0, 1), 0);
		
		// particles
		if (time > 1500 && random(800) < 1) {
			part_particles_create(global.ps_mechs, random(room_width), -5, global.pt_water, random_range(1, 4));	
		}
		break;
	} case 4: { // thunder
		// colors
		time++;
		var _cs = transition_color(1500, 2, [
			#646478, #2d2832], [
			#1e2832, #010516]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		
		// rain sounds
		if (!audio_is_playing(heavy_rain)) {
			heavy_rain = audio_play_sound(snd_lp_heavyrain, 1, true, 0);	
		}
		audio_sound_gain(heavy_rain, clamp(time / 1500, 0, 1), 0);
		
		// thunder & lightning
		if (time > 1500 && random(1000) < 1) {
			lightning_delay = 8;
			thunder_delay = random_range(30 * 3, 30 * 10);
		}
		if (lightning_delay > 0) {
			_c1 = c_white;
			_c2 = c_white;
		}
		if (thunder_delay == 0) {
			audio_play_sound(thunder[floor(random(3))], 1, false);	
		}
		lightning_delay--;
		thunder_delay--;
		
		// particles
		if (random(400 + (400 * (1 - clamp(time / 1500, 0, 1)))) < 1) {
			part_particles_create(global.ps_mechs, random(room_width), -5, global.pt_water, random_range(1, 4));	
		}
		break;
	} case 5: { // night
		// colors
		time++;
		var _cs = transition_color(3000, 2, [
			#2d2832, #010516], [
			#010516, #010516]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		
		// fade out rain sounds
		if (audio_is_playing(light_rain)) {
			audio_sound_gain(light_rain, 1 - clamp(time / 1500, 0, 1), 0);
			if (time > 1500) {
				audio_stop_sound(light_rain);	
			}
		}
		if (audio_is_playing(heavy_rain)) {
			audio_sound_gain(heavy_rain, 1 - clamp(time / 1500, 0, 1), 0);
			if (time > 1500) {
				audio_stop_sound(heavy_rain);	
			}
		}
		break;
	} case 6: { // blitz
		// colors
		time++;
		var _cs = transition_color(3000, 2, [
			#010516, #010516], [
			#010516, #620000]);
		_c1 = _cs[0];
		_c2 = _cs[1];
		
		// bombs
		if (random(1000) < 1) {
			audio_play_sound(bombs[floor(random(4))], 1, false);
			bomb_tail = 300;
			repeat (random_range(3, 6)) {
				part_particles_create(global.ps_mechs, random(room_width), random_range(-5, -25), global.pt_dustcloud, 1);	
			}
			repeat (random_range(16, 32)) {
				part_particles_create(global.ps_mechs, random(room_width), random_range(-5, -25), global.pt_dustbit, 1);	
			}
			if (random(4) < 1) {
				global.control.has_power = false;
				global.control.power_counter = 0;
				global.control.power_flicker_count = 7;
				global.control.power_delay = 270;
				audio_stop_sound(global.control.amb);
				audio_play_sound(snd_power_down, 1, false);
			}
		}
		if (random(1000) < 1) {
			audio_play_sound(planes[floor(random(4))], 1, false);
		}
		_c1 = merge_color(_c1, #310000, clamp(bomb_tail / 300, 0, 1));
		_c2 = merge_color(_c2, #ff7400, clamp(bomb_tail / 300, 0, 1));
		bomb_tail--;
		break;
	} case 7: { // sunrise
		break;
	}
}

draw_rectangle_color(0, 0, room_width, room_height / 3, _c1, _c1, _c2, _c2, false);