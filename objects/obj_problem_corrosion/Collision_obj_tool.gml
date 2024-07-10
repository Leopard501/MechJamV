/// @description fix

if (other.tool_type == TOOL_TYPE.SCRAPER && other.moving) {
	progress++;	
	with (other) {
		event_user(0);	
	}
}