/// @description Bonk

if (global.control.grab_speed == 1 && 
		state == MECH_STATE.SPECIAL && 
		need_hit && dialog_finished &&
		global.control.sel_grab == other.idx) {
	need_hit = false;
	part_particles_create(global.ps_tools, other.x, other.y, global.pt_sparks, 16);
	audio_play_sound(snd_bonk, 1, false);
}