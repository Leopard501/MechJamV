/// @description Discharge

if (discharged || !other.moving) exit;

repeat (12) {
	part_particles_create(global.ps_mechs, 
		x + random_range(-20, 20), 
		y  + random_range(-20, 20), 
		global.pt_arcs, 1);	
}

global.control.has_power = false;
global.control.power_counter = 0;
global.control.power_flicker_count = 7;
global.control.power_delay = 270;
audio_stop_sound(global.control.amb);
audio_play_sound(snd_shock, 1, false);
audio_play_sound(snd_power_down, 1, false);

recharge_time = random_range(400, 1000);
discharged = true;