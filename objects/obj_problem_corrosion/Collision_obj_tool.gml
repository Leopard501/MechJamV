/// @description fix

if (other.tool_type == TOOL_TYPE.SCRAPER && other.moving) {
	progress++;	
	if (progress == 100) {
		global.control.tutorial[5] = true;
		part_particles_create(global.ps_mechs, x, y, global.pt_rust, 16);
	}
	with (other) {
		event_user(0);
	}
}