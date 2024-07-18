/// @description fix

if (other.tool_type == TOOL_TYPE.SCRAPER && other.moving) {
	progress++;	
	if (progress == 100) {
		repeat (16) {
			part_particles_create(global.ps_mechs, x, y, global.pt_rust, 1);
		}
	}
	with (other) {
		event_user(0);
	}
}