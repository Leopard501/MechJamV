/// @description fix

if ((other.tool_type == TOOL_TYPE.SCRAPER && other.moving) || 
	(other.tool_type == TOOL_TYPE.WELDER && other.activated)) {
	progress = 100;
	part_particles_create(global.ps_mechs, x, y, global.pt_coolant_splash, 16);
	audio_play_sound(snd_squish, 1, false);
}